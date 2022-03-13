# テーブル設計

## usersテーブル

| Column             | Type      | Options                |
|--------------------|-----------|------------------------|
| email              | string    | null: false, UNIQUE制約 |
| password           | string    | null: false            |
| name               | string    | null: false            |
| profile            | text      | null: false            |
| occupation         | text      | null: false            |
| position           | text      | null: false            |


## prototypesテーブル

| Column            | Type       | Options                 |
|-------------------|------------|-------------------------|
| title             | string     | null: false             |
| catch_copy        | text       | null: false             |
| concept           | text       | null: false             |
| user              | references | null: false, 外部キー制約 |


## commentsテーブル

| Column            | Type       | Options                 |
|-------------------|------------|-------------------------|
| content           | text       | null: false             |


## users_commentsテーブル
| Column            | Type       | Options                 |
|-------------------|------------|-------------------------|
| user              | references | null: false, 外部キー制約 |
| comments          | text       | null: false             |


## prototypes_commentsテーブル

| Column            | Type       | Options                 |
|-------------------|------------|-------------------------|
| prototype         | references | null: false, 外部キー制約 |
| comments          | text       | null: false             |

