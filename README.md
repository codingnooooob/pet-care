# README
  ##pet care
  ![top](https://user-images.githubusercontent.com/58481033/80787872-a23c5280-8bc2-11ea-971e-1c221dd61a7c.jpg)
  ペットの管理ツールです。
  僕自身生き物を複数飼育しており、こういったツールがあればいいなと思い作成しました。
##使い方

  「signup」からアカウントを新規作成する
    ※以後は「login」からログインできる。「パスワードをお忘れですか？」からパスワードの再設定も可能
  ###signup画面
  ![signup](https://user-images.githubusercontent.com/58481033/80787942-d283f100-8bc2-11ea-8b13-c39926825cde.jpg)
  ###login画面
  ![login](https://user-images.githubusercontent.com/58481033/80787923-c861f280-8bc2-11ea-8568-1273cc4565c5.jpg)
  ###パスワード再設定のメール送信画面
  ![forgot_password](https://user-images.githubusercontent.com/58481033/80787968-dfa0e000-8bc2-11ea-9c69-b4a5bfa1e097.jpg)

  「home」画面右のサイドバー上部の「＋」より、ペットを新規登録画面へ遷移
  ※今日のタスクがあるペット、明日のタスクがあるペットの一覧が表示され、アイコンをクリックすることで詳細画面に遷移できる。
  ※サイドバーのアイコンからでも詳細画面に遷移可能
  ※ヘッダー右上のアイコン左よりホーム画面に遷移でき、右のアイコンでログアウトできる
  ###home画面
  <img width="1439" alt="home" src="https://user-images.githubusercontent.com/58481033/80788001-f6dfcd80-8bc2-11ea-815b-be3f73dee601.png">

  名前と画像を登録後、「add」で追加
  ###ペットの新規登録画面
  ![new](https://user-images.githubusercontent.com/58481033/80788017-03642600-8bc3-11ea-8706-6d1c4cd13a23.jpg)

  ペットの詳細画面右下より、タスクの名前、開始日と次回までの間隔を設定し、「登録」を押下しタスクを登録する。
  一覧に登録したタスクが表示される。「状態」欄で現在の状態を確認できる。
  また、終了したタスクは、「！」アイコンをクリックすることで達成済に切り替えられる。
  
  ！　　　・・・アクティブとなっているタスク
  レ点　　・・・アクティブとなっているタスクのうち、達成済のタスク
  一時停止・・・アクティブでないタスク

  間違って達成済にしてしまったタスクでも、当日中なら状態欄のアイコンをクリックし元に戻すことができる。
  「削除」欄のアイコンをクリックすることでタスクを削除することも可能。

  ※ホーム画面と同様に、サイドバーのアイコンからペットの詳細画面に遷移できる
  ※ホーム画面と同様に、ヘッダー右上のアイコン左よりホーム画面に遷移でき、右のアイコンでログアウトできる
  ###ペットの詳細画面
  <img width="1440" alt="show" src="https://user-images.githubusercontent.com/58481033/80788081-2393e500-8bc3-11ea-8a47-b2f5b140a0f9.png">
  
  左下の編集ボタンより、ペットの名前、画像、メモの編集ができる編集画面へ遷移する。
  ###編集画面
  ![edit](https://user-images.githubusercontent.com/58481033/80790680-791fc000-8bca-11ea-8cf3-aa8f9ab893c4.jpg)

  名前、画像、メモの編集を行える。
  入力後、「edit」ボタンで決定

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