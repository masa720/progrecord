## usersテーブル
|Column|Type|option|
|------|----|------|
|first_name|string|null:false|
|last_name|string|null:false|
|email|string|null: false, unique: true|
|password|string|null:false|

### Associatiton
- has_many :negotiations
- has_many :comments


## customersテーブル
|Column|Type|option|
|------|----|------|
|name|string|null:false|
|category|string|null:false|
|person|string|null:false|
|position|string||
|tel|string||
|mobile|string||
|fax|string||
|email|string||
|product|string|null:false|
|remarks|text||

### Associatiton
- has_many :negotiations


## negotiationsテーブル
|Column|Type|option|
|------|----|------|
|customer|references|null:false,foreign_key: true|
|year|integer|null:false|
|month|integer|null:false|
|day|integer|null:false|
|title|string|null:false|
|body|text|null:false|
|content|string|null:false|
|importance|string|null:false|
|user_id|references|null:false,foreign_key: true|
|department|string|--------|
|way|string|null:false|
|next_nego|string||
|next_year|integer||
|next_month|integer||
|next_day|integer||

### Associatiton
- belongs_to :user
- belongs_to :customer
- has_many :comments

## commentsテーブル
|Column|Type|option|
|------|----|------|
|negotiation_id|references|null:false,foreign_key: true|
|year|integer|null:false|
|month|integer|null:false|
|day|integer|null:false|
|body|text|null:false|
|user_id|references|null:false,foreign_key: true|
|way|string|null:false|
|limit|string||
|next_nego|string||
|next_year|integer||
|next_month|integer||
|next_day|integer||

### Associatiton
- belongs_to :negotiation
- belongs_to :user