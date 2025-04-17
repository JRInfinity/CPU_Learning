	.data
# 跳转地址表，在上板时固定在data段（0x4000）处
modes:  
	.word mode_0 	
	.word mode_1	
	.word mode_2
	.word mode_3
	.word mode_4
	.word mode_5
	.word mode_6
	.word mode_7
	
	.text
	.globl _start

# t1的低5位为寄存器地址，根据t1提供的寄存器地址将a0内数据写入，写入范围为x21~x31
.macro WRITE_TO_REG_BY_INDEX
	li a6, 21
	beq t1, a6, write_x21
	addi a6, a6, 1
	beq t1, a6, write_x22
	addi a6, a6, 1
	beq t1, a6, write_x23
	addi a6, a6, 1
	beq t1, a6, write_x24
	addi a6, a6, 1
	beq t1, a6, write_x25
	addi a6, a6, 1
	beq t1, a6, write_x26
	addi a6, a6, 1
	beq t1, a6, write_x27
	addi a6, a6, 1
	beq t1, a6, write_x28
	addi a6, a6, 1
	beq t1, a6, write_x29
	addi a6, a6, 1
	beq t1, a6, write_x30
	addi a6, a6, 1
	beq t1, a6, write_x31
	j write_end
	
write_x21:
	mv x21, a0
	j write_end

write_x22:
	mv x22, a0
	j write_end
	
write_x23:
	mv x23, a0
	j write_end

write_x24:
	mv x24, a0
	j write_end
	
write_x25:
	mv x25, a0
	j write_end

write_x26:
	mv x26, a0
	j write_end
	
write_x27:
	mv x27, a0
	j write_end

write_x28:
	mv x28, a0
	j write_end
write_x29:
	mv x29, a0
	j write_end

write_x30:
	mv x30, a0
	j write_end
	
write_x31:
	mv x31, a0
	j write_end
	
write_end:
	nop
.end_macro

# t1的低5位为寄存器地址，根据t1提供的寄存器地址将寄存器内数据读入a0，读入范围为x21~x31
.macro READ_FROM_REG_BY_INDEX
	li a6, 21
	beq t1, a6, read_x21
	addi a6, a6, 1
	beq t1, a6, read_x22
	addi a6, a6, 1
	beq t1, a6, read_x23
	addi a6, a6, 1
	beq t1, a6, read_x24
	addi a6, a6, 1
	beq t1, a6, read_x25
	addi a6, a6, 1
	beq t1, a6, read_x26
	addi a6, a6, 1
	beq t1, a6, read_x27
	addi a6, a6, 1
	beq t1, a6, read_x28
	addi a6, a6, 1
	beq t1, a6, read_x29
	addi a6, a6, 1
	beq t1, a6, read_x30
	addi a6, a6, 1
	beq t1, a6, read_x31
	j read_end
	
read_x21:
	mv a0, x21
	j read_end

read_x22:
	mv a0, x22
	j read_end
	
read_x23:
	mv a0, x23
	j read_end

read_x24:
	mv a0, x24
	j read_end
	
read_x25:
	mv a0, x25
	j read_end

read_x26:
	mv a0, x26
	j read_end
	
read_x27:
	mv a0, x27
	j read_end

read_x28:
	mv a0, x28
	j read_end
read_x29:
	mv a0, x29
	j read_end

read_x30:
	mv a0, x30
	j read_end
	
read_x31:
	mv a0, x31
	j read_end
	
read_end:
	nop
.end_macro

# 清除LED灯和seg[7:0]内所有内容，
.macro RST_MIMO
	li a6, 0x10 # 写入人0x10，含义为让seg不显示字符
	sw a6, 0x20(s0) # seg[0]
	sw a6, 0x24(s0) # seg[1]
	sw a6, 0x28(s0) # seg[2]
	sw a6, 0x2c(s0) # seg[3]
	sw a6, 0x30(s0) # seg[4]
	sw a6, 0x34(s0) # seg[5]
	sw a6, 0x38(s0)	# seg[6]
	sw a6, 0x3c(s0)	# seg[7]

	sw x0, 0x40(s0) # LED清0
.end_macro
	
_start:
	# li s0, 0x0000F000 # 0XF000为板上MMIO地址，用来对外设进行访问
	li s0, 0x00007F00 # RARS调试外设地址，调试时使用本行，注释掉上一行
	li s4, 0	     # s4用来记录当前运行的mode标号，例如执行mode_1则s4=1，初始化为0
	li a7, 0			 # 用来计数
_init:
	li s2, 1             # s2用于检查Key[7:0]被按下的情况
	li s3, 2             # s3用于逐位测试的掩码
	li s1, 0x0100	     # s1为Key的边界
	
