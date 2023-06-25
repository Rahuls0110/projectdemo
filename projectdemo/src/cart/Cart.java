package cart;

import java.util.ArrayList;
import java.util.List;

public class Cart {
    private List<Cartitem> items;

    public Cart() {
        items = new ArrayList<>();
    }

    public List<Cartitem> getItems() {
        return items;
    }

    public void setItems(List<Cartitem> items) {
        this.items = items;
    }

    public void addItem(Cartitem item) {
        // Check if the item already exists in the cart
        for (Cartitem cartItem : items) {
            if (cartItem.getProduct().getId().equals(item.getProduct().getId())) {
                // If it exists, update the quantity
                cartItem.setQuantity(cartItem.getQuantity() + item.getQuantity());
                return;
            }
        }

        // If it doesn't exist, add it to the cart
        items.add(item);
    }

    public void removeItem(Cartitem item) {
        items.remove(item);
    }

    public double getTotalPrice() {
        double total = 0.0;
        for (Cartitem item : items) {
            total += item.getTotalPrice();
        }
        return total;
    }
}
