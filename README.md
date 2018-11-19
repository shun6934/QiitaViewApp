# QittaView_App
- iOSApp

## Consept
- Qiitaの新着記事をすぐに見ることができ、すぐにサイトに飛ぶことができる。

## Function
- APIを使用し、Qiitaの新着記事を表示する。
- 新着記事をタップした際にQiitaのサイトに飛ぶ。

## Set up
### Premise
- AppStoreでXcodeを入れていること
- Xcodeでプロジェクトを立ち上げている。

### Homebrew
1. ターミナルを開く
2. `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"` を叩くとインストールされる。
3. `brew -v` で確認。`Homebrew <version>` が表示されたら、インストール完了

### Carthage
1. `brew install carthage` を叩き、インストール
2. 立ち上げているプロジェクトまで移動
3. `touch Cartfile` でファイル作成　-> `vi Cartfile` でファイル編集
4. `carthage update` でライブラリを入れる。


## 参考サイト
- [APIを使って、Qiitaの記事を表示する。Part.1](https://qiita.com/shun6934/items/f4600c2a2e8b45d1219e)
- [APIを使って、Qiitaの記事を表示する。Part.2](https://qiita.com/shun6934/items/64d5d44ffa98b12858d4)