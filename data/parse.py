#Python code to illustrate parsing of XML files
# importing the required modules
import csv
import xml.etree.ElementTree as ET

rows = []

tree = ET.parse('.\\data\\sounders.xml')
root = tree.getroot()

for instance in root.findall('.//instance'):
    row = {}
    for element in instance:

        if element.tag == 'label':
            subelement = element.find('./text')
            group = element.find('./group').text
            if group == 'Team':
                row['team'] = subelement.text
                #print('Team Name : ' + subelement.text)
            elif group == 'Action':
                row['action'] = subelement.text
                #print('Action : ' + subelement.text)
            elif group == 'Half':
                row['half'] = subelement.text
                #print('Half : ' + subelement.text)
        else:
            row[element.tag] = element.text
            #print(element.tag + ' : ' + element.text)

    rows.append(row)

    fields = ['ID', 'start', 'end', 'code', 'team', 'action', 'half', 'pos_x', 'pos_y']
  
    # writing to csv file
    with open('.\\data\\sounders.csv', 'w', newline='') as csvfile:
  
        # creating a csv dict writer object
        writer = csv.DictWriter(csvfile, fieldnames = fields, dialect='excel')
  
        # writing headers (field names)
        writer.writeheader()
  
        # writing data rows
        writer.writerows(rows)
          