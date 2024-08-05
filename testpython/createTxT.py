import datetime
import os

def write_numbers_to_file(filename):
  with open(filename, 'w',encoding='utf-8') as f:
    for i in range(500): 
        current_time = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S") 
        f.write(f"{filename} {current_time} 第{i+1}个数字是：{i}\n")

# 调用函数，将数字写入名为 numbers.txt 的文件

current_dir = os.getcwd()
log_dir = os.path.join(current_dir, "Log")
os.makedirs(log_dir, exist_ok=True)

for i in range(10):
    filename = f"Alarm{i}.txt" 
    file_path = os.path.join(log_dir, filename)
    write_numbers_to_file(file_path)
    print(file_path)
