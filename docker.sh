# Build image tagged as dockerflask
docker build --tag=dockerflask .

# List Docker images
docker image ls

# Run it and forward port 5000 (container) to 80 (host)
docker run -p 80:5000 dockerflask

# Open 127.0.0.1 in any web browser and enjoy.
