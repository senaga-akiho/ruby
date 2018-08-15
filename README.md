# ruby
queue.rb のクラスが「Queue」と作成しようとしたがエラーがでたので(すでに存在している？)
のでクラス名「Ueue」にしています

baseに属性として配列を持たせて，stack,queueに継承させているつもりです。
ですが，baseにそのままArrayを継承させて,それをまた継承させるのか．改善できるのかまで確認できてません。

baseのbox(継承させたいArray)の継承のさせ方が正しいかわかりませんでした。↓を参考にしました
https://qiita.com/metheglin/items/094022937fba1a17418f

queueとstackのプッシュ動作が，一緒でいいなかなと思ったので，
baseのプッシュをそのまま使ってます。↓を参考にしました
https://qiita.com/jnchito/items/62b9bab0455ed0f47d19

社員モデル(member)は，宣言のときに引数をもらって作成するようにしています