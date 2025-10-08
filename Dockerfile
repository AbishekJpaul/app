
FROM python:3.9

# Set working directory
WORKDIR /code

# Copy  dependencies from local to container
COPY ./requirements.txt /code/requirements.txt

# Runs pip inside the container to install everything listed in requirements.txt.
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# copy th source code from local to container
COPY ./app /code/app

# trying to use FastAPI’s new CLI command (fastapi run)
CMD ["fastapi", "run", "app/main.py", "--port", "80"]
