package com.internousdev.ecsite.action;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class ItemCreataConfirmAction extends ActionSupport implements SessionAware{
	private String itemName;
	private String itemPrice;
	private String itemStock;
}
