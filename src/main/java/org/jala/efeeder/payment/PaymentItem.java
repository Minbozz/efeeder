/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.jala.efeeder.payment;

import lombok.Data;

/**
 *
 * @author alexander_castro
 */
@Data
public class PaymentItem {
	private int id;
	private int foodMeetingId;
	private String name;
	private String description;
	private double price;

	public PaymentItem() {
	}

	public PaymentItem(int id, int foodMeetingId, String name, String description, double price) {
		this.id = id;
		this.foodMeetingId = foodMeetingId;
		this.name = name;
		this.description = description;
		this.price = price;
	}
}
