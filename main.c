#include <stdio.h>

extern int  *sort(int *array,int size);

int main(int argc, char **argv){

    int array[10],i,size = 0;
    
    scanf("%d",&size);
    for(i =0; i<size; i++){
        scanf("%d",&array[i]);
    }

    int *sorted = sort(array,size);
    //printf("%d ",sorted);
    for(i = 0; i<size; i++){
        printf("%d ",sorted[i]);    
    }

    return 0;
}
