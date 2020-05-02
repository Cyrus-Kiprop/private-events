<h1 align="center">Ruby On Rails Authentications</h1>
<p>
  <img alt="Version" src="https://img.shields.io/badge/version-0.0.1-blue.svg?cacheSeconds=2592000" />
  <a href="#" target="_blank">
    <img alt="License: MIT " src="https://img.shields.io/badge/License-MIT -yellow.svg" />
  </a>
  <a href="https://twitter.com/kipropJS" target="_blank">
    <img alt="Twitter: kipropJS" src="https://img.shields.io/twitter/follow/kipropJS .svg?style=social" />
  </a>
</p>

## Description of the project
The project involves creation of a private events website(EventBrite like in
functionality) in rails. The app implements authentication, rails scopes and
association. Many to many relationship is the main key feature.
**The project contain database models and schemas that model the user and the
post object.
visit [The Odin Project 'Members Only'](https://www.theodinproject.com/courses/ruby-on-rails/lessons/associations) for the full project specifications.


### ⭐️ Built with
* Ruby,
* Ruby on Rails,
* Rails authentication (from scratch no gems)
* SQL lite as the default database
* vim - or favourite text editor

### Dev Environment Requirements:
* Ruby, check [here](https://www.ruby-lang.org/en/documentation/installation/) for more information.

### ⭐️ Running the code

#### Instructions:

1. Clone the members-only repo [here](https://github.com/Cyrus-Kiprop/members-only)

2. Navigate into the root of the folder
    ```
    $ cd ./private-events
    ```
3. Run bundle install to install the necessary gems:
    ```
    $ bundle install
    ```
3. Install Yarn
    ```
    $ yarn install --check-files
    ```
3. Migrate the DB
    ```
    $ rails db:migrate
    ```
3. Run the sandboxed console to explore the database
    ```
    $ rails console --sandbox
    ```
4. Run the server
    ```
    $ rails server
    ```
5. First time users should register on the index page

6. After registration, login to view, create, and organise events.

7. Non members can only view existing events but dont have create event
   priviledges


## Authors

👤 **Cyrus Kiprop**

- Github: [Cyrus-Kiprop](https://github.com/Cyrus-Kiprop)
- Twitter: [@kipropJS](https://twitter.com/kipropJS)
- Linkedin: [Cyrus Kiprop](https://www.linkedin.com/in/cyrus-kiprop-ba7320120/)


## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to leave a comment or open an issue. [issues page](https://github.com/Cyrus-Kiprop/private-events).

## Show your support

Give a ⭐️ if you like this project sanbox

## 📝 License

This project is [MIT](LICENSE) licensed.
