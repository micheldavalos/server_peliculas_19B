from flask import Flask, jsonify
import mysql.connector

app = Flask(__name__)

bd = mysql.connector.connect(host='localhost', user='alumno',
                             passwd='12345',
                             database='personajes')
cursor = bd.cursor()

@app.route('/peliculas/')
def peliculas():
    movies = []
    query = "SELECT * FROM movie"
    cursor.execute(query)

    for movie in cursor.fetchall():
        d = {
            'id': movie[0],
            'title': movie[1],
            'director': movie[2],
            'distributor': movie[3],
            'rate': movie[4],
            'year': movie[5],
            'img': movie[6]
        }
        movies.append(d)
        # print(movie)
    print(movies)
    return jsonify(movies)

app.run(debug=True)