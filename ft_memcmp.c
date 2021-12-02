/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memcmp.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: wdebotte <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/11/24 14:19:19 by wdebotte          #+#    #+#             */
/*   Updated: 2021/11/26 13:46:32 by wdebotte         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int	ft_memcmp(const void *s1, const void *s2, size_t n)
{
	size_t				i;
	const unsigned char	*buffer_s1;
	const unsigned char	*buffer_s2;

	if (n == 0)
		return (0);
	i = 0;
	buffer_s1 = s1;
	buffer_s2 = s2;
	while (buffer_s1[i] == buffer_s2[i] && i < n - 1)
		i++;
	return (buffer_s1[i] - buffer_s2[i]);
}
