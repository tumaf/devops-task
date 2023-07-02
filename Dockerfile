FROM python:latest

WORKDIR /augury-task

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY my_env_var_api_server.py .
EXPOSE 5000

CMD ["python", "my_env_var_api_server.py"]
