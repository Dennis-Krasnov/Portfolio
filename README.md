# Krasnov Dev Portfolio
![Build and Deploy CI/CD](https://github.com/Dennis-Krasnov/Portfolio/workflows/Build%20and%20Deploy%20CI/CD/badge.svg)

Portfolio website made using the Svelte component framework. Includes contact form which triggers Firebase Cloud Function that uses SendGrid to send myself an email. Automated CI/CD pipeline builds and deploys web bundle and serverless function to Firebase.

[View live](https://krasnov.dev/)

### How to run

##### VSC setup

```bash
npm i node-sass
```

Set "Svelte > Language-server: Runtime" setting to result of `which node`

Restart VSC

##### Firebase

```bash
# Setup your firebase project
npm i -g firebase-tools
firebase login

firebase functions:config:set sendgrid.api_key="THE API KEY"
# To run in emulator using `firebase serve`
firebase functions:config:get > .runtimeconfig.json
```

##### Run website

```bash
git clone https://github.com/Dennis-Krasnov/Portfolio.git
cd Portfolio
npm install

# Requires gimp to generate project thumbnails
npm run export-project-thumbnails

npm run dev
# Use `firebase serve` or `firebase deploy` to see it live
```

##### Run cloud functions

```bash
cd functions
npm install
firebase deploy
# Use `firebase serve` or `firebase deploy` when using contact form
```