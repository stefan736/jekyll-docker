# Jekyll in a Docker Container

I wanted an docker image that includes most of the dependencies I need in my projects upfront to start fast.
The image relies on Ubuntu and the installation guide from [Jekyll](https://jekyllrb.com/docs/installation/ubuntu/).

## Docker Images

| Image | Purpose | Example |
| ----- | ------- | ------- |
| [stefan736/jekyll](https://hub.docker.com/r/stefan736/jekyll/) | General Purpose | `docker run -v $(pwd):/home/work stefan736/jekyll jekyll new .` |

## Getting Started

Serving a site:

```shell
cd to jekyll-project
docker run --rm --volume="$PWD:/home/work" -p 4000:4000 -it stefan736/jekyll:latest sh -c "bundle install && jekyll serve --host=0.0.0.0"
```