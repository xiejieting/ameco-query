package com.xy.account.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;

import com.xy.account.service.RestfulService;

/**
 * @author changwei
 *
 *         File: RestfulInfoController.java
 * 
 *         Created: 15/8/4
 */

@Controller("RestfulInfoController")
@RequestMapping(value = "/restful", produces = MediaType.ALL_VALUE)
public class RestfulInfoController {

	private static Logger logger = Logger.getLogger(RestfulInfoController.class
			.getName());

	@Autowired
	RestfulService restfulService;
//
//	@RequestMapping(params = "type=json", method = RequestMethod.GET)
//	@ResponseBody
//	public ResponseEntity<Account> getAccountInfo(String name) {
//		Account account = restfulService.getAccountInfoByName(name);
//		if (account != null) {
//			return new ResponseEntity<Account>(account, HttpStatus.OK);
//		} else {
//			return new ResponseEntity<Account>(HttpStatus.NOT_FOUND);
//		}
//	}
//
//	@RequestMapping(params = "type=json", method = RequestMethod.POST)
//	@ResponseBody
//	public ResponseEntity<Account> postAccountInfo(String name) {
//		Account account = restfulService.getAccountInfoByName(name);
//		if (account != null) {
//			return new ResponseEntity<Account>(account, HttpStatus.OK);
//		} else {
//			return new ResponseEntity<Account>(HttpStatus.NOT_FOUND);
//		}
//	}
	
//	   @RequestMapping(value = "/{type}", method = RequestMethod.POST)
//	    @ResponseBody
//	    public ResponseEntity<Integer> modPInfoByType(@PathVariable int type, @RequestBody ProjectInfo project) {
//	        int result = projectInfoDao.setProjectInfo(project, type);
//	        if (result < 1) {
//	            return new ResponseEntity<Integer>(HttpStatus.BAD_REQUEST);
//	        } else {
//	            return new ResponseEntity<Integer>(HttpStatus.OK);
//	        }
//	    }

}
