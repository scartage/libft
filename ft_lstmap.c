/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstmap.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: scartage <scartage@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/02/10 19:52:16 by scartage          #+#    #+#             */
/*   Updated: 2022/05/13 19:29:20 by scartage         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

t_list	*ft_lstmap(t_list *lst, void *(*f)(void *), void (*del)(void *))
{
	t_list	*newnode;
	t_list	*node;
	void	*aux;

	node = NULL;
	while (lst != NULL)
	{
		aux = f(lst->content);
		newnode = ft_lstnew(aux);
		if (newnode == NULL)
		{
			del(aux);
			ft_lstclear(&node, del);
			return (0);
		}
		ft_lstadd_back(&node, newnode);
		lst = lst->next;
	}
	newnode = NULL;
	return (node);
}
