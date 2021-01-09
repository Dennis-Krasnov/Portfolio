# Krasnov Dev Portfolio
![Build and Deploy CI/CD](https://github.com/Dennis-Krasnov/Portfolio/workflows/Build%20and%20Deploy%20CI/CD/badge.svg)

I built a portfolio website showcasing my skills and experience. Check it out at denniskrasnov.com!

[View live](https://krasnov.dev/)

### Deploy to Digital Ocean
[![Deploy to DO](https://www.deploytodo.com/do-btn-blue.svg)](https://cloud.digitalocean.com/apps/new?repo=https://github.com/Dennis-Krasnov/Portfolio/tree/master&refcode=4ed2be2d0a5c)

### How to run

```bash
git clone https://github.com/Dennis-Krasnov/Portfolio.git
cd Portfolio
npm install

npm run dev
```

#### Common problems
```shell
# Error: Node Sass does not yet support your current environment: Linux 64-bit with Unsupported runtime:
npm rebuild node-sass
```