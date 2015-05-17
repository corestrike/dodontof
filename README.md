# どどんとふ on Docker
## 「どどんとふ」とは
[たいたい竹流](https://github.com/torgtaitai)氏によって制作されたオンラインTRPGセッションツールです。  
詳細は、[本家サイト](http://www.dodontof.com/index.php)を参照ください。

## Dockerとは
言わずと知れたコンテナ型仮想化ソフトウェア。  
ハイパーバイザ型仮想化ソフトウェアに比べ、高速な立ち上がりやメモリ空間の節約などと秀でている部分も多いです。  
コマンド一発でサーバを立ち上げられるのは非常に魅力的であり、またコンテナ間の通信なども勝手にやってくれたりする優れものです。  
コンテナとしてイメージ化しているため環境を汚さないのもポイントが高い。
よくわかんない人は、Dockerをインストールして、下記コマンドを叩くと幸せになれます。  

## 概要
どどんとふのDockerイメージを作成するDockerFileです。  
Dockerのインストールに関しては、適宜ググってください。
```
＞ yum install docker
```

## Dockerで動かす
クリーンな状態のどどんとふを作成することができます。
```
＞ docker run -d -it -p 80:80 corestrike/dodontof
```

## 稼動確認
ブラウザから以下のアドレスを閲覧してください。
```
http://<ドメインorIP>/DodontoF/DodontoF.swf
```

## 環境
* OS: CentOS 5.6
* Apache: v2.2（yumでインストール）
* ruby: v1.8.7（yumでインストール）
* rubygem: v2.4.7（yumでインストール）
* どどんとふホーム: /var/www/html/DodontoF

## 注意事項
これといってチューニングはしていませんので、dockerで起動後、適宜チューンしてください。
`docker attach`や`docker commit`を駆使すれば、いい感じになるはずです。

## ライセンス
本家が修正BSDなので、それを踏襲します。

## スペシャルサンクス
[どどんとふ＠えくすとり〜む](http://www.dodontof.com)