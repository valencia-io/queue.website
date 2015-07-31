![meanboilerplate-logo][1]

# MEAN Boilerplate

[![tipme](https://spideroak.com/share/PBSW433EMVZXS43UMVWXG/78656e6f6465/srv/CDN/xenodecdn/tipme-small.png)](https://www.changetip.com/tipme/jmlevick) [![endorse](http://api.coderwall.com/jmlevick/endorsecount.png)](https://coderwall.com/jmlevick)

## Lightweight implementation of the "MEAN Stack"

*Modular, easy-to-use (yet powerful) boilerplate for building MEAN-powered apps & sites.*

### This boilerplate includes:

- Full MEAN Stack usage (MongoDB, ExpressJS, AngularJS & NodeJS)
- MVC structure
- Multi-threading (clusterization) with session persistence support
- Scaffold Generator
- Superuser Generator
- Bower for assets/libs managemet
- NPM as task manager (instead of Grunt/Gulp)
- YAML configuration capabilities
- Coffeescript as main scripting language & SaSS as main styling language
- Cronjob handling using Ruby
- Built-in Authentication & Authorization Middlewares
- Built-in error handling
- Twitter Bootstrap, jQuery & Font-Awesome included by default
- Bootswatch themes & BootboxJS
- ngResource & ngAnimate
- IE fixes & built-in mobile/bot detection
- SEO Optimizations

### Available NPM Tasks:

- **start:** Starts the project via **nodemon**
- **jscoffee:** Live compiling of **.coffee** files to **minified .js**
- **coffeejs:** Live compiling of **.coffee** files to **non-minified .js**
- **smushimg:** Lossless compression for all the images used in your project via **Smushit!**
- **createadmin:** Task for creating a project-wide **superuser**
- **scaffold:** Magical **scaffold generator**, Finally!


> For more details, please read **[CHANGELOG.md][10]**

It's worth to mention that the boilerplate uses the **latest stable version** available from all of it's dependencies/libraries on each project creation, and this repository gets constantly updated so the boilerplate can keep up with non-backward compatible changes and/or deprecations as they surge. This project it's meant to be production-focused, so use it with confidence.

### Usage

Assuming you already have the needed **MEAN Stack** pieces installed on your computer/server (**[MongoDB][2]**, **[NodeJS][3]** & **[ExpressJS][4]**) plus **[Git][5]**, **[Bower][6]** and **[Ruby/Rubygems][9]** (with the **bundle/bundler** gems previously installed); Just run:

    1. git clone https://github.com/Jmlevick/mean-boilerplate.git MY_APP
    2. cd MY_APP
    3. git init
    4. bundle install
    5. npm install
    6. bower install

Replacing **MY_APP** with the name of the app/site you wanna create... To see your newly created app in action, just run:

    npm start

From inside your app's folder and then open **http://localhost:3000** in your browser... Then, on another terminal tab run:

    npm run jscoffee

So that your **.coffee** files are watched for changes. The welcome page on **localhost:3000** will guide you further on how to use the **MEAN Boilerplate**.

Created by: [@Jmlevick][7]  
License: [Coffeeware][8]

[![tipme](https://spideroak.com/share/PBSW433EMVZXS43UMVWXG/78656e6f6465/srv/CDN/xenodecdn/tipme-small.png)](https://www.changetip.com/tipme/jmlevick) [![endorse](http://api.coderwall.com/jmlevick/endorsecount.png)](https://coderwall.com/jmlevick)

  [1]: https://spideroak.com/share/PBSW433EMVZXS43UMVWXG/78656e6f6465/srv/CDN/xenodecdn/github-assets/mean-boilerplate-logo.png
  [2]: http://www.mongodb.org/
  [3]: http://www.nodejs.org/
  [4]: http://expressjs.com/
  [5]: http://www.git-scm.com/
  [6]: http://bower.io/
  [7]: https://twitter.com/Jmlevick
  [8]: https://github.com/Jmlevick/coffeeware-license
  [9]: https://www.ruby-lang.org/en/documentation/installation/
  [10]: https://github.com/Jmlevick/mean-boilerplate/blob/master/CHANGELOG.md
