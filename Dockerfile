# Base python docker image
FROM python:3.9.5-buster


ENV PYTHONBUFFERED 1

# import code 
ADD . /code

# Changing the directory
WORKDIR /code

# Install pipenv
RUN pip install pipenv

# Installing librairies
RUN pipenv install --system --deploy

# Exporting the port 
EXPOSE 8000


# Running python command
CMD [ "python", "manage.py", "runserver" ]



