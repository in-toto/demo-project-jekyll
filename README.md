# jekyll supply chain demo

A simple supply chain demo using jekyll to build static html/css,
htmlproofer for quality assurance and docker for packaging and deployment.


## Requirements
- Ruby
- Jekyll (ruby)
- HTMLproofer (ruby)
- Docker

## Supply chain
```shell
# In project root
# Build static pages to _site dir
jekyll build

# Run html linter
htmlproofer _site

# Build docker image
docker build -t jekyll-demo .

# Serve from webserver in docker image (in background)
docker run -d -p 4001:80 -t jekyll-demo
```
Browse to [http://localhost:4001](http://localhost:4001) to see the created
website.

**Docker cleanup**
```shell
# Stop and remove containers
docker rm $(docker stop $(docker ps --filter "ancestor=jekyll-demo" -q))

# Force remove image
docker rmi jekyll-demo -f
```