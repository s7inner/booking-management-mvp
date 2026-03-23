# Booking Management MVP

### Task

#### Backend (Laravel 10+)

- Create models/migrations for:
  - User (you can use Laravel Breeze or Sanctum for auth)
  - Booking with fields: user_id, date, time_slot, status (enum: booked, cancelled)
- Add API routes for:
  - POST /api/bookings - Create a booking
  - GET /api/bookings - List bookings for the authenticated user
  - PATCH /api/bookings/{id}/cancel - Cancel a booking
- Use validation and proper error handling
- Optional: write one PHPUnit test for the booking creation logic

#### Frontend (Vue 3 + Composition API)

- Create a simple UI with:
  - Form to create a new booking (date picker + time slot select)
  - Table/list showing current user's bookings
  - Button to cancel bookings
- Use Axios to communicate with the backend
- Use Tailwind or Bootstrap (optional)

### Technologies Used

- **Laravel 12** - PHP framework
- **Vue 3** - Frontend framework  
- **Tailwind CSS 4** - CSS framework
- **Axios** - HTTP client
- **Laravel Breeze** - Authentication scaffolding
- **Laravel Sail** - Docker development environment
- **Makefile** - Build automation

## Quick Start

### 1. Add to hosts file

```
127.0.0.1 booking-management-mvp.test
```

### 2. Run the project

```bash
make setup
```

This command will automatically:
- Install all dependencies
- Start Docker containers
- Setup database
- Create test user
- Build frontend

### 3. Access the application

**Application URL**: http://booking-management-mvp.test

**Test login credentials**:
- Email: `test@example.com`
- Password: `password`

### 4. Database connection

Use `booking_management` database for regular application and `booking_management_test` for testing.

**Connection settings**:
- Host: `localhost` (or `127.0.0.1`)
- Port: `3307`
- Database: `booking_management`
- Username: `sail`
- Password: `password`

### 5. Stop and remove containers

To completely stop and remove all containers and volumes:

```bash
./vendor/bin/sail down -v
```

## Notes

1. **Route → Single Action Controller → Form Request → DTO → Service → Model → Resource architecture** (SRP) - This is over-engineering for a simple project with some code duplication in its implementation, but this architecture could be beneficial if the project will be scaled up

2. **Hardcoded time slots in both frontend and backend validation** - Add time slots as a database table for future modification from admin panel, and refactor backend and frontend by removing hardcoded time slots

## Improvements

1. **Add API documentation** - Implement Swagger/OpenAPI documentation for all endpoints

2. **Add pagination** - Implement pagination for booking lists to handle large datasets

3. **Add search and filtering** - Allow users to search and filter their bookings

4. **Enhanced booking status management** - Instead of just changing status to "cancelled", come up with some more interesting logic - add a delete button that performs soft delete, add `cancelled_at` and `deleted_at` timestamps
