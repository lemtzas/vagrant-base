# Vagrant Base

This is my base for vagrant/docker development setup.

```bash
cd vagrant
vagrant up
```

To run, here are a few options. Run from `vagrant/`

```bash
vagrant ssh
docker run project
```

```bash
vagrant ssh -c 'docker run project'
```

```bash
vagrant reload
```

If the Dockerfile is changed:

```bash
docker build -t project .
docker run project
```

## What it does

* updates packages
* ensures we've got git
* sets up linuxbrew
* sets up my gitconfig
* sets up bash-git-prompt
* sets up termbin (via `| tb`)
* sets up docker
* Links `project/` to `~/project/`
* builds a ruby Dockerfile and runs the script (every time)
