# Travel Tracker

A web application that allows users to track countries they have visited. The application displays a world map and highlights the countries that have been marked as visited.

## Features

- Interactive world map showing visited countries
- Add new countries to your visited list
- Count of total countries visited
- Error handling for invalid country names or duplicates

## Technologies Used

- **Frontend**: HTML, CSS, EJS
- **Backend**: Node.js, Express.js
- **Database**: PostgreSQL

## Prerequisites

Before you begin, ensure you have the following installed:
- Node.js
- npm (Node Package Manager)
- PostgreSQL

## Installation

1. Clone the repository:
   ```
   git clone https://github.com/jana-sourav/travel-tracker.git
   cd travel-tracker
   ```

2. Install dependencies:
   ```
   npm install
   ```

3. Database Setup:
   - Create a PostgreSQL database named "world"
   - Import the countries.csv file into your database
   - Create a table called "visited_countries" with the following schema:
     ```sql
     CREATE TABLE visited_countries (
       id SERIAL PRIMARY KEY,
       country_code CHAR(2) UNIQUE NOT NULL
     );
     ```
   - Create a table called "countries" with the following schema:
     ```sql
     CREATE TABLE countries (
       id SERIAL PRIMARY KEY,
       country_code CHAR(2) UNIQUE NOT NULL,
       country_name VARCHAR(100) NOT NULL
     );
     ```
   - Import the data from countries.csv into the countries table

4. Environment Variables:
   - Create a `.env` file in the root directory
   - Add the following content (replace with your actual database credentials):
     ```
     DB_USER=your_database_user
     DB_HOST=localhost
     DB_NAME=world
     DB_PASSWORD=your_database_password
     DB_PORT=5432
     ```

5. Start the application:
   ```
   node index.js
   ```

6. Access the application:
   Open your browser and navigate to `http://localhost:3000`

## Usage

1. Type the name of a country you've visited in the input field
2. Click "Add" to add the country to your visited list
3. The country will be highlighted on the map and the total count will update

## Screenshots
![Image](https://github.com/user-attachments/assets/a88cfa49-ff72-4579-aa8f-43bc5baf5609)

## License
This project is licensed under the ISC License.