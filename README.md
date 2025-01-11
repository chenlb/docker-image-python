
## Python 3 环境

主要配置：

* PYTHON_HOME=/home/admin/.local
* 默认 PyPI 源（pip.conf）：
    * 阿里云 PyPI 源 http://mirrors.aliyun.com/pypi/simple/
    * 清华大学 PyPI 源 https://mirrors.tuna.tsinghua.edu.cn/pypi/web/simple
    * 华中科学大学 PyPI 源 https://mirrors.ustc.edu.cn/pypi/simple

主要 python 包版本：

* python 3.11.11
* pip 24.3.1
* poetry 2.0.0

构建命令
```bash
# sh build.sh <tag-version>
# sh build.sh latest
sh build.sh 3.11.11
```
