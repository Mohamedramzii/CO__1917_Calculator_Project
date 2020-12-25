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
  printf("\nOperation 2: Minimum Number");
  printf("\nOperation 3: Multiplication");
  printf("\nOperation 4: Division");
  printf("\nOperation 5: Sin");
  printf("\nOperation 6: Cos");
  printf("\nOperation 7: Tan");
  printf("\nOperation 8: Triangle Detection");
  printf("\nOperation 9: Rectangle Detection");
  printf("\nOperation 10: Square Detection");
  printf("\n\n\t\t\t\t\tCHOOSE YOUR OPERATION \n");



do{

        scanf("%d",&op);

  switch (op)
  {

   case 1: //Addition
       printf("\nEnter 2 Numbers:  ");
       scanf("%f",&num1);
       scanf("%f",&num2);


      result= num1+num2;
      printf("\n Addition = %f \n ",result);

      break;

   case 2://Minimum Number

    printf("Enter size of the array : ");
    scanf("%d",&n);

    printf("Enter elements in array : ");
    for(i=0; i<n; i++)
    {
        scanf("%d",&a[i]);
    }
    min=a[0];
    for(i=1; i<n; i++)
    {
         if(min>a[i])
		  min=a[i];

    }
     printf("\nMinOf Your list is : %d",min);

     break;


   case 3: //Multiplication
       printf("\nEnter 2 Numbers:  ");
       scanf("%d",&num1);
       scanf("%d",&num2);

       result=num1 * num2;
       printf("\n result = %f ",result);
       break;

   case 4://Division
       printf("\nPlease Enter the Dividend: ");
       scanf("%f",&num1);
       printf("\nPlease Enter the Divisor:  ");
       scanf("%f",&num2);
       result=num1 / num2;
       printf("\n result = %f ",result);

       break;

   case 5: //Sin
       printf("\n Enter the opposite to the angle:  ");
       scanf("%f",&num1);
       printf("\n Enter the hypotenuse of the angle:  ");
       scanf("%f",&num2);
       result=num1 / num2;
       printf("\n result = %f ",result);

       break;
   case 6: //cos
       printf("\n Enter the adjacent to the angle:  ");
       scanf("%f",&num1);
       printf("\n Enter the hypotenuse of the angle:  ");
       scanf("%f",&num2);
       result=num1 / num2;
       printf("\n result = %f ",result);

       break;

   case 7: //tan
       printf("\n Enter the opposite to the angle:  ");
       scanf("%f",&num1);
       printf("\n Enter the adjacent of the angle:  ");
       scanf("%f",&num2);
       result=num1 / num2;
       printf("\n result = %f ",result);

       break;

      case 8://Square
        printf("\nEnter 4 length of each side \n ");
       scanf("%u",&L1);
       scanf("%u",&L2);
       scanf("%u",&L3);
       scanf("%u",&L4);
       if (L1 == L2 && L3 == L4 && L1 == L3){
        valid=1;
        }else {
        valid=0;
        }
        printf("\n Square detection is : %d",valid);

       break;
   case 9://Rectangle
       printf("\nEnter 4 length of each side \n");
       scanf("%u",&L1);

       scanf("%u",&L2);


       scanf("%u",&L3);


       scanf("%u",&L4);
       if ((L1 == L2 && L3 == L4) || (L1 == L3 && L2 == L4) || (L1 == L4 && L2 == L3)){
        valid=1;
        }else {
        valid=0;
        }
        printf("\n Rectangle detection is :%d",valid);

       break;
   case 10:
    //Triangle
       printf("\n Enter 3 length of each side \n  ");
       scanf("%u",&L1);
       scanf("%u",&L2);
       scanf("%u",&L3);
       if (L1+L2<= L3 || L1+L3<= L2 || L2+L3<=L1){
        valid=0;
       }

       else{
        valid=1;
       }
       printf("\n Triangle detection is : %d",valid);

       break;

   default:

        printf("Wrong choice ,Please enter again:");
        break;


      }
}while(op<1||op>10);



}


