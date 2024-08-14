# Файл имеет название Dockerfile
# Без расширений и с большой буквы

FROM python:3.12.5-slim-bullseye
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache -r /app/requirements.txt
COPY . /app/bot
CMD ["python", "-m", "bot"]
