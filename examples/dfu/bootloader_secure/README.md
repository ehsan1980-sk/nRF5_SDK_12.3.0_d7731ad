# 生成 public key

1. 安装Python  安装nrfutil

    
      pip install nrfutil
    
2.  执行如下指令生成 public key

      nrfutil.exe keys generate private.pem
      
      nrfutil.exe keys display --key pk --format code private.pem --out_file public_key.c
    
3. copy public_key.c 中的 pk 替换报错的代码
