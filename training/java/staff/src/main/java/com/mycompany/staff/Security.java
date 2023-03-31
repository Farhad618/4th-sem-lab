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
public class Security extends Staff
{
    int tips;
    
    public void setSecurity()
    {
        System.out.println("Enter security details: ");
        super.setStaff();
        
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter tips: ");
        tips = sc.nextInt();
    }
    public void getSecurity() 
    {
        System.out.println("Wellcome, security...");
        super.getStaff();
        System.out.println("Tips: " + tips);
    }
}
