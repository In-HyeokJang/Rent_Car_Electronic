package com.rentcar.utility;

import java.io.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import com.rentcar.review.service.ReviewService;
import org.springframework.web.multipart.MultipartFile;


public class Utility {
public static void writeMultiPart(OutputStream out, String jsonMessage, File file, String boundary)
            throws IOException {
        StringBuilder sb = new StringBuilder();
        sb.append("--").append(boundary).append("\r\n");
        sb.append("Content-Disposition:form-data; name=\"message\"\r\n\r\n");
        sb.append(jsonMessage);
        sb.append("\r\n");

        out.write(sb.toString().getBytes("UTF-8"));
        out.flush();

        if (file != null && file.isFile()) {
            out.write(("--" + boundary + "\r\n").getBytes("UTF-8"));
            StringBuilder fileString = new StringBuilder();
            fileString.append("Content-Disposition:form-data; name=\"file\"; filename=");
            fileString.append("\"" + file.getName() + "\"\r\n");
            fileString.append("Content-Type: application/octet-stream\r\n\r\n");
            out.write(fileString.toString().getBytes("UTF-8"));
            out.flush();

            try (FileInputStream fis = new FileInputStream(file)) {
                byte[] buffer = new byte[8192];
                int count;
                while ((count = fis.read(buffer)) != -1) {
                    out.write(buffer, 0, count);
                }
                out.write("\r\n".getBytes());
            }

            out.write(("--" + boundary + "--\r\n").getBytes("UTF-8"));
        }
        out.flush();
    }




    /**
     * 오늘,어제,그제 날짜 가져오기
     *
     * @return List- 날짜들 저장 SimpleDateFormat("yyyy-MM-dd")
     */
    public static List<String> getDay() {
        List<String> list = new ArrayList<String>();

        SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd");
        Calendar cal = Calendar.getInstance();
        for (int j = 0; j < 3; j++) {
            list.add(sd.format(cal.getTime()));
            cal.add(Calendar.DATE, -1);
        }

        return list;
    }

    /**
     * 등록날짜와 오늘,어제,그제날짜와 비교
     *
     * @param wdate - 등록날짜
     * @return - true:오늘,어제,그제중 등록날짜와 같음 false:오늘,어제,그제 날짜가 등록날짜와 다 다름
     */
    public static boolean compareDay(String wdate) {
        boolean flag = false;
        List<String> list = getDay();
        if (wdate.equals(list.get(0)) || wdate.equals(list.get(1)) || wdate.equals(list.get(2))) {
            flag = true;
        }

        return flag;
    }


    public static String checkNull(String str) {
        if (str == null) {
            str = "";
        }
        return str;
    }

    public static String rpaging(int total, int nowPage, int recordPerPage, String col, String word, String url,
                                 int nPage) {
        int pagePerBlock = 5; // 블럭당 페이지 수
        int totalPage = (int) (Math.ceil((double) total / recordPerPage)); // 전체 페이지
        int totalGrp = (int) (Math.ceil((double) totalPage / pagePerBlock));// 전체 그룹
        int nowGrp = (int) (Math.ceil((double) nPage / pagePerBlock)); // 현재 그룹
        int startPage = ((nowGrp - 1) * pagePerBlock) + 1; // 특정 그룹의 페이지 목록 시작
        int endPage = (nowGrp * pagePerBlock); // 특정 그룹의 페이지 목록 종료

        StringBuffer str = new StringBuffer();
        str.append("<div style='text-align:center'>");
        str.append("<ul class='pagination'> ");
        int _nowPage = (nowGrp - 1) * pagePerBlock; // 10개 이전 페이지로 이동

        if (nowGrp >= 2) {
            str.append("<li><a href='" + url + "?col=" + col + "&word=" + word + "&nowPage=" + nowPage +
                    "&nPage=" + _nowPage + "'>이전</A></li>");
        }

        for (int i = startPage; i <= endPage; i++) {
            if (i > totalPage) {
                break;
            }

            if (nPage == i) {
                str.append("<li class='active'><a href=#>" + i + "</a></li>");
            } else {
                str.append("<li><a href='" + url + "?col=" + col + "&word=" + word + "&nowPage=" + nowPage +
                        "&nPage=" + i + "'>" + i + "</A></li>");
            }
        }

        _nowPage = (nowGrp * pagePerBlock) + 1; // 10개 다음 페이지로 이동
        if (nowGrp < totalGrp) {
            str.append("<li><A href='" + url + "?col=" + col + "&word=" + word + "&nowPage=" + nowPage +
                    "&nPage=" + _nowPage + "'>다음</A></li>");
        }
        str.append("</ul>");
        str.append("</div>");

        return str.toString();

    }


