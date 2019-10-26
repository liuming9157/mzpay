# 开源刷脸支付代理商系统(明志支付)

#### 作者：明志科技

#### QQ交流群：147835195

#### 体验地址：https://pay.mzyun.tech  (账号：daili1,密码：123456)

## 基本功能

1. 三级代理

2. 聚合支付（微信、支付宝）

## 安装方法：

###### Step1:

`git clone https://gitee.com/liuming9157/mzpay`  
或  
`git clone https://github.com/liuming9157/mzpay`

###### Step2:

在根文件夹下讲`.env.sample`文件名修改为`.env`，并修改数据库配置 

###### Step3:  

`php think install`  

安装完成。


开源不易，希望大家能给个star.  

## 郑重说明：

刷脸支付系统涉及硬件、软件和网络三大系统，本系统只是软件系统之一，仅供研究。对刷脸支付感兴趣的可以加QQ群共同交流。

## 常见问题

1.不知道怎么用git?  
答：如果不知道怎么用git,可以直接从Gitee或者Github上下载安装包；也可以添加QQ群从群文件中下载。  

2.找不到`.env.sample`文件？  
答：在部分电脑中，`.env.sample`因为是系统文件无法显示，建议使用SublimeText等开发工具，即可看到并修改。  

3.执行`php think intall`命令失败？  
答：执行此命令失败多数是因为数据库没有配置好，请检查Step2是否完成。  

4.安装成功，但是打开后显示不正常。  
答：尝试以下方法：  
（1）将runtime文件夹权限修改为777；  
（2）将网站根目录设置为public文件夹；
（3）将`.env`文件中debug设置为true寻找原因  