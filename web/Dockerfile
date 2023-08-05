FROM python:3.9.7-slim

ENV PYTHONUNBUFFERED = 1

COPY . /app

WORKDIR /app

RUN python3 -m venv /opt/venv

RUN /opt/venv/bin/pip install --upgrade pip && \
    /opt/venv/bin/pip install -r requirements.txt && \
    chmod +x entrypoint.sh 

ENV PORT 8000

EXPOSE 8000

CMD ["/app/entrypoint.sh"]

