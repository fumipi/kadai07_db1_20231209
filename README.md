# ブックマークアプリ

## DEMO

  - デプロイしている場合はURLを記入（任意）

## 紹介と使い方

  - G's academyのPHP課題２回目3回目、DBで作成したものです
  - 書籍名とURLとコメントを登録すると、DBに溜まり、後で見返せます
  - さらに、3回目に学んだ更新・削除機能を追加しました。

## 工夫した点

  - 講義で習ったものをテンプレにしつつ、Bootstrapとjqueryをなくし、新たにCSSを書いてクリーンなイメージのデザインにしました。
  - タブで登録画面と、DBからのリスト画面を切り替えられるようにしました。
  - AmazonのURLを登録すると、データ一覧では本の表紙がサムネイルで見れるようにしました。

## 苦戦した点

  - ラジオボタンとCSSでタブ切り替えを作る際、中にフォームが入っている場合、inputを全部display noneにしてラジオボタンを消すとフォームごと消えてしまうので、typeがラジオボタンのものだけ選択して消すようにすること。フォームにラジオボタンがある時はidをつけても良さげ。
  - リストは表形式で表示し、リンクは書名につけました。

## 参考にした web サイトなど

  - CSSでタブを作る
    https://pote-chil.com/html-maker/tab
- Amazon画像のサムネイルを取得する
    https://www.ipentec.com/document/internet-get-amazon-product-image



