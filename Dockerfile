# ดึง Base Image ของ n8n
FROM n8nio/n8n:latest

# ตั้งค่า Environment Variables พื้นฐาน
ENV N8N_HOST="localhost" 
ENV N8N_PORT="5678"
# Render ให้ SSL, จึงใช้ HTTPS
ENV N8N_PROTOCOL="https" 

# 🛑 Copy Workflows ทั้งหมดเข้าสู่ n8n Data Folder
COPY workflows /home/node/.n8n/workflows

# คำสั่งรัน n8n Service
CMD ["n8n"]
