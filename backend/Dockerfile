FROM python:3.8.10

# set work directory
WORKDIR /app/backend

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV DJANGO_SUPERUSER_PASSWORD="admin"

# Cập nhật pip và setuptools
RUN pip install --upgrade pip setuptools wheel
COPY ./requirements.txt /app/backend
RUN pip install --no-cache-dir -r requirements.txt
# copy project
COPY . /app/backend

EXPOSE 30001

CMD ["python3", "manage.py", "runserver"]

