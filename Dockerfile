FROM Python:3.11.0

# Set working directory to /usr/src/app
WORKDIR /usr/src/app

# Copy the contents of the current local directory into the
# container's working directory
ADD . /usr/src/app

# RUN a command
CMD ["python", "main.py"]