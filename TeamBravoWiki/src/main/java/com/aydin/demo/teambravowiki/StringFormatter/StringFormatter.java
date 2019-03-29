package com.aydin.demo.teambravowiki.StringFormatter;

import java.util.ArrayList;
import java.util.Scanner;

public class StringFormatter {
    private static ArrayList<Integer>  points = new ArrayList<Integer>();
    public static String formatSt(String st){
        String result="";
        ArrayList<Integer>  points = new ArrayList<Integer>();
        char charSt[] = st.toCharArray();
        for(int i=0;i<charSt.length;i++){
            if(charSt[i] == '"'){
                charSt[i] = '\'';
            }
        }
        st = new String(charSt);
        for(int i=0;i<st.length();i++){
            if(st.charAt(i) == '\'' || st.charAt(i) == '"'  || st.charAt(i) == '"'){
                points.add(i);
            }
        }
        for(int i=points.size()-1; i>=0;i--){
            st = st.substring(0, points.get(i)) + "\\" + st.substring(points.get(i), st.length());
        }
        System.out.println(st);
        return null;
    }
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        String st = input.nextLine();
        formatSt(st);
        for(int i=0;i<15;i++){
            st = input.nextLine();
            formatSt(st);
        }
    }
}
