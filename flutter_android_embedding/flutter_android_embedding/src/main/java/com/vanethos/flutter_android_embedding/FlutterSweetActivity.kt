package com.vanethos.flutter_android_embedding

import android.content.Context
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.FlutterEngineCache
import io.flutter.plugin.common.MethodChannel


class FlutterSweetActivity : FlutterActivity() {
    override fun provideFlutterEngine(context: Context): FlutterEngine? {
        val engine = FlutterEngineCache.getInstance().get("my_engine_id")!!
        MethodChannel(
            engine.dartExecutor,
            "com.vanethos.sweetly/flutter"
        ).setMethodCallHandler { call, _ ->
            when (call.method) {
                "goToDetail" -> {
                    FlutterSweetly.instance.finishActivity(
                        Sweet(
                            name = call.argument<String>("name")!!,
                            image = call.argument<String>("image")!!,
                            country = call.argument<String>("country")!!
                        )
                    )
                    finish()
                }
            }
        }

        return engine
    }
}