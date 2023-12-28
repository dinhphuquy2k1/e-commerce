FROM python:3.10

# set work directory
WORKDIR /app/backend

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV DJANGO_SUPERUSER_PASSWORD="admin"

# install dependencies
RUN pip install --upgrade pip
COPY ./requirements.txt /app/backend
RUN pip install --no-cache-dir -r requirements.txt
# copy project
COPY . /app/backend
EXPOSE 30001

CMD ["python3", "manage.py", "runserver"]

