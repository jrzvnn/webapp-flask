# Use the official Ubuntu as a base image
FROM ubuntu

# Update the package list
RUN apt update

# Install Python and Pip
RUN apt install -y python3 python3-pip

# Install Flask using Pip
RUN pip3 install flask

# Copy your app.py to /opt/
COPY app.py /opt/

# Set the entry point to run your Flask app
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
