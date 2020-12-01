ifndef KERNEL_SRC
$(error KERNEL_SRC is not set)
endif


MODULE_WORKING_DIR = $(shell pwd)

obj-m += sch_qjump.o

all:
	make -C $(KERNEL_SRC) M=$(MODULE_WORKING_DIR) modules

clean:
	make -C $(KERNEL_SRC) M=$(MODULE_WORKING_DIR) clean

