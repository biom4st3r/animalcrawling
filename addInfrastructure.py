import mysql.connector as c
import random

DB = c.connect(
  host="localhost",
  user="root",
  password="D@nnynguyen0389",
  database='animal_crossing_team'
)

# initialize SQL cursor to do statements on
cur = DB.cursor()

'''
Function that gets the current number of villagers in the database.
Returns a number (should currently be 413)
'''
def getNumVillagers(cur):
    cur.execute("SELECT COUNT(v_id) FROM VILLAGER")
    return cur.fetchone()[0]
