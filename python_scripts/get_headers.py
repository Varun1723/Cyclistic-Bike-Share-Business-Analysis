import pandas as pd
from pathlib import Path
FILE_PATH = Path("data\Divvy_Trips_2019_Q2_Fixed.csv")

def print_headers(path):
    df = pd.read_csv(path)
    headers = list(df.columns)

    print("Detected headers:")
    for i, h in enumerate(headers, start=1):
        print(f"{i}. {h}")

if __name__ == "__main__":
    print_headers(FILE_PATH)
