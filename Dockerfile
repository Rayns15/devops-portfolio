FROM python:3
RUN pip install django==5.0.5
COPY . .

RUN py manage.py migrate

CMD [ "py","manage.py","runserver","0.0.0.0:8001" ]