CC := gcc
CFLAGS := -Wall -Wextra -O2

src_list := test.c
obj_list := $(patsubst %.c,%.o,$(src_list))

#$(info $(obj_list))

.PHONY: all clean
all: hello.elf

clean:
	rm -f hello.elf $(obj_list)

hello.elf: $(obj_list)
	$(CC) -o $@ $^

%.o: %.c
	$(CC) -o $@ -c $< 
