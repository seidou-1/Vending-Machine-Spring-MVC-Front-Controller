/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sg.vendingmachinespringmvc.service;

/**
 *
 * @author laptop
 */
public class SoldOutException extends Exception{
    
    public SoldOutException(String message){
        super (message);
        
    }
    
    public SoldOutException (String message, Throwable cause) {
        
        super (message, cause);
    }   
    
}
