/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf_nbr.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jikarunw <jikarunw@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/09/16 22:34:49 by jikarunw          #+#    #+#             */
/*   Updated: 2023/09/17 23:55:37 by jikarunw         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int	ft_printf_nbr(int num)
{
	int	digit;

	digit = 0;
	if (num == INT_MIN)
		return (ft_printf_string("-2147483648"));
	else if (num < 0)
	{
		digit += ft_printf_char('-');
		num *= -1;
	}
	if (num > 9)
		digit = ft_printf_nbr(num / 10);
	digit += ft_printf_char((num % 10) + 48);
	return (digit);
}
