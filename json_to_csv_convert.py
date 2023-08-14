import json
import csv
 
with open('winemag-data-130k-v2.json') as json_file:
    data = json.load(json_file)
 
wines_data = data['wines']
 
data_file = open('winemag-data-130k-v2.csv', 'w', newline='', encoding="utf-8")
 
csv_writer = csv.writer(data_file)
 
# Counter variable used for writing headers to the CSV file
count = 0
 
for i in wines_data:
    if count == 0:
        header = i.keys()
        csv_writer.writerow(header)
        count += 1
 
    csv_writer.writerow(i.values())
 
data_file.close()