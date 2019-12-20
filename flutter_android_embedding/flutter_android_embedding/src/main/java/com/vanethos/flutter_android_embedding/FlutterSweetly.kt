package com.vanethos.flutter_android_embedding

import android.app.Activity
import android.app.Application
import android.content.Intent
import androidx.core.content.ContextCompat.startActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.FlutterEngineCache
import io.flutter.embedding.engine.dart.DartExecutor

class FlutterSweetly private constructor() {
    companion object {
        val instance = FlutterSweetly()
    }

    private lateinit var callback : FlutterSweetlyCallback
    
    fun initialize(context: Application) {
        // Instantiate a FlutterEngine.
        var flutterEngine = FlutterEngine(context)

        // Start executing Dart code to pre-warm the FlutterEngine.
        flutterEngine.dartExecutor.executeDartEntrypoint(
            DartExecutor.DartEntrypoint.createDefault()
        )

        // Cache the FlutterEngine to be used by FlutterActivity.
        FlutterEngineCache
            .getInstance()
            .put("my_engine_id", flutterEngine)
    }
    
    fun showActivity(context : Activity, callback : FlutterSweetlyCallback) {
        this.callback = callback
        val defaultFlutter = Intent(context, FlutterSweetActivity::class.java)
        startActivity(context, defaultFlutter, null)
    }
    
    internal fun finishActivity(value : Sweet) {
        callback.onReceiveValue(value)
    }
}