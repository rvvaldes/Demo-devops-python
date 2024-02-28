FROM python:3.9-slim

WORKDIR /app

COPY app/requirements.txt .
RUN python -m pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

COPY app/ .

RUN python manage.py makemigrations && python manage.py migrate

EXPOSE 8000

HEALTHCHECK --interval=30s --timeout=10s --retries=3 CMD curl --silent --fail http://localhost:8000/api/ || exit 1

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