    /**
     * @param totalRecord   전체 레코드수
     * @param nowPage       현재 페이지
     * @param recordPerPage 페이지당 레코드 수
     * @param col           검색 컬럼
     * @param word          검색어
     * @return 페이징 생성 문자열
     */
    public static String paging(int totalRecord, int nowPage, int recordPerPage, String col, String word) {
        int pagePerBlock = 5; // 블럭당 페이지 수
        int totalPage = (int) (Math.ceil((double) totalRecord / recordPerPage)); // 전체 페이지
        int totalGrp = (int) (Math.ceil((double) totalPage / pagePerBlock));// 전체 그룹
        int nowGrp = (int) (Math.ceil((double) nowPage / pagePerBlock)); // 현재 그룹
        int startPage = ((nowGrp - 1) * pagePerBlock) + 1; // 특정 그룹의 페이지 목록 시작
        int endPage = (nowGrp * pagePerBlock); // 특정 그룹의 페이지 목록 종료

        StringBuffer str = new StringBuffer();
        str.append("<div style='text-align:center'>");
        str.append("<ul class='pagination'> ");
        int _nowPage = (nowGrp - 1) * pagePerBlock; // 10개 이전 페이지로 이동
        if (nowGrp >= 2) {
            str.append("<li><a href='./list?col=" + col + "&word=" + word + "&nowPage=" + _nowPage + "'>이전</A></li>");
        }

        for (int i = startPage; i <= endPage; i++) {
            if (i > totalPage) {
                break;
            }

            if (nowPage == i) {
                str.append("<li class='active'><a href=#>" + i + "</a></li>");
            } else {
                str.append("<li><a href='./list?col=" + col + "&word=" + word + "&nowPage=" + i + "'>" + i + "</A></li>");
            }
        }

        _nowPage = (nowGrp * pagePerBlock) + 1; // 10개 다음 페이지로 이동
        if (nowGrp < totalGrp) {
            str.append("<li><A href='./list?col=" + col + "&word=" + word + "&nowPage=" + _nowPage + "'>다음</A></li>");
        }
        str.append("</ul>");
        str.append("</div>");

        return str.toString();
    }

    public static String saveFileSpring(MultipartFile mf, String basePath) {
        InputStream inputStream = null;
        OutputStream outputStream = null;
        String filename = "";
        long filesize = mf.getSize();
        String originalFilename = mf.getOriginalFilename();
        try {
            if (filesize > 0) { // 파일이 존재한다면
                // 인풋 스트림을 얻는다.
                inputStream = mf.getInputStream();

                File oldfile = new File(basePath, originalFilename);

                if (oldfile.exists()) {
                    for (int k = 0; true; k++) {
                        // 파일명 중복을 피하기 위한 일련 번호를 생성하여
                        // 파일명으로 조합
                        oldfile = new File(basePath, "(" + k + ")" + originalFilename);

                        // 조합된 파일명이 존재하지 않는다면, 일련번호가
                        // 붙은 파일명 다시 생성
                        if (!oldfile.exists()) { // 존재하지 않는 경우
                            filename = "(" + k + ")" + originalFilename;
                            break;
                        }
                    }
                } else {
                    filename = originalFilename;
                }
                String os = System.getProperty("os.name").toLowerCase();
                System.out.println("os: " + os); // windows 10, linux, mac os x
                String serverFullPath = null;
                if (os.equals("mac os x")) { // Mac
                    System.out.println("맥");
                    serverFullPath = basePath + "/" + filename;
                } else if (os.equals("windows 10")) {
                    System.out.println("os: " + os);
                    serverFullPath = basePath + "\\" + filename;
                } else if (os.equals("linux")) {
                    System.out.println("리눅스");
                    serverFullPath = basePath + "/" + filename;
                }

                System.out.println("fileName: " + filename);
                System.out.println("serverFullPath: " + serverFullPath);

                outputStream = new FileOutputStream(serverFullPath);

                // 버퍼를 만든다.
                int readBytes = 0;
                byte[] buffer = new byte[8192];

                while ((readBytes = inputStream.read(buffer, 0, 8192)) != -1) {
                    outputStream.write(buffer, 0, readBytes);
                }
                outputStream.close();
                inputStream.close();

            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {

        }

        return filename;
    }


    public static void deleteFile(String upDir, String oldfile) {
        File file = new File(upDir, oldfile);
        if (file.exists())
            file.delete();

    }

}