## アプリケーション概要
- 面会や交渉の内容記録、引継ぎ、進捗管理プリ

## アプリケーションの機能一覧
- User管理
  - 新規登録/ログイン/ログアウト/User情報編集機能
- 取引先登録
  - 一覧表示/検索/詳細表示/新規登録/編集/削除機能
- 商談登録
  - 一覧表示/検索/詳細表示/新規登録/編集/削除機能
- コメント機能
  - 一覧表示/新規登録/編集/削除機能

### 特に工夫した点
- 必須項目入力漏れや記入誤りがあると登録ボタンを押さずとも、すぐにバリデーションチェックがかかる
- 自分の投稿に進捗やコメントがあると新着通知バッジがつく
- 記事を削除する際、確認アラートを出し、誤って削除することを防止
- デザインをすっきりシンプルに、カラーも3色に抑えた

## アプリケーション内で使用している技術一覧
|種別|名称|
|----|----|
|開発言語|Ruby(ver 2.5.1)|
|フレームワーク|Ruby on Rails(ver 5.2.3)|
|マークアップ|HTML(Haml),CSS(Sass)|
|フロントエンド|JavaScript(jQuery)|
|DB|MySQL|
|本番環境|AWS EC2|
|自動デプロイ|capistrano|
|ユーザー管理|devise(Gem)|
|検索機能|ransack(Gem)|

## データベース

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
- has_many :cnt_comments
- has_many :active_notifications, class_name: "Notification", foreign_key: "visiter_id", dependent: :destroy
- has_many :passive_notifications, class_name: "Notification", foreign_key: "visited_id", dependent: :destroy

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
- belongs_to :category

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
- has_many :cnt_comments, dependent: :destroy
- belongs_to :content
- belongs_to :department

## continuationsテーブル
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
- has_many :cnt_comments, dependent: :destroy
- has_many :notifications, dependent: :destroy

## commentsテーブル
|Column|Type|option|
|------|----|------|
|negotiation_id|references|null:false,foreign_key: true|
|body|text|null:false|
|user_id|references|null:false,foreign_key: true|

### Associatiton
- belongs_to :negotiation
- belongs_to :user
- has_many :notifications, dependent: :destroy

## cnt_commentsテーブル
|Column|Type|option|
|------|----|------|
|negotiation_id|references|null:false,foreign_key: true|
|continuation_id|references|null:false,foreign_key: true|
|body|text|null:false|
|user_id|references|null:false,foreign_key: true|

### Associatiton
- belongs_to :user
- belongs_to :negotiation
- belongs_to :continuation
- has_many :notifications, dependent: :destroy

## categoriesテーブル
|Column|Type|option|
|------|----|------|
|name|string|null:false|

### Associatiton
- has_many :customers

## contentsテーブル
|Column|Type|option|
|------|----|------|
|name|string|null:false|

### Associatiton
- has_many :negotiations

## departmentsテーブル
|Column|Type|option|
|------|----|------|
|name|string|null:false|

### Associatiton
- has_many :negotiations

## notificationsテーブル
|Column|Type|option|
|------|----|------|
|visiter_id|integer|null:false|
|visited_id|integer|null:false|
|continuation_id|integer||
|comment_id|integer||
|cnt_comment_id|integer||
|action|string|null:false|
|checked|boolean|null:false|

### Associatiton
- belongs_to :continuation, optional: true
- belongs_to :comment, optional: true
- belongs_to :cnt_comment, optional: true
- belongs_to :visitor, class_name: 'User', foreign_key: 'visitor_id', optional: true
- belongs_to :visited, class_name: 'User', foreign_key: 'visited_id', optional: true