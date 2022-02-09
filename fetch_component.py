import os, sys
import csv
from pprint import pprint
import subprocess

import chalk

LCSC_PART_COL=0
FIRST_CATEGORY_COL=1
SECOND_CATEGORY_COL=2
MFR_PART_COL=3
PACKAGE_COL=4
SOLDER_JOINT_COL=5
MANUFACTURER_COL=6
LIBRARY_TYPE_COL=7
DESCRIPTION_COL=8
DATASHEET_COL=9
PRICE_COL=10
STOCK_COL=11

LCSC_PART_LIST =[]

_PID=os.getpid()

_CSV_PATH = sys.argv[1]
_FILENAME=_CSV_PATH.split('/')[1]
_FAIL_LOG_PATH = f'scripts\\{_FILENAME}_fail.log'
TMP=_FILENAME


# with open('scripts\lcsc_full_list.csv', newline='') as csvfile:
with open(_CSV_PATH, newline='') as csvfile:
  spamreader = csv.reader(csvfile, delimiter=',')
  i = 0
  for row in spamreader:
    # print(', '.join(row))
    # print(row[LCSC_PART_COL])
    if i != 0:
      lcsc_part_num = row[LCSC_PART_COL]
      first_category = row[FIRST_CATEGORY_COL].replace('/', ',')
      second_category = row[SECOND_CATEGORY_COL]
      descr = row[DESCRIPTION_COL]
      mfr_part = row[MFR_PART_COL]
      # print(f'pushing component {lcsc_part_num}')
      LCSC_PART_LIST.append([lcsc_part_num, first_category, second_category, descr, mfr_part]) 
    else:
      i+=1

with open(_FAIL_LOG_PATH,'w') as f_fail:
  f_fail.seek(0)
  f_fail.truncate()

  for [lcsc_part_num, first_cat, second_cat, descr, mfr_part] in LCSC_PART_LIST:
    
    try:
      print(chalk.yellow(f'fetching component {lcsc_part_num} ...'))
      subprocess.check_output([r'scripts\batch_add.bat', TMP, lcsc_part_num, first_cat, second_cat, descr, mfr_part], stderr=None, shell=True, cwd=r'C:\Users\logic\_TODO\JLC2KiCad_lib')
      # print(f'component {lcsc_part_num} done')
      print(chalk.green(f'component {lcsc_part_num} done'))

    except Exception as err:
      print(chalk.red(f'component {lcsc_part_num} failed'))
      f_fail.write(f'{lcsc_part_num} failed\n')

    # break

    # print(lcsc_part_num)
