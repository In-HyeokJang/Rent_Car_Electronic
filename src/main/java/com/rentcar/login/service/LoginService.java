package com.rentcar.login.service;

import com.rentcar.login.model.LoginDTO;
import com.rentcar.member.model.MemberDTO;

import java.util.List;
import java.util.Map;

public interface LoginService {

  LoginDTO mypage(String id);
  int loginCheck(Map<String, String> map);

  Map getGrade(String id);

  int create(LoginDTO dto);

  int duplicatedId(String id);

  int duplicatedEmail(String email);

  String idFind(Map<String, String> map);

  String pwFind(Map<String, String> map);

    LoginDTO read(String id);

    int update(LoginDTO dto);

  void delete(String id);

    int total(Map map);

  List<LoginDTO> list(Map map);

    int passCheck(Map map);
}
