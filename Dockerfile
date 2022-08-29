FROM python:buster 
WORKDIR /app
COPY app /app/app.py
RUN pip3 install flask && pip3 install psutil
ENTRYPOINT [ "python3","app.py" ]
