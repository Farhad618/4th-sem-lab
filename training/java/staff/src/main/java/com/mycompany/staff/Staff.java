/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.staff;

import java.util.Scanner;

/**
 *
 * @author bokhate
 */
public class Staff 
{
    int id, sal;
    String name;
    
    public void setStaff()
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter id: ");
        id = sc.nextInt();
        System.out.print("Enter name: ");
        name = sc.next();
        System.out.print("Enter salary: ");
        sal = sc.nextInt();
    }
    
    public void getStaff()
    {
        System.out.println("Id: " + id);
        System.out.println("Name: " + name);
        System.out.println("Salary: " + sal);
    }
}
