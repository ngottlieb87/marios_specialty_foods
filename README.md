# _Mario's Specialty Foods_
### Created By _Noah Gottlieb_

## Description

Be able to see all of the foods that Mario's Specialty Foods Currently has. Click on a product and learn details about the product as well as read reviews. If you've also tried the product feel free to leave a review.


## Setup

1. open terminal navigate to desired download location (ex. `cd desktop`) and enter: </br>`git clone https://github.com/ngottlieb87/marios_specialty_foods`

2. Navigate to the root of the project directory and enter the following commands in the terminal:
  * `rake db:create`
  * `rake db:migrate`
  * `rake db:test:prepare`
  * `rake db:seed`

3. To launch the application type the command while in the root directory:
  <br>`rails s`

4. Use your favorite browser and in the url type: `localhost:3000`

## Specs

| Behavior    |  Input        | Output |
| :------------- |:-------------| :-----|
| As a user i want to add a review | Author: terrance, rating: 3, content: "i thought the spaghetti from Italy was ok but i expected more. The packaging was nice and the instructions were easy to follow"   | _Review added to chosen food_
|  As a admin i want to add a new product | _Click add a new product and fill in existing fields. I.E _Name_: Scalloped Potatoes, _Cost_: 4, _country_origin_: USA | New product will be added to list of all products |
| Filter by most recently added products | Use filter by: and select Most Recent | _The list of products will display the 10 most recently added products_ |
| Filter by made in usa | Use filter by: and select _Foods From USA_ | _Display only foods from USA_ |
| Filter by most reviewed | Use filter by: Most Reviewed | _Display product with the most reviews_ |


## Languages/Frameworks Used:

  ###### _Ruby on Rails, Ruby, ActiveRecord, PSQL, SCSS, Bootstrap_
