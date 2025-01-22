## Running the Projects

To run the frontend and backend projects using Docker Compose, follow these steps:

1. **Run the projects with Docker Compose**: Open a terminal and navigate to the root directory of the repository. Run the following command to build and start the services:

    ```sh
    docker-compose up --build
    ```

2. **Install dependencies and seed the database**: After the services are up and running, open a new terminal and navigate to the backend directory. Install the necessary dependencies and seed the database by running the following commands:

    ```sh
    npm install
    npx sequelize-cli db:seed:all
    ```

3. **Access the application**: Open a web browser and navigate to [http://localhost:5173/](http://localhost:5173/) to start using the application.

4. **Stop and clean the containers and volumes**: To stop the running containers and remove the associated volumes, run the following command in the terminal:

    ```sh
    docker-compose down -v
    ```

    > **Note**: Docker, Docker Compose, and Node.js are required to run these commands. Installation of these programs is beyond the scope of this guide.

## Environment Variables

The Docker configuration already takes care of setting the necessary environment variables for the backend and frontend services. However, you can modify these variables if needed. The relevant environment variables are:

### For the backend service:

- `PORT`: The port on which the backend service will run (default: 3000)
- `DATABASE_HOST`: The hostname of the PostgreSQL database (default: postgres)
- `DATABASE_PORT`: The port of the PostgreSQL database (default: 5432)
- `DATABASE_USER`: The username for the PostgreSQL database (default: postgres)
- `DATABASE_PASSWORD`: The password for the PostgreSQL database (default: postgrespassword)
- `DATABASE_NAME`: The name of the PostgreSQL database (default: tasks)
- `FRONTEND_URL`: The URL of the frontend service (default: [http://localhost:5173](http://localhost:5173))

### For the frontend service:

- `VITE_API_URL`: The URL of the backend API (default: [http://localhost:3000/api](http://localhost:3000/api))

## Projects Folder Structure

```
.gitmodules
backend/
    .gitignore
    .prettierrc
    .sequelizerc
    docker-compose.yaml
    Dockerfile
    eslint.config.mjs
    LICENSE
    nest-cli.json
    nestjs-todo-tasks-ms.postman_collection.json
    package.json
    README.md
    src/
        app.controller.spec.ts
        app.controller.ts
        app.module.ts
        app.service.spec.ts
        app.service.ts
        config/
            configuration.ts
        database/
            sequelize-config.service.spec.ts
            sequelize-config.service.ts
        main.ts
        tasks/
            task.model.ts
            tasks.controller.spec.ts
            tasks.controller.ts
            tasks.dto.ts
            tasks.module.ts
            tasks.service.spec.ts
            tasks.service.ts
    test/
        app.e2e-spec.ts
        jest-e2e.json
    tsconfig.build.json
    tsconfig.json
docker-compose.yaml
Dockerfile
frontend/
    .gitignore
    docker-compose.yaml
    Dockerfile
    eslint.config.js
    index.html
    LICENSE
    package.json
    public/
    README.md
    src/
    tailwind.config.js
    tsconfig.app.json
    tsconfig.json
LICENSE
README.md
```