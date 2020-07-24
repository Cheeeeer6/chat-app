# テーブル設計

## usersテーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association
 - has_many :room_users
 - has_many :rooms,  through :room_users
 - has_many :messages

## roomsテーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name   | string | null: false |

### Association
 - has_many :room_users
 - has_many :users, through :room_users
 - has_many :messages

## room_usersテーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user_id | references | null: false, foreign_kay: true |
| room_id | references | null: false, foreign_kay: true |

### Association
 - belongs_to :user
 - belongs_to :room 

## messageテーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     |
| user_id | references | null: false, foreign_kay: true |
| room_id | references | null: false, foreign_kay: true |

### Association
 - belongs_to :user
 - belongs_to :room
