/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_substr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: wdebotte <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/11/28 11:43:14 by wdebotte          #+#    #+#             */
/*   Updated: 2021/11/30 14:13:32 by wdebotte         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_substr(char const *str, unsigned int start, size_t size)
{
	char	*buffer;
	size_t	i;

	if (str == NULL || ft_strlen(str) < start)
		return (ft_strdup(""));
	if (ft_strlen(str + start) < size)
		size = ft_strlen(str + start);
	buffer = (char *)malloc(sizeof(char) * size + 1);
	if (buffer == NULL)
		return (NULL);
	i = 0;
	while (i < size)
	{
		buffer[i] = (unsigned char)str[start + i];
		i++;
	}
	buffer[i] = '\0';
	return (buffer);
}
