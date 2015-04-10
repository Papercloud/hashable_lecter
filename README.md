# HashableLecter
Stores a tokens of your mobile contacts list and compares them against users in the database to find which of your contacts are using the app.

### Install
```ruby
gem 'hashable_lecter', github: 'Papercloud/hashable_lecter'
```

```ruby
rails g hashable_lecter:install
```

*Adds hashed_mobile field to User*

```ruby
rails g hashable_lecter:resource User
```

*Include helper method which sets up association*
```ruby
class User
  has_hashable_contacts
end
```
