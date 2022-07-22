#include <android/log.h>
#include <android_native_app_glue.h>

#define  LOG_TAG    "de.beatbrot.screenshotassistant"

#define  LOGD(...)  __android_log_print(ANDROID_LOG_DEBUG, LOG_TAG, __VA_ARGS__)
#define  LOGE(...)  __android_log_print(ANDROID_LOG_ERROR, LOG_TAG, __VA_ARGS__)

extern "C" void android_main(struct android_app* app)
{
    LOGD("C++ Loaded Successfully!");
}