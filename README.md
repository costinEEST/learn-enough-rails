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

- When creating a new Rails application it is already a Git project

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
