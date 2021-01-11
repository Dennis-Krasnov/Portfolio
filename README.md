# Krasnov Dev Portfolio
![Build and Deploy CI/CD](https://github.com/Dennis-Krasnov/Portfolio/workflows/Build%20and%20Deploy%20CI/CD/badge.svg)

Portfolio website made using the Svelte component framework. Includes contact form which triggers Firebase Cloud Function that uses SendGrid to send myself an email. Automated CI/CD pipeline builds and deploys web bundle and serverless function to Firebase.

[View live](https://krasnov.dev/)

### How to run

##### VSC setup

```bash
npm i node-sass

# Error: Node Sass does not yet support your current environment: Linux 64-bit with Unsupported runtime:
# npm rebuild node-sass
```

Set "Svelte > Language-server: Runtime" setting to result of `which node`

Restart VSC

##### Run website

```bash
git clone https://github.com/Dennis-Krasnov/Portfolio.git
cd Portfolio
npm install

npm run dev
```