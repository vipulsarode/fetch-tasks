# Fetch Assignments



## Cloning the repository on local machine



```bash
git clone https://github.com/vipulsarode/fetch-tasks.git
```

## Running docker container

```bash
# Create an Docker Image
docker build -t my-notebook-container .

# Run Docker Container
docker run -p 8888:8888 -v $(pwd):/workspace my-notebook-container

```
