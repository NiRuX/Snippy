package de.beatbrot.screenshotassistant

import android.app.NativeActivity
import android.content.Context
import android.content.Intent
import android.content.res.Configuration
import android.os.Bundle
import android.util.Log

class MainNativeActivity : NativeActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        Log.d("de.beatbrot.screenshotassistant", "TEST?")
        instance = this
        super.onCreate(savedInstanceState)

        startActivity(Intent(baseContext, MainActivity::class.java))
    }

    override fun onConfigurationChanged(newConfig: Configuration) {
        super.onConfigurationChanged(newConfig)
        //Log.i("worldofhello", "HELLO!");
        //screenResized();
    }

    override fun onWindowFocusChanged(hasFocus: Boolean) {
        super.onWindowFocusChanged(hasFocus)
    }

    public override fun onResume() {
        super.onResume()
    }

    public override fun onPause() {
        super.onPause()
    }

    public override fun onDestroy() {
        super.onDestroy()
    }

    companion object {
        var instance: MainNativeActivity? = null
        val context: Context?
            get() = instance
    }
}
