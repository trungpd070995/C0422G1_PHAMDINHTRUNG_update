package validate;

public class Validate {
//    public static final String NUMBER_PHONE = "^09[0|1][0-9]{7}$";
//    public static final String NAME = "^[a-zA-Z\\s\\d\\p{L}]+$";
//    public static final String ID_CARD = "^[0-9]{9}$";
//    public static final String EMAIL = "^[\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,4}$";
//    public static final String POSITIVE_NUMBER = "^[1-9][0-9]*";


    public static final String NUMBER_PHONE = "^09[0|1][0-9]{7}$";
    public static final String NAME = "^([A-Z][a-z]*)+(\\s([A-Z][a-z]*))*$";
    public static final String ID_CARD = "^[0-9]{9}$";
    public static final String EMAIL = "^[\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,4}$";
    public static final String POSITIVE_NUMBER = "^[1-9][0-9]*";

//    //Số + Chữ tiếng việt + space
//    public static final String REGEX_NAME = "^[a-zA-Z\\s\\d\\p{L}]+$";
//    //Số > 0
//    public static final String POSITIVE_NUMBER = "^[1-9][0-9]*";
//
//    //Space + chữ tiếng việt
//    public static final String REGEX_NAME2 = "^[a-zA-Z\\s\\p{L}]+$";
//
//
//    //Tên viết hoa kí tự đầu
//    public static final String NAME = "^([A-Z\\p{L}]{1}[a-z\\p{L}]*)+(\\s([A-Z\\p{L}]{1}[a-z\\p{L}]*))*$";
}
