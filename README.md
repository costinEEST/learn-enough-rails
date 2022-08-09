- https://aws.amazon.com/cloud9
- https://eu-south-1.console.aws.amazon.com/cloud9/home/product?ad=c&cp=bn&p=c9&region=eu-south-1#
- https://eu-south-1.console.aws.amazon.com/cloud9/ide/cf7e24b3df894167a884d128c4695a65

```bash
rvm get stable
```

```bash
rvm install 3.1.2
```

```bash
rvm --default use 3.1.2
```

```bash
echo "gem: --no-document" >> .gemrc
```

```bash
gem install rails -v 7.0.3
```

```bash
gem install bundler -v 2.3.15
```

```bash
source <(curl -sL https://cdn.learnenough.com/resize)
```

```bash
rails _7.0.3_ new hello_app --skip-bundle
```

- As of `Rails 6` and continuing in `Rails 7`, running `rails new` automatically initializes a Git repository:

```bash
rm -r hello_app/.git
```

- This would install the latest version of the `capybara` gem (which is used in testing) as long as it’s greater than or equal to version `3.26`—even if it’s, say, version `7.2`.

```bash
gem "capybara", ">= 3.26"
```

- This installs the gem `sqlite3` as long as it’s version `1.4` or newer (a “minor update”) but not `2` or newer (a “major update”). In other words, the `>=` notation always installs the latest gem as long as it meets the minimum version requirement, whereas the `~> 1.4` notation will install `1.5` (if available) but not `2.0`.

```bash
gem "sqlite3", "~> 1.4"
```

- https://github.com/learnenough/rails_tutorial_7th_edition_gemfiles

```bash
cd hello_app/ && bundle install
```

```bash
bin/rails server
```

- To view the result of `rails server` on a native OS, paste the URL http://localhost:3000 into the address bar of your browser. On the cloud IDE, go to `Preview` and click on `Preview Running Application` and then open it in a full browser window or tab (https://cf7e24b3df894167a884d128c4695a65.vfs.cloud9.eu-south-1.amazonaws.com).

- Look for all controllers available

```bash
ls app/controllers/*_controller.rb
```

- Example of how to define the route root:

```ruby
root "controller_name#action_name"
```

- Update Git on Cloud9:

```bash
source <(curl -sL https://cdn.learnenough.com/upgrade_git)
```

```bash
git config --global --list

credential.helper=!aws codecommit credential-helper $@
credential.usehttppath=true
core.editor=nano
```

- Configure the name and email fields for Git:

```bash
$ git config --global user.name "Your Name"
$ git config --global user.email your.email@example.com
```

- Define the default branch's name:

```bash
git config --global init.defaultBranch main
```

- Set up `git co` as a checkout alias:

```bash
git config --global alias.co checkout
```

- Configure Git to remember passwords for a set length of time:

```bash
git config --global credential.helper "cache --timeout=86400"
```

- Prevent the local installation of any production gems (which in this case consists of the `pg` gem):

```bash
bundle config
```

- Bundling without production gems:

```bash
bundle _2.3.14_ config set --local without 'production'
```

```bash
bundle _2.3.14_ install
```

```bash
bundle _2.3.14_ lock --add-platform x86_64-linux
```

- See if your system already has the Heroku command-line client installed:

```bash
heroku --version
```

- Install Heroku on the cloud IDE:

```bash
source <(curl -sL https://cdn.learnenough.com/heroku_install)
```

- https://devcenter.heroku.com/articles/heroku-cli#install-the-heroku-cli

- On a native system:

```bash
heroku login
```

- On the cloud IDE:

```bash
heroku login --interactive

Email: <your email>
Password: <your API Key, NOT your Heroku password>
```

- Create and configure a new application at Heroku:

```bash
heroku create
```

- Push the main branch up to Heroku:

```bash
git push heroku main
```

- If something goes wrong, inspect the logs:

```bash
heroku logs
```

