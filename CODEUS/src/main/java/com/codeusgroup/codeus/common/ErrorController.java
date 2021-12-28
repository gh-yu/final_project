package com.codeusgroup.codeus.common;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

public class ErrorController {
	
	@RequestMapping(value="/common/error/{error_code}.do")
	public ModelAndView error(HttpServletRequest request, @PathVariable String error_code) {
		
		return null;
	}
}
