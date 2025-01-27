# Build stage
FROM node:20-alpine as build

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# Production stage
FROM nginx:alpine

# Copy built assets from build stage
COPY --from=build /app/dist /usr/share/nginx/html

# Add nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Accept port as build argument
ARG NGINX_PORT=801
ENV NGINX_PORT=${NGINX_PORT}

# Use envsubst to replace environment variables in nginx.conf
RUN envsubst '${NGINX_PORT}' < /etc/nginx/conf.d/default.conf > /etc/nginx/conf.d/default.conf.tmp \
    && mv /etc/nginx/conf.d/default.conf.tmp /etc/nginx/conf.d/default.conf

# Expose the configured port
EXPOSE ${NGINX_PORT}

# Start nginx
CMD ["nginx", "-g", "daemon off;"] 