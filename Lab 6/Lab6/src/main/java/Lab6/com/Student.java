/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Lab6.com;

import java.util.regex.*;

/**
 *
 * @author Linda
 */
public class Student {
    
    private String stuno;
    private String name;
    private String program;
    private String valid;
    private String invalid = "invalid";
    
    public String getStuno() {
        Pattern pt = Pattern.compile("[A-Z0-9]*");
        Matcher mt = pt.matcher(stuno);
        boolean b1 = mt.matches();
        if (b1 == true){
            valid = stuno;
        }else{
            valid =invalid;
        }
        return valid;
    }

    public void setStuno(String stuno) {
        this.stuno = stuno;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getProgram() {
        return program;
    }

    public void setProgram(String program) {
        this.program = program;
    }
}
