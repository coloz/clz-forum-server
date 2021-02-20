# clz-forum  
[原网站](https://www.arduino.cn/)使用的是Discuz，太过陈旧，这几年一直在寻找一个能够替换的方案，但市面上的社区软件总是不尽人意，所以最终还是只有自己动手写个，名字随便了，就叫clz-forum吧......  

[演示站点](https://c.arduino.cn/)  

**无缝迁移**  

为了不影响原有网站的运行，本项目计划，且长期保持和Discuz程序的共存。  
当前版本直接使用Discuz的数据库结构。  

**参考借鉴**  

本项目设计过程中参考了如下项目：  
[discuzX](https://www.discuz.net/library/library/database/x3/x3_index.htm)  
v2ex  
flarum  
discuzQ  
简书  
掘金  

## 项目构成
* [clz-forum-frontend](https://github.com/coloz/clz-forum-frontend)  
这是社区的前端，使用Angular开发。  
* [clz-forum-server](https://github.com/coloz/clz-forum-server)  
这是社区的服务器端，使用nestJS、Prisma开发。

# clz-forum-server  

## 安装部署  
```
git clone https://github.com/coloz/clz-forum-server
cd clz-forum-server
npm i
npx prisma generate
```

```
nest start
```

## API设计  