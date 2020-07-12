App generated for Packform coding test. Following is some information:
1. App is deployed at [Heroku](https://stark-gorge-85237.herokuapp.com/) for your convenience.
2. Backend is built in **Ruby on Rails**
3. Frontend is built in **JavaScript** using AJAX methods provided by Rails.
4. I had to serialize some data by integer ID as I was using only postgresql in rails and the process to change the primary was very tedious.
5. Solution is scalable to thousands but at that point it may be worthwhile to use Elastic Search or some other method to speed up the query speed.
6. I have made ```/orders``` as the root path.
7. The data provided in CSV files was used in seed to populate the database.
