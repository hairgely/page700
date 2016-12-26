package com.onpaging.utils;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Component;

@Component
public class EmailSender  {
     
    @Autowired
    protected MailSender mailSender;
 
    public void sendEmail(String email, String subject, String text) throws Exception {
         
    	SimpleMailMessage message = new SimpleMailMessage();
    	message.setSubject(subject);
    	message.setText(text);
    	message.setTo(email);
    	try {
			mailSender.send(message);
		} catch (Exception e) {
			e.printStackTrace();
		}
    }
}
