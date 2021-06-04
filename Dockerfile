FROM python:3.7.3-stretch

## Step 1:
WORKDIR /app

## Step 2:
COPY . app.py /app/

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --no-cache-dir --upgrade pip &&\ 
    pip install --no-cache-dir --trusted-host pypi.python.org -r requirements.txt &&\ 
    wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 &&\ 
    chmod +x /bin/hadolint

## Step 4:
EXPOSE 80

## Step 5:
# Run app.py at container launch
CMD ["python", "app.py"]

