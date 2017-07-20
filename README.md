

--Create new rails project: type the following in terminal--
```
rails new art_collector
cd art_collector
```

--Add the following gems to Gemfile--
```
gem 'devise'
gem 'paperclip'
```
```
bundle install
```

--Next we are going to set up devise--
```
rails generate devise:install
```
in config/environments/devolopments.rb paste the code generated in the terminal
```
config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
```
--In your app.erb paste these alerts--
```
<p class="notice"><%= notice %></p>
<p class="alert"><%= alert %></p>
```

--Create a user model through Devise then migrate, default is Admin--

```
rails g devise User
rails db:migrate
```


--Scaffold out the tables you want--
```
rails g scaffold artist name:string bio:text dob:integer dod:integer
rails g scaffold art name:string completed_at:date user:belongs_to artist:belongs_to
rails g scaffold lease price:decimal  lease_start_date:date lease_end_date:date art_id:integer client_id:integer user:belongs_to lease:belongs_to
```

--Scaffold a keyword table to eventually join through a join table to art, able to select eNums as well--
```
rails g scaffold keyword name:string category:integer
```

-- Model for join table created, migration after to ensure it seeds properly--
```
rails g model art_keyword
rails g migration art_keyword_join
```
