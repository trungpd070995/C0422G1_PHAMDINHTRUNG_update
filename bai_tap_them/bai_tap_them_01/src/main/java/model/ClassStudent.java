package model;

public class ClassStudent {
    private int idClass;
    private String idCarClass;
    private String nameClass;
    private String starDayClass;

    public ClassStudent() {
    }

    public ClassStudent(String idCarClass, String nameClass, String starDayClass) {
        this.idCarClass = idCarClass;
        this.nameClass = nameClass;
        this.starDayClass = starDayClass;
    }

    public ClassStudent(int idClass, String idCarClass, String nameClass, String starDayClass) {
        this.idClass = idClass;
        this.idCarClass = idCarClass;
        this.nameClass = nameClass;
        this.starDayClass = starDayClass;
    }

    public int getIdClass() {
        return idClass;
    }

    public void setIdClass(int idClass) {
        this.idClass = idClass;
    }

    public String getIdCarClass() {
        return idCarClass;
    }

    public void setIdCarClass(String idCarClass) {
        this.idCarClass = idCarClass;
    }

    public String getNameClass() {
        return nameClass;
    }

    public void setNameClass(String nameClass) {
        this.nameClass = nameClass;
    }

    public String getStarDayClass() {
        return starDayClass;
    }

    public void setStarDayClass(String starDayClass) {
        this.starDayClass = starDayClass;
    }
}
