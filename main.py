from bottle import route, run, template, request, redirect, static_file
import os

@route('/')
def index():
  try:
    files = os.listdir('./uploads')
  except:
    files = None
  return template('index', files=files)

@route('/upload', method='POST')
def do_upload():
  upload = request.files.get('upload')

  if not os.path.exists('./uploads'):
    os.mkdir('./uploads')
  
  upload.save(f'./uploads/{upload.filename}')

  redirect('/')

@route('/file/<filename>')
def view_file(filename):
  return static_file(filename, root='./uploads')

run(host='0.0.0.0', port=8080, reloader=True, debug=True)