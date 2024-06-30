# PostgreSQL Database Deployment with Docker

This repository contains a setup for deploying a PostgreSQL database using Docker and Docker Compose. The setup includes a PostgreSQL database service and an Adminer service for database management.


###  Prerequisites

* Docker: Install Docker
* Docker Compose: Install Docker Compose

### Setup Instructions

1. Clone the Repository
Clone this repository to your local machine:

```bash
git clone https://github.com/yourusername/your-repo.git
cd your-repo
```

2. Create a `.env` File
Create a `.env` file in the root directory of the repository and add the following environment variables:

```env
POSTGRES_USER=your_postgres_user
POSTGRES_PASSWORD=your_postgres_password
POSTGRES_DB=your_postgres_db
```

Replace `your_postgres_user`, `your_postgres_password`, and `your_postgres_db` with your desired PostgreSQL credentials and database name.

3. Start the Services
Use Docker Compose to start the PostgreSQL and Adminer services:

```bash
docker-compose up -d
```

4. Access the Services
    * PostgreSQL Database: The PostgreSQL database will be accessible on localhost:2024.

    * Adminer: Adminer, a web-based database management tool, will be accessible on `http://localhost:2025`. You can use Adminer to manage your PostgreSQL database using the credentials specified in the `.env` file.

5. Stop the Services

To stop and remove the Docker containers, use the following command:

```bash
docker-compose down
```

### Volumes

The `micro-service-data` volume is used to persist PostgreSQL data. This ensures that your data remains intact even if the containers are removed or restarted.

## Additional Information
    * PostgreSQL Documentation: PostgreSQL 12 Documentation
    * Adminer Documentation: Adminer Documentation

## Troubleshooting

If you encounter any issues, check the logs of the services:

```bash
docker-compose logs db
docker-compose logs adminer
```

For further assistance, refer to the official Docker documentation or the PostgreSQL and Adminer documentation.
