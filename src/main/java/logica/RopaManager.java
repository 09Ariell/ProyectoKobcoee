/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logica;

/**
 *
 * @author tobar
 */
import java.util.ArrayList;
import java.util.List;

public class RopaManager {
    private static List<Ropa> productos;

    static {
        productos = new ArrayList<>();
        productos.add(new Ropa("Polerones Mexicanos", "Polerones mexicanos de excelente calidad", "Polerón", "Rojo", "M", "img/poleronesmexicanos.png", 1));
        productos.add(new Ropa("Polerones", "Polerones de todas las tallas de excelente calidad", "Polerón", "Azul", "L", "img/polerones.png", 2));
        productos.add(new Ropa("Ropa Deportiva", "Ropa deportiva de amplia variedad y tallas", "Deportivo", "Negro", "S", "img/image.png", 3));
    }

    public static List<Ropa> getProductos() {
        return productos;
    }

    public static Ropa getProductoById(int id) {
        for (Ropa producto : productos) {
            if (producto.getId() == id) {
                return producto;
            }
        }
        return null;
    }
}