package crud_empresa;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory {
    public Connection getConexao(){
        try {
            return DriverManager.getConnection("jdbc:mysql://localhost:3306/user", "admin", "admin4321");
        } 
        catch (Exception erro){
            throw new RuntimeException("Erro 1: " + erro );
        }
    }

}

