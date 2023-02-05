FROM python:3.6
WORKDIR /Project/chatGPT-API

COPY requirements.txt ./
RUN pip install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple

COPY . .

CMD ["gunicorn", "start:app", "-c", "./gunicorn.conf.py"]