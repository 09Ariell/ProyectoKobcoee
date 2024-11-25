/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logica;

/**
 *
 * @author tobar
 */

import logica.User;
import java.util.ArrayList;
import java.util.List;

public class UserManager {
    private static List<User> users = new ArrayList<>();

    static {
        // Usuarios de ejemplo
        users.add(new User(1, "Admin", "admin@example.com", "1234567890", "admin", "admin123"));
        users.add(new User(2, "John Doe", "user@example.com", "0987654321", "user", "user123"));
    }

    public static User authenticate(String username, String password) {
        for (User user : users) {
            if (user.getName().equals(username) && user.getPassword().equals(password)) {
                return user;
            }
        }
        return null; 
    }
    public static boolean isValidUser(String username, String password) {
        for (User user : users) {
            if (user.getName().equals(username) && user.getPassword().equals(password)) {
                return true; 
            }
        }
        return false; 
    }
}
