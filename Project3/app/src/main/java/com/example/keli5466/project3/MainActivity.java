package com.example.keli5466.project3;


import android.app.Activity;
import android.app.ListActivity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.TextView;
import android.R.string;



public class MainActivity extends Activity {
    ListView list;
    Integer[] imageId = {
            R.drawable.electric,
            R.drawable.popmic,
            R.drawable.classic,
            R.drawable.boomb,
            R.drawable.eletric,
            R.drawable.regg,


    };

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        String[] web = getResources().getStringArray(R.array.Band_types);
//        Resources res = getResources();
//        String plantArray=getResources().obtainTypedArray(R.array.Band_types);
//        String[] bnames = R.getStringArray(R.array.Band_types);
        setContentView(R.layout.activity_main);
        costumeList adapter = new
                costumeList(MainActivity.this, web, imageId);
        ListView list=(ListView)findViewById(R.id.list);
        list.setAdapter(adapter);
        AdapterView.OnItemClickListener itemClickListener = new AdapterView.OnItemClickListener(){
            public void onItemClick(AdapterView<?> listView, View view, int postition, long id){
                String bandtype = (String) listView.getItemAtPosition(postition);
                Intent intent = new Intent(MainActivity.this,bandCat.class);
                intent.putExtra("bandtype",bandtype);
                startActivity(intent);
            }
        };
//        ListView listView = (ListView) findViewById(R.id.list);
        list.setOnItemClickListener(itemClickListener);
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
