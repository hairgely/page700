package com.onpaging.utils;

import org.apache.commons.codec.digest.DigestUtils;

public class Encrypt {

    public static String encryptMd5(String str) {
        return DigestUtils.md5Hex(str);
    }
    
    public static String encryptSha1(String str) {
        return DigestUtils.sha1Hex(str);
    }
    
    public static String encryptSha2(String str) {
        return DigestUtils.sha512Hex(str);
    }
}
