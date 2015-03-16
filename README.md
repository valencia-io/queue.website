![meanboilerplate-logo][1]

# MEAN Boilerplate

## Lightweight implementation of the "MEAN Stack"

*Modular, easy-to-use (yet powerful) boilerplate for building MEAN-powered apps & sites.*

This boilerplate includes:

 - Full MEAN Stack usage (MongoDB, ExpressJS, AngularJS & NodeJS)
 - MVC structure
 - YAML configuration capabilities
 - Multi-threading (clusterization) with session persistence support
 - Cron jobs handling using Ruby
 - Coffeescript as main scripting language
 - LESS as main styling language
 - File upload built-in using multer
 - IE fixes & built-in mobile/bot detection
 - Bower for assets & libs
 - Twitter Bootstrap (with BootboxJS/Bootswatch), jQuery, AngularJS (with ngResource/ngAnimate) & Font-Awesome included by default
 - Built-in error handling
 - SEO Optimizations
 - Built-in crypted-auth restriction for accesing admin-only content
 - nodemon/npm script automatization for startup/development

> For more details, please read **[CHANGELOG.md][10]**

It's worth to mention that the boilerplate uses the **latest stable version** available from all of it's dependencies/libraries on each project creation, and this repository gets constantly updated so the boilerplate can keep up with non-backward compatible changes and/or deprecations as they surge. This project it's meant to be production-focused, so use it with confidence.

### Usage

Assuming you already have the needed **MEAN Stack** pieces installed on your computer/server (**[MongoDB][2]**, **[NodeJS][3]** & **[ExpressJS][4]**); plus **[Git][5]**, **[Bower][6]** and **[Ruby/Rubygems][9]**, just run:

    1. gem install bundle
    2. git clone https://github.com/Jmlevick/mean-boilerplate.git MY_APP
    3. cd MY_APP
    4. git init
    5. bundle install
    6. npm install
    7. bower install

Replacing **MY_APP** with the name of the app/site you wanna create... To see your newly created app in action, just run:

    npm start
    
From inside your app's folder and then open **http://localhost:3000** in your browser.

Created by: [@Jmlevick][7]  
License: [Coffeeware][8]

[![endorse](http://api.coderwall.com/jmlevick/endorsecount.png)](https://coderwall.com/jmlevick)


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