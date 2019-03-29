package com.aydin.demo.teambravowiki.StringFormatter;

public class sample {
    public static void main(String[] args) {
        String st  = "012345";
        StringBuilder stringBuilder = new StringBuilder(st);
        stringBuilder.deleteCharAt(0);
        System.out.println(st.length());
        stringBuilder.deleteCharAt(stringBuilder.length()-1);
        System.out.println(stringBuilder);
    }
}
