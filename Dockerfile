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

# Set environment variables for superuser creation
ENV DJANGO_SUPERUSER_USERNAME=rayns
ENV DJANGO_SUPERUSER_EMAIL=panaitemanuel@gmail.com
ENV DJANGO_SUPERUSER_PASSWORD=.Installuser01

RUN python manage.py migrate
RUN python manage.py createsuperuser --noinput

CMD [ "python3","manage.py","runserver","0.0.0.0:8001" ]