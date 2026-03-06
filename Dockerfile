FROM nginx:alpine

# ลบไฟล์ขยะเดิมของ Nginx
RUN rm -rf /usr/share/nginx/html/*

# เปลี่ยนจาก COPY . เป็น COPY frontend/ 
# เพื่อก๊อปปี้เฉพาะไฟล์ในโฟลเดอร์ frontend ไปใส่ใน Nginx
COPY frontend/ /usr/share/nginx/html/

EXPOSE 80