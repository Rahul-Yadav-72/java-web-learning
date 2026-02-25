package com.gmail.service;

import java.io.File;

import jakarta.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class EmailServiceImpl implements EmailService {

    @Autowired
    private JavaMailSender mailSender;

    @Override
    public void sendEmail(String to, String name, MultipartFile file) {

        try {

            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper helper =
                    new MimeMessageHelper(message, true);

            helper.setTo(to);
            helper.setSubject("File Attachment Mail");
            helper.setText("Hello " + name + ", your file is attached.");
            helper.setFrom("collegeboys17112005@gmail.com");

            if (file != null && !file.isEmpty()) {

                File tempFile = new File(
                        System.getProperty("java.io.tmpdir"),
                        file.getOriginalFilename()
                );

                file.transferTo(tempFile);

                FileSystemResource resource =
                        new FileSystemResource(tempFile);

                helper.addAttachment(resource.getFilename(), resource);

                mailSender.send(message);

                tempFile.delete();

            } else {
                mailSender.send(message);
            }

            System.out.println("Email sent successfully!");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}