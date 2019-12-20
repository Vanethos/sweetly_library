package com.vanethos.flutter_android_embedding

/**
 * Created by goncalopalma on 2019-12-20
 * TODO: Class header comment
 */

interface FlutterSweetlyCallback {
    /**
     * Invoked when the value is available.
     * @param value The value.
     */
    fun onReceiveValue(value: Sweet)
};