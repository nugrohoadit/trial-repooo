# Pakai base image python
FROM python:3.9-slim

WORKDIR /app
COPY . .

# Sengaja install library jadul (Flask & Requests) buat testing vuln scanner
RUN pip install Flask==2.0.1 requests==2.19.1 

EXPOSE 5000
CMD ["python", "app.py"]