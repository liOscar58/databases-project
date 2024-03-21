package com.demo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class HotelService {
    public List<Hotel> getHotels() throws Exception {

        // sql query
        String sql = "SELECT * FROM hotel";
        // connection object
        ConnectionDB db = new ConnectionDB();

        // data structure to keep all Hotels retrieved from database
        List<Hotel> hotels = new ArrayList<Hotel>();

        // try connect to database, catch any exceptions
        try (Connection con = db.getConnection()) {
            // prepare statement
            PreparedStatement stmt = con.prepareStatement(sql);

            // get the results from executing the query
            ResultSet rs = stmt.executeQuery();

            // iterate through the result set
            while (rs.next()) {
                // create new Hotel object
                Hotel hotel = new Hotel(
                        rs.getInt("id"),
                        rs.getInt("hotel_chain_id"),
                        rs.getString("name"),
                        rs.getInt("category"),
                        rs.getInt("number_of_rooms"),
                        rs.getString("address"),
                        rs.getString("contact_email")
                );

                // append Hotel in Hotels list
                hotels.add(hotel);
            }

            // close result set
            rs.close();
            // close statement
            stmt.close();
            con.close();
            db.close();

            // return result
            return hotels;
        } catch (Exception e) {
            throw new Exception(e.getMessage());
        }
    }
}