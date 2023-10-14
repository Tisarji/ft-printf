# ft_printf

The `ft_printf` function in C is used for formatted output and allows you to print various data types with specific formatting options. In `ft_printf`, flags are used to modify the output by specifying how the data should be presented. Here's a summary of the commonly used flags in `ft_printf`:
A partial reimplementation of the printf in C. Handles only the following conversions.

| Conversion | Short Description                                                                             |
|------------|-----------------------------------------------------------------------------------------------|
| %c         | Print a single character.                                                                     |
| %s         | Print a string of characters.                                                                 |
| %p         | The void * pointer argument is printed in hexadecimal.                                        |
| %d         | Print a decimal (base 10) number.                                                             |
| %i         | Print an integer in base 10.                                                                  |
| %u         | Print an unsigned decimal (base 10) number.                                                   |
| %x         | Print a number in hexadecimal (base 16), with lowercase.                                      |
| %X         | Print a number in hexadecimal (base 16), with uppercase.                                      |
| %%         | Print a percent sign.                                                                         |

ft_printf function has the prototype:

```
int ft_printf(const char *str, ...);
```
## My Result in ft_printf
<img width="1081" alt="Screenshot 2566-10-15 at 01 10 17" src="https://github.com/Tisarji/ft-printf/assets/48820052/1757dd12-a0f1-4824-b6fe-13bb87c41e56">
