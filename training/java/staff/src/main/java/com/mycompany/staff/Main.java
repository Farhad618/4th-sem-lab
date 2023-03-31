/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.staff;

import java.util.Scanner;

/**
 *
 * @author bokhate
 */
public class Main {

    public static void main(String[] args) 
    {
        int choice = 0;
        Manager [] m1 = new Manager[5];
        int m=0;
        Security s1 = new Security();
        Scanner sc = new Scanner(System.in);
        
        while (choice != 9) 
        {
            switch (choice) 
            {
                case 0:
                    System.out.println("0 - Help");
                    System.out.println("1 - Add manager");
                    System.out.println("2 - Add security");
                    System.out.println("3 - Show manager");
                    System.out.println("4 - Show security");
                    break;
                case 1:
                    m1[m] = new Manager();
                    m1[m].setManager();
                    m++;
                    break;
                case 2:
                    s1.setSecurity();
                    break;
                case 3:
                    try {
                        for (Manager element : m1) {
                            element.getManager();
                        }                    
                    } catch (Exception e) {
                        System.out.println("No more Managers.");
                    }                    
                    break;
                case 4:
                    s1.getSecurity();
                    break;
                default:
                    throw new AssertionError();
            }
            System.out.print("Enter your choice: ");
            choice = sc.nextInt();
        }
        System.out.println("You exit the program...");
    }
}
