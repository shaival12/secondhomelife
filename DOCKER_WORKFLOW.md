# Docker Development Workflow

## Initial Setup (First Time)

```bash
# Build the Docker image
docker build -t secondhomelife .

# Run the container
docker run -d -p 80:80 -e RAILS_ENV=development --name secondhomelife secondhomelife

# Access your app at: http://localhost:80
```

## Making Changes to Your Rails App

### Option 1: Full Rebuild (Recommended for major changes)

```bash
# Stop and remove current container
docker stop secondhomelife
docker rm secondhomelife

# Rebuild image
docker build -t secondhomelife .

# Run new container
docker run -d -p 80:80 -e RAILS_ENV=development --name secondhomelife secondhomelife
```

### Option 2: Development with Volume Mount (For frequent changes)

```bash
# Stop current container
docker stop secondhomelife
docker rm secondhomelife

# Run with volume mount for live code changes
docker run -d -p 80:80 \
  -e RAILS_ENV=development \
  -v "$(pwd):/rails" \
  --name secondhomelife \
  secondhomelife
```

### Option 3: Quick Restart (For config/environment changes)

```bash
docker restart secondhomelife
```

## When to Use Each Option

- **Full Rebuild**: Gemfile changes, new dependencies, Docker configuration changes
- **Volume Mount**: Code changes (controllers, views, models), CSS/JS changes
- **Quick Restart**: Environment variable changes, minor config updates

## Useful Commands

```bash
# Check container status
docker ps

# View logs
docker logs secondhomelife

# Access container shell
docker exec -it secondhomelife bash

# Stop container
docker stop secondhomelife

# Start existing container
docker start secondhomelife

# Remove container
docker rm secondhomelife

# Remove image (if needed)
docker rmi secondhomelife
```

## Access Your App

- URL: http://localhost:80
- Alternative: http://localhost

## Notes

- Container runs in development mode to avoid master key issues
- Use volume mount for active development
- Full rebuild for production deployments
