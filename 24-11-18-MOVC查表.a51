; 列表元素地址索引

MOV DPTR, #TABLE ; 将  标号为TABLE 的程序中的 列表起始地址  转移到 DPTR指针寄存器  ---  基址
MOV A, #3 ; 将 立即数2 转移至 累加器A  ---  偏移量
MOVC A, @A+DPTR ; 基址+变址 指向的列表地址中的内容 转移到 累加器A --- 元素索引地址
MOV P1, A ; 将 元素值 转移到 P1寄存器

TABLE: DB 0FEH, 0FDH, 0FBH, 0F7H, 0EFH, 0DFH, 0BFH, 7FH ; 创建了一个 16进制列表

END