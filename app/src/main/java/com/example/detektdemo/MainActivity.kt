package com.example.detektdemo

import android.os.Bundle
import android.util.Log
import androidx.appcompat.app.AppCompatActivity

/** documentation */
class MainActivity : AppCompatActivity() {

    companion object {
        const val SOME_NUMBER = 500
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        doSomething1()
    }

    fun doSomething1() {
        Log.d("Demo", "this is just a log")
    }
}
