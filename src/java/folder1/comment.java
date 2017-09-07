package folder1;

public class comment {

    public int getPost() {
        return post;
    }

    public void setPost(int post) {
        this.post = post;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    int post;
    String data;
    String email;
    String time;

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }
    
    

    public comment(int post,String data, String submittedby,String time) {
        this.post=post;
        this.data = data;
        this.email = submittedby;
        this.time=time;
    }

}

/*import java.util.*;

import java.io.*;


class TestClass
 {

    
    static Scanner sc=new Scanner(System.in);

    static PrintWriter out=new PrintWriter(System.out);

    
     public static void main(String args[] ) throws Exception
 {

         
         int n=sc.nextInt();

         int m=sc.nextInt();

         Teacher ob[]=new Teacher[n];

         for(int x=0;x<n;x++)

         {

  
         ob[x]=new Teacher(sc.next(),new ArrayList<Student>());

         }

         for(int x=0;x<m;x++)

         {

         String T_name=sc.next();

         String S_name=sc.next();
         
         int age=sc.nextInt();

         
            for(int j=0;j<n;j++)
                {
                   if(ob[j].name.equals(T_name))
                   {
                       ob[j].al.add(new Student(S_name,age));
                          break;
                   }
                }
     
         }
         
         Arrays.sort(ob);
         for(int i=0;i<n;i++)
         {
             out.println(ob[i].name);
             ArrayList<Student> current=ob[i].al;
             Collections.sort(current);
             for(Student o : current)
             {
                 out.println(o.name+" "+o.age);
             }
         }
         out.close();
    }
}

class Teacher implements Comparable<Teacher>
{
    String name;
    ArrayList<Student> al;
    Teacher(String n,ArrayList<Student> alist)
    {
        name=n;
        al=alist;
    }
    public int compareTo(Teacher x)
    {
        return this.name.compareTo(x.name);
    }
}


class Student implements Comparable<Student>

{

    String name;

    int age;

    Student(String n,int ag)

    {
 
        name=n;

        age=ag;

    }

    public int compareTo(Student x)

    {

        return Integer.compare(this.age,x.age);


    }

}

 */
