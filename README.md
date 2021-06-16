# code-server-docker

Simple way to use [Code-server](https://github.com/cdr/code-server) on local repositories, safely and quickly.

# Run

## Requirements

[Install Docker](https://docs.docker.com/get-docker/)

```sh
docker compose up
#open browser at
# http://localhost:8443
```

# Config

### Define a password

```yml
# config.yml
bind-addr: 0.0.0.0:8443
auth: password
password: <your_password>
cert: false
```

### Without auth

`🚨 Not secure, I really don't recommend this`
Set Auth to false

```yml
# config.yml
bind-addr: 0.0.0.0:8443
auth: false
cert: false
```

### Advanced config file

[How does the config file work?](https://github.com/cdr/code-server/blob/main/docs/FAQ.md#how-does-the-config-file-work)

---

# TODO
- quick guide on how to use on (VR) Oculus Quest 2 (android)
