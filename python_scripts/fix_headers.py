import pandas as pd
import os
# Defining file paths 
q2_path = 'data\Divvy_Trips_2019_Q2.csv'
q2_output = 'data\Divvy_Trips_2019_Q2_Fixed.csv'

# Check if file exists
if not os.path.exists(q2_path):
    print(f"Error: Could not find {q2_path}. Please check the file path.")
else:
    df_q2 = pd.read_csv(q2_path)

    # Dictionary mapping old messy names to your clean SQL schema names
    new_headers = {
        '01 - Rental Details Rental ID': 'trip_id',
        '01 - Rental Details Local Start Time': 'start_time',
        '01 - Rental Details Local End Time': 'end_time',
        '01 - Rental Details Bike ID': 'bikeid',
        '01 - Rental Details Duration In Seconds Uncapped': 'tripduration',
        '03 - Rental Start Station ID': 'from_station_id',
        '03 - Rental Start Station Name': 'from_station_name',
        '02 - Rental End Station ID': 'to_station_id',
        '02 - Rental End Station Name': 'to_station_name',
        'User Type': 'usertype',
        'Member Gender': 'gender',
        '05 - Member Details Member Birthday Year': 'birthyear'
    }

    # Rename the columns
    df_q2.rename(columns=new_headers, inplace=True)

    # Save the new file
    df_q2.to_csv(q2_output, index=False)
    
    print("Success! Created", q2_output)
    print("New Headers:", list(df_q2.columns))