package com.example.keli5466.project3;


import android.app.Activity;
import android.app.ListActivity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListView;

public class bandCat extends ListActivity {
private String bandtype;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        //setContentView(R.layout.activity_band_cat);
        Intent i = getIntent();
        bandtype = i.getStringExtra("bandtype");
        ListView listBands = getListView();
        //ListView listBands = (ListView) findViewById(R.id.list);
        ArrayAdapter<Bands> listAdapter;
        switch (bandtype) {
            case "Rock":
                listAdapter = new ArrayAdapter<Bands>(this, android.R.layout.simple_list_item_1, Bands.rock);
                break;
            case "Pop":
                listAdapter = new ArrayAdapter<Bands>(this, android.R.layout.simple_list_item_1, Bands.pop);
                break;
            case "HipHop/Reggea/Electronic":
                listAdapter = new ArrayAdapter<Bands>(this, android.R.layout.simple_list_item_1, Bands.hiphop);
                break;
            case "Classic Rock":
                listAdapter = new ArrayAdapter<Bands>(this, android.R.layout.simple_list_item_1, Bands.classic);
                break;
            default:
                listAdapter = new ArrayAdapter<Bands>(this, android.R.layout.simple_list_item_1, Bands.rock);
        }
        listBands.setAdapter(listAdapter);
        }

   @Override
    public void onListItemClick(ListView listView, View view, int position,long id){
        //String bandtype = (String) listView.getItemAtPosition(position);
        Intent intent = new Intent(bandCat.this,BandAct.class);
        intent.putExtra("bandid", (int)id);
        intent.putExtra("bandtype", bandtype);


        startActivity(intent);
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

