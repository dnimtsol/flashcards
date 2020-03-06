Install
Clone the repository

git clone git@github.com:dnimtsol/flashcards.git
cd project

Check your Ruby version

ruby -v

If not, install the right ruby version using rbenv :

rbenv install 2.5.1

Install dependencies

Using Bundler

bundle

Initialize the database

rails db:create db:migrate 

Serve

rails s