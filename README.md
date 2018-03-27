# liuyuqi/alpine-mongo

A minimal mongodb image based on alpine. Its size is only 142 MB. The default behavior is to run mongo in '--auth' mode.

## Install

To download this image from the public docker hub:

`$ docker pull liuyuqi/alpine-mongo`

To re-build this image from the dockerfile:

`$ docker build --tag liuyuqi/alpine-mongo .`

## Usage

Make sure the host has a /var. And add MONGO_USERNAME、MONGO_PASSWORD to ENV.

`$ docker run -d -e "MONGO_USERNAME=your-username" -e "MONGO_PASSWORD=your-password" -v /var:/var -p 27017:27017 liuyuqi/alpine-mongo`
