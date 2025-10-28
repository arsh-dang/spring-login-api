# Spring Login API

A robust authentication and user management API built with Spring Boot, featuring secure user registration, login functionality, and JWT-based token authentication. This project demonstrates enterprise-grade security practices and scalable backend architecture.

## Overview

Spring Login API provides a complete authentication solution for web applications. It handles user registration, email verification, secure login with JWT tokens, and role-based access control. The API is designed to be production-ready with support for containerization and Kubernetes deployment.

## Features

- User registration with email validation
- Secure login with JWT token authentication
- Password encryption using industry-standard algorithms
- Role-based access control (RBAC)
- Email notification support
- PostgreSQL database integration
- RESTful API design
- Docker and Kubernetes ready
- Comprehensive security configurations with Spring Security
- Database persistence with Spring Data JPA

## Technology Stack

- Java 21
- Spring Boot 3.4.5
- Spring Security for authentication and authorization
- Spring Data JPA for ORM
- PostgreSQL for database management
- Thymeleaf for server-side templating
- Lombok for reducing boilerplate code
- Maven for build management
- Docker for containerization
- Kubernetes for orchestration

## Prerequisites

- Java 21 or higher
- Maven 3.6.0 or higher
- PostgreSQL 12 or higher
- Docker (optional, for containerization)
- Git

## Project Structure

```
spring-login-api/
├── src/main/java/login_sample/Login/API/
│   ├── Controller/              # REST controllers for API endpoints
│   │   ├── ContentController.java
│   │   └── RegistrationController.java
│   ├── Model/                   # Data models and entities
│   ├── Security/                # Security configurations
│   └── LoginApiApplication.java # Main application entry point
├── src/main/resources/          # Configuration files
├── pom.xml                      # Maven configuration
├── Dockerfile                   # Docker configuration
├── k8s-deployment.yml           # Kubernetes deployment manifest
├── service.yaml                 # Kubernetes service configuration
└── mvnw                         # Maven wrapper
```

## Installation and Setup

### Clone the Repository

```bash
git clone https://github.com/arsh-dang/spring-login-api.git
cd spring-login-api
```

### Build the Project

Using Maven:

```bash
./mvnw clean package
```

### Database Configuration

Before running the application, ensure PostgreSQL is installed and configure the database connection in `src/main/resources/application.properties` or `application.yml`:

```properties
spring.datasource.url=jdbc:postgresql://localhost:5432/login_db
spring.datasource.username=your_username
spring.datasource.password=your_password
spring.jpa.hibernate.ddl-auto=update
```

### Run the Application

```bash
./mvnw spring-boot:run
```

The application will start on `http://localhost:8080`.

## API Endpoints

### Registration

- **POST** `/api/register` - Register a new user
  - Body: `{ "email": "user@example.com", "password": "password123", "firstName": "John", "lastName": "Doe" }`

### Login

- **POST** `/api/login` - Authenticate user and receive JWT token
  - Body: `{ "email": "user@example.com", "password": "password123" }`
  - Response: `{ "token": "jwt_token_here", "userId": "user_id" }`

### Protected Resources

- **GET** `/api/content` - Access protected content (requires valid JWT token)
  - Header: `Authorization: Bearer <jwt_token>`

## Docker Deployment

Build and run the Docker image:

```bash
docker build -t spring-login-api:latest .
docker run -p 8080:8080 --name spring-login-api spring-login-api:latest
```

## Kubernetes Deployment

Deploy to Kubernetes cluster:

```bash
kubectl apply -f k8s-deployment.yml
kubectl apply -f service.yaml
```

## Security Features

- Passwords are encrypted using bcrypt
- JWT tokens for stateless authentication
- Spring Security framework for comprehensive security
- Role-based access control implementation
- CSRF protection
- Secure HTTP headers

## Testing

Run tests using Maven:

```bash
./mvnw test
```

## Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/YourFeatureName`)
3. Commit your changes (`git commit -m 'Add some feature'`)
4. Push to the branch (`git push origin feature/YourFeatureName`)
5. Open a Pull Request

## License

This project is open source and available under the MIT License.

## Contact

For questions or inquiries, please reach out to arsh-dang on GitHub.

---

**Note:** This is a sample authentication API for educational and demonstration purposes. For production deployment, ensure all security configurations are properly reviewed and updated according to your specific requirements.
