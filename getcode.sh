#！ /bin/bash
#cat qca-umac.sh |  awk '{cmd="cp ./qca-wifi-all/"$0" ./qca-umac/"$0} {system(cmd)}'


#cat qca-umac.sh |  awk '{cmd="./qca-umac/"$0} {print cmd}' | awk '{cmd=$0} {print cmd}'| awk '{cmd=$0} {print cmd}' | awk '{gsub(/\/[^\/]*$/,"",$0); print}' 


#---  FUNCTION  ----------------------------------------------------------------
#          NAME:  Test
#   DESCRIPTION:  
#    PARAMETERS:  
#       RETURNS:  
#-------------------------------------------------------------------------------


#for code_dir in   "qca-spectral" "qca-ol" "qca-wifi2" "qca-wifi3" 
for code_dir in  "myinc" 
do


#cat $code_dir.sh
 #递归创建目录
cat $code_dir.sh |  awk -v codedir=./$code_dir/ '{cmd=codedir$0} {print cmd}' | awk '{cmd=$0} {print cmd}'| awk '{cmd=$0} {print cmd}' | awk '{gsub(/\/[^\/]*$/,"",$0); print}' | awk '{cmd="mkdir -p "$0} {system(cmd)}'
#拷贝文件指定文件中的文件列表
cat $code_dir.sh |  awk -v codedir=./$code_dir/ '{cmd="cp ../../qca/src/qca-wifi/"$0" "codedir$0} {system(cmd)}'

done
#find . -type f -name "*config*" ! -path "./tmp/*" ! -path "./scripts/*" ! -path "./node_modules/*"
