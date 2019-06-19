# GYG

As a potential traveler, I want to read a list of reviews for one of our most popular Berlin tours.”

 

Tasks Completed : 

Created an iPhone app that allows a customer to browse reviews for one of our most popular Berlin tours. 
Feel free to add any feature that you feel relevant to the use case.
=> I have added a profile photo of the reviewer , the name of the person and the review message . 
=> MVC architecture clearly explained and added . Proper level of abstraction has been used in the app .
=> Model, View and controller are clearly distinguished apart from other components like Networking , Service etc 
=> No storyboards has been used , Constraint applied programmatically 
=> Orientation supported. 
=> Tested on iPhone X , works on latest Xcode and iOS versions, Used Swift 4+

Tasks Not done : 
=> Due to lack of time and unfortunate delay , I did not write Test cases. 
=> Cell in the collection view has not been made dynamic according to the content , Though i tried my best to make it look good.  
 

Following webservice consumed : 
The following web service delivers n (count) reviews which include the review author, title, message, date, rating, language code:

 

https://www.getyourguide.com/berlin-l17/tempelhof-2-hour-airport-history-tour-berlin-airlift-more-t23776/reviews.json?count=5&page=0&rating=0&sortBy=date_of_review&direction=DESC

URL params
Required
count=[integer]