main_loop:
	lw a0, 0x10(s0) # load Key to a0
	not a0, a0
	
	and a1, a0, s3       # 使用与操作检查当前位是否为1
	bne a1, zero, found  # 如果当前位为1，跳转到found
	addi s2, s2, 1       # 位置计数器加1
	slli s3, s3, 1       # 左移掩码以检查下下一位状态
	bgt s1, s3, main_loop  # 如果掩码未超出s1范围，继续循换
	
	# mode内部循环
	mv s2, s4		# s2记录当前运行的mode标号
	bne s4, zero, found	# 如果标号不为0，需要回到mode

	j _init		# 回到循环头部，不停检查Key

found:
	mv a0, s2 		# 将找到的mode标号存储到a0中
	mv s4, s2		# s4保存下一个需要执行mode标号
	li t0, 8          	# mode最大为7，8为边界
	bgt a0, t0, _init  # 如果x > 8出错
	
	slli t1, a0, 2     # x * 4，因为每个mode的地址偏移量是4字节，t1为偏移量

	li t2, 0x4000       
	# la t2, modes	# t2加载跳转表基地址，RARS中调试需要使用本条语句，由于我们的CPU没有实现auipc，因此要用到上一句设置固定位置

	add t2, t2, t1     # 跳转表基地址 + 偏移量
	lw a2, 0(t2)       # 从跳转表中加载目标地地址
	jr a2              # 跳转到目标地址
	
mode_0:	
mode_1:
	lw t0, 0x00(s0) # t0读取sw[31:0]
	# 提取四个8位有符号数
	andi a0, t0, 0xFF        # 提取第一个数 a0 = t0[7:0]
	srli a1, t0, 8
	andi a1, a1, 0xFF        # 提取第二个数 a1 = t0[15:8]
	srli a2, t0, 16
	andi a2, a2, 0xFF        # 提取第三个数 a2 = t0[23:16]
	srli a3, t0, 24
	andi a3, a3, 0xFF        # 提取第四个数 a3 = t0[31:24]

	# 扩展到32位
	slli a0, a0, 24
	srai a0, a0, 24          # 符号扩展 a0
	slli a1, a1, 24
	srai a1, a1, 24          # 符号扩展 a1
	slli a2, a2, 24
	srai a2, a2, 24          # 符号扩展 a2
	slli a3, a3, 24
	srai a3, a3, 24          # 符号扩展 a3

	# 冒泡排序
	li a4, 1                 # 排序标志 a4 = 1

bubble_sort:
	beqz a4, sort_done       # 如果 a4 == 0 则排序完成
	li a4, 0                 # 重置排序标志 a4 = 0

	# 比较 a0  a1
	ble a0, a1, check_1_2
	mv a5, a0
	mv a0, a1
	mv a1, a5
	li a4, 1                 # 设置排序标志 a4 = 1

check_1_2:
	ble a1, a2, check_2_3
	mv a5, a1
	mv a1, a2
	mv a2, a5
	li a4, 1                 # 设置排序标志 a4 = 1

check_2_3:
	ble a2, a3, end_bubble
	mv a5, a2
	mv a2, a3
	mv a3, a5
	li a4, 1                 # 设置排序标志 a4 = 1

end_bubble:
	j bubble_sort            # 继续排序

sort_done:
	# 将排序后的结果存储到 t1 中
	andi a0, a0, 0xFF        # 清除高位，只保留低8位
	andi a1, a1, 0xFF
	andi a2, a2, 0xFF
	andi a3, a3, 0xFF

	li t1, 0
	or t1, t1, a3
	slli t1, t1, 8
	or t1, t1, a2
	slli t1, t1, 8
	or t1, t1, a1
	slli t1, t1, 8
	or t1, t1, a0

end_store:
	RST_MIMO		# 清除先前显示状态
	sw t1, 0x40(s0) # LED显示，下面也有出现
	sw s4, 0x3c(s0)	# seg[7]显示当前mode序号，下面也有出现
	j _init
	
mode_2:	
	lw t0, 0x00(s0) # t0读取sw[31:0]
	# 提取
	andi a0, t0, 0xFF        # 提取B a0 = t0[7:0]
	srli a1, t0, 8
	andi a1, a1, 0xFF        # 提取A a1 = t0[15:8]
	srli a2, t0, 21
	andi a2, a2, 0x07        # 提取操作码 a2 = t0[23:21]

	# 转换为有符号数
	slli a0, a0, 24
	srai a0, a0, 24          # B符号扩展
	slli a1, a1, 24
	srai a1, a1, 24          # A符号扩展

	# a3存B的符号位
	srli a3, a0, 31
	
	# 将操作码a2和t1进行比较，t1在0-6遍历，直到匹配操作码
	mv t1, zero
	# a0=B, a1=A, a2=op
L1:
    bne a2, t1, L2
	# 运算结果都存放在a4中
    and a4, a1, a0
    j last
