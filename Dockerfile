# Use an official Python runtime as an image
FROM python:3.10

# The EXPOSE instruction indicates the ports on which a container
# will listen for connections
# Since Flask apps listen to port 5000  by default, we expose it
EXPOSE 8000

# Sets the working directory for following COPY and CMD instructions
# Notice we haven’t created a directory by this name - this instruction
# creates a directory with this name if it doesn’t exist
WORKDIR /app
# Install any needed packages specified in requirements.txt
COPY . /app
RUN pip install -r requirements.txt

RUN chmod +x /app/entrypoint.sh

# Run app.py when the container launches
CMD ["python", "runner.py"]