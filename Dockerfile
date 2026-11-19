FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN python -m unittest discover -s . -p "test_*.py" -v

EXPOSE 5000

CMD ["python", "app.py"]