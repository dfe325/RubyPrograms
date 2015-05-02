//Program uses Gauss' formula to print out the day and month
//that Easter will be celebrated on any given year

import java.util.Scanner;


class Easter  {
    //Main method accepts year input from user
    //passes data to computeEaster method

    public static void main (String [] args)  {
    Scanner year = new Scanner (System.in);

    System.out.print("Please input a year: ");
    int y = year.nextInt();

    computeEaster(y);

    }

    //computeEaster method calculates month/day
    //using Gauss' formula

    static void computeEaster (int y)  {

    int a = y % 19;
    int b = y / 100;
    int c = y % 100;
    int d = b / 4;
    int e = b % 4;
    int g = (8 * b + 13) / 25;
    int h = (19 * a + b - d - g + 15) % 30;
    int j = c / 4;
    int k = c % 4;
    int m = (a + 11 * h) / 319;
    int r = ((2 * e) + (2 * j) - k - h + m + 32) % 7;
    int n = (h - m + r + 90) / 25;
    int p = (h - m + r + n + 19) % 32;

    //Using if statement and boolean operator
    //evaluates whether n should be printed as March
    //or April to satisfy extra credit point

    if (n < 4)  {
    System.out.println("March" + "/" + p);
    }  else  {
    System.out.println("April" + "/" + p);
    }

    }


}

