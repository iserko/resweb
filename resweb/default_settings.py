import os
RESWEB_HOST = os.environ.get('RESWEB_HOST') or 'localhost:6379'
SERVER_HOST = os.environ.get('SERVER_HOST') or '127.0.0.1'
SERVER_PORT = int(os.environ.get('SERVER_PORT') or '5000')
