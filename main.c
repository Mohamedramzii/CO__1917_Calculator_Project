#include <stdio.h>
#include <stdlib.h>
#include <conio.h>

int main()
{
  float num1,num2;
  int op;
  float result;
  int a[100],i,n,min;

  printf("\nOperation 1: Addition");
  printf("\nOperation 2: Multiplication");
  printf("\nOperation 3: Division");
  printf("\nOperation 4: Minimum Number");
  printf("\n\n\t\t\t\t\tCHOOSE YOUR OPERATION \n");
  scanf("%d",&op);





  switch (op)
  {

   case 1: //Addition
       printf("\nFirst Number:  ");
       scanf("%f",&num1);

       printf("\nSecond Number:  ");
       scanf("%f",&num2);


      result= num1+num2;
      printf("\n Addition = %f ",result);
      break;

   case 2: //Multiplication
       printf("\nFirst Number:  ");
       scanf("%f",&num1);

       printf("\nSecond Number:  ");
       scanf("%f",&num2);


       result=num1 * num2;
       printf("\n Multiplication = %f ",result);
       break;

   case 3://Division
       printf("\nFirst Number:  ");
       scanf("%f",&num1);

       printf("\nSecond Number:  ");
       scanf("%f",&num2);


       result=num1 / num2;
       printf("\n Division = %f ",result);
       break;

   case 4://Minimum Number

    printf("Enter size of the array : ");
    scanf("%d",&n);


    for(i=0; i<n; i++)
    {
        printf("Enter element %d in array : ",i);
        scanf("%d",&a[i]);
    }
    min=a[0];
    for(i=1; i<n; i++)
    {
         if(min>a[i])
		  min=a[i];

    }
     printf("\nMinimum Number Of Your Array is : %d",min);
     break;

   case 5: //Sin
       break;
   case 6: //cos
       break;
   case 7: //tan
       break;
   case 8://Triangle
       break;
   case 9://Rectangle
       break;
   case 10://Square
       break;




    default:
        printf("\n********Choose another Operator*********");

  }



}
