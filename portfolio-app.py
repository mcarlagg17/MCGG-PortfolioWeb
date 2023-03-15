from flask import Flask, render_template, request
#from flask_bootstrap import Bootstrap
import jinja2

app = Flask(__name__,static_folder='static')
#bootstrap = Bootstrap(app)

@app.route('/')
def home():
    return render_template('index.html')

#if __name__ == '__main__':
#    app.run(debug=True)
            