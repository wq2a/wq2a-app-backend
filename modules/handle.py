# -*- coding: utf-8 -*-
# filename: handle.py

import web

class Handle(object):
  def GET(self):
    try:
      data = web.input()
      if len(data) == 0:
        return "hello, this is handle GET"
      return ""
    except Exception, Argument:
      return Argument
