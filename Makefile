# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vtoroyan <vtoroyan@student.42yerevan.am>   +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/02/06 17:09:33 by vtoroyan          #+#    #+#              #
#    Updated: 2024/02/06 18:25:09 by vtoroyan         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
SRCS = ft_atoi.c ft_bzero.c ft_calloc.c\
       ft_isalnum.c ft_isalpha.c ft_isascii.c\
       ft_isdigit.c ft_isprint.c ft_memchr.c\
       ft_memcmp.c ft_memcpy.c ft_memmove.c\
       ft_memset.c ft_strchr.c ft_strdup.c\
       ft_strlcat.c ft_strlcpy.c ft_strlen.c\
       ft_strncmp.c ft_strnstr.c ft_strrchr.c\
       ft_tolower.c ft_toupper.c ft_substr.c\
       ft_strjoin.c ft_strtrim.c ft_split.c\
       ft_itoa.c ft_strmapi.c ft_striteri.c\
       ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c\
       ft_putnbr_fd.c

BONUS = ft_lstnew.c ft_lstadd_front.c ft_lstsize.c\
        ft_lstlast.c ft_lstadd_back.c ft_lstdelone.c\
        ft_lstclear.c ft_lstiter.c ft_lstmap.c

OBJS = ${SRCS:.c=.o}
OBJS_BONUS = ${BONUS:.c=.o}
HEADERS = libft.h
CC = cc
C_FLAGS = -Wall -Wextra -Werror
AR = ar rc
RM = rm -f

all: $(NAME)

$(NAME): $(OBJS)
	$(AR) $(NAME) $(OBJS)

%.o: %.c $(HEADERS)/*.h
	$(CC) $(C_FLAGS) -c $< -o $@ -I $(HEADERS)

bonus: $(OBJS_BONUS)
	$(AR) $(NAME) $(OBJS_BONUS)

%.o: %.c $(HEADERS)/*.h
	$(CC) $(C_FLAGS) -c $< -o $@ -I $(HEADERS)

clean:
	$(RM) $(OBJS) $(OBJS_BONUS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re bonus

