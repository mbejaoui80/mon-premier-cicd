# Utilise Python 3.14 (version stable pour Docker)
FROM python:3.14-slim

# Dossier de travail dans la "boîte"
WORKDIR /app

# Copie tes fichiers du PC vers la boîte
COPY requirements.txt .
COPY test_calcul.py .

# Installe les outils dans la boîte
RUN pip install --no-cache-dir -r requirements.txt

# Lance le test automatiquement
CMD ["python", "-m", "pytest", "test_calcul.py"]