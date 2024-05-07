FROM python:3
RUN pip install django==5.0.5
RUN pip install -r requirements.txt
RUN pip install django-tailwind
RUN python manage.py tailwind init
COPY . .

RUN python3 manage.py migrate

CMD [ "python3","manage.py","runserver","0.0.0.0:8001" ]