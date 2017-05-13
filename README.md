因为项目中要使用谷歌开源的protocol buffer协议做IM 这两天配置了一下环境 写了一个demo
protocol buffer环境搭建参考网站
http://protobuf.io/#objc

ProtocolBuffer的使用

创建.proto文件
在项目中, 创建一个(或多个).proto文件
之后会通过该文件, 自动帮我们生成需要的源文件(比如C++生成.cpp源文件, 比如java生成.java源文件, Swift就生成.swift源文件 OC会生成.h.m文件)
源码规范
syntax = "proto2";

message Person {
    required int64 id = 1;
    required string name = 2;
    optional string email = 3;
}
//OC输出
protoc person.proto --objc_out="./"
swift输出
protoc person.proto --swift_out="./"



