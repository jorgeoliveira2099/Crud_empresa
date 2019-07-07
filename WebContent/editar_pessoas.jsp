<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@page import="crud_empresa.ConnectionFactory"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ include file="header.jsp" %>
        <p><br/></p>
        <div class="row">
            <div class="col-md-6"><h3>Editar Pessoas</h3></div>
            <div class="col-md-6 text-right">
               <a href="index.jsp" class="btn btn-info">Voltar para o Início</a>
                
            </div>
        </div>
        <p></p>
        <table class="table table-hover table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                     <th>Email</th>
                    <th>DDD</th>
                    <th>Telefone</th>
                  <th>Tipo</th>
                    
                </tr>
            </thead>
            <tbody>
                <%
                String Host = "jdbc:mysql://localhost:3306/user";
                Connection connection = null;
                Statement statement = null;
                ResultSet rs = null;
                Class.forName("com.mysql.jdbc.Driver");
                connection = DriverManager.getConnection(Host, "admin", "admin4321");
                statement = connection.createStatement();
                String Data = "select * from pessoas";
                rs = statement.executeQuery(Data);
                while (rs.next()) {
                %>
                <tr>
                    <td><%=rs.getString("id")%></td>
                    <td><%=rs.getString("nome")%></td>                    
                    <td><%=rs.getString("email")%></td>
                    <td><%=rs.getString("ddd")%></td>
                    <td><%=rs.getString("telefone")%></td>
                    <td><%=rs.getString("tipo")%></td>
                  
                    <td class="text-center" width="180">
                        <a href='edit.jsp?u=<%=rs.getString("id")%>' class="btn btn-warning">Editar</a>
                        
                    </td>
                </tr>
                <%
                }
                %>
            </tbody>
        </table>
<%@ include file="footer.jsp" %>    
</html>