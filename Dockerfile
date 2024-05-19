FROM python:3.12

RUN python -m venv devportfolio_venv
RUN . devportfolio_venv/bin/activate

WORKDIR /devportfolio_venv/devops-portfolio
COPY . .
RUN apt-get update && apt-get install -y libpq-dev
RUN pip install -r requirements.txt
#RUN pip install django==5.0.5


RUN pip install django-tailwind
RUN pip install django-bootstrap-v5
#RUN python manage.py tailwind init

RUN python manage.py loaddata data.json
RUN python manage.py migrate

CMD [ "python3","manage.py","runserver","0.0.0.0:8001" ]