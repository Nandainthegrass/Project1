FROM python:3.11-slim

WORKDIR /

COPY . .

RUN apt-get update && apt-get install -y \
    libenchant-2-2 \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 10000

CMD [ "python", "main.py" ]