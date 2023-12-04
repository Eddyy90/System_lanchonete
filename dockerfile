# Use a imagem oficial do Python como base
FROM python:3.9

# Configurar o ambiente de trabalho
WORKDIR /app

# Copiar os arquivos necessários para o diretório de trabalho
COPY . /app/

# Instalar as dependências do projeto
RUN pip install --no-cache-dir -r requirements.txt

# Aguardar a disponibilidade do serviço do banco de dados
# (Você pode ajustar o tempo de espera conforme necessário)
# CMD ["./docker-entrypoint.sh"]

# Executar as migrações e iniciar a aplicação
CMD ["python", "manage.py", "migrate"]
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
