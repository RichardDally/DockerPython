# Build image tagged as dockerflask
docker build --tag=py_helloworld_3.7.3 .

# List Docker images
docker image ls

# Python 3.7.3 hello world using Loguru
docker run py_helloworld_3.7.3
