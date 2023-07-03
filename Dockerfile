FROM python:3.10-alpine

WORKDIR /augury-task

RUN apk --no-cache add curl

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY my_env_var_api_server.py .

EXPOSE 5000

CMD ["python", "my_env_var_api_server.py"]
