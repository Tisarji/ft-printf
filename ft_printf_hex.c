/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf_hex.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jikarunw <jikarunw@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/09/17 21:47:30 by jikarunw          #+#    #+#             */
/*   Updated: 2023/09/18 15:15:28 by jikarunw         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

static int	ft_size_hex(unsigned int n)
{
	int	size;

	if (n <= 0)
		size = 1;
	else
		size = 0;
	while (n)
	{
		size++;
		n /= 16;
	}
	return (size);
}

int	ft_printf_hex(unsigned int n, int x_sw)
{
	char	*base_16;
	int		size;

	size = ft_size_hex(size);
	base_16 = "0123456789abcdef";
	if (x_sw == 0)
		base_16 = "0123456789ABCDEF";
	if (n < 16)
	{
		if (ft_printf_char(base_16[n]) == -1)
			return (-1);
	}
	else
	{
		if (ft_printf_hex(n / 16, x_sw) == -1)
			return (-1);
		if (ft_printf_hex(n % 16, x_sw) == -1)
			return (-1);
	}
	return (size);
}
