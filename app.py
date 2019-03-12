import sqlanydb
from flask import Flask
from loguru import logger
app = Flask(__name__)


def execute_iq_query():
    con = sqlanydb.connect(DSN="Sybase IQ Demo", userid="<user_id>", password="<password>")
    cursor = con.cursor()

    query = "SELECT * FROM Employees"
    cursor.execute(query)

    desc = cursor.description
    print(len(desc))

    # Fetch all results from the cursor into a sequence,
    # display the values as column name=value pairs,
    # and then close the connection
    rowset = cursor.fetchall()
    for row in rowset:
        for col in range(len(desc)):
            logger.info("%s=%s" % (desc[col][0], row[col]))
        logger.info()
    cursor.close()
    con.close()
    con.close()


@app.route('/')
def hello_world():
    try:
        execute_iq_query()
    except Exception as exception:
        logger.error(exception)
    return 'Flask Dockerized'


if __name__ == '__main__':
    app.run(debug=False, host='0.0.0.0')
