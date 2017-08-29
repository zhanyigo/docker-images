# zhanyigo/gitbook

This is an image to get a gitbook. 

Run container:

```
$ docker run -p 80:4000 -v /srv/gitbook zhanyigo/gitbook
```

`4000` – GitBook default service port.

`35729` – Live reload server port.

`/srv/gitbook` – Default working directory for GitBook container.

## Build Static Website

```
$ docker run -v /srv/gitbook -v /srv/html zhanyigo/gitbook gitbook build . /srv/html
```

## Gitlab CI

Build a website and publish to gitlab pages.

```yml
# requiring the environment of NodeJS 4.2.2
image: zhanyigo/gitbook:latest
# add 'node_modules' to cache for speeding up builds
cache:
  paths:
  - node_modules/ # Node modules and dependencies
before_script:
  # This cause runner become slow.
  #- npm install gitbook-cli -g # install gitbook
  #- gitbook fetch latest # fetch latest stable version
  #- gitbook fetch pre # fetch latest pre-release version
  #- gitbook fetch 2.6.7 # fetch specific version
# the 'pages' job will deploy and build your site to the 'public' path
pages:
  stage: deploy
  script:
    - gitbook build book public # build to public path
  artifacts:
    paths:
      - public
  only:
    - master # this job will affect only the 'master' branch
```
## Links

[GitHub: GitBook](https://github.com/GitbookIO/gitbook)

[GitBook Toolchain Documentation](http://toolchain.gitbook.com)
