#!/usr/bin/env sh

APP_NAME="Gradle"
APP_BASE_NAME=`basename "$0"`

MAX_FD="maximum"

warn () {
    echo "$*"
}

die () {
    echo
    echo "$*"
    echo
    exit 1
}

CLASSPATH=$APP_HOME/gradle/wrapper/gradle-wrapper.jar

DEFAULT_JVM_OPTS='"-Xmx2048m" "-Xms512m"'

if [ -n "$JAVA_OPTS" ] ; then
    DEFAULT_JVM_OPTS="$DEFAULT_JVM_OPTS $JAVA_OPTS"
fi

if [ -n "$GRADLE_OPTS" ] ; then
    GRADLE_OPTS="$GRADLE_OPTS $DEFAULT_JVM_OPTS"
else
    GRADLE_OPTS="$DEFAULT_JVM_OPTS"
fi

if command -v gradle >/dev/null 2>&1 ; then
    exec gradle "$@"
fi

die "ERROR: Could not find gradle distribution or wrapper jar."
