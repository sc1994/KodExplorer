# KodExplorer

## 不同点

- 添加了docker支持。
- 优化部署流程。

---

## 直接使用已经构建的镜像

```bash
# pull
docker pull daocloud.io/sc1994/kod
# run
docker run KodExplorer -p 9999:80
```

---

## 或者自己构建

```bash
# clone
git clone https://github.com/sc1994/KodExplorer.git
# build
cd KodExplorer
docker build -t KodExplorerApp .
# run
docker run KodExplorerApp -p 9999:80
```

## volumes

- YAML文件配置

```YAML
kod:
  image: daocloud.io/sc1994/kod
  privileged: false
  restart: always
  ports:
  - 9999:80
  volumes:
  - /kod:/var/www/html/data/User/admin/home
```

- 需要注意的是/kod 文件需要设置读写权限