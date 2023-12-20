#include "libft.h"

size_t	ft_strlcpy(char *dst, const char *src, size_t dstsize)
{
	char	*chr_src;
	size_t	i;

	chr_src = (char *) src;
	i = 0;
	while (src[i] && i + 1 < dstsize)
	{
		dst[i] = chr_src[i];
		i++;
	}
	if (dstsize != 0)
		dst[i] = '\0';
	return (ft_strlen(src));
}