- Get info about the Heroku app, including the Web URL:

```bash
heroku apps:info
```

- https://young-badlands-92881.herokuapp.com
- https://www.learnenough.com/custom-domains

- Generate a random subdomain with Ruby:

```ruby
('a'..'z').to_a.shuffle[0..7].join
```

- Rename the application

```bash
heroku rename learn-enough-rails_hello-app
```

- https://learn-enough-rails-hello-app.herokuapp.com
- [David Heinemeier Hansson using scaffolding in Rails](https://youtu.be/Gzj723LkRJY)

```bash
rails new toy_app --skip-bundle
```

```bash
cd toy_app
```

```bash
bundle config set --local without 'production'
```

```bash
bundle install
```

- https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig + https://stackoverflow.com/a/54696441/1904223 + https://youtu.be/_fcQDS1iTPw

```bash
toy_app/bin/rails s
```

```bash
git commit -am "Add hello"
```

```bash
heroku create
```

```bash
git push && git push heroku main
```

```bash
heroku rename learn-enough-rails-toy-app
```

- https://learn-enough-rails-toy-app.herokuapp.com + https://dashboard.heroku.com/apps/learn-enough-rails-toy-app

```bash
rails generate scaffold User name:string email:string
```

```bash
rails db:migrate
```

```bash
heroku run rails db:migrate
```

- The correspondence between pages and URLs for the Users resource:

| URL             | Action | Purpose                     |
| --------------- | ------ | --------------------------- |
| `/users`        | index  | page to list all users      |
| `/users/1`      | show   | page to show user with id 1 |
| `/users/new`    | new    | page to make a new user     |
| `/users/1/edit` | edit   | page to edit user with id 1 |

- RESTful routes provided by the Users resource:

| HTTP request method | URL             | Action | Purpose                     |
| ------------------- | --------------- | ------ | --------------------------- |
| GET                 | `/users`        | index  | page to list all users      |
| GET                 | `/users/1`      | show   | page to show user with id 1 |
| GET                 | `/users/new`    | new    | page to make a new user     |
| POST                | `/users`        | create | create a new user           |
| GET                 | `/users/1/edit` | edit   | page to edit user with id 1 |
| PATCH               | `/users/1`      | update | update user with id 1       |
| DELETE              | `/users/1`      | delete | delete user with id 1       |

```bash
rails generate scaffold Micropost content:text user_id:integer
```

```bash
rails db:migrate
```

- Undo a single migration step:

```bash
rails db:rollback
```

- Go all the way back to the beginning:

```bash
rails db:migrate VERSION=0
```

- Try to insert a text longer than 140 characters into the `Content` textarea at `http://127.0.0.1:3000/microposts/new` then submit the form.

```bash
cd toy_app && rails console
```

```ruby
User.first
```

```ruby
User.create!(name: 'Cos', email: 'mail@costi.com')
```

```ruby
micropost = User.first.microposts.first
```
- The inheritance hierarchy for the User and Micropost models:

![The inheritance hierarchy for the User and Micropost models](https://softcover.s3.amazonaws.com/636/ruby_on_rails_tutorial_7th_edition/images/figures/demo_model_inheritance_4th_ed.png "The inheritance hierarchy for the User and Micropost models")

- The inheritance hierarchy for the Users and Microposts controllers:

![The inheritance hierarchy for the Users and Microposts controllers](https://softcover.s3.amazonaws.com/636/ruby_on_rails_tutorial_7th_edition/images/figures/demo_controller_inheritance.png "The inheritance hierarchy for the Users and Microposts controllers")

```ruby
rails new sample_app --skip-bundle
```

```ruby
rm -rf sample_app/.git
```
- [Download from Github using curl](https://gist.github.com/jwebcat/5122366?permalink_comment_id=3404474#gistcomment-3404474)

```bash
curl --location --remote-header-name https://raw.githubusercontent.com/learnenough/rails_tutorial_7th_edition_gemfiles/master/sample_app/Gemfile_initial --output sample_app/Gemfile
```
- Skip the `pg` gem for PostgreSQL in development and use SQLite for development and testing:

```bash
bundle config set --local without 'production'
```

```bash
bundle install
```

- https://github.com/learnenough/rails_tutorial_sample_app_7th_ed/blob/main/README.md
- [Easily include static pages in your Rails app](https://github.com/thoughtbot/high_voltage)

```bash
rails generate controller StaticPages home help
```
- The inheritance hierarchy for the Static Pages:

![The inheritance hierarchy for the Static Pages.](https://softcover.s3.amazonaws.com/636/ruby_on_rails_tutorial_7th_edition/images/figures/static_pages_controller_inheritance.png "The inheritance hierarchy for the Static Pages.")

- Undo the created controller:

```bash
rails destroy controller StaticPages home help
```

- Rails shortcuts:

| Full command     | Shortcut  |
| ---------------- | --------- |
| `rails server`   | `rails s` |
| `rails console`  | `rails c` |
| `rails generate` | `rails g` |
| `rails test`     | `rails t` |
| `bundle install` | `bundle`  |

- http://127.0.0.1:3000/static_pages/home
- http://127.0.0.1:3000/static_pages/help
- https://dhh.dk/2014/tdd-is-dead-long-live-testing.html

```bash
mv app/views/layouts/application.html.erb layout_file
```

- https://stackoverflow.com/questions/27814500/ruby-on-rails-provide-vs-content-for

```bash
mv layout_file app/views/layouts/application.html.erb
```

- https://github.com/kern/minitest-reporters
- https://github.com/guard/guard
- https://www.railstutorial.org/guardfile

```bash
bundle exec guard init
```

```bash
curl --location --remote-header-name https://raw.githubusercontent.com/learnenough/rails_tutorial_sample_app_7th_ed/main/Guardfile --output Guardfile
```

```bash
bundle exec guard
```

- https://www.learnenough.com/ruby
- https://en.wikipedia.org/wiki/Media_type
- https://en.wikipedia.org/wiki/Abstraction_layer
- [stylesheet_link_tag(*sources)](https://api.rubyonrails.org/classes/ActionView/Helpers/AssetTagHelper.html#method-i-stylesheet_link_tag)
- https://www.learnenough.com/text-editor

```bash
nano ~/.irbrc
```

```bash
cat ~/.irbrc

IRB.conf[:PROMPT_MODE] = :SIMPLE
IRB.conf[:AUTO_INDENT_MODE] = false
```

```bash
rails console
```

```bash
curl -o app/assets/images/rails.svg -L https://cdn.learnenough.com/rails.svg
```

```bash
curl -OL https://cdn.learnenough.com/kitten.jpg
```

```bash
touch app/assets/stylesheets/custom.scss
```
- https://github.com/rails/sprockets/blob/main/guides/how_sprockets_works.md
- Inside of `sample_app\app\assets\stylesheets\application.css` the line `*= require_tree .` ensures that all CSS files in the `app/assets/stylesheets` directory (including the tree subdirectories) are included into the `application.css`. The line `*= require_self` specifies where in the loading sequence the CSS in `application.css` itself gets included.

- Route and URL mapping for site links:

| Page    | URL      | Named route  |
| ------- | -------- | ------------ |
| Home    | /        | root_path    |
| About   | /about   | about_path   |
| Help    | /help    | help_path    |
| Contact | /contact | contact_path |
| Sign up | /signup  | signup_path  |
| Log in  | /login   | login_path   |

-  Generate a template test, called 'site_layout':

```bash
rails generate integration_test site_layout
```

- https://www.rubydoc.info/gems/capybara/Capybara%2FNode%2FMatchers:assert_selector

```bash
rails test:integration
```

```bash
rails generate controller Users new
```

- https://github.com/heartcombo/devise#starting-with-rails

```bash
rails generate model User name:string email:string
```

```bash
rails db:migrate
```

- [DB Browser for SQLite](https://sqlitebrowser.org)

- Explore the data models is the Rails console:

```bash
rails console --sandbox
```

```ruby
user = User.new
```

```ruby
user.valid?
```

-  Save the User object to the database:

```ruby
user.save
```

- Find User by id:

```ruby
User.find(1)
```

- Active Record allows to find users by specific attributes:

```ruby
User.find_by(email: 'michael@example.com')
```

```ruby
User.first
```

```ruby
User.first
```

```ruby
user.email = "mhartl@example.net"
```

```ruby
user.email = "mhartl@example.net"
```

```ruby
user.save
```

```ruby
user.reload.email
```


```ruby
user.update(name: "The Dude", email: "dude@abides.org")
```

```bash
rails test:models
```

```bash
rails console --sandbox
```

```ruby
user = User.new(name: "", email: "michael@example.com")

user.valid?

user.errors.full_messages
```

- [Rubular: a Ruby regular expression editor](https://rubular.com)

```bash
rails generate migration add_index_to_users_email
```

```bash
rails db:migrate
```

- https://en.wikipedia.org/wiki/Hash_function
- https://en.wikipedia.org/wiki/Cryptographic_hash_function

```bash
rails generate migration add_password_digest_to_users password_digest:string
```

- https://en.wikipedia.org/wiki/Bcrypt
- https://github.com/bcrypt-ruby/bcrypt-ruby

```bash
bundle install
```

- Creating and authenticating a user:

```bash
rails console
```

```ruby
User.create(name: "Cos tin", email: "costin@ymail.com", password: "testingPwd", password_confirmation: "testingPwd")
```

```ruby
User.find_by(email: 'costin@ymail.com').password_digest
```

```ruby
User.find_by(email: 'costin@ymail.com').authenticate('wrongPwd')
```

```ruby
User.find_by(email: 'costin@ymail.com').authenticate('testingPwd')
```

```ruby
!!User.find_by(email: 'costin@ymail.com').authenticate('testingPwd')
```

- Rails comes equipped with three environments: `test`, `development`, and `production`. The default environment for the Rails console is `development`.

- To run a console in a different environment (to debug a test, for example), you can pass the environment as an option to the console `script`:

```bash
rails console --environment test
```

- If you have deployed your sample app to Heroku, you can see its environment using `heroku run rails console`.

```ruby
puts User.find_by(email: 'costin@ymail.com').attributes.to_yaml
```
or

```ruby
y User.find_by(email: 'costin@ymail.com').attributes
```

- A `Users` resource:

```ruby
User.count
```

```ruby
User.first
```

- [rdbg](https://blog.kiprosh.com/advanced-features-provided-by-new-debug-gem) + http://atdot.net/~ko1/activities/2021_rubyconf.pdf + https://edgeguides.rubyonrails.org/debugging_rails_applications.html#entering-a-debugging-session

```ruby
(rdbg) @user.name
"Cos tin"
(rdbg) @user.email
"costin@ymail.com"
(rdbg)
```

- [Gravatar URLs are based on an MD5 hash of the user's email address](http://en.gravatar.com/site/implement/hash)
- https://rubyapi.org/3.1/o/digest/md5
- https://rubyapi.org/3.1/o/string#method-i-downcase
- https://rubyapi.org/3.1/o/string#method-i-strip
- https://api.rubyonrails.org/classes/String.html#method-i-squish

```bash
rails console
```

```ruby
user = User.first

user.update(name: 'Constantin', email: "constantin@gmail.com", password: "parolaDemo", password_confirmation: 'parolaDemo')
```

- https://thoughtbot.com/upcase/videos/ruby-keyword-arguments
- https://api.rubyonrails.org/classes/ActionView/Helpers/FormHelper.html#method-i-form_with
- Soft-deprecated:
  - https://guides.rubyonrails.org/form_helpers.html#using-form-tag-and-form-for
  - https://github.com/rails/rails/issues/25197
  - https://api.rubyonrails.org/classes/ActionView/Helpers/FormHelper.html#method-i-form_for
  - https://api.rubyonrails.org/classes/ActionView/Helpers/FormTagHelper.html#method-i-form_tag
- https://stackoverflow.com/questions/941594/understanding-the-rails-authenticity-token
- http://www.railsstatuscodes.com/unprocessable_entity.html
- https://guides.rubyonrails.org/layouts_and_rendering.html#the-status-option
- https://api.rubyonrails.org/classes/ActionController/Parameters.html#method-i-require
- https://api.rubyonrails.org/classes/ActionController/Parameters.html#method-i-permit
- http://127.0.0.1:3000/signup?admin=1

```ruby
user = User.new(name: "The coder", email: "mail@void", password: "ruby", password_confirmation: "ruby")

user.save

user.errors.full_messages
```

- https://api.rubyonrails.org/classes/ActiveRecord/Associations/CollectionProxy.html#method-i-any-3F
- https://api.rubyonrails.org/classes/ActiveRecord/Associations/CollectionProxy.html#method-i-empty-3F
- https://api.rubyonrails.org/classes/ActionView/Helpers/TextHelper.html#method-i-pluralize

```bash
rails generate integration_test users_signup
```

- https://api.rubyonrails.org/classes/ActionController/Redirecting.html#method-i-redirect_to
- https://api.rubyonrails.org/classes/ActionDispatch/Flash.html

- Reset the database:

```bash
rails db:migrate:reset
```

- https://api.rubyonrails.org/classes/ActiveSupport/Testing/Assertions.html#method-i-assert_difference
- https://api.rubyonrails.org/classes/ActionView/Helpers/TagHelper.html#method-i-content_tag
- [SSL (Secure Sockets Layer) is now TLS (Transport Layer Security)](https://en.wikipedia.org/wiki/Transport_Layer_Security)
- https://www.learnenough.com/custom-domains
- https://devcenter.heroku.com/articles/deploying-rails-applications-with-the-puma-web-server
- https://devcenter.heroku.com/articles/getting-started-with-rails6

- Production deployment:
```bash
rails test
git add -A
git commit -m "Use SSL and the Puma web server in production"
git push && git push heroku
heroku run rails db:migrate
```

- How to reset the production database:

```bash
heroku pg:reset DATABASE
heroku run rails db:migrate
```

- [URL for the production version of chapter 7 (sign up)](https://safe-spire-86804.herokuapp.com)

- Generate the Sessions controller:

```bash
rails generate controller Sessions new
```

```bash
rails routes -c users
   Prefix Verb   URI Pattern               Controller#Action
   signup GET    /signup(.:format)         users#new
    users GET    /users(.:format)          users#index
          POST   /users(.:format)          users#create
 new_user GET    /users/new(.:format)      users#new
edit_user GET    /users/:id/edit(.:format) users#edit
     user GET    /users/:id(.:format)      users#show
          PATCH  /users/:id(.:format)      users#update
          PUT    /users/:id(.:format)      users#update
          DELETE /users/:id(.:format)      users#destroy
```

```bash
rails routes -c sessions
      Prefix Verb   URI Pattern             Controller#Action
sessions_new GET    /sessions/new(.:format) sessions#new
       login GET    /login(.:format)        sessions#new
             POST   /login(.:format)        sessions#create
      logout DELETE /logout(.:format)       sessions#destroy
```

```bash
curl -I http://127.0.0.1:3000 | grep Set-Cookie
```

- https://guides.rubyonrails.org/security.html#session-storage
- https://guides.rubyonrails.org/security.html#replay-attacks-for-cookiestore-sessions
- https://guides.rubyonrails.org/action_controller_overview.html#session
- https://github.com/rails/activerecord-session_store


