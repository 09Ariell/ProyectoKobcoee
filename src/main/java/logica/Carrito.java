/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/File.java to edit this template
 */
package logica;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author labICI01
 */
// Carrito.java


public class Carrito {
    private Map<Ropa, Integer> ropas;

    public Carrito() {
        this.ropas = new HashMap<>();
    }

     public boolean agregarProducto(Ropa ropa) {
        if (ropa.getStock() > 0) {  
            ropas.put(ropa, ropas.getOrDefault(ropa, 0) + 1);  
            ropa.setStock(ropa.getStock() - 1);  
            return true;
        }
        return false;  
    }

    public void eliminarProducto(Ropa ropa) {
        if (ropas.containsKey(ropa)) {
            int cantidad = ropas.get(ropa);
            if (cantidad > 1) {
                ropas.put(ropa, cantidad - 1); 
            } else {
                ropas.remove(ropa); 
            }

            ropa.setStock(ropa.getStock() + cantidad);
            RopaManager.actualizarProducto(ropa);
        }
    }

    public Map<Ropa, Integer> getRopas() {
        return ropas;
    }

    public int getCantidad(Ropa ropa) {
        return ropas.getOrDefault(ropa, 0);
    }
}