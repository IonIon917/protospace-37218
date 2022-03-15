class PrototypesController < ApplicationController
  before_action :authenticate_user!, except:[:index, :show]
  before_action :move_to_root, only: [:edit, :update, :destroy]

  def index
    @prototypes = Prototype.includes(:user)
  end

  def new
    @prototype = Prototype.new
  end

  def create
    @prototype = Prototype.new(prototype_params)
    if @prototype.save
      redirect_to root_path
   else
     render :new
    end
  end

  def show
    @prototype = Prototype.find(params[:id])
    @comment = Comment.new
    @comments = @prototype.comments
  end

  def edit
  end

  def update
    if @prototype.update(prototype_params)
      redirect_to prototype_path(@prototype)
    else
      render :edit
    end
  end

  def destroy
    if @prototype.destroy
      redirect_to root_path
    end
  end


  private
  def prototype_params
    params.require(:prototype).permit(:image, :catch_copy, :concept, :title).merge(user_id: current_user.id)
  end


  def move_to_root
    @prototype = Prototype.find(params[:id])
    unless current_user == @prototype.user
      redirect_to root_path
    end
  end

end