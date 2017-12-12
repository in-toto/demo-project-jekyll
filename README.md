# jekyll supply chain demo

## Requirements
- Ruby
- Jekyll (ruby)
- HTMLproofer (ruby)
- Docker

```shell
# In project root
# Build static pages to _site dir
jekyll build

# Run html linter
htmlproofer _site

# Build docker image
docker build -t jekyll-demo .

# Serve from webserver in docker image (in background )
docker run -d -p 4001:80 -t jekyll-demo

# Browse to http://localhost:4001

# Stop and remove containers
docker rm $(docker stop $(docker ps --filter "ancestor=jekyll-demo" -q))

# Remove image
docker rmi jekyll-demo -f
```