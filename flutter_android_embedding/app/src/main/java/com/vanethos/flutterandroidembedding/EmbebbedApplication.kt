package com.vanethos.flutterandroidembedding

import android.app.Application
import com.vanethos.flutter_android_embedding.FlutterSweetly

/**
 * Created by goncalopalma on 2019-12-19
 * TODO: Class header comment
 */

class EmbebbedApplication : Application() {
    override fun onCreate() {
        super.onCreate()
        FlutterSweetly.instance.initialize(this)
    }
}