FROM python:3.9.13-slim-bullseye

WORKDIR /app
COPY requirements.txt .
COPY constraints.txt .
COPY src ./src
RUN pip install -r requirements.txt -c constraints.txt
CMD ["python", "src/sample.py"]