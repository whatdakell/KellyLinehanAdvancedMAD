package com.example.keli5466.lab10;



import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListView;

public class Universe extends Fragment implements AdapterView.OnItemClickListener{

    public Universe() {
    }

    interface UniverseListListener{
        void itemClicked(long id);
    }

    private UniverseListListener listener;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        return inflater.inflate(R.layout.fragment_universe, container, false);
    }

    @Override
    public void onStart(){
        super.onStart();
        View view = getView();
        if (view != null){

            ListView listUniverse = (ListView) view.findViewById(R.id.listView);
            ArrayAdapter<Hero> listAdapter = new ArrayAdapter<Hero>(getContext(), android.R.layout.simple_list_item_1, Hero.heroes);
            listUniverse.setAdapter(listAdapter);
            listUniverse.setOnItemClickListener(this);
        }
    }


    @Override public void onAttach(Context context){
        super.onAttach(context);
        listener = (UniverseListListener) context;
    }

    @Override public void onItemClick(AdapterView<?> parent, View view, int position, long id){
        if (listener != null){
            listener.itemClicked(id);
        }
    }

}
