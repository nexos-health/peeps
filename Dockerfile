FROM python:3
ENV PYTHONBUFFERED 1
RUN mkdir /src
WORKDIR /src
COPY requirements.txt /src/
RUN pip install -r requirements.txt
COPY . /src/
CMD ["python", "medrecruitment/manage.py", "runserver", "0.0.0.0:8000"]