# Parameters
imagename=hello_app

# Build image
docker build -f ./build/hello_app/apache.Dockerfile --tag $imagename ./build/hello_app