# cleanremotes-heroku
Executes cleanremote script periodically in heroku. https://github.com/88lex/cleanremotes <br>

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy?template=https://github.com/ssnjrthegr8/cleanremote-heroku)
<br>

Go to 
1. 'https://kaffeine.herokuapp.com/' and put in your app name. This wont work otherwise.
2. 'https://dashboard.heroku.com/apps/' yourappname '/resources' and turn on 'worker /bin/sh -c bash\ start.sh'
Now open your app and view the logs on your heroku dashboard.