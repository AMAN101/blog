
package folder1;

import java.util.ArrayList;

public class blog {
    public blog(int id, String heading, String time, String post,String submittedBy) {
        this.id = id;
        this.heading = heading;
        this.time = time;
        this.post = post;
        this.submittedby = submittedBy;
    }
        public blog(int id, String heading, String time, String post,String submittedBy,ArrayList<comment> alist) {
        this.id = id;
        this.heading = heading;
        this.time = time;
        this.post = post;
        this.submittedby = submittedBy;
        this.al=alist;
        
    }
    int id;
    String heading;
    String time;
    String post;
    String submittedby;
    ArrayList<comment> al;

    public ArrayList<comment> getAl() {
        return al;
    }

    public void setAl(ArrayList<comment> al) {
        this.al = al;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getHeading() {
        return heading;
    }

    public void setHeading(String heading) {
        this.heading = heading;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getPost() {
        return post;
    }

    public void setPost(String post) {
        this.post = post;
    }

    public String getSubmittedby() {
        return submittedby;
    }

    public void setSubmittedby(String submittedby) {
        this.submittedby = submittedby;
    }
};