L2:
    addi t1, t1, 1
    bne a2, t1, L3
    or a4, a1, a0
    j last
L3:
    addi t1, t1, 1
    bne a2, t1, L4
    xor a4, a1, a0
    j last
L4:
    addi t1, t1, 1
    bne a2, t1, L5
    sll a4, a1, a0
    j last
L5:
    addi t1, t1, 1
    bne a2, t1, L6
    sra a4, a1, a0
    j last
negtive:   
	
    not a0, a0
    addi a0, a0, 1
    j positive
L6:
    addi t1, t1, 1
    bne a2, t1, last
    beq a1, zero, positive # A == 0 ?
    bnez a3, negtive # 根据B符号位对B进行操作
positive:
    mv a4, a0
last:
    andi a4, a4, 0xFF
	RST_MIMO
	sw a4, 0x40(s0) 
	sw s4, 0x3c(s0)	
	
	j _init

mode_3:
	lw t0, 0x00(s0) # 读取 sw[31:0] 到 t0
	sw t0, 0x40(s0) # 将t0显示在LED
	
	andi a0, t0, 0x0F        # 提取第一个数 a0 = t0[3:0]
	srli a1, t0, 8
	andi a1, a1, 0x0F        # 提取第二个数 a1 = t0[11:8]
	srli a2, t0, 16
	andi a2, a2, 0x0F        # 提取第三个数 a2 = t0[19:16]
	srli a3, t0, 24
	andi a3, a3, 0x0F        # 提取第四个数 a3 = t0[27:24]
	sw a0, 0x20(s0) # seg[0]显示
	sw a1, 0x28(s0) # seg[2]显示
	sw a2, 0x30(s0) # seg[4]显示
	sw a3, 0x38(s0)	# seg[7]显示
	
	srli a0, t0, 4
	andi a0, a0, 0x0F        # 提取第一个数 a0 = t0[7:4]
	srli a1, t0, 12
	andi a1, a1, 0x0F        # 提取第二个数 a1 = t0[15:12]
	srli a2, t0, 20
	andi a2, a2, 0x0F        # 提取第三个数 a2 = t0[23:20]
	srli a3, t0, 28
	andi a3, a3, 0x0F        # 提取第四个数 a3 = t0[31:28]
	sw a0, 0x24(s0) # seg[1]显示
	sw a1, 0x2c(s0) # seg[3]显示
	sw a2, 0x34(s0) # seg[5]显示
	sw a3, 0x3c(s0)	# seg[7]显示
	
	j _init
	
mode_4:
	sw x0, 0x40(s0)
	lw t1, 0x04(s0) # load address sw[63:32] to t1
	# 获取sw[32]
	andi t2, t1, 0x1        # t2=t1[0]
	# t2=0进行计数
	beq t2, zero, cnt_loop 
	# t2=1读取sw[31:0]到t0并显示

show_cnt:
	lw t0, 0x00(s0) # load sw[31:0] to t0

	andi a0, t0, 0x0F        # 提取第一个数 a0 = t0[3:0]
	srli a1, t0, 8
	andi a1, a1, 0x0F        # 提取第二个数 a1 = t0[11:8]
	srli a2, t0, 16
	andi a2, a2, 0x0F        # 提取第三个数 a2 = t0[19:16]
	srli a3, t0, 24
	andi a3, a3, 0x0F        # 提取第四个数 a3 = t0[27:24]
	sw a0, 0x20(s0) # seg1显示
	sw a1, 0x28(s0) # seg3显示
	sw a2, 0x30(s0) # seg5显示
	sw a3, 0x38(s0)	# seg7显示
	
	srli a0, t0, 4
	andi a0, a0, 0x0F        # 提取第一个数 a0 = t0[7:4]
	srli a1, t0, 12
	andi a1, a1, 0x0F        # 提取第二个数 a1 = t0[15:12]
	srli a2, t0, 20
	andi a2, a2, 0x0F        # 提取第三个数 a2 = t0[23:20]
	srli a3, t0, 28
	andi a3, a3, 0x0F        # 提取第四个数 a3 = t0[31:28]
	sw a0, 0x24(s0) # seg2显示
	sw a1, 0x2c(s0) # seg4显示
	sw a2, 0x34(s0) # seg6显示
	sw a3, 0x3c(s0)	# seg8显示
	
	lw t1, 0x04(s0) # load address sw[63:32] to t1
	# 获取sw[32]
	andi t2, t1, 0x1        # t2=t1[0]
	# 直到sw[32]=0才进行计数
	beq t2, zero, cnt_loop
	mv a7, t0	# sw[32]=1时a7清空重新计数
	# 否则跳转回show_cnt
	j show_cnt

