#! /bin/bash
for i in {1..10000}; do 
    if [[ ! -e "rfc$i.txt.pdf" ]]; then
        echo "rfc$i.txt.pdf 文件不存在，开始尝试下载"
        # 部分文件官网不存在,忽略下载错误信息
        wget -nc https://www.rfc-editor.org/pdfrfc/rfc$i.txt.pdf 2>/dev/null ;
    fi
done
