package com.xy.util;

import org.apache.log4j.Logger;
import sun.misc.BASE64Encoder;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Random;

/**
 * Created by changwei on 2015/8/17.
 */
public class TokenProcessor {
    private static Logger logger = Logger.getLogger(TokenProcessor.class);
    private static final TokenProcessor instance = new TokenProcessor();

    private TokenProcessor() {
    }

    public synchronized static TokenProcessor getInstance() {
        return instance;
    }

    public String tokenGenerate() {
        String token = (System.currentTimeMillis() + new Random().nextInt(999999999)) + "";
        try {
            MessageDigest md = MessageDigest.getInstance("md5");
            byte[] md5 = md.digest(token.getBytes());
            BASE64Encoder encoder = new BASE64Encoder();
            return encoder.encode(md5);
        } catch (NoSuchAlgorithmException e) {
            e.getStackTrace();
            logger.debug(e);
        }
        return null;
    }
}


