# Alkebulan BookStore Database Project

## Project Description
This project implements a comprehensive MySQL database for an African bookstore named "Alkebulan" (an ancient name for Africa). The database stores information about books, authors, publishers, customers, orders, and other related entities, with a focus on African literature.

## Contributors
- *Letsoenyo Clen Bongane*
- *Anele Mucavele*

## Database Features
- Contains 50 well-known African authors and their books
- Supports multiple languages and publishers
- Tracks customer orders and shipping information
- Implements proper user access controls

## Schema Overview
The database includes the following main tables:
- book: Stores book information
- author: Contains author details
- publisher: Publisher information
- book_language: Supported languages
- customer: Customer records
- cust_order: Order tracking
- And related junction tables

## Installation
1. Run the provided SQL script in MySQL to create the database
2. The script will:
   - Create the database structure
   - Populate with sample data
   - Set up user accounts with appropriate privileges

## User Accounts
The database creates four user accounts with different privilege levels:
1. alkebulan_admin - Full database privileges
2. alkebulan_manager - Read/write access to all tables
3. alkebulan_staff - Limited read/write access
4. alkebulan_report - Read-only access

## Sample Queries
The script includes several sample queries that demonstrate:
- Retrieving books by country of origin
- Finding the most expensive book
- Counting books by language
- Identifying prolific authors
- Finding recent publications
