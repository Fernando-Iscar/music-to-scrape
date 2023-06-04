# Use Miniconda3 as the base image
FROM continuumio/miniconda3

# Update conda 
RUN conda update -n base -c defaults conda

# Install R packages using conda
RUN conda install -c conda-forge r-dbi r-data.table r-rsqlite

# Create a working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install Python packages
RUN pip install fastapi fastapi_utils sqlalchemy pydantic uvicorn gunicorn flask flask_sqlalchemy

# Expose port
EXPOSE 80

# Run the command to start uvicorn
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "80"]
