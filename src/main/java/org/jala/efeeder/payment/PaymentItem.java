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
	private String description;
	private double price;

	public PaymentItem() {
	}

	public PaymentItem(int id, int foodMeetingId, String description, double price) {
		this.id = id;
		this.foodMeetingId = foodMeetingId;
		this.description = description;
		this.price = price;
	}
}
