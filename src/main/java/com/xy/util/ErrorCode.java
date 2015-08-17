package com.xy.util;

public class ErrorCode {
    //注册成功
    public static final int REGISTER_SUCCESS = 1000;
    //注册失败
    public static final int REGISTER_FAILURE = 1001;
    //用户名不能为空
    public static final int USERNAME_NOT_NULL = 1101;
    //用户名已存在
    public static final int USERNAME_EXISTS = 1102;
    //密码不能为空
    public static final int PASSWD_NOT_NULL = 1201;

    //电话不能为空
    public static final int PHONE_NOT_NULL = 1301;
    //电话格式不正确
    public static final int PHONE_FORMAT_ERR = 1302;
    //地址不能为空
    public static final int ADDRESS_NOT_NULL = 1401;
    //更新成功
    public static final int UPDATE_SUCCESS = 2000;
    //更新失败
    public static final int UPDATE_FAILURE = 2001;
}
