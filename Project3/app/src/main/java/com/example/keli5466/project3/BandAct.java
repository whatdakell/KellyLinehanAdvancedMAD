package com.example.keli5466.project3;


import android.app.Activity;
import android.app.ListActivity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Button;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;


public class BandAct extends Activity {
    private String url;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_band);

        //get bulb data from the intent
        final int bulbnum = (Integer) getIntent().getExtras().get("bandid");
        String type = (String) getIntent().getExtras().get("bandtype");
        String Dtype = (String) getIntent().getExtras().get("bandDes");
//        String bURL = (String) getIntent().getExtras().get("bandURL");

        final Bands bands;

        switch (type) {
            case "Rock":
                bands = Bands.rock[bulbnum];
                break;
            case "Pop":
                bands = Bands.pop[bulbnum];
                break;
            case "Classic Rock":
                bands = Bands.classic[bulbnum];
                break;
            case "HipHop":
                bands = Bands.hiphop[bulbnum];
                break;
            case "Electronic":
                bands = Bands.electronic[bulbnum];
                break;
            case "Reggae":
                bands = Bands.reggae[bulbnum];
                break;
            default:
                bands = Bands.reggae[bulbnum];
        }


        //populate image
        ImageView bulbImage = (ImageView) findViewById(R.id.bulbImageView);
        bulbImage.setImageResource(bands.getImageResourceID());

        //populate name
        TextView bulbName = (TextView) findViewById(R.id.bulb_name);
        bulbName.setText(bands.getName());

        TextView BandDes = (TextView) findViewById(R.id.band_des);
        BandDes.setText(bands.getDes());
//
//        Button btn1 = (Button)findViewById(R.id.button);
//        final String url = bands.getURL();
//
//
//
//        btn1.setOnClickListener(new View.OnClickListener() {
//            public void onClick(View v) {
//                Intent intent=new Intent(BandAct.this,Wiki.class);
//                intent.putExtra("bandurl", url);
//                startActivity(intent);
//            }
//        });
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
                Intent intent = new Intent(this, ListenAct.class);
                startActivity(intent);
                return true;
            default:
                return super.onOptionsItemSelected(item);
        }
    }
}
