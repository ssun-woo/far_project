package com.far.security.auth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.far.Repository.MemberRepository;
import com.far.model.Member;


@Service
public class PrincipalDetailsService implements UserDetailsService {

    @Autowired
    private MemberRepository memberRepository;

    @Override
    public UserDetails loadUserByUsername(String memId) throws UsernameNotFoundException {
        // 세션에 사용자 정보를 저장
        Member memberEntity = memberRepository.findByMemId(memId);
        if (memberEntity == null) {
            throw new UsernameNotFoundException("사용자를 찾을 수 없습니다: " + memId);
        }

        // UserDetails를 구성하여 반환
        PrincipalDetails userDetails = new PrincipalDetails(memberEntity);
        //SecurityContextHolder.getContext().setAuthentication(new UsernamePasswordAuthenticationToken(userDetails, null, userDetails.getAuthorities()));

        return userDetails;
    }
}

