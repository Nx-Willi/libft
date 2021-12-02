# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wdebotte <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/09/28 08:31:56 by wdebotte          #+#    #+#              #
#    Updated: 2021/12/01 17:34:48 by wdebotte         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME		= libft.a

SRCS 		= ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c \
		ft_isprint.c ft_toupper.c ft_tolower.c ft_atoi.c ft_memcmp.c \
		ft_strncmp.c ft_bzero.c ft_memset.c ft_memcpy.c ft_memmove.c \
		ft_strdup.c ft_strchr.c ft_strrchr.c ft_strnstr.c ft_calloc.c \
		ft_memchr.c ft_strlen.c ft_strlcpy.c ft_strlcat.c ft_substr.c \
		ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c \
		ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c \
		ft_putnbr_fd.c

OBJS		= ${SRCS:.c=.o}

SRCS_BONUS	= ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c \
		ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c \
		ft_lstmap.c

OBJS_BONUS	= ${SRCS_BONUS:.c=.o}

CC		= gcc
RM		= rm -rf
CFLAGS		= -Wall -Wextra -Werror

.c.o:
			${CC} ${FLAGS} -c $< -o ${<:.c=.o}

${NAME}:	${OBJS}
			ar -rc ${NAME} ${OBJS}

bonus:		${OBJS_BONUS}
			ar -rc ${NAME} ${OBJS_BONUS}

all:		${NAME}

clean:
			${RM} ${OBJS} ${OBJS_BONUS}

fclean:		clean
			${RM} ${NAME}

re:			fclean all

.PHONY:		all clean fclean re bonus
