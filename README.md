# Book-ReservationSystem-JDBC
# Book Reservation System (JDBC + Swing)

A simple library management project built using **Java Swing** and **JDBC** with MySQL database.

## Features
- User Registration & Login
- Admin Login
- Book Reservation & Return
- Fine Calculation for Overdue
- Admin Panel: View Users, Reservations, Books

## Database Schema
Database: `library`

Tables:
- `users1(user_id, username, password)`
- `books(book_id, title, author, is_checked_out)`
- `reservations(reservation_id, user_id, book_id, reserve_days, reservation_date)`
- `admin(username, password)`

## Setup Instructions
1. Clone repo:  
   ```bash
   git clone https://github.com/<your-username>/BookReservationSystem-JDBC.git
