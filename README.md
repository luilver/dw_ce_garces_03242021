# README

## dw_ce_garces_03242021 project

### Prerequisites

The setups steps expect following tools installed on the system.

* Ruby 2.7.2

* Rails 6.1.3

* Sqlite3

### 1. Check out the repository

```
git clone git@github.com/luilver/dw_ce_garces_03242021.git
```

### 2. Bundle gems

```
cd dw_ce_garces_03242021
bundle
```

### 3. Migrate and seed the database

```
rails db:migrate db:seed
```

### 4. Run testings

```
rake
```

### 5. Read de docs

Start the service:

```
rails s
```

Open your browser and point to: 

http://localhost:3000/v1/swagger_doc.json
