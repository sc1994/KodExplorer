# KodExplorer

### 不同点
- 添加了docker支持。
- 优化部署流程。
---
### 直接使用已经构建的镜像
`daocloud.io/sc1994/kod`  运行在容器的80端口
---
### 或者自己构建
```
# clone 
git clone https://github.com/sc1994/KodExplorer.git
# build 
cd KodExplorer
docker build -t KodExplorerApp .
# run 
docker run KodExplorerApp -p 9999:80
```
