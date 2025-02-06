#! /bin/bash
for i in {1..10000}; do 
    if [[ ! -e "rfc$i.txt.pdf" ]]; then
      #  echo "rfc$i.txt.pdf文件存在"
    #else
        echo "rfc$i.txt.pdf 文件不存在，开始尝试下载"
        wget -ncv https://www.rfc-editor.org/pdfrfc/rfc$i.txt.pdf 2>/dev/null ; 
    fi
done
