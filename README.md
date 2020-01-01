# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


## usersテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer|null: false|
|name|string|null: false, index: true|
|email|string|null: false|
|password|string|null: false|

### Association
- has_many :animals

## animalsテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer|null: false|
|name|string||
|comment|text||
|image|string||

### Association
- has_many :tasks
- belongs_to :user

## tasksテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer|null: false|
|comment|text|null: false|

### Association
- belongs_to :animal