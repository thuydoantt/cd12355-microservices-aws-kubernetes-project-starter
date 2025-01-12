FROM python:3.8

WORKDIR /src

COPY ./analytics .

RUN pip install --upgrade pip && pip install -r requirements.txt

CMD python app.py