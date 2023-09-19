# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jikarunw <jikarunw@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/09/16 22:30:03 by jikarunw          #+#    #+#              #
#    Updated: 2023/09/18 18:57:06 by jikarunw         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Colors
COLOR_RESET			= \033[0m
COLOR_YELLOW 		= \033[1;33m
COLOR_GREEN			= \033[1;32m
COLOR_CYAN			= \033[1;36m
COLOR_RED			= \033[1;31m

NAME				=		libftprintf.a
NAME_LIBFT			=		libft.a
LOCAL_SRC_PATH		=		srcs
LOCAL_HEADER_PATH	=		includes
LOCAL_LIBFT_PATH	=		./libft

PRINTF_SRC			=	ft_printf.c \
						ft_printf_char.c \
						ft_printf_hex.c \
						ft_printf_nbr.c \
						ft_printf_string.c \
						ft_printf_unit.c \
						ft_printf_ptr.c

# Compiler
CC 					= 	cc
CFLAGS		 		= 	-Wall -Werror -Wextra -I $(LOCAL_HEADER_PATH)

OBJS				=	$(PRINTF_SRC:.c=.o)

all:				$(NAME)
					@echo "$(COLOR_GREEN)Compilation finished successfully!$(COLOR_RESET)"
make_libft:
					@make -C $(LOCAL_LIBFT_PATH)
					@cp $(LOCAL_LIBFT_PATH)/libft.a $(NAME_LIBFT)
					@mv $(NAME_LIBFT) $(NAME)
					@echo "$(COLOR_YELLOW)Libft compilation finished!$(COLOR_RESET)"

$(NAME):			make_libft $(OBJS)
					ar -rc $(NAME) $(OBJS)

clean:
					@rm -rf $(OBJS)
					@cd $(LOCAL_LIBFT_PATH) && make clean
					@echo "$(COLOR_RED)Cleaned object files!$(COLOR_RESET)"

fclean:				clean
					@rm -rf $(NAME)
					@cd $(LOCAL_LIBFT_PATH) && make fclean
					@echo "$(COLOR_RED)Cleaned executable!$(COLOR_RESET)"			

re: fclean all

.PHONY: all clean fclean re make_libft
