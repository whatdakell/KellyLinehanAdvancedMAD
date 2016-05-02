package com.example.keli5466.project3;

import android.app.ActionBar;
import android.os.Bundle;
import android.app.Activity;
import android.webkit.WebView;

public class ListenAct extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_listen);

        ActionBar actionBar = getActionBar();
        actionBar.setDisplayHomeAsUpEnabled(true);
        WebView browser = (WebView) findViewById(R.id.webView);
        browser.loadUrl("https://www.youtube.com/channel/UC-9-kyTW8ZkZNDHQJ6FgpwQ");
    }

}
