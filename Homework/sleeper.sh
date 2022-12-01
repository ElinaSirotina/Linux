#!/bin/bash

echo "Homework 18.10.2022 part #1"

for (( i=1; i<=10; i++))
do
        echo "$i) $(date '+%H:%M:%S'): $(ps -e | wc -l)"
        sleep 2
done
[ec2-user@ip-172-31-33-20 20221018]$ cat getcpu.sh
#!/bin/bash

echo "CPU Info save to file cpu.txt"
cat /proc/cpuinfo | grep "model name" | awk -F": " '{print$2}' > cpu.txt

echo "Full OS name save to file os.txt"
cat /etc/os-release | grep "NAME" -m 1 | awk -F\" '{print $2}' | awk '{print $1}' > os.txt

echo "Pure OS name add to file os.txt"
cat /etc/os-release | grep "NAME" -m 1 | awk -F\" '{print $2}' | awk '{print $1}' >> os.txt

echo 'Create 50 files in subfolder 50_files with name N.txt in folder 50_files'
if [[ ! -d ./50_files ]]
then
        mkdir ./50_files
fi

for ((i = 50; i <= 100; i++))
do
        echo "This is file with number $i." > "./50_files/$i.txt"
done
