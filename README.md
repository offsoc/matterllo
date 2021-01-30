# What is Matterllo ?
Simple integration between Trello and Mattermost: send Trello activity notifications to Mattermost channels

![matterllo_logo](matterllo.png)

# Quick Start
## Common part
[**Here**](COMMON.md)

## Usage
### via Docker
```
$ make help
$ make local
```

## via Python
```
$ export TRELLO_APIKEY=<your_api_key>
$ virtualenv venv
$ source venv/bin/activate

$ (venv) pip install -r requirements.txt
$ (venv) python manage.py migrate
$ (venv) python manage.py loaddata admin
$ (venv) python manage.py runserver
```

More details [here](FAQ.md)
