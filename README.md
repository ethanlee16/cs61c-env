# cs61c-env

The `cs61c-env` is intended to include essential tools for working on
labs, homework, and projects for UC Berkeley's [CS 61C
course](https://cs61c.org/).

# Setup

Create a file called `docker-compose.yml` in the folder you'd like to
use this environment with and include these contents:

```yml
version: '3.4'
services:
  dev:
    image: ethanlee/cs61c-env
    security_opt:
      - seccomp:unconfined
    volumes:
      - .:/cs61c
```

# Usage

In a folder with `docker-compose.yml`, run `docker-compose run dev bash`
to be placed into a shell in this environment. Your working directory is
available at `/cs61c`, so you can begin working by running `cd /cs61c`.

The `/cs61c` directory is volume-mounted from your Docker host, so all
changes you make in the container environment will apply to your local
working directory.

