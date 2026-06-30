---
title: Engineering Decisions
---

# ⚙️ Engineering Decisions

Software projects are a series of engineering decisions.

This page documents the most important design choices made while building **MyST Docs Platform** and explains why they were chosen.

---

## 🐳 Why Docker?

Instead of requiring developers to install MyST, Node.js and Python locally, the entire development environment runs inside Docker.

### Benefits

- Identical environment for every developer
- No dependency conflicts
- Easy onboarding
- Reproducible builds
- Clean local machine

---

## 📦 Why Docker Compose?

Docker Compose makes it possible to manage the entire development environment with a single command.

```bash
make up
```

Instead of remembering long Docker commands, the project provides a simple developer experience.

---

## 🛠 Why Makefile?

The Makefile hides repetitive Docker commands behind simple shortcuts.

Examples:

```bash
make up
make down
make logs
make shell
```

This keeps the workflow simple and consistent.

---

## 📚 Why MyST?

MyST extends Markdown with powerful features for technical documentation.

It allows us to create documentation that includes:

- Admonitions
- Mermaid diagrams
- Cross references
- Mathematics
- Jupyter notebooks
- PDF export

while keeping the documentation easy to read and maintain.

---

## 🔄 Why Live Reload?

Every documentation change should be visible immediately.

Live Reload provides instant feedback without restarting the server.

This creates a much faster writing experience.

---

## 🔐 Why will we run as a non-root user?

During development we discovered a common Docker issue:

Files created inside the container were owned by **root**, making them read-only from the host machine.

In a future version, the container will run using the host user's UID and GID to eliminate file permission issues.

This is a common best practice for local Docker development.

---

## 🚀 Future Engineering Improvements

Planned improvements include:

- GitHub Actions
- Automatic testing
- Documentation versioning
- PDF publishing
- Custom MyST theme
- Search integration
- Non-root Docker container

---

## Navigation

⬅ Previous: Architecture

➡ Next: Playground