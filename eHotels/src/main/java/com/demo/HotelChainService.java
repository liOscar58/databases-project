package com.demo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class HotelChainService {
    public List<HotelChain> getHotelChains() throws Exception {

        // sql query
        String sql = "SELECT * FROM hotel_chain";
        // connection object
        ConnectionDB db = new ConnectionDB();

        // data structure to keep all hotelChains retrieved from database
        List<HotelChain> hotelChains = new ArrayList<HotelChain>();

        // try connect to database, catch any exceptions
        try (Connection con = db.getConnection()) {
            // prepare statement
            PreparedStatement stmt = con.prepareStatement(sql);

            // get the results from executing the query
            ResultSet rs = stmt.executeQuery();

            // iterate through the result set
            while (rs.next()) {
                // create new hotelChain object
                HotelChain hotelChain = new HotelChain(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("address_of_central_office"),
                        rs.getInt("number_of_hotels")
                );

                // append hotelChain in hotelChains list
                hotelChains.add(hotelChain);
            }

            // close result set
            rs.close();
            // close statement
            stmt.close();
            con.close();
            db.close();

            // return result
            return hotelChains;
        } catch (Exception e) {
            throw new Exception(e.getMessage());
        }
    }
}