/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DB;

    import java.sql.*;

/**
 *
 * @author Galih A
 */
public class DataBaseConnection {



        private static String jdbcURL = "jdbc:oracle:thin:@localhost:1521:xe";
//    private String jdbcURL = "jdbc:oracle:thin:@172.23.9.185:1521:orcl";
        private String user = "HR";
        private String password = "nowicandomore06";
        private Connection connection = null;

        public DataBaseConnection() {
            try {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                connection = DriverManager.getConnection(jdbcURL, user, password);
                System.out.println("Connection SUCCESS!!");
            } catch (Exception ex) {
                System.out.println("Connection FAILED!!");
                System.out.println("message: " + ex.getMessage());
            }
        }

        public boolean isConnected() {
            if (connection != null) {
                return true;
            } else {
                return false;
            }
        }

        public boolean getClosed() {
            if (isConnected()) {
                try {
                    connection.close();
                    connection = null;
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
                return true;
            } else {
                return false;
            }
        }

        public String getJdbcURL() {
            return jdbcURL;
        }

        public void setJdbcURL(String jdbcURL) {
            this.jdbcURL = jdbcURL;
        }

        public String getUser() {
            return user;
        }

        public void setUser(String user) {
            this.user = user;
        }

        public String getPassword() {
            return password;
        }

        public void setPassword(String password) {
            this.password = password;
        }

        public Connection getConnection() {
            return connection;
        }

        public void setConn(Connection connection) {
            this.connection = connection;
        }

        public ResultSet login(String nama,
                int NIM, int TSKS) throws SQLException {
            Statement statement = connection.createStatement();
            String query
                    = "SELECT * FROM KRS_2 where Nama_Mahasiswa='"
                    + nama + "'NIM= '" + NIM + "'Total SKS = '"+TSKS+"";
            ResultSet rest = statement.executeQuery(query);
            return rest;
        }

        public int inputData(String nama,int NIM, int TSKS) throws SQLException {
            Statement statement = connection.createStatement();
            String query
                    = "insert into KRS_2 values ('" + nama + "','" + NIM + "','"+TSKS+"',')";
            int rest = statement.executeUpdate(query);
            return rest;
        }


        public int input(String nama,int NIM, int TSKS) throws SQLException {
            Statement statement = connection.createStatement();
            String query
                    = "insert into KRS_2 values ('" + nama + "','" + NIM + "','" + TSKS + "',')";
            int rest = statement.executeUpdate(query);
            return rest;
        }

        public int Cari(String search) throws SQLException {
            Statement statement = connection.createStatement();
            String query
                    = "Select  * from KRS_2 ('" + search + "')";
            int rest = statement.executeUpdate(query);
            return rest;
        }

        public int inputTampil(String Nama_Mahasiswa, int NIM, int Total_SKS) throws SQLException {
            Statement statement = connection.createStatement();
            String query
                    = "insert into KRS_2 values ('" + Nama_Mahasiswa + "','" + NIM + "','" + Total_SKS + "',')";
            int rest = statement.executeUpdate(query);
            return rest;
        }
    }
