# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wdebotte <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/09/28 08:31:56 by wdebotte          #+#    #+#              #
#    Updated: 2022/01/11 10:52:01 by wdebotte         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CYAN		= \033[0m\033[96m
GREEN		= \033[1m\033[92m
COLORRESET	= @echo "\033[0m"

PREFIX		= ${GREEN}=> ${CYAN}[${GREEN}Libft${CYAN}]

NAME		= libft.a

SRCS 		= srcs/str/ft_isalpha.c srcs/str/ft_isdigit.c srcs/str/ft_isalnum.c \
			srcs/str/ft_isascii.c srcs/str/ft_isprint.c srcs/str/ft_toupper.c \
			srcs/str/ft_tolower.c srcs/str/ft_strncmp.c srcs/str/ft_strdup.c \
			srcs/str/ft_strchr.c srcs/str/ft_strrchr.c srcs/str/ft_strnstr.c \
			srcs/str/ft_substr.c srcs/str/ft_strjoin.c srcs/str/ft_strtrim.c \
			srcs/str/ft_split.c srcs/str/ft_strmapi.c srcs/str/ft_strlen.c \
			srcs/str/ft_strlcpy.c srcs/str/ft_strlcat.c srcs/str/ft_striteri.c \
			srcs/str/ft_putchar.c srcs/str/ft_putstr.c \
			\
			srcs/mem/ft_memcmp.c srcs/mem/ft_bzero.c srcs/mem/ft_memset.c \
			srcs/mem/ft_memcpy.c srcs/mem/ft_memmove.c srcs/mem/ft_memchr.c \
			srcs/mem/ft_calloc.c \
			\
			srcs/file/ft_putchar_fd.c srcs/file/ft_putstr_fd.c \
			srcs/file/ft_putendl_fd.c srcs/file/ft_putnbr_fd.c \
			srcs/file/is_ext_correct.c \
			\
			srcs/lst/ft_lstsize.c srcs/lst/ft_lstadd_back.c \
			srcs/lst/ft_lstadd_front.c srcs/lst/ft_lstiter.c \
			srcs/lst/ft_lstdelone.c srcs/lst/ft_lstclear.c srcs/lst/ft_lstlast.c \
			srcs/lst/ft_lstnew.c srcs/lst/ft_lstmap.c \
			\
			srcs/othr/ft_atoi.c srcs/othr/ft_itoa.c \
			\
			get_next_line/get_next_line.c get_next_line/get_next_line_utils.c

OBJS		= ${SRCS:.c=.o}

CC			= clang
CFLAGS		= -Wall -Wextra -Werror

RM			= rm -rf

NORM		= norminette
FLAGC		= -R CheckForbiddenSourceHeader
FLAGH		= -R CheckDefine

all:		strcompile ${NAME}

strcompile:
				@echo "${PREFIX} Compiling all ${GREEN}.c ${CYAN}to ${GREEN}.o ${CYAN}..."

.c.o:
				${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

${NAME}:	${OBJS}
				${COLORRESET}
				@echo "${PREFIX} Making ${GREEN}${NAME} ${CYAN}library ..."
				ar -rc ${NAME} ${OBJS}
				${COLORRESET}

clean:
				@echo "${PREFIX} Cleaning ${GREEN}Libft ${CYAN}..."
				${RM} ${OBJS}
				${COLORRESET}

fclean:		clean
				@echo "${PREFIX} Removing ${GREEN}${NAME} ${CYAN}library ..."
				${RM} ${NAME}
				${COLORRESET}

re:			fclean all

norminette:
				@echo "${PREFIX} Checking norminette for ${GREEN}.c ${CYAN}files ..."
				${NORM} ${FLAGC} ${SRCS}
				${COLORRESET}
				@echo "${PREFIX} Checking norminette for ${GREEN}.h ${CYAN}files ..."
				${NORM} ${FLAGH} ${HEADER}
				${COLORRESET}

.PHONY:		all clean fclean re norminette
