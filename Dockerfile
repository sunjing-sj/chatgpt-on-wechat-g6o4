# ʹ�ùٷ�Python����ʱΪ������
FROM python:3.9-slim

# ���ù���Ŀ¼Ϊ/app
WORKDIR /app

# ����ǰĿ¼���ݸ��Ƶ�������/appĿ¼��
COPY . /app

# ��װ����İ���ʹ��pip��requirements.txt�ļ�
# ������build�׶����ɵ��ļ�������pip�Ļ��棬�����һ��RUNָ��������������Լ��پ����С
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install --no-cache-dir -r requirements-optional.txt

# ����python��������app.py
CMD ["python", "./app.py"]