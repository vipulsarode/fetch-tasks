# Use the official Python base image with the desired version
FROM python:3.11.5

# Set the working directory in the container
WORKDIR /workspace

# Copy the requirements file into the container
COPY requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Install Jupyter (if not already included in your requirements.txt)
RUN pip install jupyter

# Copy the rest of the repository into the container
COPY . .

# Expose the port for Jupyter Notebook
EXPOSE 8888

# Start Jupyter Notebook server
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]