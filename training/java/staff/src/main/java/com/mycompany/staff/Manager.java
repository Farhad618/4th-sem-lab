/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.staff;

/**
 *
 * @author bokhate
 */
public class Manager extends Staff 
{
    public void setManager()
    {
        System.out.println("Enter manager details: ");
        super.setStaff();
    }
    public void getManager()
    {
        System.out.println("Wellcome, manager...");
        super.getStaff();
    }
}
