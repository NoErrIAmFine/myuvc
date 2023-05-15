KERN_DIR=/home/luo/linux/kernel/linux-imx-rel_imx_4.1.15_2.1.0_ga_alientek

obj-m:=myuvc.o

all:
	make -C $(KERN_DIR) M=$(shell pwd) modules
	sudo cp myuvc.ko /home/luo/mnt/nfs/rootfs/home/luo/drivers/video
clean:
	make -C $(KERN_DIR) M=$(shell pwd) clean