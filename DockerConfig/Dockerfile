# DockerConfig/Dockerfile
FROM python:3.13-slim

WORKDIR /app

# Copia o requirements.txt
COPY ../requirements.txt .

# Instala dependências
RUN pip install --no-cache-dir -r requirements.txt

# Copia a aplicação
COPY ../main.py .
COPY ../src ./src

EXPOSE 8000

# Roda o Uvicorn com main.py
CMD ["uvicorn", "manage:app", "--host", "0.0.0.0", "--port", "8000"]
