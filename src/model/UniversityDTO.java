package model;

import java.util.ArrayList;
import java.util.List;

public class UniversityDTO {
    List<String> uniList = new ArrayList<>();
    String name;
    String regno;
    String weburl;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getRegno() {
        return regno;
    }

    public String getWeburl() {
        return weburl;
    }

    public void setWeburl(String weburl) {
        this.weburl = weburl;
    }

    public void setRegno(String regno) {
        this.regno = regno;
    }

    public List<String> getUniList() {
        return uniList;
    }

    public void setUniList(List<String> uniList) {
        this.uniList = uniList;
    }
}
