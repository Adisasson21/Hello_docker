FROM python:3
RUN apt-get update
RUN apt-get install -y python
COPY getUser.py /app/getUser.py
CMD ["python", "/app/geyUser.py"]
