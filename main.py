import mysql.connector as c
import random
from addHouses import *

myPassword = input("Enter your MySQL password: ")

numVillagers = getNumVillagers(myPassword)
print(f"Number of villagers in the database: {numVillagers}")

numHouses = inputRandomHouses(numVillagers, myPassword)

inputRandomHousePayments(numVillagers, numHouses, myPassword)

copyHouseIDtoVIllagers(numVillagers, myPassword)