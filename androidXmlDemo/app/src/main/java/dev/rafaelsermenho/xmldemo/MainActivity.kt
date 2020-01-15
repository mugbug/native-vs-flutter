package dev.rafaelsermenho.xmldemo

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import kotlinx.android.synthetic.main.activity_main.*

class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        button.setOnClickListener {
            var name = editText.text.toString()
            val intent = Intent(this, NewPageActivity::class.java)
            intent.putExtra("NAME", name)
            startActivity(intent)
        }
    }
}
