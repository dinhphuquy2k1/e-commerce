FROM python:3.8.10

# set work directory
WORKDIR /app/backend

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV DJANGO_SUPERUSER_PASSWORD="admin"

# install mysql dependencies
RUN apt-get update
RUN apt-get install gcc default-libmysqlclient-dev -y


# Cập nhật pip và setuptools
RUN pip install --upgrade pip setuptools wheel
COPY ./requirements.txt /app/backend
RUN pip install --no-cache-dir -r requirements.txt
# copy project
COPY . /app/backend

# Convert plain text files from Windows or Mac format to Unix
RUN apt-get install dos2unix
RUN dos2unix --newfile docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

# Make entrypoint executable
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

# Entrypoint dependencies
RUN apt-get install netcat -y

# run entrypoint.sh
ENTRYPOINT ["bash", "/usr/local/bin/docker-entrypoint.sh"]

EXPOSE 30001

CMD ["python3", "manage.py", "runserver"]

