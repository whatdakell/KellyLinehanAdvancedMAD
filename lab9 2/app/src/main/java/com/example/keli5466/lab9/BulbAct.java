package com.example.keli5466.lab9;


import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.ImageView;
import android.widget.TextView;

public class BulbAct extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_bulb);

        //get bulb data from the intent
        int bulbnum = (Integer)getIntent().getExtras().get("bulbid");
        String type = (String)getIntent().getExtras().get("bulbtype");

        Bulb bulb;

        switch (type){
            case "Cakes":
                bulb = Bulb.cakes[bulbnum];
                break;
            case "Cookies":
                bulb = Bulb.cookies[bulbnum];
                break;
            case "Pies":
                bulb = Bulb.pies[bulbnum];
                break;
            default: bulb = Bulb.pies[bulbnum];
        }


        //populate image
        ImageView bulbImage = (ImageView)findViewById(R.id.bulbImageView);
        bulbImage.setImageResource(bulb.getImageResourceID());

        //populate name
        TextView bulbName = (TextView)findViewById(R.id.bulb_name);
        bulbName.setText(bulb.getName());
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu){
        //inflate menu to add items to the action bar
        getMenuInflater().inflate(R.menu.menu_main, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        //get the ID of the item on the action bar that was clicked
        switch (item.getItemId()){
            case R.id.create_order:
                //start order activity
                Intent intent = new Intent(this, order.class);
                startActivity(intent);
                return true;
            default:
                return super.onOptionsItemSelected(item);
        }
    }
}
