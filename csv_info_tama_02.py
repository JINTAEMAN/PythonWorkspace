#coding: utf-8--*

import subprocess
import csv

path = './table_list_tama.txt'      # 파일 경로
res_path = './file_info_tama.csv'   # 파일 명
f = open(path, 'r') 

table_list = f.readlines()
f.close()

csv_res = list()

for i in table_list:
    # name = '/data/INBOUND/CR/'+ i.strip()
    name = '/D/PythonWorkspace/data/INBOUND/CR/'+ i.strip()
     
    name_crm = name +'_202303.csv'      # CRM 파일 명 
    comm_header = ['head', '-n', '1', name_crm]
    popen = subprocess.Popen(comm_header, stdout = subprocess.PIPE).stdout 
    header = popen.read().strip()

    comm_stg = ['du', '-h', name_crm]
    comm_line = ['wc', '-I', name_crm]
    comm_head = ['grep', '-rn', header, name_crm]    # CRM 파일 명 

    popen = subprocess.Popen(comm_stg, stdout = subprocess.PIPE).stdout
    stg = popen.read().strip()
    volume = stg.split('\t')[0]       # 용량
 
    popen = subprocess.Popen(comm_line, stdout = subprocess.PIPE).stdout 
    line = popen.read().strip()
    line_count = line.split(' ')[0]     # 라인 수

    popen = subprocess.Popen(comm_head, stdout-subprocess.PIPE).stdout 
    head = popen.read().strip()
    head_res= head.split('\n') 
    head_count = len(head_res)      # 헤드 수
    
    result = list()
    result.append(i.strip()) 
    result.append(name_crm) 
    result.append(volume) 
    result.append(line_count)
    result.append(head_count)

    csv_res.append(result) 

    print("-----------------------------------------")
    print("     \n   strip hello Panda \n \t ".strip())
 
    with open(res_path, 'w') as file:	    # data 디렉토리안에 res_path 경로의 파일을 생성	
        write = csv.writer(file)    # 쓰고 싶은 내용 입력
        write.writerows(csv_res)