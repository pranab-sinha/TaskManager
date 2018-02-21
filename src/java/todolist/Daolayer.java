/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package todolist;

/**
 *
 * @author 1406425
 */
import java.sql.*;
public class Daolayer {
      private static Connection con;
    static
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/todolist";
            String un = "root";
            String p = "1406425";
            con = DriverManager.getConnection(url,un,p);
        }
        catch(Exception e)
        {
            System.out.println("CONNECTION ERROR: "+e.getMessage());
        }
    }
    public static Connection getCon(){
        return con;
    }
    public static int updateData(String dmlQuery)
    {
     try{
         Statement st = con.createStatement();
         int ur = st.executeUpdate(dmlQuery);
         return ur;
     }
     catch(Exception e){
         System.out.println("UPDATE ERROR: "+e.getMessage());
         return -1;
     }
    }
    
    public static ResultSet selectData(String projectionQuery)
    {
        try{
         Statement st = con.createStatement();
         ResultSet rs = st.executeQuery(projectionQuery);
         return rs;
     }
     catch(Exception e){
         System.out.println("UPDATE ERROR: "+e.getMessage());
         return null;
     }
    }

    static ResultSet createStatement(String q) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}