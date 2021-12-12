/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strjoin.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: wdebotte <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/11/28 13:06:33 by wdebotte          #+#    #+#             */
/*   Updated: 2021/12/12 16:22:01 by wdebotte         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static char	*ft_mallocprotect(char const *s1, char const *s2)
{
	if (s1 == NULL)
		return (ft_strdup(s2));
	else if (s2 == NULL)
		return (ft_strdup(s1));
	return (ft_strdup(""));
}

char	*ft_strjoin(char const *s1, char const *s2)
{
	int		i;
	int		size_s1;
	int		size_s2;
	char	*buffer;

	if (s1 == NULL || s2 == NULL)
		return (ft_mallocprotect(s1, s2));
	size_s1 = ft_strlen(s1);
	size_s2 = ft_strlen(s2);
	buffer = malloc(sizeof(char) * (size_s1 + size_s2) + 1);
	if (buffer == NULL)
		return (NULL);
	i = 0;
	while (s1[i] != '\0')
		buffer[i++] = s1[i];
	while (s2[i - size_s1] != '\0')
		buffer[i++] = s2[i - size_s1];
	buffer[i] = '\0';
	return (buffer);
}
