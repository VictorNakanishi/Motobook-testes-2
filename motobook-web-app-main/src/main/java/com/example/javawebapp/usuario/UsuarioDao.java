package com.example.javawebapp.usuario;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;

import com.example.javawebapp.endereco.Endereco;
import com.example.javawebapp.endereco.EnderecoDao;
import com.example.javawebapp.db.Conexao;

import at.favre.lib.crypto.bcrypt.BCrypt;

// DAO = Data Access Object
public class UsuarioDao {
    public static Usuario cadastrar(String nome, String email, String senha, String telefone, String cpf, String nomeEndereco, String cidade, String cep, String complemento) {
        Endereco endereco = EnderecoDao.cadastrar(nomeEndereco, cidade, cep, complemento);
        Usuario usuario = null;
        String hashSenha = BCrypt.withDefaults().hashToString(12, senha.toCharArray());
        String sql = "INSERT INTO usuarios (nome, email, senha, telefone, cpf, foto, verificar_email, endereco_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?);";

        
        try (
            Connection connection = Conexao.getConnection();
            PreparedStatement statement = connection
                .prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
        ) {
            statement.setString(1, nome);
            statement.setString(2, email);
            statement.setString(3, hashSenha);
            statement.setString(4, telefone);
            statement.setString(5, cpf);
            statement.setString(6, null);
            statement.setBoolean(7, false);
            statement.setInt(8, endereco.getId());
            
            statement.executeUpdate();

            ResultSet rs = statement.getGeneratedKeys();

            if(rs.next()) {
                usuario = new Usuario(rs.getInt(1), nome, email, hashSenha, telefone, cpf, null, false, endereco);
            }

            rs.close();

            return usuario;  
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static List<Usuario> listarTodos() {
        String sql = "SELECT * FROM usuarios;";
        List<Usuario> usuarios = new ArrayList<>();

        try (
            Connection connection = Conexao.getConnection();
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery(sql);
        ) {
            while(rs.next()) {
                usuarios.add(
                    new Usuario(
                        rs.getInt("id"), 
                        rs.getString("nome"), 
                        rs.getString("email"), 
                        rs.getString("senha"),
                        rs.getString("telefone"),
                        rs.getString("cpf"),
                        rs.getString("foto"),
                        rs.getBoolean("verificar_email"),
                        new Endereco(
                            rs.getInt("id"),
                            rs.getString("nomeEndereco"),
                            rs.getString("cidade"),
                            rs.getString("cep"),
                            rs.getString("complemento")
                        )
                    )
                );
            }
        } catch (Exception e) {
            e.printStackTrace();
            return usuarios;
        } 

        return usuarios;
        
    }

    public static Usuario buscarPorId(Integer id) {
        String sql = "SELECT * FROM usuarios WHERE id = ?;";

        try (
            Connection connection = Conexao.getConnection();
            PreparedStatement statement = connection.prepareStatement(sql);
        ) {
            statement.setInt(1, id);
            ResultSet rs = statement.executeQuery();

            if (rs.next()) {
                return new Usuario(
                        rs.getInt("id"), 
                        rs.getString("nome"), 
                        rs.getString("email"), 
                        rs.getString("senha"),
                        rs.getString("telefone"),
                        rs.getString("cpf"),
                        rs.getString("foto"),
                        rs.getBoolean("verificar_email"),
                        new Endereco(
                            rs.getInt("id"),
                            rs.getString("nomeEndereco"),
                            rs.getString("cidade"),
                            rs.getString("cep"),
                            rs.getString("complemento")
                        )
                    );
            }

            rs.close();

        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }

        return null;
    }

    public static Usuario buscarPorEmail(String email) {
        String sql = "SELECT * FROM usuarios WHERE email = ?;";

        try (
            Connection connection = Conexao.getConnection();
            PreparedStatement statement = connection.prepareStatement(sql);
        ) {
            statement.setString(1, email);
            ResultSet rs = statement.executeQuery();

            if (rs.next()) {
                return new Usuario(
                        rs.getInt("id"), 
                        rs.getString("nome"), 
                        rs.getString("email"), 
                        rs.getString("senha"),
                        rs.getString("telefone"),
                        rs.getString("cpf"),
                        rs.getString("foto"),
                        rs.getBoolean("verificar_email"),
                        new Endereco(
                            rs.getInt("id"),
                            rs.getString("nomeEndereco"),
                            rs.getString("cidade"),
                            rs.getString("cep"),
                            rs.getString("complemento")
                        )
                    );
            }

            rs.close();

        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }

        return null;
    }

    public static Boolean login(String email, String senha) {
        Usuario usuario = buscarPorEmail(email);
        if (usuario != null) {
            BCrypt.Result result = BCrypt.verifyer().verify(senha.toCharArray(), usuario.getSenha());
            return result.verified;
        }
        return false;
    }

    public static Boolean existeComEmail(String email) {
        return buscarPorEmail(email) != null;
    }
}
