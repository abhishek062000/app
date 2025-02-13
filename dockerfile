FROM python:3.8-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

# Use Gunicorn to serve the app
CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]