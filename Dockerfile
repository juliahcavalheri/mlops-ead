FROM python:3.11-slim

# Define o local de trabalho dentro do container
WORKDIR /app

# Copia e instala as bibliotecas
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copia o restante dos arquivos (incluindo o seu train.py)
COPY . .

# Comando que roda quando o container ligar
CMD ["python", "train.py"]
