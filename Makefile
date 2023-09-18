# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jikarunw <jikarunw@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/09/16 22:30:03 by jikarunw          #+#    #+#              #
#    Updated: 2023/09/18 10:08:24 by jikarunw         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Colors
COLOR_RESET = \033[0m
COLOR_YELLOW = \033[1;33m
COLOR_CYAN = \033[1;36m

LIBFT_PATH = ./libft

# Compiler
CC = cc
CFLAGS = -Wall -Werror -Wextra -I ./includes -I $(LIBFT_PATH)/includes

# libft sources
LIBFT_SRC = $(LIBFT_PATH)/srcs/io/ft_putchar_fd.c \
			$(LIBFT_PATH)/srcs/io/ft_putendl_fd.c \
			$(LIBFT_PATH)/srcs/io/ft_putnbr_fd.c \
			$(LIBFT_PATH)/srcs/io/ft_putstr_fd.c \
			$(LIBFT_PATH)/srcs/lsts/ft_lstadd_back.c \
			$(LIBFT_PATH)/srcs/lsts/ft_lstadd_front.c \
			$(LIBFT_PATH)/srcs/lsts/ft_lstclear.c \
			$(LIBFT_PATH)/srcs/lsts/ft_lstdelone.c \
			$(LIBFT_PATH)/srcs/lsts/ft_lstiter.c \
			$(LIBFT_PATH)/srcs/lsts/ft_lstlast.c \
			$(LIBFT_PATH)/srcs/lsts/ft_lstmap.c \
			$(LIBFT_PATH)/srcs/lsts/ft_lstnew.c \
			$(LIBFT_PATH)/srcs/lsts/ft_lstsize.c \
			$(LIBFT_PATH)/srcs/mems/ft_memchr.c \
			$(LIBFT_PATH)/srcs/mems/ft_memcmp.c \
			$(LIBFT_PATH)/srcs/mems/ft_memcpy.c \
			$(LIBFT_PATH)/srcs/mems/ft_memmove.c \
			$(LIBFT_PATH)/srcs/mems/ft_memset.c \
			$(LIBFT_PATH)/srcs/mems/ft_bzero.c \
			$(LIBFT_PATH)/srcs/mems/ft_calloc.c \
			$(LIBFT_PATH)/srcs/strs/ft_atoi.c \
			$(LIBFT_PATH)/srcs/strs/ft_itoa.c \
			$(LIBFT_PATH)/srcs/strs/ft_split.c \
			$(LIBFT_PATH)/srcs/strs/ft_strchr.c \
			$(LIBFT_PATH)/srcs/strs/ft_strdup.c \
			$(LIBFT_PATH)/srcs/strs/ft_striteri.c \
			$(LIBFT_PATH)/srcs/strs/ft_strjoin.c \
			$(LIBFT_PATH)/srcs/strs/ft_strlcat.c \
			$(LIBFT_PATH)/srcs/strs/ft_strlcpy.c \
			$(LIBFT_PATH)/srcs/strs/ft_strlen.c \
			$(LIBFT_PATH)/srcs/strs/ft_strmapi.c \
			$(LIBFT_PATH)/srcs/strs/ft_strncmp.c \
			$(LIBFT_PATH)/srcs/strs/ft_strnstr.c \
			$(LIBFT_PATH)/srcs/strs/ft_strrchr.c \
			$(LIBFT_PATH)/srcs/strs/ft_strtrim.c \
			$(LIBFT_PATH)/srcs/strs/ft_substr.c \
			$(LIBFT_PATH)/srcs/strs/ft_isalnum.c \
			$(LIBFT_PATH)/srcs/strs/ft_isalpha.c \
			$(LIBFT_PATH)/srcs/strs/ft_isascii.c \
			$(LIBFT_PATH)/srcs/strs/ft_isdigit.c \
			$(LIBFT_PATH)/srcs/strs/ft_isprint.c \
			$(LIBFT_PATH)/srcs/strs/ft_tolower.c \
			$(LIBFT_PATH)/srcs/strs/ft_toupper.c

# libft objects
LIBFT_OBJS = $(LIBFT_SRC:.c=.o)

# libftprintf sources
NAME				=		libftprintf.a
LOCAL_SRC_PATH		=		srcs
LOCAL_HEADER_PATH	=		includes

PRINTF_SRC			=	ft_ptrintf.c \
						ft_printf_char.c \
						ft_printf_hex.c \
						ft_printf_nbr.c \
						ft_printf_string.c \
						ft_printf_unit.c \
						ft_printf_ptr.c

# Objects
PRINTF_SRCS = ${addprefix ${LOCAL_SRC_PATH}/, ${PRINTF_SRC}}
PRINTF_OBJS = $(PRINTF_SRCS:.c=.o)

all: $(NAME)

$(NAME): $(LIBFT_OBJS) $(PRINTF_OBJS)
	@echo "$(COLOR_CYAN)Creating $(NAME)...$(COLOR_RESET)"
	@ar rcs $(NAME) $(LIBFT_OBJS) $(PRINTF_OBJS)
	@echo "$(COLOR_YELLOW)$(NAME) is ready!$(COLOR_RESET)"

%.o: %.c
	@echo "$(COLOR_CYAN)Compiling $<...$(COLOR_RESET)"
	@$(CC) -c $(CFLAGS) $^ -o $@

clean:
	@echo "$(COLOR_CYAN)Cleaning object files...$(COLOR_RESET)"
	@rm -f $(LIBFT_OBJS) $(PRINTF_OBJS)

fclean: clean
	@echo "$(COLOR_CYAN)Cleaning $(NAME)...$(COLOR_RESET)"
	@rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
