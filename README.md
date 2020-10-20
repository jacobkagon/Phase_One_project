# Object Relations Code Challenge ACTIVE-RECORD DO-OVER- Restaurants

The instructions below are the same as the code challenge you took Friday.  However, now you're going to use the power of ActiveRecord to do the work for you!  Your goal is to get the *behavior* of each deliverable working, and saved to the database.  **Helpful hint:  We've only scratched the surface of ActiveRecord.  Before you code something out, do some Googling to see if something already exists!"

**Fork and clone this lab to get started**

For this assignment, we'll be working with a Yelp-style domain.

We have three models: `Restaurant`, `Customer`, and `Review`.

For our purposes, a `Restaurant` has many `Reviews`, a `Customer` has many `Review`s, and a `Review` belongs to a `Customer` and to a `Restaurant`.

`Restaurant` - `Customer` is a many to many relationship.

**Note**: You should draw your domain on paper or on a whiteboard _before you start coding_. Remember to identify a single source of truth for your data.

## Instructions

To get started, run `bundle install` while inside of this directory.

Build out all of the methods listed in the deliverables. The methods are listed in a suggested order, but you can feel free to tackle the ones you think are easiest. Be careful: some of the later methods rely on earlier ones.

We've provided you with a tool that you can use to test your code. To use it, run `ruby tools/console.rb` from the command line. This will start a `pry` session with your classes defined. You can test out the methods that you write here. You can add code to the `tools/console.rb` file to define variables and create sample instances of your objects.

## Deliverables

Write the following methods in the classes in the files provided. Feel free to build out any helper methods if needed.

Deliverables use the notation `#` for instance methods, and `.` for class methods.

Some of the methods listed are provided to you in the starter code. You should check that they work correctly, and that you understand them.

### Initializers, Readers, and Writers

#### Customer

- `Customer#initialize`
  - Customer should be initialized with a given name and family name, both strings (i.e., first and last name, like George Washington)"
- `Customer#given_name`
  - returns the customer's given name
  - should be able to change after the customer is created
- `Customer#family_name`
  - returns the customer's family name
  - should be able to change after the customer is created
- `Customer#full_name`
  - returns the full name of the customer, with the given name and the family name concatenated, Western style.
- `Customer.all`
  - returns **all** of the customer instances

#### Restaurant

- `Restaurant#initialize`
  - Restaurants should be initialized with a name, as a string
- `Restaurant#name`
  - returns the restaurant's name
  - should not be able to change after the restaurant is created

#### Review

- `Review#initialize`
  - Reviews should be initialized with a customer, restaurant, and a rating (a number)
- `Review#rating`
  - returns the rating for a restaurant.
- `Review.all`
  - returns all of the reviews

### Object Relationship Methods

#### Review

- `Review#customer`
  - returns the customer object for that review
  - Once a review is created, should not be able to change the customer
- `Review#restaurant`
  - returns the restaurant object for that given review
  - Once a review is created, should not be able to change the restaurant

#### Restaurant

- `Restaurant#reviews`
  - returns an array of all reviews for that restaurant
- `Restaurant#customers`
  - Returns a **unique** list of all customers who have reviewed a particular restaurant.

#### Customer

- `Customer#restaurants`
  - Returns a **unique** array of all restaurants a customer has reviewed
- `Customer#add_review(restaurant, rating)`
  - given a **restaurant object** and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.

### Aggregate and Association Methods

#### Customer

- `Customer#num_reviews`
  - Returns the total number of reviews that a customer has authored
- `Customer.find_by_name(name)`
  - given a string of a **full name**, returns the **first customer** whose full name matches
- `Customer.find_all_by_given_name(name)`
  - given a string of a given name, returns an **array** containing all customers with that given name

#### Restaurant

- `Restaurant#average_star_rating`
  - returns the average star rating for a restaurant based on its reviews
  - Reminder: you can calculate the average by adding up all the ratings and dividing by the number of ratings

  #### Bonus ActiveRecored questions!  Some of these are tricky... Google is your friend!
  - `Restaurant.order_by_name`
    - Returns an array of restaurants sorted in alphabetical order b y their name
  - `Customer.order_by_num_reviews`
    - Returns an array of customers sorted in order by those with the most reviews to the fewest
  