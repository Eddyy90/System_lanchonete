INSTALL INICIAL

run --> docker-compose up -d

APOS A INSTALAÇÂO DOS CONTEINERS EXECUTE OS SEGUINTES COMANDOS

run --> docker-compose exec web bash

DENTRO DO CONTEINER WEB EXECUTE

run --> python manage.py makemigrations
    --> python manage.py migrate
    -->  python manage.py createsuperuser
              ctrl+f para sair.


CASO QUEIRA VER OS LOGS EXECUTE

run --> docker-compose logs -f web ou db
