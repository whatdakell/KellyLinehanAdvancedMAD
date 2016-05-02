package com.example.keli5466.lab10;


import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;

public class detial extends AppCompatActivity implements HeroDetial.ButtonClickListener {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_detial);

        HeroDetial heroDetailFragment = (HeroDetial) getFragmentManager().findFragmentById(R.id.fragment_container);
        int universeId = (int) getIntent().getExtras().get("id");
        heroDetailFragment.setUniverse(universeId);
    }

    @Override public void addheroclicked(View view){
        HeroDetial fragment = (HeroDetial)getFragmentManager().findFragmentById(R.id.fragment_container);
        fragment.addhero();
    }
}
