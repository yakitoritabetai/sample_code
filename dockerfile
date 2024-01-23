FROM python:3.8.0

RUN echo "now building..."


ENV https_proxy "http://id:password@proxy:port"
ENV http_proxy ${https_proxy}

# 重いので割愛
# RUN apt-get update && apt-get upgrade -y

# タイムゾーンの設定
RUN apt-get install -y tzdata && \ 
      ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

ARG TZ=Asia/Tokyo

# 必要なライブラリをインストール
RUN pip install numpy scikit-learn pandas
