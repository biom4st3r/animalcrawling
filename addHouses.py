import mysql.connector as c
import random

DB = c.connect(
  host="localhost",
  user="root",
  password="notMyPassword",
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

'''
Function that adds a house to the SQL database.
    
        - Each house must have floors within range 1-4
        - Each house must have a randomly generated price (100 - 100,000 bells)

Also returns the number of houses, too
'''
def inputRandomHouses(numVillagers):
    numHouses = 0

    for i in range(numVillagers):
        # generate random house info
        house_id = i + 1
        numFloors = random.randint(1, 4)
        price = random.randint(100, 100000)

        # print the house info
        print(f"House ID: {house_id}, Floors: {numFloors}, Price: {price}")

        # add the house to the SQL database
        cur.execute("INSERT INTO HOUSE (h_id, h_floors, h_price) VALUES (%s, %s, %s)", (house_id, numFloors, price))

        # then, commit the changes to the database
        DB.commit()

        print("House #" + str(house_id) + "added to the database!")
        numHouses += 1

    return numHouses

'''
Function that adds a house payment to the SQL database.
    
        - Assume that hp_id and the v_id share the same number (for simplicity)
        - A villager must be randomly assigned a unique h_id
        - (I.E, a villager must have one and only one house, and a house must have one and only one villager)
        - Each house must have a randomly generated payment amount (0 - 100000 bells)
        - For the sake of variety, assume that the odds of there being a 0 payment is 1/9
'''
def inputRandomHousePayments(numVillagers, numHouses):

    # populate villagers with houses
    assignVillagerToHouse(numVillagers, numHouses)

    for i in range(numVillagers):
        # generate random house payment info
        hp_id = i + 1
        v_id = i + 1

        # get the price of the ith villager's house
        cur.execute("SELECT h_price FROM HOUSE WHERE h_id = (SELECT h_id FROM HOUSEPAYMENT WHERE v_id = %s)", (v_id,))
        curHousePrice = cur.fetchone()[0]
       
       # then, generate a random payment amount from 0 to the house price (float)
        # (for the sake of variety, assume that the odds of there being a 0 payment is 1/9)
        if random.randint(1, 9) == 1:
            payment = 0.00
        else:
            payment = round(random.uniform(0, curHousePrice), 2)

        # print the house payment info
        print(f"House Payment ID: {hp_id}, Villager ID: {v_id}, Payment: {payment}")

        # add the house payment to the SQL database
        cur.execute("UPDATE HOUSEPAYMENT SET hp_amount = %s WHERE v_id = %s", (payment, v_id))

        # then, commit the changes to the database
        DB.commit()

        print("House Payment #" + str(hp_id) + "added to the database!")
    

'''
Subfunction that assigns a villager to a house.
a vilager must have one and only one house, and a house must have one and only one villager.
Note: use
SELECT h_id, COUNT(h_id) 
FROM housepayment
GROUP BY h_id
HAVING COUNT(h_id) > 1;
to check for duplicates
'''

def assignVillagerToHouse(numVillagers, numHouses):
    for i in range(numVillagers):
        # generate random house info
        villager_id = i + 1
        house_id = random.randint(1, numHouses)

        # check if the house id is already assigned to a villager
        while True:
            cur.execute("SELECT v_id FROM HOUSEPAYMENT WHERE h_id = %s AND v_id IS NOT NULL", (house_id,))
            result = cur.fetchone()

            if result is None:
                print("Duplicate house id found, assigning a new house id...")
                break
            else:
                house_id = random.randint(1, numHouses)

        
        # print the villager info
        print(f"House ID: {house_id}, Villager ID: {villager_id}")

        # add the villager to the SQL database
        cur.execute("INSERT INTO HOUSEPAYMENT (h_id, v_id) VALUES (%s, %s)", (house_id, villager_id))

        # then, commit the changes to the database
        DB.commit()

        print("Villager #" + str(villager_id) + " for House #" + str(house_id) + " added to the database!")


