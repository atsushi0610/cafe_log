## usersテーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | --------------------------|
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

### Association
- has_many :memos
- has_many :comments


## memosテーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| title      | string     | null: false                    |
| kind_id    | integer    | null: false                    |
| taste_id   | integer    |                                |
| aroma_id   | integer    |                                |
| roast_id   | integer    |                                |
| brand      | string     |                                |
| drink_id   | integer    |                                |
| impression | text       | null: false                    |
| date       | date       | null: false                    |
| user       | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_many :comments


## commentsテーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| comment | text       | null: false                    |
| user    | references | null: false, foreign_key: true |
| memos   | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :memo


## adminsテーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | --------------------------|
| last_name          | string | null: false               |
| first-name         | string | null: false               |
| last_name_kana     | string | null: false               |
| first_name_kana    | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| department         | string | null: false               |
| class              | string | null: false               |

### Association
- has-many :topics


## topicsテーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| title    | string     | null: false                    |
| genre_id | integer    | null: false                    |
| topic    | text       | null: false                    |
| admin    | references | null: false, foreign_key: true |

### Association
- belongs_to :admin