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