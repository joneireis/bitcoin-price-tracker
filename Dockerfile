# Stage 1: Build
FROM python:3.9-slim AS builder
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt  # Instala dependências globalmente

# Stage 2: Run
FROM python:3.9-slim
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*
RUN useradd -m appuser
USER appuser
WORKDIR /app
COPY --from=builder /usr/local/lib/python3.9/site-packages/ /home/appuser/.local/lib/python3.9/site-packages/
COPY --from=builder /usr/local/bin/ /home/appuser/.local/bin/
COPY . .
EXPOSE 5000
ENV PATH="/home/appuser/.local/bin:${PATH}"
CMD ["python", "-m", "flask", "run", "--host=0.0.0.0"]