from flask import Flask
from werkzeug.debug import DebuggedApplication


def create_app(settings_override=None):
    """
    Create a Flask application using the app factory pattern.

    :param settings_override: Override settings
    :return: Flask app
    """
    app = Flask(__name__, instance_relative_config=True)

    app.config.from_object('config.settings')
    app.config.from_pyfile('settings.py', silent=True)

    if settings_override:
        app.config.update(settings_override)

    if app.debug:
        app.wsgi_app = DebuggedApplication(app.wsgi_app, evalex=True)

    @app.route('/')
    def index():
        return 'Hello world with DEBUG={0}'.format(app.config['DEBUG'])

    @app.route('/healthy')
    def healthy():
        return ''

    return app
