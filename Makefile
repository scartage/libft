# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: scartage <scartage@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/01/20 15:11:31 by scartage          #+#    #+#              #
#    Updated: 2022/04/19 16:46:46 by scartage         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= libft.a

CC = gcc

CFLAGS	= -Wall -Wextra -Werror

SRCS	 = 	ft_atoi.c ft_bzero.c ft_isalnum.c ft_isalpha.c ft_isascii.c \
			ft_isdigit.c ft_isprint.c ft_memchr.c ft_memcmp.c ft_memcpy.c \
			ft_memmove.c ft_memset.c ft_strncmp.c ft_strlcat.c ft_strlcpy.c \
			ft_strlen.c ft_strrchr.c ft_strchr.c ft_tolower.c ft_toupper.c \
			ft_strnstr.c ft_calloc.c ft_strdup.c ft_substr.c ft_strjoin.c	\
			ft_strtrim.c ft_split.c  ft_itoa.c ft_strmapi.c ft_striteri.c	\
			ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c	\
			

BNUS	=	ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstadd_back.c \
			ft_lstlast.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c 		\
			ft_lstmap.c

OBJS	= ${SRCS:.c=.o}

OBJBNS	= ${BNUS:.c=.o}

RM		= rm -f

all:		${NAME}
			
${NAME}:	${OBJS}
			ar rc ${NAME} ${OBJS}

bonus:		${OBJBNS} ${OBJS}
			ar rc ${NAME} ${OBJS} ${OBJBNS}

clean:
			${RM} ${OBJS} ${OBJBNS}

fclean:		clean
			${RM} ${NAME}

re:			fclean all

.PHONY:		all clean fclean re bonus
