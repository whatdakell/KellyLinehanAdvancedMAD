package com.example.keli5466.lab9;

/**
 * Created by keli5466 on 4/30/16.
 */
public class Bulb {
    private String name;
    private int imageResourceID;

    //constructor
    private Bulb(String newname, int newID){
        this.name = newname;
        this.imageResourceID = newID;
    }

    public static final Bulb[] cakes = {
            new Bulb("ShortCake", R.drawable.shortc),
            new Bulb("Coffee", R.drawable.coffeecake),
            new Bulb("CheeseCake", R.drawable.cheesecake),
            new Bulb("Bunt", R.drawable.bunt),
            new Bulb("Angel Food", R.drawable.angelfood)
    };

    public static final Bulb[] cookies = {
            new Bulb("Sugar", R.drawable.sugar),
            new Bulb("Chocolate Chip", R.drawable.cc),
            new Bulb("GingerBread", R.drawable.ginger),
            new Bulb("Macroons", R.drawable.mac),
            new Bulb("OatMeal", R.drawable.oatmeal)
    };

    public static final Bulb[] pies = {
            new Bulb("Pumpkin", R.drawable.pumpkin),
            new Bulb("Cherry", R.drawable.cherry),
            new Bulb("Blueberry", R.drawable.blue),
            new Bulb("Lemon", R.drawable.lemon),
            new Bulb("Key Lime", R.drawable.keylime)
    };

    public String getName(){
        return name;
    }

    public int getImageResourceID(){
        return imageResourceID;
    }

    //the string representation of a tulip is its name
    public String toString(){
        return this.name;
    }

}
