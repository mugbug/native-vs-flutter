package dev.rafaelsermenho.xmldemo

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import kotlinx.android.synthetic.main.activity_main.*

class NewPageActivity: AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_new_page)

        supportActionBar?.setDisplayHomeAsUpEnabled(true)

        if (intent.hasExtra("NAME")) {
            textView.text = String.format(getString(R.string.hello_name), intent.getStringExtra("NAME"))
        }
    }


}