# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2023.

import sys, csv, re

codes = [{"code":"4M3..00","system":"readv2"},{"code":"7G03J00","system":"readv2"},{"code":"BBE1.13","system":"readv2"},{"code":"BBE2.00","system":"readv2"},{"code":"BBE4.00","system":"readv2"},{"code":"BBEH.00","system":"readv2"},{"code":"BBEN.11","system":"readv2"},{"code":"BBEP.00","system":"readv2"},{"code":"101198.0","system":"med"},{"code":"102116.0","system":"med"},{"code":"102145.0","system":"med"},{"code":"104609.0","system":"med"},{"code":"108866.0","system":"med"},{"code":"109002.0","system":"med"},{"code":"11922.0","system":"med"},{"code":"17232.0","system":"med"},{"code":"19444.0","system":"med"},{"code":"20709.0","system":"med"},{"code":"20982.0","system":"med"},{"code":"22692.0","system":"med"},{"code":"23085.0","system":"med"},{"code":"24208.0","system":"med"},{"code":"24551.0","system":"med"},{"code":"25602.0","system":"med"},{"code":"2705.0","system":"med"},{"code":"28556.0","system":"med"},{"code":"32768.0","system":"med"},{"code":"34259.0","system":"med"},{"code":"36899.0","system":"med"},{"code":"37872.0","system":"med"},{"code":"38689.0","system":"med"},{"code":"39878.0","system":"med"},{"code":"40303.0","system":"med"},{"code":"41278.0","system":"med"},{"code":"41490.0","system":"med"},{"code":"42153.0","system":"med"},{"code":"42714.0","system":"med"},{"code":"43463.0","system":"med"},{"code":"43715.0","system":"med"},{"code":"44061.0","system":"med"},{"code":"44157.0","system":"med"},{"code":"45139.0","system":"med"},{"code":"45306.0","system":"med"},{"code":"45755.0","system":"med"},{"code":"45760.0","system":"med"},{"code":"46255.0","system":"med"},{"code":"47094.0","system":"med"},{"code":"47252.0","system":"med"},{"code":"4871.0","system":"med"},{"code":"49814.0","system":"med"},{"code":"50505.0","system":"med"},{"code":"51209.0","system":"med"},{"code":"51353.0","system":"med"},{"code":"51873.0","system":"med"},{"code":"53369.0","system":"med"},{"code":"53629.0","system":"med"},{"code":"54305.0","system":"med"},{"code":"54632.0","system":"med"},{"code":"54685.0","system":"med"},{"code":"55292.0","system":"med"},{"code":"55881.0","system":"med"},{"code":"56925.0","system":"med"},{"code":"57260.0","system":"med"},{"code":"57294.0","system":"med"},{"code":"579.0","system":"med"},{"code":"58835.0","system":"med"},{"code":"58958.0","system":"med"},{"code":"59061.0","system":"med"},{"code":"61246.0","system":"med"},{"code":"62088.0","system":"med"},{"code":"62475.0","system":"med"},{"code":"63574.0","system":"med"},{"code":"63997.0","system":"med"},{"code":"64327.0","system":"med"},{"code":"65164.0","system":"med"},{"code":"65625.0","system":"med"},{"code":"67806.0","system":"med"},{"code":"68133.0","system":"med"},{"code":"68889.0","system":"med"},{"code":"70637.0","system":"med"},{"code":"71136.0","system":"med"},{"code":"73251.0","system":"med"},{"code":"73536.0","system":"med"},{"code":"73744.0","system":"med"},{"code":"7483.0","system":"med"},{"code":"7761.0","system":"med"},{"code":"8640.0","system":"med"},{"code":"865.0","system":"med"},{"code":"92293.0","system":"med"},{"code":"95629.0","system":"med"},{"code":"96280.0","system":"med"},{"code":"96585.0","system":"med"},{"code":"99257.0","system":"med"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('primary-malignancy_malignant-melanoma-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["primary-malignancy_malignant-melanoma---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["primary-malignancy_malignant-melanoma---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["primary-malignancy_malignant-melanoma---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
