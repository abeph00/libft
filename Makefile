FLAG = -Wall -Wextra -Werror

NAME = libft.a

SRC = ft_strlen.c \
	  ft_memmove.c \
	  ft_memcpy.c \
	  ft_strlcpy.c \
	  ft_strlcat.c \
	  ft_isalpha.c \
	  ft_isdigit.c \
	  ft_isalnum.c \
	  ft_isascii.c \
	  ft_isprint.c \
	  ft_memset.c \
	  ft_bzero.c \
	  ft_toupper.c \
	  ft_tolower.c \
	  ft_strchr.c \
	  ft_strrchr.c \
	  ft_strncmp.c \
	  ft_memchr.c \
	  ft_memcmp.c \
	  ft_strnstr.c \
	  ft_atoi.c \
	  ft_calloc.c \
	  ft_strdup.c \
	  ft_substr.c \
	  ft_strjoin.c \
	  ft_strtrim.c \
	  ft_strmapi.c \
	  ft_striteri.c \
	  ft_split.c \
	  ft_putchar_fd.c \
	  ft_putstr_fd.c \
	  ft_putstr_fd.c \
	  ft_putendl_fd.c \
	  ft_putnbr_fd.c \
	  ft_itoa.c \

OBJ = $(SRC:.c=.o)

BONUS =  ft_lstnew.c \

BONUS_OBJ = $(BONUS:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
	@ar rcs $(NAME) $(OBJ)
	@echo "$(NAME) created"
	@ranlib $(NAME)
	@echo "$(NAME) indexed"

%.o: %.c
	@gcc $(FLAG) -c $< -o $@

clean:
	@rm -f $(OBJ) $(BONUS_OBJ)

	@echo "OBJ deleted"

fclean: clean
	@rm -f $(NAME)
	@echo "$(NAME) deleted"

re: fclean all

bonus: $(OBJ) $(BONUS_OBJ)
		ar rcs $(NAME) $(OBJ) $(BONUS_OBJ)

.PHONY: all, clean, fclean, re, bonus
