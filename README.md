# MyWebServer

A minimal Dockerized static website served with Nginx.

## Contents

* `Dockerfile` — builds an Nginx image and copies `html/` into the container.
* `html/index.html` — static site content.
* `nginx.yml` — Ansible playbook to install and run Nginx (local demo).
* `inventory` — Ansible inventory for local testing.
* `.gitignore` — files to ignore.
* `LICENSE` — license for the project.

## Quick start — run locally with Docker

1. Build the image:

```bash
docker build -t my-nginx .
```

2. Run the container and map port 8080:

```bash
docker run -d --iveey my-nginx -p 8080:80 my-nginx
```

3. Open `http://localhost:8080` (or `http://<host-ip>:8080`).

## Run with Docker Compose (optional)

If you add a `docker-compose.yml` in future, a typical command is:

```bash
docker compose up --build
```

## Provision a system with Ansible (local demo)

The included `nginx.yml` playbook demonstrates installing Nginx using Ansible on localhost.

```bash
# run locally (this playbook uses become and will prompt for your sudo password)
ansible-playbook -i inventory nginx.yml --ask-become-pass
```

## Deploy options

* **GitHub Pages** — best for pure static sites. Push `html/` to the `gh-pages` branch.
* **Render / Railway / Fly.io** — use your Docker image or connect repository for automated deploys.
* **AWS EC2** — copy project to an Ubuntu instance and `docker build` there or use a registry + user-data.

## Security / Notes

* Do **not** commit private keys, `.pem` files, or `.env` with secrets. Add them to `.gitignore`.
* For production, run behind HTTPS (TLS) and use a reverse proxy (managed SSL) or a load balancer.

## Contributing

1. Fork the repo.
2. Create a topic branch: `git checkout -b feat/add-awesome`.
3. Make small, focused commits with clear messages.
4. Open a pull request describing the change and testing steps.

## License

This repository is available under the MIT License. See `LICENSE` for details.

