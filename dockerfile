# นายกิตติคุณ กิจวิบูลย์สิน 6604101307
FROM python:3.9-slim
LABEL maintainer="ktkwenw@gmail.com"
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY \requirements.txt .
EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
