if [ -n "$ANDROID_NDK" ]; then
    export NDK=${ANDROID_NDK}
elif [ -n "$ANDROID_NDK_HOME" ]; then
    export NDK=${ANDROID_NDK_HOME}
elif [ -n "$ANDROID_NDK_HOME" ]; then
    export NDK=${ANDROID_NDK_HOME}
else
    export NDK=~/android-ndk-r10e
fi

if [ ! -d "$NDK" ]; then
    echo "Please set ANDROID_NDK environment to the root of NDK."
    exit 1
fi
"$NDK"/ndk-build NDK_PROJECT_PATH=./ $@
