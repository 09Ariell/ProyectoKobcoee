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
    private static int idCounter = 10; 

    static {
        productos = new ArrayList<>();
        productos.add(new Ropa("Poleron", "Poleron Prueba", "Polerón", "Azul", "M", "https://indusbord.cl/wp-content/uploads/2022/01/POLERON-CALAFATE-LENGA-BLACK-01.png",1, 1000,20));
        productos.add(new Ropa("Polera", "Polera Prueba", "Polera", "Negro", "L", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXoSj7-aBlbglMsO8u1u7ZQegA5X66fTQxYA&s",2, 2000,13));
        productos.add(new Ropa("Zapatos", "Zapatos Prueba", "Zapatos", "Cafe", "S", "https://www.bestiasxx.com/cdn/shop/products/zapato-hombre-upepo-curry-bestias-116152_1200x.jpg?v=1705510902",3, 3000,11));
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
    
    public static int generarId() {
        return idCounter++;
    }

    public static void agregarProducto(Ropa nuevoProducto) {
        productos.add(nuevoProducto);
    }

    public static void eliminarProducto(int id) {
        productos.removeIf(producto -> producto.getId() == id);
    }

    public static boolean actualizarProducto(Ropa producto) {
    for (int i = 0; i < productos.size(); i++) {
        if (productos.get(i).getId() == producto.getId()) {
            productos.set(i, producto); 
            return true;
        }
    }
    return false; 
    }
    public static void actualizaProducto(Ropa ropa) {
    for (Ropa p : productos) {
        if (p.getId() == ropa.getId()) {
            p.setStock(ropa.getStock());
            break;
        }
    }
}

}