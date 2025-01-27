# The Dripping Basket

## Description

The Dripping Basket is just a glorified bookmark page for TTRPG campaigns I'm running with my friends! Not really anything else to see here in complete honesty.

## Docker Deployment

To host this site using Docker:

1. Make sure you have Docker and Docker Compose installed on your system
1. Ensure you have Traefik running as a reverse proxy with SSL configuration
1. Clone this repository
1. Navigate to the project directory
1. Update the hostname in `docker-compose.yml` if needed (currently set to `thedrippingbasket.brich.one`)
1. Run the following command to build and start the container:

   ```bash
   docker compose up --build -d
   ```

1. The site will be available at `https://thedrippingbasket.brich.one` (or your configured domain)

To stop the container:

```bash
docker compose down
```

The Docker setup includes:

- Integration with Traefik for SSL and routing
- Production-ready Nginx configuration
- Static asset caching and gzip compression
- Security headers and proper handling of React routing
- Automatic SSL certificate management through Traefik