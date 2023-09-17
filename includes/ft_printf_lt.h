/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf_lt.h                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jikarunw <jikarunw@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/09/16 22:46:56 by jikarunw          #+#    #+#             */
/*   Updated: 2023/09/17 14:28:57 by jikarunw         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_LT_H
# define FT_PRINTF_LT_H

typedef struct s_printf
{
	int		neg;
	int		len;
	int		pre;
	char	type;
}	t_printf;

#endif