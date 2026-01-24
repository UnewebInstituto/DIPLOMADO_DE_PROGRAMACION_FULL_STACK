import mysql.connector
mydb = mysql.connector.Connect(
  host = "localhost",
  user = "root",
  password = ""
)

mycursor = mydb.cursor()

mycursor.execute("SHOW DATABASES LIKE '%bdpy2%'")
for bbdd_curso in mycursor:
  print(bbdd_curso)