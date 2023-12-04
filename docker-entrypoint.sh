#!/bin/bash

# Espera o serviço "db" estar pronto
while ! nc -z db 5432; do
    sleep 1
done

# Executa as migrações e inicia a aplicação
python manage.py migrate
python manage.py runserver 0.0.0.0:8000
