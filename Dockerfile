FROM python:alpine
WORKDIR /app
COPY app /app/app.py
RUN apk add build-base linux-headers
RUN python -m pip install psutil flask
ENTRYPOINT [ "python3","app.py" ]