cnt_loop:
	# a7用作计数，a7=a7+1，需要执行125000次无效代码

	addi a7, a7, 0x01
	mv t0, a7

	# seg显示
	andi a0, t0, 0x0F        # 提取第一个数 a0 = t0[3:0]
	srli a1, t0, 8
	andi a1, a1, 0x0F        # 提取第二个数 a1 = t0[11:8]
	srli a2, t0, 16
	andi a2, a2, 0x0F        # 提取第三个数 a2 = t0[19:16]
	srli a3, t0, 24
	andi a3, a3, 0x0F        # 提取第四个数 a3 = t0[27:24]
	sw a0, 0x20(s0) # seg[0]显示
	sw a1, 0x28(s0) # seg[2]显示
	sw a2, 0x30(s0) # seg[4]显示
	sw a3, 0x38(s0)	# seg[6]显示

	li a4, 100000
	li a5, 0
nop_loop1:
	addi a5, a5, 1
	bne a5, a4, nop_loop1
	
	srli a0, t0, 4
	andi a0, a0, 0x0F        # 提取第一个数 a0 = t0[7:4]
	srli a1, t0, 12
	andi a1, a1, 0x0F        # 提取第二个数 a1 = t0[15:12]
	srli a2, t0, 20
	andi a2, a2, 0x0F        # 提取第三个数 a2 = t0[23:20]
	srli a3, t0, 28
	andi a3, a3, 0x0F        # 提取第四个数 a3 = t0[31:28]
	sw a0, 0x24(s0) # seg[1]显示
	sw a1, 0x2c(s0) # seg[3]显示
	sw a2, 0x34(s0) # seg[5]显示
	sw a3, 0x3c(s0)	# seg[7]显示
	
	# 由于循环中执行了两行代码，因此只需要循环125000/2次
	li a4, 100000
	li a5, 0
nop_loop2:
	addi a5, a5, 1
	bne a5, a4, nop_loop2

	j _init

mode_5:
	sw x0, 0x40(s0)
	lw t0, 0x04(s0) # load address sw[63:32] to t0
	lw a0, 0x00(s0)
	
	# 获取sw[32]
	andi t2, t0, 0x1        # t2=t0[0]

	# 提取t0的高5位，表示寄存器地址
	srli t1, t0, 27        # 将高5位移到最低位
	andi t1, t1, 0x1F      # 保留高5位，清除其他位
	
	RST_MIMO
	sw s4, 0x3c(s0)	# seg[7]显示mode序号
	
	# 只能读写x21~x31，不能读写其他寄存器
	li a1, 21
	blt t1, a1, _init
	
	# t2=1进行写入操作
	beq t2, zero, read_reg 
	# t1提供地址，a0为写入的数据
	WRITE_TO_REG_BY_INDEX
	
read_reg:	
	# t1提供地址，a0为读出的数据
	READ_FROM_REG_BY_INDEX
	sw s4, 0x3c(s0)
	sw a0, 0x40(s0)
	
	j _init

mode_6:
	# 显示固定字符RV 和 RV32ICPU

	# LED显示
	li a0, 0xE5A5C5A2
	sw a0, 0x40(s0) # LED显示

	# seg显示
	li a0, 0x11 # a0 = U
	li a1, 0x0C # a1 = C
	li a2, 0x02 # a2 = 2
	li a3, 0x11 # a3 = V,7段数码管中UV显示相同
	sw a0, 0x20(s0) # seg[0]显示
	sw a1, 0x28(s0) # seg[2]显示
	sw a2, 0x30(s0) # seg[4]显示
	sw a3, 0x38(s0)	# seg[6]显示
	
	li a0, 0x12 # a0 = P
	li a1, 0x13 # a1 = I
	li a2, 0x3 # a2 = 3
	li a3, 0xA # a3 = R
	sw a0, 0x24(s0) # seg[1]显示
	sw a1, 0x2c(s0) # seg[3]显示
	sw a2, 0x34(s0) # seg[5]显示
	sw a3, 0x3c(s0)	# seg[7]显示

	j _init

mode_7:	
	sw x0, 0x40(s0)
	lw t0, 0x04(s0) # load address sw[63:32] to t0
	lw a0, 0x00(s0)
	
	# 获取sw[32]
	andi t2, t0, 0x1        # t2=t0[0]
	
	# 提取 t0 的高 16 位
	srli t1, t0, 16        # 将高 16 位移到最低位
	
	RST_MIMO
	sw s4, 0x3c(s0)	# seg8显示mode序号
	
	# 只能读写0x4000~0xEFFF，不能读写text段和MMIO地址
	bge t1, s0, _init
	li a1, 0x4000 # text和data段的分界，text段不可读，data段可读
	blt t1, a1, _init
	
	# t2=1进行写入操作
	beq t2, zero, read_mem 
	sw a0, 0x0(t1)
	
read_mem:	
	lw a0, 0x0(t1)
	sw a0, 0x40(s0) 
	
	j _init
