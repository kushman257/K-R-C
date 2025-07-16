#include <stdio.h>

int main()
{
    int c, nl, space, tabs;

    nl = 0;
    space = 0;
    tabs = 0;
    
    /*The EOF char in Windows Terminal is 'Ctrl-Z'.*/
    while((c = getchar()) != EOF)
    {
        if(c == '\n') 
            nl++;
        else if(c == ' ') 
            space++;
        else if(c =='\t') 
            tabs++;
    }
    printf("There are %d blanks, %d tabs, and %d newlines.\n", space, tabs, nl);
}