/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jikarunw <jikarunw@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/09/16 01:40:14 by jikarunw          #+#    #+#             */
/*   Updated: 2023/09/18 10:21:46 by jikarunw         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include "../libft/includes/libft.h"
# include <stdarg.h>

int		ft_printf(const char *s, ...);
int		ft_printf_char(int c);
int		ft_printf_hex(unsigned int n, int x_sw);
int		ft_printf_string(char *str);
int		ft_printf_nbr(int num);
int		printf_ptr(void *ptr);
int		ft_printf_unit(unsigned int n);

#endif
