FROM nginx:alpine

# ลบไฟล์ขยะเดิมของ Nginx ออกก่อน (เพื่อความชัวร์)
RUN rm -rf /usr/share/nginx/html/*

# Copy ทุกอย่างในโฟลเดอร์ปัจจุบัน (index, css, folder img) 
# เข้าไปไว้ในโฟลเดอร์ที่ Nginx ใช้งาน
COPY . /usr/share/nginx/html/

EXPOSE 80 