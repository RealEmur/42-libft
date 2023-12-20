NAME = libft.a
SOURCES = ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c ft_strlen.c \
		ft_memset.c ft_bzero.c ft_memcpy.c ft_strlcpy.c ft_strlcat.c ft_toupper.c ft_tolower.c \
		ft_strchr.c ft_strrchr.c ft_memmove.c ft_strncmp.c ft_memchr.c ft_memcmp.c ft_strnstr.c \
		ft_atoi.c ft_strdup.c ft_calloc.c ft_substr.c ft_strjoin.c ft_split.c ft_itoa.c ft_strmapi.c \
		ft_striteri.c ft_putchar_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_putstr_fd.c ft_strtrim.c
OBJS = $(SOURCES:.c=.o)
BONUS_SOURCES = ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstdelone.c ft_lstlast.c ft_lstadd_back.c ft_lstiter.c ft_lstclear.c ft_lstmap.c
BONUS_OBJS = $(BONUS_SOURCES:.c=.o)
CC = gcc
CFLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME): $(OBJS)
	ar -rc $(NAME) $(OBJS)

bonus: $(BONUS_OBJS)
	ar -rc $(NAME) $(BONUS_OBJS)

clean:
	$(RM) $(OBJS) $(BONUS_OBJS)
	
fclean: clean
	$(RM) $(NAME)
	
re: fclean all

