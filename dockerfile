# Use uma imagem base do Python 3.x
FROM python:3.9

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /system_lanchonete

# Copie o arquivo requirements.txt para o contêiner
COPY requirements.txt /system_lanchonete/

# Instale as dependências do projeto
RUN pip install -r requirements.txt

# Copie todo o projeto para o contêiner
COPY . /system_lanchonete/

# Configure as variáveis de ambiente (ajuste conforme necessário)
ENV DJANGO_SETTINGS_MODULE=restaurant_system.settings
ENV DEBUG=False

# Execute as migrações do Django
RUN python manage.py migrate


# Exponha a porta em que o Django será executado (padrão: 8000)
EXPOSE 8000

# Comando para iniciar o servidor Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
