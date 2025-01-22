FROM node:20 as backend-build
WORKDIR /app/backend
COPY backend/package*.json ./
RUN npm install
COPY backend ./
RUN npm run build

FROM node:20 as frontend-build
WORKDIR /app/frontend
COPY frontend/package*.json ./
RUN npm install
COPY frontend ./
ARG VITE_API_URL
ENV VITE_API_URL=$VITE_API_URL
RUN npm run build

FROM node:20 as backend-run
WORKDIR /app/backend
COPY --from=backend-build /app/backend ./
EXPOSE 3000
CMD ["node", "dist/main"]

FROM nginx:latest as frontend-run
COPY --from=frontend-build /app/frontend/dist /usr/share/nginx/html
EXPOSE 80