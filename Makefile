SRC = strlen.asm exit.asm main.asm
CMD = ar rcs
NAME = libasm.a

OBJ = $(SRC:.asm=.o)

%.o:%.asm
	nasm -f macho64 $< -o $@

ALL: $(OBJ)
	$(CMD) $(NAME) $^

