# Build image tagged as dockerflask
# then run it and forward port 5000 (container) to 80 (host)
docker build -t dockerflask . && docker run -p 80:5000 dockerflask
