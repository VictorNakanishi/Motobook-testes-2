package com.example.javawebapp.endereco;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;

import com.example.javawebapp.db.Conexao;

// DAO = Data Access Object
public class EnderecoDao {
    public static Endereco cadastrar(String nomeEndereco, String cidade, String cep, String complemento) {
        Endereco endereco = null;
        String sql = "INSERT INTO usuarios (nomeEndereco, cidade, cep, complemento) VALUES (?, ?, ?, ?);";
        
        try (
            Connection connection = Conexao.getConnection();
            PreparedStatement statement = connection
                .prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
        ) {
            statement.setString(1, nomeEndereco);
            statement.setString(2, cidade);
            statement.setString(3, cep);
            statement.setString(4, complemento);
            
            statement.executeUpdate();

            ResultSet rs = statement.getGeneratedKeys();

            if(rs.next()) {
                endereco = new Endereco(rs.getInt(1), nomeEndereco, cidade, cep, complemento);
            }

            rs.close();

            return endereco;  
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static List<Endereco> listarTodos() {
        String sql = "SELECT * FROM enderecos;";
        List<Endereco> enderecos = new ArrayList<>();

        try (
            Connection connection = Conexao.getConnection();
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery(sql);
        ) {
            while(rs.next()) {
                enderecos.add(
                    new Endereco(
                        rs.getInt("id"),
                        rs.getString("nomeEndereco"),
                        rs.getString("cidade"),
                        rs.getString("cep"),
                        rs.getString("complemento")
                    )
                );
            }
        } catch (Exception e) {
            e.printStackTrace();
            return enderecos;
        } 

        return enderecos;
        
    }

    public static Endereco buscarPorId(Integer id) {
        String sql = "SELECT * FROM usuarios WHERE id = ?;";

        try (
            Connection connection = Conexao.getConnection();
            PreparedStatement statement = connection.prepareStatement(sql);
        ) {
            statement.setInt(1, id);
            ResultSet rs = statement.executeQuery();

            if (rs.next()) {
                return new Endereco(
                        rs.getInt("id"),
                        rs.getString("nomeEndereco"),
                        rs.getString("cidade"),
                        rs.getString("cep"),
                        rs.getString("complemento")
                    );
            }

            rs.close();

        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }

        return null;
    }
}

