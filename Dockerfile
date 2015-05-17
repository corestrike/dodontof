# CentOSをベースに
FROM centos:centos6

# 作成者
MAINTAINER corestrike
 
# RUN コマンドを使って、yum コマンドを実行してインストールする 
RUN yum update -y && yum -y upgrade
RUN yum install -y sudo
RUN yum install -y passwd
RUN yum install -y httpd

# rubyをインストール
RUN yum install -y ruby rubygems
RUN ln -s /usr/bin/ruby /usr/local/bin/ruby

# どどんとふをインストール
RUN yum install -y wget unzip
RUN wget -O DodontoF.zip http://www.dodontof.com/DodontoF/DodontoF_Ver.1.46.18.zip
RUN unzip DodontoF.zip
RUN echo \<Directory "/var/www/html/DodontoF"\> >> /etc/httpd/conf/httpd.conf
RUN echo Options FollowSymLinks ExecCGI >> /etc/httpd/conf/httpd.conf
RUN echo AddHandler cgi-script .rb .pl >> /etc/httpd/conf/httpd.conf
RUN echo AddHandler application/x-shockwave-flash .swf >> /etc/httpd/conf/httpd.conf
RUN echo \</Directory\> >> /etc/httpd/conf/httpd.conf
RUN mv /DodontoF_WebSet/public_html/DodontoF /var/www/html
RUN mv /DodontoF_WebSet/public_html/imageUploadSpace /var/www/html
RUN mv /DodontoF_WebSet/saveData /var/www
RUN chmod 705 -R /var/www/html/DodontoF
RUN chmod 606 -R /var/www/html/DodontoF/log.*
RUN chmod 707 -R /var/www/html/imageUploadSpace
RUN chmod 707 -R /var/www/saveData
RUN rm -rf DodontoF.zip
RUN rm -rf DodontoF_WebSet

# EXPOSE コマンドを使って、ポートを解放
EXPOSE 80

# ENTORYPOINT コマンドを使って、コンテナ起動時に実行するコマンドを与える
ENTRYPOINT /etc/init.d/httpd start && /bin/bash