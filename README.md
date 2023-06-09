# アプリケーション名
CAFE LOG

# アプリケーション概要
飲んだコーヒーの感想を画像付きで投稿できるコーヒーメモアプリです。

# URL
https://cafelog.onrender.com/

# テスト用アカウント
・Basic認証パスワード：2222

・Basic認証ID： admin

・メールアドレス1：tarou@hoge

・メールアドレス2：hanako@hoge

・パスワード：a11111

# 利用方法
## コーヒーメモを投稿する
1.トップページ(コーヒーメモ一覧ページ)のヘッダーから新規登録を行う。

2.「投稿する」ボタンから、飲んだコーヒーの内容(画像、タイトル、日付、感想)を投稿する。

## 他のユーザーと交流する
1.コーヒーメモ一覧ページの気になる投稿の画像をクリックし、コーヒーメモ詳細を表示する。

2.コメント入力フォームにコメントを入力し、「コメントする」ボタンをクリックする。

## コーヒー情報を利用する
1.「Topics」に表示されているコーヒー情報の画像をクリックし、コーヒー情報詳細を表示する。

2.コーヒーを選ぶ時やコーヒーメモ作成の参考にする。

# アプリケーションを作成した背景
コーヒーを飲む家族、友人、知人に聞き取りを行ったところ、普段コーヒーを飲むものの、いつも同じものを
飲んでいてどんなコーヒーがあるか分からない、自分の好みの味や風味が分からず惰性で飲んでおり楽しめていない
という課題があることが判明した。さらに聞き取りを行うと、コーヒーの種類が多くどれから飲むのが良いか
分からないこと、自分の好みを言語化する機会がないことが原因であるという仮説にたどり着いた。そのため、
おすすめのコーヒー情報を活用しコーヒー選びの参考にしてもらい、コーヒーの記録をつけることで自分の好みを
発見し、他のユーザーと交流することで継続的にコーヒーを楽しんでもらえ、SNSアプリを開発することにした。

# 洗い出した要件
https://docs.google.com/spreadsheets/d/1B4zIBxXlegSl5fXK2BI4eAFZAcpl9aYtGIF2fA9gKfg/edit#gid=982722306

# 実装した機能
## トップページ
[![Image from Gyazo](https://i.gyazo.com/95cac7b9c063c7d30eea409b2c99cec9.gif)](https://gyazo.com/95cac7b9c063c7d30eea409b2c99cec9)

## コーヒーメモ詳細ページ
[![Image from Gyazo](https://i.gyazo.com/084990b52466ee2121b4757aad66c61c.gif)](https://gyazo.com/084990b52466ee2121b4757aad66c61c)

## コメント機能
[![Image from Gyazo](https://i.gyazo.com/ef1a14f8f4b3162da36b2255fe04352f.gif)](https://gyazo.com/ef1a14f8f4b3162da36b2255fe04352f)

## ユーザーマイページ
[![Image from Gyazo](https://i.gyazo.com/c398702460af1ca0137b35ccb3084db2.png)](https://gyazo.com/c398702460af1ca0137b35ccb3084db2)

# 実装予定の機能
今後、管理者(admin)管理機能とコーヒー情報投稿機能、お気に入り機能を実装予定です。

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/8ac935f9b5ad0decf804661b16f4bcf2.png)](https://gyazo.com/8ac935f9b5ad0decf804661b16f4bcf2)

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/90f943241efff4a88d60c47985bbb495.png)](https://gyazo.com/90f943241efff4a88d60c47985bbb495)

# 開発環境
## バックエンド
・Ruby 2.6.5

・Rails 6.0.0

## フロントエンド
・HTML/SCSS

## ライブラリ
・devise (サインアップ、サインイン)

・ActiveRecord (画像投稿)

・ActiveHash (擬似的なテーブルの作成)

・RSpec (テストコード)

・RuboCop (リントチェック)

## インフラ
・Render

・PostgreSQL (データベース)

# ローカルでの動作方法
% git clone https://github.com/atsushi0610

% cd cafelog

% bindle install

% yarn install

# 工夫したポイント
「シンプル」であることを心がけました。アプリケーションの開発にあたり参考にした
アプリケーションは入力項目が非常に多く、普段コーヒーを意識せずに飲んでいる方には
面倒な入力が多いと感じていました。その分、管理者がコーヒー情報を発信することで、
コーヒーを飲む際の参考にし、自身の体験の振り返りができることを目指しました。