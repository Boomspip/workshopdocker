FROM python:3.6-alpine
# RUN echo first Build Docker images

WORKDIR /app
#สร้าง DIRในimage /app เข้ามายุใน/app

ADD . /app/www
# สร้างfolder www

COPY . .
# copyทุกอย่างไปในapp

#VOLUME ["/app"]

RUN pip3 -V
#ให้มันrun pip versionให้

# copy . /app
#copy file ทุกอย่างที่อยู่layerเดียวกันกับdocker file ไปยุใน folder /app

RUN pip3 install flask


EXPOSE 5003
#ใส่port5003ให้server.py
CMD ["python","server.py"]
# RUN python3 server.py แบบนี้ผิด เพราะimageยังสร้างไม่เสร็จ ต้องสั่งในCMD
