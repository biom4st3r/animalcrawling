import mysql.connector as c
import random
from addHouses import *

DB = c.connect(
  host="localhost",
  user="root",
  password="D@nnynguyen0389",
  database='animal_crossing_team'
)

# initialize SQL cursor to do statements on
cur = DB.cursor()

numVillagers = getNumVillagers(cur)
print(f"Number of villagers in the database: {numVillagers}")

numHouses = inputRandomHouses(numVillagers)

inputRandomHousePayments(numVillagers, numHouses)