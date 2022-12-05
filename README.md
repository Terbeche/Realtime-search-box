![](https://img.shields.io/badge/MOSTEFA-TERBECHE-red?labelColor=blue)&nbsp;

# Real-Time-Search-Box

> This app is a realtime search box, where users search articles, and then have analytics that display what they were searching for. 

## Built with

- ![](https://img.shields.io/badge/Github-blueviolet)
- ![](https://img.shields.io/badge/Ruby-red)
- ![](https://img.shields.io/badge/Ruby*on*Rails-red)
- ![](https://img.shields.io/badge/PostgreSql-blue)
- ![](https://img.shields.io/badge/JavaScript-yellow)
- ![](https://img.shields.io/badge/Tailwind-blue)

### Install & Setup

To setup and install this project, follow the below steps:
- Clone this project by the command: 
  ```
  git clone https://github.com/Terbeche/Realtime-search-box.git
  ```

- Then switch to the project folder by the bellow query:

  ```
  cd Realtime-search-box
  ```

- Install the required dependecies with:
  ```
  bundle install
  ```
- Install npm dependencies with: 
  ```
  npm install
  ```
- Before running below commands update [config/database.yml](./config/database.yml) with your local `DB` credentials. Then run:
    ```
    rake db:create
    ```
    ```
    rake db:migrate
    ```
    ```
    rake db:seed
    ```
- To make the tailwindcss works run the below commands:
    ```
    ./bin/bundle add tailwindcss-rails
    ./bin/rails tailwindcss:install

    ```

- To run the website, With Ruby on Rails and PostgreSQL installed in your environment, you can run 

    ```
    ./bin/dev
    ```


### Tests

- Run `bundle install`
- Run `bundle exec rspec spec`

### Prerequisites

- IDE to edit and run the code (We use Visual Studio Code 🔥).
- Git to versionning your work.
- Postgresql
- Rails

### Author

👤 **Mustapha**

- GitHub: [@Terbeche](https://github.com/Terbeche)
- LinkedIn: [@Terbeche](https://www.linkedin.com/in/mustapha-terbeche/)


## 🤝 Contributing
Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/Terbeche/Realtime-search-box/issues).

## Show your support
Give a ⭐️ if you like this project!


## 📝 License

This project is [MIT](./LICENSE.md) licensed.