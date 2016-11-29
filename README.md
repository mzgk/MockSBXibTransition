# 目的
- 機能・レイアウトがほぼ同じ画面を、UITabBarItemとModalで使い回す方法の調査


# 概要
- UITabBarアプリ（Item:2）
- TabBarItemから表示する画面
- TabBarItemの画面からModalで表示する画面
- 上記２つで同じ画面を使い回す方法


# 構成
- StoryBoard
  - Main : UITabBarをSB分割
  - First : Tab1。MainからSB分割してSegue接続。Inputを表示。
  - Second : Tab2。MainからSB分割してSegue接続。Listを表示。
- Xib
  - Input : Firstに表示。SecondのボタンからModal
  - List : Secondに表示。FirstのボタンからModal
- ViewController
  - Input.swift : Input画面のVC
  - List.swift : List画面のVC


# 確認
- TabBarItemからの画面、Modalでの画面で表示内容を変更
  - Segue : 閉じるボタンを非表示。ラベルに"From Tab"。
  - Modal : 閉じるボタンを表示。ラベルに"From Modal"。


# 手順
## TabApplication
- TabApplicationで作成をスタート

## StoryBoard分割
- Tab単位にStoryBoard分割を行う（余計な変更を防ぐ）
- TabごとのViewController -> Editor -> Refactor to StoryBoard

## Tab,Modalで使い回す画面の作成
### ViewController
- File -> New -> File... -> Cocoa Touch Class -> ViewController
- loadView()をoverride **※ここが重要**

### Xib
**※ここが重要**
- File -> New -> File... -> View
- File's Owner -> Custom Class -> 作成したViewController
- UIの作成
- Outlet,Actionの作成

## 使い回す画面をTabのVCに設定
**※ここが重要**
- Tabで表示させる場合の設定
- 分割したStoryBoardのViewControllerからViewを削除（DocOutlineで選択し、delete）
- Custom Classを使い回す画面のViewControllerクラスに変更する
- 元々あったFirstViewController, SecondViewControllerは不要になるので削除してOK
- この状態でビルドすると、まずはTabでの画面表示ができる

## 使い回す画面をModalで表示させる
- 普段の通り、xibを指定して起動させる方法
- 引き継ぐ値を設定できる（ただし、UIへの設定はまだできない。変数へのみ）


# 参考
## メイン
- [使い回す](http://techlife.cookpad.com/entry/2015/06/24/190546)
- [xibをModal](http://www.bokukoko.info/entry/2014/11/15/Swift_%E3%81%A7_xib_%E3%81%A7%E3%83%AC%E3%82%A4%E3%82%A2%E3%82%A6%E3%83%88%E3%81%95%E3%82%8C%E3%81%9F%E3%83%A2%E3%83%BC%E3%83%80%E3%83%AB%E3%82%92%E5%87%BA%E3%81%99)

## サブ
- [SotryBoardとVC](http://crossbridge-lab.hatenablog.com/entry/2015/12/14/073000)
- [SotryBoardとVC](http://qiita.com/midori004/items/4a67dc70af582aa91eec)
- [SotryBoardとVC](http://blog.sgr-ksmt.org/2016/05/05/storyboard_instantiatable/)
