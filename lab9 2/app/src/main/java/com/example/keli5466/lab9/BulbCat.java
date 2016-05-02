package com.example.keli5466.lab9;


import android.app.ListActivity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.ListView;

public class BulbCat extends ListActivity {

    private String bulbtype;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Intent i = getIntent();
        bulbtype = i.getStringExtra("bulbtype");

        //get the list view
        ListView listBulbs = getListView();

        //define an array adapter
        ArrayAdapter<Bulb> listAdapter;

        //initialize the array adapter with the right list of bulbs
        switch (bulbtype){
            case "Cakes":
                listAdapter = new ArrayAdapter<Bulb>(this, android.R.layout.simple_list_item_1, Bulb.cakes);
                break;
            case "Cookies":
                listAdapter = new ArrayAdapter<Bulb>(this, android.R.layout.simple_list_item_1, Bulb.cookies);
                break;
            case "Pies":
                listAdapter = new ArrayAdapter<Bulb>(this, android.R.layout.simple_list_item_1, Bulb.pies);
                break;
            default: listAdapter = new ArrayAdapter<Bulb>(this, android.R.layout.simple_list_item_1, Bulb.cakes);
        }

        //set the array adapter on the list view
        listBulbs.setAdapter(listAdapter);
    }

    @Override
    public void onListItemClick(ListView listView, View view, int position, long id){
        Intent intent = new Intent(BulbCat.this, BulbAct.class);
        intent.putExtra("bulbid", (int) id);
        intent.putExtra("bulbtype", bulbtype);
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
                Intent intent = new Intent(this, order.class);
                startActivity(intent);
                return true;
            default:
                return super.onOptionsItemSelected(item);
        }
    }
}
