//
//  main.m
//  SNMenu1
//
//  Created by Student P_05 on 24/10/16.
//  Copyright © 2016 Felix ITs. All rights reserved.
//

#import <Foundation/Foundation.h>
void CallSwitchCase(int );
void PrimeFactors();
void LeapYear();
void SumOfAllDigits();
void NumberReversing();
int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSLog(@"Menu Driven Program For Various Functions");
            int choice;
            printf("\n For calculating Prime Factors enter: 1");
            printf("\n For finding Leap Year enter: 2");
            printf("\n For calculating Sum of all digits enter: 3");
            printf("\n For printing number in reverse order enter: 4 ");
            scanf("%d",&choice);
            CallSwitchCase(choice);
        }

    return 0;
}
void CallSwitchCase(int Choice)
{
    switch(Choice)
        {
            case 1: PrimeFactors();
                break;
            case 2: LeapYear();
                break;
            case 3: SumOfAllDigits();
                break;
            case 4: NumberReversing();
                break;
            default:printf("\nWrong Choice Entered");
                break;
        }
}
void PrimeFactors()
{
    int num,i=1,j,k;
    printf("\nEnter a number:");
    scanf("%d",&num);
    while(i<=num)
        {
            k=0;
            if(num%i==0)
            {
                j=1;
                while(j<=i)
                {
                    if(i%j==0)
                        k++;
                    j++;
                }
                if(k==2)
                    printf("\n%d is a prime factor ",i);
            }
            i++;
        }
}
void LeapYear()
{
    int year;
    printf("Enter a year: ");
    scanf("%d",&year);
    if(year%4==0)
        {
            if(year%100==0)
            {
                if(year%400==0)
                    printf("\n%d is a leap year",year);
                else
                    printf("\n%d is not a leap year",year);
            }
            else
                printf("\n%d is a leap year",year);
        }
        else
            printf("\n%d is not a leap year",year);
}
void SumOfAllDigits()
{
    int number, temp, sum=0, remainder;
    printf("\nEnter a number:");
    scanf("%d", &number);
    temp=number;
    while(temp!=0)
        {
            remainder=temp%10;
            sum=sum+remainder;
            temp=temp/10;
        }
        printf("\nSum of all digits of number %d is: %d",number,sum);
        
}
void NumberReversing()
{
    int number, RevNumber=0, remainder;
    printf("\nEnter a Number: ");
    scanf("%d",&number);
    while(number!=0)
        {
            remainder=number%10;
            RevNumber=RevNumber*10+remainder;
            number/=10;
        }
        printf("\nReversed Number=%d",RevNumber);
        
}
