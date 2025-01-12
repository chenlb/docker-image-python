FROM --platform=${TARGETPLATFORM:-linux/amd64} chenlb/alinux3:0.1.2

# 安装 python3.11
RUN yum remove -y python3
RUN yum install -y python3.11 python3.11-pip

RUN adduser admin

# 安装 poetry, 先安装 venv (安装 .local, 它会被自动加上 PATH 中)
ARG PYTHON_HOME=/home/admin/.local
RUN python3 -m venv ${PYTHON_HOME}

# 使用阿里云的 pypi 源 https://mirrors.aliyun.com/pypi/simple/
# 更新 pip
RUN ${PYTHON_HOME}/bin/python -m pip install -U -i https://mirrors.aliyun.com/pypi/simple/ pip

# 安装 poetry
RUN ${PYTHON_HOME}/bin/pip install --no-cache-dir -i https://mirrors.aliyun.com/pypi/simple/ poetry

# pip 默认配置
COPY --chown=admin:admin pip.conf /home/admin/.pip/

# 给 admin 权限
RUN chown -R admin:admin ${PYTHON_HOME}
