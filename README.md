# RPG-Rails

##Prerequisites

Web browser with ES6 compatibility
Examples: Chrome, Safari

Web browser with ES6 compatibility
Examples: Chrome, Safari

### Installing

Clone this repo by typing into the terminal:
```
$ git clone https://github.com/gravytates/rpg_rails.git
```

In a new terminal window, start postgres in the background:
```
$ postgres
```
Ensure you are using Ruby 2.4.1 by typing:
```
$ ruby -v
```

If you are not running version 2.4.1 please look into a Ruby version manager. I suggest RVM or Chruby.

Navigate to this project directory in the terminal. Then type:

```
$ bundle install
```

After the gems are installed set up the database:

```
$ bundle exec rails db:setup
```

To run the app:
```
$ bundle exec rails server
```
If all went well, rails will now make this project available in your browser by going to localhost:3000.

### Testing

This application includes both Unit and User Integration testing.  It primarily uses RSpec, Capybara, and Shoulda-Matchers.

## Screenshots

### Character Page

![character](https://user-images.githubusercontent.com/25161777/27936734-3023c4b2-6267-11e7-94e1-1080cda1e950.png)
