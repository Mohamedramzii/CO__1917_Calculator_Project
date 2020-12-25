#include <stdio.h>
#include <stdlib.h>
#include <conio.h>

int main()
{
  float num1,num2;
  int op,valid;
  unsigned int L1,L2,L3,L4;
  float result;
  int a[100],i,n,min;

  printf("\nOperation 1: Addition");
  printf("\nOperation 2: Multiplication");
  printf("\nOperation 3: Division");
  printf("\nOperation 4: Minimum Number");
  printf("\nOperation 8: Triangle Detection");
  printf("\nOperation 9: Rectangle Detection");
  printf("\nOperation 10: Square Detection");
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
       printf("\nEnter First Side:  ");
       scanf("%u",&L1);

       printf("\nEnter Second Side:  ");
       scanf("%u",&L2);

       printf("\nEnter Third Side:  ");
       scanf("%u",&L3);
       if (L1+L2<= L3 || L1+L3<= L2 || L2+L3<=L1){
        valid=0;
       }

       else{
        valid=1;
       }
       printf("%d",valid);

       break;
   case 9://Rectangle
       printf("\nEnter First Side:  ");
       scanf("%u",&L1);

       printf("\nEnter Second Side:  ");
       scanf("%u",&L2);

       printf("\nEnter Third Side:  ");
       scanf("%u",&L3);

       printf("\nEnter Fourth Side:  ");
       scanf("%u",&L4);
       if ((L1 == L2 && L3 == L4) || (L1 == L3 && L2 == L4) || (L1 == L4 && L2 == L3)){
        valid=1;
        }else {
        valid=0;
        }
        printf("%d",valid);
       break;
   case 10://Square
        printf("\nEnter First Side:  ");
       scanf("%u",&L1);

       printf("\nEnter Second Side:  ");
       scanf("%u",&L2);

       printf("\nEnter Third Side:  ");
       scanf("%u",&L3);

       printf("\nEnter Fourth Side:  ");
       scanf("%u",&L4);
       if (L1 == L2 && L3 == L4 && L1 == L3){
        valid=1;
        }else {
        valid=0;
        }
        printf("%d",valid);
       break;




    default:
        printf("\n********Choose another Operator*********");

  }



}
