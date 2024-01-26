import datetime
import time

if __name__ == '__main__':
    print("The python script starts running")
    while True:
        try:
            print(f"The scripts run at {datetime.datetime.now()}")
            time.sleep(10)
        except Exception as e:
            print(f"There was an error {e}")
