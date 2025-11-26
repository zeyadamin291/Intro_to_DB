import mysql.connector

def Create_Database():
    try:    
        db = mysql.connector.connect(host = 'localhost' , user = 'root' ,passwd = '0000')
        cursor  = db.cursor()
        cursor.execute("""
                    CREATE DATABASE IF NOT EXISTS alx_book_store;
                    """)
        db.commit()
        print("Database 'alx_book_store' created successfully! ")
    except mysql.connector.Error as err:
        print(f"Failed to connect or create database: {err}")
    finally:
        db.close()



