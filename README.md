# What's in my Food

## Requirements
We will be querying the FoodData Central API with an ingredient to retrieve a list of the ten most relevant foods that include that ingredient.

First, sign up for an API key here: https://fdc.nal.usda.gov/api-key-signup.html

The documentation for the API can be found here: https://fdc.nal.usda.gov/api-guide.html

Make sure you take the time to read the API documentation carefully. 

### Setup

This app uses Ruby 3.2.2 and Rails 7.0.x. 

- Fork and Clone this repo
- `bundle install`
- `rails db:{create}`
- `rails s`

When the assessment begins, you will be asked to complete a user story. Be sure to TDD all of your work. Commit your work every 15 minutes.

### Notes:
  * Running the app and visiting the home page will show an error - THIS IS INTENTIONAL!
  * Make sure you read the user story closely, each portion must be completed correctly in order for it to be considered passing.

### User Story:
```
As a user,
When I visit "/"
And I fill in the search form with "sweet potatoes"
(Note: Use the existing search form)
And I click "Search"
Then I should be on page "/foods"
Then I should see a total of the number of items returned by the search.
(sweet potatoes should find more than 30,000 results)
Then I should see a list of TEN foods that contain the ingredient "sweet potatoes"

And for each of the foods I should see:
- The food's GTIN/UPC code
- The food's description
- The food's Brand Owner
- The food's ingredients

Note: You can consider every result you get from the FoodData API to be a valid result for your search even if the ingredient list for the food is empty.
```
