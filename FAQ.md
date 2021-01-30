## Trello callback
### Public
* you must public expose the webserver to receive trello callbacks. (via `ngrok` for instance)

* By default, Matterllo take the `django request host` to create the trello callback and receive notifications. Example with a localhost URL:
```
# bad
create trello hook :: callback=http://localhost:8000/callback/1/ :: board=tutorial-board-start-here :: result=False

# good
create trello hook :: callback=http://4308dac9.ngrok.io/callback/2/ :: board=test :: result=<trello[...]>
```

## Production ready
### Change your admin password
1. Go to the Admin page
2. Use the default account: `admin`/`admin`
3. Go to the `User` part and change the password through the form

### Change the secret
```
$ export SECRET=<your_secret>
```

## Technical details
* `sqlite` is the default database.
* All database objects can be directly manipulated through the admin interface.
