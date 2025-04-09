# GLSO0215 Lab Template

Author: Seonghyeon Lee

This template is used for Open-sourced programming course.

## How to use

First, clone this repository.

```
$ git clone git@github.com:sh0416/glso0215-template.git
$ cd glso0215-template
```

Second, create an image with your personal information.

```
$ docker-compose build --build-arg NAME=$NAME --build-arg EMAIL=$EMAIL
```

> **Warning**
> Do not upload this image to the internet. Your credential can be leaked.

Next, run docker container. (With `-d` option for running container background.)

```
$ docker-compose up -d
```

Next, open bash shell to enter the container.

```
$ docker exec -it glso0215-app-1 /bin/bash
```

You can see the public key in the container. Add this public key into your Github account.

```
$ cat ~/.ssh/id_rsa.pub
```

Check whether you can push your branch into `glso0215-lab` repository.

```
$ git push origin ${USER}/master
```

After you finish the lab, stop and remove docker container.

```
$ docker-compose down
```

## TODO

- [x] Set up git config email and name automatically.
- [ ] Check cross-platform availability.
- [ ] Handle ssh key issue.

## Contact

If there is any issue, contact the instructor.

