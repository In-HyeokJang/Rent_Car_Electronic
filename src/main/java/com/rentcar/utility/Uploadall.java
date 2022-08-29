package com.rentcar.utility;

import java.io.File;

public class Uploadall {
    /** 페이지당 출력할 레코드 갯수 */
    public static int RECORD_PER_PAGE = 3;

    // Windows, VMWare, AWS cloud 절대 경로 설정
    public static synchronized String getUploadDir() {
        String path = "";
        if (File.separator.equals("\\")) {
            path = "C:\\Aistudy_JIH\\deploy\\upload\\";
            System.out.println("Windows 10: " + path);

        } else {
            // System.out.println("Linux");
            path = "/root/deploy/user/storage/";
        }

        return path;
    }


    public static synchronized String getNoticeDir() {
        String path = "";
        if (File.separator.equals("\\")) {
            path = "C:\\Aistudy_JIH\\deploy\\notice\\";
            System.out.println("Windows 10: " + path);

        } else {
            // System.out.println("Linux");
            path = "/root/deploy/user/storage/";
        }

        return path;
    }
    public static synchronized String getLicenseDir() {
        String path = "";
        if (File.separator.equals("\\")) {
            path = "C:\\Aistudy_JIH\\deploy\\license\\";
            System.out.println("Windows 10: " + path);

        } else {
            // System.out.println("Linux");
            path = "/root/deploy/user/storage/";
        }

        return path;
    }
    public static synchronized String getCarinfoDir() {
        String path = "";
        if (File.separator.equals("\\")) {
            path = "C:/Aistudy_JIH/deploy/carinfo/storage/";
            System.out.println("Windows 10: " + path);

        } else {
            // System.out.println("Linux");
            path = "/root/deploy/user/storage/";
        }

        return path;
    }

}