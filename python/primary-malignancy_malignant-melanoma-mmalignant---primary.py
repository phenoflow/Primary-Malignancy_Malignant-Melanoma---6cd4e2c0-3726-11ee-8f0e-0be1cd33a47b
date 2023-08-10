# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2023.

import sys, csv, re

codes = [{"code":"1425000.0","system":"readv2"},{"code":"B32..00","system":"readv2"},{"code":"B320.00","system":"readv2"},{"code":"B321.00","system":"readv2"},{"code":"B322000","system":"readv2"},{"code":"B322100","system":"readv2"},{"code":"B323100","system":"readv2"},{"code":"B323200","system":"readv2"},{"code":"B323300","system":"readv2"},{"code":"B323500","system":"readv2"},{"code":"B324100","system":"readv2"},{"code":"B325000","system":"readv2"},{"code":"B325100","system":"readv2"},{"code":"B325200","system":"readv2"},{"code":"B325300","system":"readv2"},{"code":"B325400","system":"readv2"},{"code":"B325500","system":"readv2"},{"code":"B325600","system":"readv2"},{"code":"B325700","system":"readv2"},{"code":"B325800","system":"readv2"},{"code":"B326200","system":"readv2"},{"code":"B326300","system":"readv2"},{"code":"B326400","system":"readv2"},{"code":"B326500","system":"readv2"},{"code":"B327000","system":"readv2"},{"code":"B327100","system":"readv2"},{"code":"B327200","system":"readv2"},{"code":"B327300","system":"readv2"},{"code":"B327500","system":"readv2"},{"code":"B327600","system":"readv2"},{"code":"B327700","system":"readv2"},{"code":"B327800","system":"readv2"},{"code":"B327900","system":"readv2"},{"code":"B32y000","system":"readv2"},{"code":"B32z.00","system":"readv2"},{"code":"BBE1.00","system":"readv2"},{"code":"BBE1000","system":"readv2"},{"code":"BBE1100","system":"readv2"},{"code":"BBEG000","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('primary-malignancy_malignant-melanoma-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["primary-malignancy_malignant-melanoma-mmalignant---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["primary-malignancy_malignant-melanoma-mmalignant---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["primary-malignancy_malignant-melanoma-mmalignant---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
