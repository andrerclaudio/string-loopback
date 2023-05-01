# Set the name of the kernel object file to be built
obj-m += string-loopback.o

# Set the path to the kernel build directory
KDIR = /lib/modules/$(shell uname -r)/build

# Set the path to the correct compiler
# CC = /usr/bin/x86_64-linux-gnu-gcc-12

# Define the "all" target
all:
# Use "make" to build the kernel module, passing the KDIR and CC variables
#	make -C $(KDIR) M=$(PWD) modules CC=$(CC)
	make -C $(KDIR) M=$(PWD) modules

# Define the "clean" target
clean:
# Use "make" to clean up the kernel build directory, passing the KDIR variable
	make -C $(KDIR) M=$(PWD) clean
