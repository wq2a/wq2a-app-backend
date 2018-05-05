# -*- coding: utf-8 -*-
# filename: main.py
import web
from handle import Handle

urls = (
  '/.*', 'Handle',
)

app = web.application(urls, globals(),autoreload=False)
application = app.wsgifunc()
