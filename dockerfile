# base image
FROM python:3.8

# set work dir
WORKDIR /app

# copy req.txt
COPY requirements.txt .

# run install command
RUN pip install --no-cache-dir -r requirements.txt

# copy the code 
COPY . .

# EXPOSE PORT 5000
EXPOSE 5000

# start the app
CMD ["python", "app.py"]