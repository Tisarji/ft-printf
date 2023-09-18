/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jikarunw <jikarunw@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/08/30 09:54:01 by jikarunw          #+#    #+#             */
/*   Updated: 2023/09/18 14:25:32 by jikarunw         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memchr(const void *s, int c, size_t n)
{
	unsigned char	*source_char;
	unsigned int	i;

	source_char = (unsigned char *)s;
	i = 0;
	while (i < n && source_char[i] != (unsigned char)c)
		i++;
	if (i == n)
		return (NULL);
	return ((void *)&source_char[i]);
}
