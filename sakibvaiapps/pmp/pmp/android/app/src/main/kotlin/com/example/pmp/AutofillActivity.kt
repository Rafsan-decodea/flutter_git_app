package com.example.pmp

import io.flutter.embedding.android.FlutterFragmentActivity
import co.infinum.goldfinger.Goldfinger
import android.os.Bundle

class AutofillActivity: FlutterFragmentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        Goldfinger.Builder(this).build()
    }

    override fun getDartEntrypointFunctionName(): String {
        return "autofillEntryPoint"
    }
}
