cat qca-umac.sh |  awk '{cmd="cp ./qca-wifi-all/"$0" ./qca-umac/"$0} {system(cmd)}'


cat qca-umac.sh |  awk '{cmd="./qca-umac/"$0} {print cmd}' | awk '{cmd=$0} {print cmd}'| awk '{cmd=$0} {print cmd}' | awk '{gsub(/\/[^\/]*$/,"",$0); print}' 




递归创建目录
cat qca-umac.sh |  awk '{cmd="./qca-umac/"$0} {print cmd}' | awk '{cmd=$0} {print cmd}'| awk '{cmd=$0} {print cmd}' | awk '{gsub(/\/[^\/]*$/,"",$0); print}' | awk '{cmd="mkdir -p "$0} {system(cmd)}'
拷贝文件指定文件中的文件列表
cat qca-umac.sh |  awk '{cmd="cp ./qca-wifi-all/"$0" ./qca-umac/"$0} {system(cmd)}'


find . -type f -name "*config*" ! -path "./tmp/*" ! -path "./scripts/*" ! -path "./node_modules/*"
