<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%@page import="crud_empresa.ConnectionFactory"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ include file="header.jsp" %>
        <p><br/></p>
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="row">
                    <div class="col-md-6"><h3>Adicionar Nova Pessoa</h3></div>
                    <div class="col-md-6 text-right">
                        <a href="index.jsp" class="btn btn-info">Voltar ao Inicio</a>
                    </div>
                </div>
                <p></p>
                <form action="" method="post">
                    <div class="form-group">
                        <label for="myname">Nome</label>
                        <input type="text" class="form-control" id="myname" name="nm" placeholder="Digite seu Nome">
                    </div>
                 
                   <div class="form-group">
                        <label for="myemail">Senha</label>
                        <input type="password" class="form-control" id="myemail" name="passwd" placeholder="Digite sua senha">
                    </div>
                    
                 
                    <div class="form-group">
                        <label for="myemail">Email</label>
                        <input type="email" class="form-control" id="myemail" name="em" placeholder="Digite seu E-mail">
                    </div>
                    
                 <div class="form-group">
                        <label for="mynumber">DDD</label>
                        <input type="tel" class="form-control" id="mynumber" name="dd" placeholder="Digite o DDD">
                    </div>
                    
                    <div class="form-group">
                        <label for="mynumber">Telefone</label>
                        <input type="tel" class="form-control" id="mynumber" name="pn" placeholder="Digite seu Telefone">
                    </div>
                    <div class="form-group">
                        <label for="myaddress">Tipo</label>
                        <input type="tel" class="form-control" id="mynumber" name="ad" placeholder="Digite o Tipo">
                    </div>
                    
                    
                  
                    
                    
                    <button type="submit" class="btn btn-primary">Enviar</button>
                </form>
            </div>
        </div>
<%@ include file="footer.jsp" %>    
</html>
<%
String a=request.getParameter("nm");
String b=request.getParameter("passwd");
String c=request.getParameter("em");
String d=request.getParameter("dd");
String e=request.getParameter("pn");
String f=request.getParameter("ad");
String url="jdbc:mysql://localhost:3306/user";
Connection conn=null;
PreparedStatement ps=null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
if(a!=null && b!=null && c!=null && d!=null && e!=null && f!=null){
    try{
    	
    	
    	
        conn=DriverManager.getConnection(url,"admin","admin4321");
        String query="Insert into pessoas(nome,senha,email,ddd, telefone,tipo) values(?,?,?,?)";
        ps=conn.prepareStatement(query);
        ps.setString(1,a);
        ps.setString(2,b);
        ps.setString(3,c);
        ps.setString(4,d);
        ps.setString(5,e);
        ps.setString(6,f);
        ps.executeUpdate();
        response.sendRedirect("index.jsp");
    }catch(Exception ex){
        out.println("Your Connection Failed");
    }
}
%>