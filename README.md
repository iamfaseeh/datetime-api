# 🕒 datetime-api test project

A minimalistic API that provides various datetime-related utilities, built with Python and containerized using Docker along with Terraform code to deploy the api. 🚀

---

## 🔧 Tech Stack & Versions

| Tool       | Version       |
|------------|---------------|
| 🐍 Python  | 3.10.x        |
| 🐳 Docker  | 24.x or above |
| 🧪 Flask   | 2.3.x         |

---

## 🚀 Getting Started with Docker

Follow the steps below to build and run the project using Docker.

### 🧱 Step 1: Build the Docker Image

```bash
docker build -t datetime-api .
```

### 🧪 Step 2: Run the Docker Container

```bash
docker run -d -p 3000:3000 datetime-api
```

> The API will be accessible at: [http://localhost:3000](http://localhost:3000)

---

## 📁 Project Structure

```plaintext
datetime-api/
├── app/
│   └── main.py
├── Dockerfile
├── requirements.txt
└── README.md
```

---

## 🧠 Features

- 🗓️ Get the current UTC datetime
- ⏱️ Convert timestamp to readable format
- 🔁 Timezone conversions
- 📆 Date difference calculator

---

## 🌐 Author

Made with ❤️ by [iamfaseeh](https://github.com/iamfaseeh) ![GitHub](https://img.shields.io/badge/GitHub-iamfaseeh-181717?style=flat&logo=github)