# GLSO0215 Lab Template

Author: Seonghyeon Lee

This template is used for Open-sourced programming course.

## How to use

First, clone this repository.

```
$ git clone git@github.com:sh0416/glso0215-template.git
```

Second, run docker container using docker-compose. (With `-d` option for running container background.)

```
$ docker-compose up -d
```

Third, open bash shell to enter the container.

```
$ docker exec -it glso0215-app-1 /bin/bash
```

After you finish the lab, stop and remove docker container.

```
$ docker-compose down
```

## TODO

- [x] Set up git config email and name automatically.

## Contact

If there is any issue, contact the instructor.

