# FULL STACK

## Initial Setup
- Create new Rails app:
`$ rails new full-stack -d postgresql -T`
`$ cd full-stack`
`$ rails db:create`

- Connect to GitHub repo:
`$ git remote add origin <url>`
`$ git branch -M main`
git Trio to push the initial commit

- Add RSPEC gem:
`$ bundle add rspec-rails`

- Generate RSPEC folders:
`$ rails generate rspec:install`


## Setup Model and Controller:
- Generate model:
`$ rails generate model Book name:string read:boolean`
`$ rails db:migrate`

- Generate controller:
`$ rails generate controller Book`

- Run server to confirm everything is working properly:
`$ rails s`

- Add some data:
`$ rails c`
```ruby
Book.create(name: 'The Energy Bus', read: true)
Book.create(name: 'The Pragmatic Programmer', read: false)
Book.create(name: 'Dare to Lead', read: false)
Book.create(name: 'The One Thing', read: true)
```

## Index
- Controller method: holds active record query (Book.all)
- Route: defines the url('books') and calls the index method
- View: 
  - Iterated on the Active Record array
  - added HTML for markup structure
  - Use dot notation to access the attribute to display
  - Displayed the info!

## Show
- Displays one item
- GET request
- read CRUD action

- Add an alias in route
  - Alias is almost like a variable that we can reference when routing

  ## New
  - displays a form
  - GET request
  - read CRUD 

  - ORDER MATTERS IN THE ROUTES!  Make sure that any GET request that does not need a param goes before the show route which does require a param

