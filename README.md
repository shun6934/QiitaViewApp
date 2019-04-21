# QiitaViewApp

- [QiitaViewApp](#qiitaviewapp)
  - [What](#what)
  - [Purpose](#purpose)
  - [Function](#function)
  - [Environment](#environment)
  - [Set up](#set-up)
    - [Premise](#premise)
    - [Homebrew](#homebrew)
    - [Carthage](#carthage)
  - [Reference](#reference)
  - [Qiita](#qiita)


## What
QittaのAPIを使用し、Qiitaの新着記事を表示し、記事を閲覧することができるiOSアプリ

## Purpose
1. Qiitaの新着記事をアプリとしてすぐに閲覧できるようにするため。

## Function
- Qiitaの新着記事を表示する。
- 新着記事をタップした際にそのサイトを表示する。

## Environment
- Xcode 10.1
- Swift 4.2

## Set up
### Premise
- AppStoreでXcodeを入れていること
- Xcodeで`Create a new Xcode project` を行い、プロジェクトを立ち上げている。

### Homebrew
1. ターミナルを開く
2. `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"` を叩いて、インストール。
3. `brew -v` で確認。`Homebrew <version>` が表示されたら、インストール完了

### Carthage
1. `brew install carthage` を叩き、Carthageをインストール
2. 立ち上げているプロジェクトまで移動
3. `touch Cartfile` でファイル作成する
4. `vi Cartfile` で今回使用するライブラリを記述。
   ```
   github "Alamofire/Alamofire" ~> 4.0
   github "SwiftyJSON/SwiftyJSON" ~> 4.0
   ```
5. `carthage update` でライブラリをプロジェクト内に入れる。

## Reference
- [Qiita API Document](https://qiita.com/api/v2/docs)
- [SwiftyJson](https://github.com/SwiftyJSON/SwiftyJSON)
- [Alamofire](https://github.com/Alamofire/Alamofire)

## Qiita
Qiitaにこの開発の流れを書いたため、載せておく。
1. [APIを使って、Qiitaの記事を表示する。Part.1](https://qiita.com/shun6934/items/f4600c2a2e8b45d1219e)
2. [APIを使って、Qiitaの記事を表示する。Part.2](https://qiita.com/shun6934/items/64d5d44ffa98b12858d4)
3. [APIを使って、Qiitaの記事を表示させる。Part.3](https://qiita.com/shun6934/items/81028970c15dc9de05f1)