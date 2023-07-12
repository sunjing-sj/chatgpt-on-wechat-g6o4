# 使用官方Python运行时为父镜像
FROM python:3.9-slim

# 设置工作目录为/app
WORKDIR /app

# 将当前目录内容复制到容器的/app目录中
COPY . /app

# 安装所需的包，使用pip和requirements.txt文件
# 对于在build阶段生成的文件，例如pip的缓存，最好在一条RUN指令的最后清理掉，以减少镜像大小
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install --no-cache-dir -r requirements-optional.txt

# 运行python程序，例如app.py
CMD ["python", "./app.py"]