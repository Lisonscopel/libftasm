/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libftasm.h                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lscopel <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/05/05 16:59:47 by lscopel           #+#    #+#             */
/*   Updated: 2015/05/05 18:29:51 by lscopel          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef _LIBFTASM_H
# define _LIBFTASM_H

# include <stdio.h>
# include <unistd.h>
# include <stdlib.h>

void		ft_bzero(void *s, size_t n);
void		ft_cat(int fd);
int			ft_isalnum(int c);
int			ft_isalpha(int c);
int			ft_isascii(int c);
int			ft_isdigit(int c);
int			ft_isprint(int c);
int			ft_isspace(char c);
void		*ft_memcpy(void *dst, const void *src, size_t n);
void		*ft_memset(void *b, int c, size_t len);
int			ft_puts(const char *s);
char		*ft_strcat(char *s1, const char *s2);
int			ft_strbcmp(const char *s1, const char *s2);
char		*ft_strcpy(char *dst, const char *src);
char		*ft_strdup(const char *s1);
int			ft_strlen(char *str);
char		*ft_strncpy(char *dst, const char *src, size_t n);
char		*ft_strnew(size_t size);
void		*ft_memalloc(size_t size);
int			ft_tolower(int c);
int			ft_toupper(int c);

#endif
