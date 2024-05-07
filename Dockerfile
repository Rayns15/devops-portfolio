FROM python:3
RUN pip install -r requirements.txt
#RUN pip install django==5.0.5
COPY . .

RUN pip install django-tailwind
#RUN python manage.py tailwind init

RUN python manage.py migrate

CMD [ "python3","manage.py","runserver","0.0.0.0:8001" ]