from flask import Flask
import psycopg2

app = Flask(__name__)


@app.route("/")
def home():
    return "CloudForge Backend is Running"


@app.route("/db")
def database():
    try:
        conn = psycopg2.connect(
            host="127.0.0.1",
            database="cloudforge_db",
            user="cloudforge",
            password="cloudforge123"
        )

        conn.close()
        return "PostgreSQL Connected Successfully"

    except Exception as e:
        return f"Database connection failed: {e}"


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
