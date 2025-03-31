FROM python:3.9 
WORKDIR /code 
COPY . . 
RUN pip install fastapi[standard]

CMD ["fastapi", "run", "app/main.py", "--port", "8000"]