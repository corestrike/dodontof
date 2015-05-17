# どどんとふ on Docker
## 「どどんとふ」とは
[たいたい竹流](https://github.com/torgtaitai)氏によって制作されたオンラインTRPGセッションツールです。  
詳細は、[本家サイト](http://www.dodontof.com/index.php)

## 概要
どどんとふのDockerイメージを作成するDockerFileです。  
Dockerのインストールに関しては、適宜ググってください。  
```
> yum install docker
```

## Dockerで動かす
クリーンな状態のどどんとふを作成することができます。
```
> docker run -d -it -p 80:80 corestrike/dodontof
```

## 稼動確認
ブラウザから以下のアドレスを閲覧してください。
```
http://<ドメインorIP>/DodontoF/DodontoF.swf
```

## 環境
* OS: CentOS 5.6
* Apache: v2.2（yumでインストール）
* ruby: v1.8.6（yumでインストール）
* rubygem: v2.2.0（yumでインストール）
* どどんとふホーム: /var/www/html/DodontoF

## サンクス
[どどんとふ＠えくすとり〜む](http://www.dodontof.com/index.php)