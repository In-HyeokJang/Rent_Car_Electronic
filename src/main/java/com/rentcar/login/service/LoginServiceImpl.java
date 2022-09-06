package com.rentcar.login.service;

import java.util.List;
import java.util.Map;

import com.rentcar.login.mapper.LoginMapper;
import com.rentcar.login.model.LoginDTO;
import com.rentcar.login.service.LoginService;
import com.rentcar.member.model.MemberDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("com.rentcar.login.service.LoginServiceImpl")
public class LoginServiceImpl implements LoginService {

  @Autowired
  private LoginMapper mapper;


  @Override
  public LoginDTO mypage(String id) {
    return mapper.mypage(id);
  }

  @Override
  public int loginCheck(Map<String, String> map) {
    return mapper.loginCheck(map);
  }

  @Override
  public Map getGrade(String id) {
    return mapper.getGrade(id);
  }

  @Override
  public int create(LoginDTO dto) {
    return mapper.create(dto);
  }

  @Override
  public int duplicatedId(String id) {
    return mapper.duplicatedId(id);
  }

  @Override
  public int duplicatedEmail(String email) {
    return mapper.duplicatedEmail(email);
  }

  @Override
  public String idFind(Map<String, String> map) {
    return mapper.idFind(map);
  }

  @Override
  public String pwFind(Map<String, String> map) {
    return mapper.pwFind(map);
  }

  @Override
  public LoginDTO read(String id) {
    return mapper.read(id);
  }

  @Override
  public int update(LoginDTO dto) {
    return mapper.update(dto);
  }

  @Override
  public void delete(String id) {
    mapper.delete(id);
  }


  @Override
  public int total(Map map) {
    return mapper.total(map);
  }

  @Override
  public List<LoginDTO> list(Map map) {
    return mapper.list(map);
  }

  @Override
  public int passCheck(Map map) {
    return mapper.passCheck(map);
  }


}
