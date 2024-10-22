<<<<<<< HEAD
FROM python:3.9-slim
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .
ENV PORT=8080
EXPOSE 8080
CMD ["python", "app.py"]
=======
FROM python:3.9-slim
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .
ENV PORT=8080
EXPOSE 8080
CMD ["python", "app.py"]
>>>>>>> d4070a21157a47d835f83c6d445a0e35a21fdf18
