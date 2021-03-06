<!-- Develop a statement of purpose and scope for your application. It must include:
- describe at a high level what the application will do
- identify the problem it will solve and explain why you are developing it
- identify the target audience
- explain how a member of the target audience will use it

300 -500 words -->
-----------------------------
<!-- Design a Software Development Plan for a terminal application. The following requirements provide details of what needs to be included in this plan, -->

R5
## Statement of Purpose and Scope

While thinking about the design for this terminal application, and as to what direction i would like the design and implementation to head, I found myself thinking about what i wanted to get from the process of the constructing the terminal app and also, on what i enjoyed, and within that , what i could do to enjoy the process more and to further educate myself and others on a topic that i enjoyed and also had some previous knowledge on. 
The application that i decided to design, will be a basketball-type, will help to solve a problem many basketball enthusiasts encounter, what were the statistics of a particular player , during a particular season. Aimed primarily for basketball enthusiasts , who are after some quick, specific basketball data. Providing a menu guided and user input application, this will provide this exactly. Firstly, the app will prompt the user for their name. Upon receiving this, the app will greet the user with their name (using string interpolation and user input data). After this, the app will then prompt the user to pick their favorite basketball player from a list provided (which will be displayed in a terminal table, gathered from a Ruby Gem). These players represent the best and most popular players that the National Basketball Association (NBA), has to offer. The application will then provide the user with statistics from the selected player, from the 2018-2019 season. The statistics that will be provided will be points, rebounds, assists, and games played for that particular season. This information will be gathered from a CSV file , which has been required in the Ruby documentation. The CSV file itself, was hard-coded into google sheets , exported as a CSV file and required through the Ruby documentation. After the selection and statistical information has been provided, the application will give some small antedotes about the player/nicknames that are used in the media and are commonly known around basketball circles. Following this, the user is again prompted to ask some questions regarding how they think they would fare in the NBA themselves. With each iteration of a question, regarding points,rebounds, assists, and games played (statistics found in the source information) the application will use flow control and methods/functions to retrieve the data and display through string interpolation, once again, what kind of player they themselves would be. For visual purposes, used is several gems to make certain criteria of the application more visably aesthetic to the user. Questions would be coloured differently to normal text using a Ruby Gem. The same Gem also made any mistakes that user had encountered coloured red. The application uses an 'Artii' Ruby Gem to place a lasting effect upon the user. The user will use the application by the guided menu and interaction themselves, resulting in a outcome of them picking their favorite player and getting placed on the table , only to be 'removed' later. 






<!-- Develop a list of features that will be included in the application. It must include:
- at least THREE features
- describe each feature
100 words per feature

Note: Ensure that your features above allow you to demonstrate your understanding of the following language elements and concepts:
- use of variables and the concept of variable scope
- loops and conditional control structures
- error handling

Consult with your educator to check your features are sufficient . -->
# R6
# My three features
Methods - Throughout the length of this terminal app, a main goal of mine, was to make the code as DRY as possible. I initially had separate prompts after the users choice. I decided that it would best suit the terminal app if the user themselves had a similar experience. By providing generic prompts, this in-turn would make the user experience have the same principles as the terminal application itself.

CSV file - A feature that was crucial to the effective working of the terminal application was the implementation and use of a hard-coded CSV file. This file had the stats that the application was based on. Initially the file is required and the statistics used for the user to see. Later on, the CSV file is updated with the results gathered from the user, and they are imported to the CSV file and are displayed on the terminal table. Only to be later taken off the table due to 'not making the cut'!

Error Handling - 

<!-- Develop an outline of the user interaction and experience for the application.
Your outline must include:
- how the user will find out how to interact with / use each feature
- how the user will interact with / use each feature
- how errors will be handled by the application and displayed to the user -->


# R7
## User Interaction

The user interaction with this particular terminal application , is simple. The scope of the terminal application and purpose was to have it fun and easy. The user interacts with the application in a simple manner, getting prompted simple questions and then interacting with application themselves. Later on, the user is asked some questions, in which they answer, this data is used to add them to the terminal table, where the can sit amongst the NBA greats of today. The features of the application are mainly disguised from the user, on the back-end. However, the front end, the user is supplied with a terminal table which holds the players , and then the user themselves for a short time. The application also uses the Gem 'colorize' to highlight specific prompts they are following. Yellow writing is a question, whereas red lets the user know they have made an incorrect option prompt. The application handles errors by letting the user know they have made a mistake, and sends them back to the initial question they were asked. This , like stated above, will be in red text, reinforcing that the option taken was the incorrect one. On the backend the errors are handled with an if/else statement within a method function, creating a prompt back to the start of the question if the option path chosen was incorrect. 

# R8 - Lucid flow chart

# R9 - Trello project management 

# R10

1. Install ruby. In class we used `rbenv` but feel free to use any ruby installation method. To verify you have ruby installed run:
```bash
ruby -v
```
2. Install the gem:
```
gem install 
```
3. Type `irb` into terminal.
```bash
irb
```
4. Run this command in irb:
```ruby
require 'my_app'





