#include <thread>
#include <jni.h>
#include <android/log.h>
#include <android_native_app_glue.h>

#define  LOG_TAG    "de.beatbrot.screenshotassistant"

#define  LOGD(...)  __android_log_print(ANDROID_LOG_DEBUG, LOG_TAG, __VA_ARGS__)
#define  LOGE(...)  __android_log_print(ANDROID_LOG_ERROR, LOG_TAG, __VA_ARGS__)

struct android_app* state;

extern "C"
{
JNIEXPORT void JNICALL Java_de_beatbrot_screenshotassistant_MainActivity_cpp_1test(JNIEnv *env, jobject obj)
{
    LOGD("C++ Test Called Successfully!");
}
}

extern "C" void android_main(struct android_app* app)
{
    LOGD("C++ Loaded Successfully!");
}