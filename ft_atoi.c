/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_atoi.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: wdebotte <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/11/24 14:41:53 by wdebotte          #+#    #+#             */
/*   Updated: 2021/11/29 10:28:53 by wdebotte         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static int	ft_is_whitespace(char c)
{
	if (c == ' ' || (c >= 9 && c <= 13))
		return (1);
	return (0);
}

int	ft_atoi(const char *str)
{
	int			i;
	int			is_negativ;
	long int	number;

	i = 0;
	number = 0;
	is_negativ = 1;
	while (str[i] != '\0' && ft_is_whitespace(str[i]))
		i++;
	if (str[i] == '-' || str[i] == '+')
	{
		if (str[i] == '-')
			is_negativ = -is_negativ;
		i++;
	}
	while (str[i] && (str[i] >= '0' && str[i] <= '9'))
	{
		number = number * 10 + str[i] - 48;
		i++;
	}
	return (number * is_negativ);
}
