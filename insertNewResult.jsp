<%@ page import="project.ConnectionProvider" %>
<%@ page import="java.sql.*" %>
<%
String rollNo = request.getParameter("rollNo");
String s1 = request.getParameter("s1");
String s2 = request.getParameter("s2");
String s3 = request.getParameter("s3");
String s4 = request.getParameter("s4");
String s5 = request.getParameter("s5");
String s6 = request.getParameter("s6");
String s7 = request.getParameter("s7");

try {
    Connection con = ConnectionProvider.getCon();
    Statement st = con.createStatement();

    int subject1 = (s1 != null && !s1.isEmpty()) ? Integer.parseInt(s1) : 0;
    int subject2 = (s2 != null && !s2.isEmpty()) ? Integer.parseInt(s2) : 0;
    int subject3 = (s3 != null && !s3.isEmpty()) ? Integer.parseInt(s3) : 0;
    int subject4 = (s4 != null && !s4.isEmpty()) ? Integer.parseInt(s4) : 0;
    int subject5 = (s5 != null && !s5.isEmpty()) ? Integer.parseInt(s5) : 0;
    int subject6 = (s6 != null && !s6.isEmpty()) ? Integer.parseInt(s6) : 0;
    int subject7 = (s7 != null && !s7.isEmpty()) ? Integer.parseInt(s7) : 0;
 
    st.executeUpdate("INSERT INTO result VALUES ('" + rollNo + "'," + subject1 + "," + subject2 + "," + subject3 + "," + subject4 + "," + subject5 + "," + subject6 + "," + subject7 + ")");
    response.sendRedirect("adminHome.jsp");
} catch (Exception e) {
    out.println(e);
}
%>
