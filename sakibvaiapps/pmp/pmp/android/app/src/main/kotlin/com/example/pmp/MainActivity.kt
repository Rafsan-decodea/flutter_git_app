package com.example.pmp

import co.infinum.goldfinger.Goldfinger
import android.os.Bundle
import io.flutter.embedding.android.FlutterFragmentActivity

class MainActivity: FlutterFragmentActivity() {
override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        Goldfinger.Builder(this).build()
    }
}