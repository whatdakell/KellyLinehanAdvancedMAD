package com.example.keli5466.lab10;

/**
 * Created by keli5466 on 4/27/16.
 */

import android.content.Context;
import android.content.SharedPreferences;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

public class Hero {
    private String universe;
    private ArrayList<String> superheroes = new ArrayList<>();

    private Hero(String univ, ArrayList<String> heroes){
        this.universe = univ;
        this.superheroes = new ArrayList<String>(heroes);
    }

    public static final Hero[] heroes = {
            new Hero("Nickelodeon", new ArrayList<String>()),
            new Hero("Disney", new ArrayList<String>())

    };

    public String getUniverse(){
        return universe;
    }

    public ArrayList<String> getSuperheroes(){
        return superheroes;
    }

    public String toString(){
        return this.universe;
    }

    public void storeHeroes(Context context, long universeId){
        SharedPreferences sharedPrefs = context.getSharedPreferences("Superheroes", Context.MODE_PRIVATE);
        SharedPreferences.Editor editor = sharedPrefs.edit();
        Set<String> set = new HashSet<String>();
        set.addAll(heroes[(int) universeId].getSuperheroes());
        editor.putStringSet(heroes[(int) universeId].getUniverse(), set);
        editor.commit();
    }

    public void loadHeroes(Context context, int universeId){
        SharedPreferences sharedPrefs = context.getSharedPreferences("Superheroes", Context.MODE_PRIVATE);
        SharedPreferences.Editor editor = sharedPrefs.edit();
        Set<String> set =sharedPrefs.getStringSet(heroes[universeId].getUniverse(), null);
        if (set != null){
            Hero.heroes[universeId].superheroes.addAll(set);
        }
        else {
            switch (universeId) {
                case 0:
                    Hero.heroes[0].superheroes.addAll(Arrays.asList("SpongeBob", "Rugrats", "RocketPower", "CatDog", "All That", "The AmandaShow"));
                    break;
                case 1:
                    Hero.heroes[1].superheroes.addAll(Arrays.asList("Lizzy McGuire", "Even Stevens", "Kim Possible", "That's So Raven", "Hannah Montana", "So Weird"));
                    break;
                default:
                    break;
            }
        }
    }
}
