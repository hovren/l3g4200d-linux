obj-m += l3g4200d.o

all: 
	make ARCH=arm CROSS_COMPILE=${CCPREFIX} -C ${KERNEL_SRC} M=$(PWD) modules

clean: 
	make -C ${KERNEL_SRC} M=$(PWD) clean
