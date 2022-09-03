FROM ubuntu:20.04
RUN apt-get update && apt install python3 -y && apt install python3-pip -y
RUN pip3 install flask
COPY app.py /opt/app.py
EXPOSE 8080
CMD ["python3","/opt/app.py"]
