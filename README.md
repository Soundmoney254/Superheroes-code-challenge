# Hero Powers -- API Backend
The Hero Powers API Backend is a Ruby on Rails application that provides a centralized system for managing hero powers. It allows event managers in the music industry to efficiently organize and manage multiple heroes and their powers. With this API, event managers can track and search powers, update power information, add new powers, and obtain real-time power statistics.

## Built With:
1. Ruby: Provides the base classes and logic for the application.
2. Ruby on Rails: A powerful web framework used to build the API endpoints and handle database operations.
3. ActiveRecord: Provides object-relational mapping (ORM) for the database tables and classes.
4. PostgreSQL: A relational database management system used to store the data.

## Geting Started /Setup
1. The project has already been deployed on render.com.  You can use this endpoint to access it 

```sh
https://superheroes-g59p.onrender.com

```

 ### Alternatively

1. Clone the repo
```sh
git clone git@github.com:Soundmoney254/Superheroes-code-challenge.git
 ```
Navigate to the project directory:


cd hero-powers-api
Install the required dependencies:
```sh
bundle install
 ```
Set up the database:
sh
```sh
rails db:create
rails db:migrate
rails s
 ```
Starts the Rails server:


rails server
The API is now running on http://localhost:3000.

 2. Clone the repo.
 3. Open the repo files on your code editor.
 4. Run ``` npm install ``` inside the app's root directory to install the dependancies.
 5. Run the application on the terminal using ``` npm start ```
 6. This will launch a browser tab with the app, make sure to clone and start the backend server api for the site to work fully.

## API Endpoints

1.The Hero Powers API provides the following endpoints:

- GET /powers: Retrieve a list of all powers.
- GET /powers/:id: Retrieve a specific power by its ID.
- POST /powers: Create a new power.
- PATCH /powers/:id: Update a specific power by its ID.
- DELETE /powers/:id: Delete a specific power by its ID.
- For detailed information on the request and response formats, please refer to the API documentation.

2. **Error Handling**
  - The Hero Powers API handles errors in the following ways:

- If a requested power is not found, the API responds with a JSON error message: { "error": "Power not found" } and a status code of 404 (Not Found).
- If there are validation errors when creating or updating a power, the API responds with a JSON error message: { "errors": ["validation errors"] } and a status code of 422 (Unprocessable Entity).
## Contributing
  - Contributions to the Hero Powers API Backend are welcome! If you have any ideas, suggestions, or bug reports, please open an issue or submit a pull request.


## License and copyright
- The code in this project is licensed under the terms of the General Public License (GPL-3.0).

- You are granted permission to use, modify, and contribute to the project under the conditions outlined in the GPL-3.0 license.

- It is important to preserve and include the copyright and license notices in all copies and distributions of the project.

## Author
This project was created by Samuel Mbugua.