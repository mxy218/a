.class final Lcom/android/server/am/ActivityManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "ActivityManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;,
        Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;,
        Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;,
        Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;,
        Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;
    }
.end annotation


# static fields
.field public static final NO_CLASS_ERROR_CODE:Ljava/lang/String; = "Error type 3"

.field private static final SHELL_PACKAGE_NAME:Ljava/lang/String; = "com.android.shell"

.field private static final USER_OPERATION_TIMEOUT_MS:I = 0x1d4c0


# instance fields
.field private mActivityType:I

.field private mAgent:Ljava/lang/String;

.field private mAttachAgentDuringBind:Z

.field private mAutoStop:Z

.field private mDisplayId:I

.field final mDumping:Z

.field final mInterface:Landroid/app/IActivityManager;

.field final mInternal:Lcom/android/server/am/ActivityManagerService;

.field private mIsLockTask:Z

.field private mIsTaskOverlay:Z

.field final mPm:Landroid/content/pm/IPackageManager;

.field private mProfileFile:Ljava/lang/String;

.field private mReceiverPermission:Ljava/lang/String;

.field private mRepeat:I

.field private mSamplingInterval:I

.field private mStartFlags:I

.field private mStopOption:Z

.field private mStreaming:Z

.field private mTaskId:I

.field final mTaskInterface:Landroid/app/IActivityTaskManager;

.field private mUserId:I

.field private mWaitOption:Z

.field private mWindowingMode:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Z)V
    .registers 4

    .line 154
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    .line 132
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    .line 133
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStopOption:Z

    .line 135
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    .line 155
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    .line 156
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    .line 157
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 158
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mPm:Landroid/content/pm/IPackageManager;

    .line 159
    iput-boolean p2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mDumping:Z

    .line 160
    return-void
.end method

.method static synthetic access$076(Lcom/android/server/am/ActivityManagerShellCommand;I)I
    .registers 3

    .line 115
    iget v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    return p1
.end method

.method static synthetic access$1002(Lcom/android/server/am/ActivityManagerShellCommand;I)I
    .registers 2

    .line 115
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z
    .registers 2

    .line 115
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 115
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mReceiverPermission:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/android/server/am/ActivityManagerShellCommand;I)I
    .registers 2

    .line 115
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mDisplayId:I

    return p1
.end method

.method static synthetic access$1302(Lcom/android/server/am/ActivityManagerShellCommand;I)I
    .registers 2

    .line 115
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mWindowingMode:I

    return p1
.end method

.method static synthetic access$1402(Lcom/android/server/am/ActivityManagerShellCommand;I)I
    .registers 2

    .line 115
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mActivityType:I

    return p1
.end method

.method static synthetic access$1502(Lcom/android/server/am/ActivityManagerShellCommand;I)I
    .registers 2

    .line 115
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskId:I

    return p1
.end method

.method static synthetic access$1602(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z
    .registers 2

    .line 115
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsTaskOverlay:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z
    .registers 2

    .line 115
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsLockTask:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 115
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mProfileFile:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z
    .registers 2

    .line 115
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAutoStop:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/server/am/ActivityManagerShellCommand;I)I
    .registers 2

    .line 115
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    return p1
.end method

.method static synthetic access$502(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z
    .registers 2

    .line 115
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/am/ActivityManagerShellCommand;)Ljava/lang/String;
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAgent:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 115
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAgent:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z
    .registers 2

    .line 115
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAttachAgentDuringBind:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/server/am/ActivityManagerShellCommand;I)I
    .registers 2

    .line 115
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    return p1
.end method

.method static synthetic access$902(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z
    .registers 2

    .line 115
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStopOption:Z

    return p1
.end method

.method private static addExtensionsForConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I[ILjava/util/Set;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/microedition/khronos/egl/EGL10;",
            "Ljavax/microedition/khronos/egl/EGLDisplay;",
            "Ljavax/microedition/khronos/egl/EGLConfig;",
            "[I[I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1961
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1962
    invoke-interface {p0, p1, p2, v0, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p4

    .line 1964
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne p4, v0, :cond_b

    .line 1965
    return-void

    .line 1969
    :cond_b
    invoke-interface {p0, p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p2

    .line 1970
    sget-object p3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne p2, p3, :cond_17

    .line 1971
    invoke-interface {p0, p1, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1972
    return-void

    .line 1976
    :cond_17
    invoke-interface {p0, p1, p2, p2, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1979
    const/16 p3, 0x1f03

    invoke-static {p3}, Landroid/opengl/GLES10;->glGetString(I)Ljava/lang/String;

    move-result-object p3

    .line 1980
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 1983
    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    array-length v0, p3

    const/4 v1, 0x0

    :goto_2e
    if-ge v1, v0, :cond_38

    aget-object v2, p3, v1

    .line 1984
    invoke-interface {p5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1983
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 1989
    :cond_38
    sget-object p3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object p5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p0, p1, p3, p5, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1990
    invoke-interface {p0, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 1991
    invoke-interface {p0, p1, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1992
    return-void
.end method

.method private static argToBytes(Ljava/lang/String;)[B
    .registers 2

    .line 1752
    const-string v0, "!"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1753
    const/4 p0, 0x0

    return-object p0

    .line 1755
    :cond_a
    invoke-static {p0}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private bucketNameToBucketValue(Ljava/lang/String;)I
    .registers 5

    .line 2282
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2283
    const-string v1, "ac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2284
    const/16 p1, 0xa

    return p1

    .line 2285
    :cond_f
    const-string/jumbo v1, "wo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 2286
    const/16 p1, 0x14

    return p1

    .line 2287
    :cond_1b
    const-string v1, "fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 2288
    const/16 p1, 0x1e

    return p1

    .line 2289
    :cond_26
    const-string/jumbo v1, "ra"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 2290
    const/16 p1, 0x28

    return p1

    .line 2291
    :cond_32
    const-string/jumbo v1, "ne"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 2292
    const/16 p1, 0x32

    return p1

    .line 2295
    :cond_3e
    :try_start_3e
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_42
    .catch Ljava/lang/NumberFormatException; {:try_start_3e .. :try_end_42} :catch_43

    .line 2296
    return p1

    .line 2297
    :catch_43
    move-exception v0

    .line 2298
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Unknown bucket: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2301
    const/4 p1, -0x1

    return p1
.end method

.method static dumpHelp(Ljava/io/PrintWriter;Z)V
    .registers 6

    .line 2889
    if-eqz p1, :cond_b3

    .line 2890
    const-string p1, "Activity manager dump options:"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2891
    const-string p1, "  [-a] [-c] [-p PACKAGE] [-h] [WHAT] ..."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2892
    const-string p1, "  WHAT may be one of:"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2893
    const-string p1, "    a[ctivities]: activity stack state"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2894
    const-string p1, "    r[recents]: recent activities state"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2895
    const-string p1, "    b[roadcasts] [PACKAGE_NAME] [history [-s]]: broadcast state"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2896
    const-string p1, "    broadcast-stats [PACKAGE_NAME]: aggregated broadcast statistics"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2897
    const-string p1, "    i[ntents] [PACKAGE_NAME]: pending intent state"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2898
    const-string p1, "    p[rocesses] [PACKAGE_NAME]: process state"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2899
    const-string p1, "    o[om]: out of memory management"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2900
    const-string p1, "    perm[issions]: URI permission grant state"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2901
    const-string p1, "    prov[iders] [COMP_SPEC ...]: content provider state"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2902
    const-string p1, "    provider [COMP_SPEC]: provider client-side state"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2903
    const-string p1, "    s[ervices] [COMP_SPEC ...]: service state"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2904
    const-string p1, "    allowed-associations: current package association restrictions"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2905
    const-string p1, "    as[sociations]: tracked app associations"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2906
    const-string p1, "    lmk: stats on low memory killer"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2907
    const-string p1, "    lru: raw LRU process list"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2908
    const-string p1, "    binder-proxies: stats on binder objects and IPCs"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2909
    const-string p1, "    settings: currently applied config settings"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2910
    const-string p1, "    service [COMP_SPEC]: service client-side state"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2911
    const-string p1, "    package [PACKAGE_NAME]: all state related to given package"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2912
    const-string p1, "    all: dump all activities"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2913
    const-string p1, "    top: dump the top activity"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2914
    const-string p1, "  WHAT may also be a COMP_SPEC to dump activities."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2915
    const-string p1, "  COMP_SPEC may be a component name (com.foo/.myApp),"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2916
    const-string p1, "    a partial substring in a component name, a"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2917
    const-string p1, "    hex object identifier."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2918
    const-string p1, "  -a: include all available server state."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2919
    const-string p1, "  -c: include client state."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2920
    const-string p1, "  -p: limit output to given package."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2921
    const-string p1, "  --checkin: output checkin format, resetting data."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2922
    const-string p1, "  --C: output checkin format, not resetting data."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2923
    const-string p1, "  --proto: output dump in protocol buffer format."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2924
    const-string p1, "  --autofill: dump just the autofill-related state of an activity"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_576

    .line 2926
    :cond_b3
    const-string p1, "Activity manager (activity) commands:"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2927
    const-string p1, "  help"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2928
    const-string p1, "      Print this help text."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2929
    const-string p1, "  start-activity [-D] [-N] [-W] [-P <FILE>] [--start-profiler <FILE>]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2930
    const-string p1, "          [--sampling INTERVAL] [--streaming] [-R COUNT] [-S]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2931
    const-string p1, "          [--track-allocation] [--user <USER_ID> | current] <INTENT>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2932
    const-string p1, "      Start an Activity.  Options are:"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2933
    const-string p1, "      -D: enable debugging"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2934
    const-string p1, "      -N: enable native debugging"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2935
    const-string p1, "      -W: wait for launch to complete"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2936
    const-string p1, "      --start-profiler <FILE>: start profiler and send results to <FILE>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2937
    const-string p1, "      --sampling INTERVAL: use sample profiling with INTERVAL microseconds"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2938
    const-string v0, "          between samples (use with --start-profiler)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2939
    const-string v0, "      --streaming: stream the profiling output to the specified file"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2940
    const-string v0, "          (use with --start-profiler)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2941
    const-string v0, "      -P <FILE>: like above, but profiling stops when app goes idle"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2942
    const-string v0, "      --attach-agent <agent>: attach the given agent before binding"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2943
    const-string v0, "      --attach-agent-bind <agent>: attach the given agent during binding"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2944
    const-string v0, "      -R: repeat the activity launch <COUNT> times.  Prior to each repeat,"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2945
    const-string v0, "          the top activity will be finished."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2946
    const-string v0, "      -S: force stop the target app before starting the activity"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2947
    const-string v0, "      --track-allocation: enable tracking of object allocations"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2948
    const-string v0, "      --user <USER_ID> | current: Specify which user to run as; if not"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2949
    const-string v1, "          specified then run as the current user."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2950
    const-string v2, "      --windowingMode <WINDOWING_MODE>: The windowing mode to launch the activity into."

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2951
    const-string v2, "      --activityType <ACTIVITY_TYPE>: The activity type to launch the activity as."

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2952
    const-string v2, "      --display <DISPLAY_ID>: The display to launch the activity into."

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2953
    const-string v2, "  start-service [--user <USER_ID> | current] <INTENT>"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2954
    const-string v2, "      Start a Service.  Options are:"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2955
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2956
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2957
    const-string v2, "  start-foreground-service [--user <USER_ID> | current] <INTENT>"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2958
    const-string v2, "      Start a foreground Service.  Options are:"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2959
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2960
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2961
    const-string v2, "  stop-service [--user <USER_ID> | current] <INTENT>"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2962
    const-string v2, "      Stop a Service.  Options are:"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2963
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2964
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2965
    const-string v0, "  broadcast [--user <USER_ID> | all | current] <INTENT>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2966
    const-string v0, "      Send a broadcast Intent.  Options are:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2967
    const-string v0, "      --user <USER_ID> | all | current: Specify which user to send to; if not"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2968
    const-string v0, "          specified then send to all users."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2969
    const-string v0, "      --receiver-permission <PERMISSION>: Require receiver to hold permission."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2970
    const-string v0, "  instrument [-r] [-e <NAME> <VALUE>] [-p <FILE>] [-w]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2971
    const-string v0, "          [--user <USER_ID> | current] [--no-hidden-api-checks]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2972
    const-string v0, "          [--no-isolated-storage]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2973
    const-string v0, "          [--no-window-animation] [--abi <ABI>] <COMPONENT>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2974
    const-string v0, "      Start an Instrumentation.  Typically this target <COMPONENT> is in the"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2975
    const-string v0, "      form <TEST_PACKAGE>/<RUNNER_CLASS> or only <TEST_PACKAGE> if there"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2976
    const-string v0, "      is only one instrumentation.  Options are:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2977
    const-string v0, "      -r: print raw results (otherwise decode REPORT_KEY_STREAMRESULT).  Use with"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2978
    const-string v0, "          [-e perf true] to generate raw output for performance measurements."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2979
    const-string v0, "      -e <NAME> <VALUE>: set argument <NAME> to <VALUE>.  For test runners a"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2980
    const-string v0, "          common form is [-e <testrunner_flag> <value>[,<value>...]]."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2981
    const-string v0, "      -p <FILE>: write profiling data to <FILE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2982
    const-string v0, "      -m: Write output as protobuf to stdout (machine readable)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2983
    const-string v0, "      -f <Optional PATH/TO/FILE>: Write output as protobuf to a file (machine"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2984
    const-string v0, "          readable). If path is not specified, default directory and file name will"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2985
    const-string v0, "          be used: /sdcard/instrument-logs/log-yyyyMMdd-hhmmss-SSS.instrumentation_data_proto"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2986
    const-string v0, "      -w: wait for instrumentation to finish before returning.  Required for"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2987
    const-string v0, "          test runners."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2988
    const-string v0, "      --user <USER_ID> | current: Specify user instrumentation runs in;"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2989
    const-string v0, "          current user if not specified."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2990
    const-string v0, "      --no-hidden-api-checks: disable restrictions on use of hidden API."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2991
    const-string v0, "      --no-isolated-storage: don\'t use isolated storage sandbox and "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2992
    const-string v0, "          mount full external storage"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2993
    const-string v0, "      --no-window-animation: turn off window animations while running."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2994
    const-string v0, "      --abi <ABI>: Launch the instrumented process with the selected ABI."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2995
    const-string v0, "          This assumes that the process supports the selected ABI."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2996
    const-string v0, "  trace-ipc [start|stop] [--dump-file <FILE>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2997
    const-string v0, "      Trace IPC transactions."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2998
    const-string v0, "      start: start tracing IPC transactions."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2999
    const-string v0, "      stop: stop tracing IPC transactions and dump the results to file."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3000
    const-string v0, "      --dump-file <FILE>: Specify the file the trace should be dumped to."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3001
    const-string v0, "  profile start [--user <USER_ID> current]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3002
    const-string v0, "          [--sampling INTERVAL | --streaming] <PROCESS> <FILE>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3003
    const-string v0, "      Start profiler on a process.  The given <PROCESS> argument"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3004
    const-string v0, "        may be either a process name or pid.  Options are:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3005
    const-string v1, "      --user <USER_ID> | current: When supplying a process name,"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3006
    const-string v2, "          specify user of process to profile; uses current user if not"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3007
    const-string v3, "          specified."

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3008
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3009
    const-string p1, "          between samples."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3010
    const-string p1, "      --streaming: stream the profiling output to the specified file."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3011
    const-string p1, "  profile stop [--user <USER_ID> current] <PROCESS>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3012
    const-string p1, "      Stop profiler on a process.  The given <PROCESS> argument"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3013
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3014
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3015
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3016
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3017
    const-string p1, "  dumpheap [--user <USER_ID> current] [-n] [-g] <PROCESS> <FILE>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3018
    const-string p1, "      Dump the heap of a process.  The given <PROCESS> argument may"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3019
    const-string p1, "        be either a process name or pid.  Options are:"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3020
    const-string p1, "      -n: dump native heap instead of managed heap"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3021
    const-string p1, "      -g: force GC before dumping the heap"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3022
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3023
    const-string p1, "          specify user of process to dump; uses current user if not specified."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3024
    const-string p1, "  set-debug-app [-w] [--persistent] <PACKAGE>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3025
    const-string p1, "      Set application <PACKAGE> to debug.  Options are:"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3026
    const-string p1, "      -w: wait for debugger when application starts"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3027
    const-string p1, "      --persistent: retain this value"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3028
    const-string p1, "  clear-debug-app"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3029
    const-string p1, "      Clear the previously set-debug-app."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3030
    const-string p1, "  set-watch-heap <PROCESS> <MEM-LIMIT>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3031
    const-string p1, "      Start monitoring pss size of <PROCESS>, if it is at or"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3032
    const-string p1, "      above <HEAP-LIMIT> then a heap dump is collected for the user to report."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3033
    const-string p1, "  clear-watch-heap"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3034
    const-string p1, "      Clear the previously set-watch-heap."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3035
    const-string p1, "  bug-report [--progress | --telephony]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3036
    const-string p1, "      Request bug report generation; will launch a notification"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3037
    const-string p1, "        when done to select where it should be delivered. Options are:"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3038
    const-string p1, "     --progress: will launch a notification right away to show its progress."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3039
    const-string p1, "     --telephony: will dump only telephony sections."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3040
    const-string p1, "  force-stop [--user <USER_ID> | all | current] <PACKAGE>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3041
    const-string p1, "      Completely stop the given application package."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3042
    const-string p1, "  crash [--user <USER_ID>] <PACKAGE|PID>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3043
    const-string p1, "      Induce a VM crash in the specified package or process"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3044
    const-string p1, "  kill [--user <USER_ID> | all | current] <PACKAGE>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3045
    const-string p1, "      Kill all background processes associated with the given application."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3046
    const-string p1, "  kill-all"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3047
    const-string p1, "      Kill all processes that are safe to kill (cached, etc)."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3048
    const-string p1, "  make-uid-idle [--user <USER_ID> | all | current] <PACKAGE>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3049
    const-string p1, "      If the given application\'s uid is in the background and waiting to"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3050
    const-string p1, "      become idle (not allowing background services), do that now."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3051
    const-string p1, "  monitor [--gdb <port>]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3052
    const-string p1, "      Start monitoring for crashes or ANRs."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3053
    const-string p1, "      --gdb: start gdbserv on the given port at crash/ANR"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3054
    const-string p1, "  watch-uids [--oom <uid>]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3055
    const-string p1, "      Start watching for and reporting uid state changes."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3056
    const-string p1, "      --oom: specify a uid for which to report detailed change messages."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3057
    const-string p1, "  hang [--allow-restart]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3058
    const-string p1, "      Hang the system."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3059
    const-string p1, "      --allow-restart: allow watchdog to perform normal system restart"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3060
    const-string p1, "  restart"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3061
    const-string p1, "      Restart the user-space system."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3062
    const-string p1, "  idle-maintenance"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3063
    const-string p1, "      Perform idle maintenance now."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3064
    const-string p1, "  screen-compat [on|off] <PACKAGE>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3065
    const-string p1, "      Control screen compatibility mode of <PACKAGE>."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3066
    const-string p1, "  package-importance <PACKAGE>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3067
    const-string p1, "      Print current importance of <PACKAGE>."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3068
    const-string p1, "  to-uri [INTENT]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3069
    const-string p1, "      Print the given Intent specification as a URI."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3070
    const-string p1, "  to-intent-uri [INTENT]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3071
    const-string p1, "      Print the given Intent specification as an intent: URI."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3072
    const-string p1, "  to-app-uri [INTENT]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3073
    const-string p1, "      Print the given Intent specification as an android-app: URI."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3074
    const-string p1, "  switch-user <USER_ID>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3075
    const-string p1, "      Switch to put USER_ID in the foreground, starting"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3076
    const-string p1, "      execution of that user if it is currently stopped."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3077
    const-string p1, "  get-current-user"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3078
    const-string p1, "      Returns id of the current foreground user."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3079
    const-string p1, "  start-user [-w] <USER_ID>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3080
    const-string p1, "      Start USER_ID in background if it is currently stopped;"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3081
    const-string p1, "      use switch-user if you want to start the user in foreground."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3082
    const-string p1, "      -w: wait for start-user to complete and the user to be unlocked."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3083
    const-string p1, "  unlock-user <USER_ID> [TOKEN_HEX]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3084
    const-string p1, "      Attempt to unlock the given user using the given authorization token."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3085
    const-string p1, "  stop-user [-w] [-f] <USER_ID>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3086
    const-string p1, "      Stop execution of USER_ID, not allowing it to run any"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3087
    const-string p1, "      code until a later explicit start or switch to it."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3088
    const-string p1, "      -w: wait for stop-user to complete."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3089
    const-string p1, "      -f: force stop even if there are related users that cannot be stopped."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3090
    const-string p1, "  is-user-stopped <USER_ID>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3091
    const-string p1, "      Returns whether <USER_ID> has been stopped or not."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3092
    const-string p1, "  get-started-user-state <USER_ID>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3093
    const-string p1, "      Gets the current state of the given started user."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3094
    const-string p1, "  track-associations"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3095
    const-string p1, "      Enable association tracking."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3096
    const-string p1, "  untrack-associations"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3097
    const-string p1, "      Disable and clear association tracking."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3098
    const-string p1, "  get-uid-state <UID>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3099
    const-string p1, "      Gets the process state of an app given its <UID>."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3100
    const-string p1, "  attach-agent <PROCESS> <FILE>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3101
    const-string p1, "    Attach an agent to the specified <PROCESS>, which may be either a process name or a PID."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3102
    const-string p1, "  get-config [--days N] [--device] [--proto] [--display <DISPLAY_ID>]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3103
    const-string p1, "      Retrieve the configuration and any recent configurations of the device."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3104
    const-string p1, "      --days: also return last N days of configurations that have been seen."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3105
    const-string p1, "      --device: also output global device configuration info."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3106
    const-string p1, "      --proto: return result as a proto; does not include --days info."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3107
    const-string p1, "      --display: Specify for which display to run the command; if not "

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3108
    const-string p1, "          specified then run for the default display."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3109
    const-string p1, "  supports-multiwindow"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3110
    const-string p1, "      Returns true if the device supports multiwindow."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3111
    const-string p1, "  supports-split-screen-multi-window"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3112
    const-string p1, "      Returns true if the device supports split screen multiwindow."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3113
    const-string p1, "  suppress-resize-config-changes <true|false>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3114
    const-string p1, "      Suppresses configuration changes due to user resizing an activity/task."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3115
    const-string p1, "  set-inactive [--user <USER_ID>] <PACKAGE> true|false"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3116
    const-string p1, "      Sets the inactive state of an app."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3117
    const-string p1, "  get-inactive [--user <USER_ID>] <PACKAGE>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3118
    const-string p1, "      Returns the inactive state of an app."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3119
    const-string p1, "  set-standby-bucket [--user <USER_ID>] <PACKAGE> active|working_set|frequent|rare"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3120
    const-string p1, "      Puts an app in the standby bucket."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3121
    const-string p1, "  get-standby-bucket [--user <USER_ID>] <PACKAGE>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3122
    const-string p1, "      Returns the standby bucket of an app."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3123
    const-string p1, "  send-trim-memory [--user <USER_ID>] <PROCESS>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3124
    const-string p1, "          [HIDDEN|RUNNING_MODERATE|BACKGROUND|RUNNING_LOW|MODERATE|RUNNING_CRITICAL|COMPLETE]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3125
    const-string p1, "      Send a memory trim event to a <PROCESS>.  May also supply a raw trim int level."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3126
    const-string p1, "  display [COMMAND] [...]: sub-commands for operating on displays."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3127
    const-string p1, "       move-stack <STACK_ID> <DISPLAY_ID>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3128
    const-string p1, "           Move <STACK_ID> from its current display to <DISPLAY_ID>."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3129
    const-string p1, "  stack [COMMAND] [...]: sub-commands for operating on activity stacks."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3130
    const-string p1, "       move-task <TASK_ID> <STACK_ID> [true|false]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3131
    const-string p1, "           Move <TASK_ID> from its current stack to the top (true) or"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3132
    const-string p1, "           bottom (false) of <STACK_ID>."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3133
    const-string p1, "       resize <STACK_ID> <LEFT,TOP,RIGHT,BOTTOM>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3134
    const-string p1, "           Change <STACK_ID> size and position to <LEFT,TOP,RIGHT,BOTTOM>."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3135
    const-string p1, "       resize-animated <STACK_ID> <LEFT,TOP,RIGHT,BOTTOM>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3136
    const-string p1, "           Same as resize, but allow animation."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3137
    const-string p1, "       resize-docked-stack <LEFT,TOP,RIGHT,BOTTOM> [<TASK_LEFT,TASK_TOP,TASK_RIGHT,TASK_BOTTOM>]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3138
    const-string p1, "           Change docked stack to <LEFT,TOP,RIGHT,BOTTOM>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3139
    const-string p1, "           and supplying temporary different task bounds indicated by"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3140
    const-string p1, "           <TASK_LEFT,TOP,RIGHT,BOTTOM>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3141
    const-string p1, "       move-top-activity-to-pinned-stack: <STACK_ID> <LEFT,TOP,RIGHT,BOTTOM>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3142
    const-string p1, "           Moves the top activity from"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3143
    const-string p1, "           <STACK_ID> to the pinned stack using <LEFT,TOP,RIGHT,BOTTOM> for the"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3144
    const-string p1, "           bounds of the pinned stack."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3145
    const-string p1, "       positiontask <TASK_ID> <STACK_ID> <POSITION>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3146
    const-string p1, "           Place <TASK_ID> in <STACK_ID> at <POSITION>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3147
    const-string p1, "       list"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3148
    const-string p1, "           List all of the activity stacks and their sizes."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3149
    const-string p1, "       info <WINDOWING_MODE> <ACTIVITY_TYPE>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3150
    const-string p1, "           Display the information about activity stack in <WINDOWING_MODE> and <ACTIVITY_TYPE>."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3151
    const-string p1, "       remove <STACK_ID>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3152
    const-string p1, "           Remove stack <STACK_ID>."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3153
    const-string p1, "  task [COMMAND] [...]: sub-commands for operating on activity tasks."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3154
    const-string p1, "       lock <TASK_ID>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3155
    const-string p1, "           Bring <TASK_ID> to the front and don\'t allow other tasks to run."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3156
    const-string p1, "       lock stop"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3157
    const-string p1, "           End the current task lock."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3158
    const-string p1, "       resizeable <TASK_ID> [0|1|2|3]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3159
    const-string p1, "           Change resizeable mode of <TASK_ID> to one of the following:"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3160
    const-string p1, "           0: unresizeable"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3161
    const-string p1, "           1: crop_windows"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3162
    const-string p1, "           2: resizeable"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3163
    const-string p1, "           3: resizeable_and_pipable"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3164
    const-string p1, "       resize <TASK_ID> <LEFT,TOP,RIGHT,BOTTOM>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3165
    const-string p1, "           Makes sure <TASK_ID> is in a stack with the specified bounds."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3166
    const-string p1, "           Forces the task to be resizeable and creates a stack if no existing stack"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3167
    const-string p1, "           has the specified bounds."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3168
    const-string p1, "  update-appinfo <USER_ID> <PACKAGE_NAME> [<PACKAGE_NAME>...]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3169
    const-string p1, "      Update the ApplicationInfo objects of the listed packages for <USER_ID>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3170
    const-string p1, "      without restarting any processes."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3171
    const-string p1, "  write"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3172
    const-string p1, "      Write all pending state to storage."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3173
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 3174
    const-string p1, ""

    invoke-static {p0, p1}, Landroid/content/Intent;->printIntentArgsHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3176
    :goto_576
    return-void
.end method

.method private getBounds()Landroid/graphics/Rect;
    .registers 10

    .line 2489
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2490
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2491
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 2492
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2493
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 2494
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2495
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    .line 2496
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2497
    const/4 v8, 0x0

    if-gez v1, :cond_3c

    .line 2498
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: bad left arg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2499
    return-object v8

    .line 2501
    :cond_3c
    if-gez v3, :cond_57

    .line 2502
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: bad top arg: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2503
    return-object v8

    .line 2505
    :cond_57
    if-gtz v5, :cond_72

    .line 2506
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: bad right arg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2507
    return-object v8

    .line 2509
    :cond_72
    if-gtz v7, :cond_8d

    .line 2510
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: bad bottom arg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2511
    return-object v8

    .line 2513
    :cond_8d
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v3, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private getRecentConfigurations(I)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation

    .line 1899
    const-string/jumbo v0, "usagestats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v1

    .line 1901
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1902
    mul-int/lit8 p1, p1, 0x18

    mul-int/lit8 p1, p1, 0x3c

    mul-int/lit8 p1, p1, 0x3c

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v2, p1

    sub-long v3, v5, v2

    .line 1905
    const/4 v2, 0x4

    :try_start_1b
    const-string v7, "com.android.shell"

    invoke-interface/range {v1 .. v7}, Landroid/app/usage/IUsageStatsManager;->queryConfigurationStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 1907
    if-nez p1, :cond_28

    .line 1908
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1911
    :cond_28
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1912
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1

    .line 1913
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1914
    const/4 v2, 0x0

    :goto_36
    if-ge v2, v1, :cond_72

    .line 1915
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/ConfigurationStats;

    .line 1916
    invoke-virtual {v3}, Landroid/app/usage/ConfigurationStats;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v4

    .line 1917
    if-gez v4, :cond_58

    .line 1918
    invoke-virtual {v3}, Landroid/app/usage/ConfigurationStats;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v3}, Landroid/app/usage/ConfigurationStats;->getActivationCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6f

    .line 1920
    :cond_58
    nop

    .line 1921
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3}, Landroid/app/usage/ConfigurationStats;->getActivationCount()I

    move-result v3

    add-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1920
    invoke-virtual {v0, v4, v3}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1914
    :goto_6f
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 1925
    :cond_72
    new-instance p1, Lcom/android/server/am/ActivityManagerShellCommand$3;

    invoke-direct {p1, p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand$3;-><init>(Lcom/android/server/am/ActivityManagerShellCommand;Landroid/util/ArrayMap;)V

    .line 1932
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1933
    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1934
    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_8a} :catch_8b

    .line 1935
    return-object v1

    .line 1937
    :catch_8b
    move-exception p1

    .line 1938
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private getResources(Ljava/io/PrintWriter;)Landroid/content/res/Resources;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2870
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2871
    if-nez v0, :cond_f

    .line 2872
    const-string v0, "Error: Activity manager has no configuration"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2873
    const/4 p1, 0x0

    return-object p1

    .line 2876
    :cond_f
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2877
    invoke-virtual {p1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 2879
    new-instance v1, Landroid/content/res/Resources;

    invoke-static {}, Landroid/content/res/AssetManager;->getSystem()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-direct {v1, v2, p1, v0}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    return-object v1
.end method

.method static synthetic lambda$writeDeviceConfig$0(Landroid/content/pm/FeatureInfo;Landroid/content/pm/FeatureInfo;)I
    .registers 4

    .line 2157
    iget-object v0, p0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-ne v0, v1, :cond_8

    const/4 p0, 0x0

    return p0

    .line 2158
    :cond_8
    iget-object v0, p0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v0, :cond_e

    const/4 p0, -0x1

    return p0

    .line 2159
    :cond_e
    iget-object v0, p1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v0, :cond_14

    const/4 p0, 0x1

    return p0

    .line 2160
    :cond_14
    iget-object p0, p0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private makeIntent(I)Landroid/content/Intent;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 301
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    .line 302
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    .line 303
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStopOption:Z

    .line 304
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    .line 305
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mProfileFile:Ljava/lang/String;

    .line 306
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    .line 307
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mAutoStop:Z

    .line 308
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    .line 309
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    .line 310
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mDisplayId:I

    .line 311
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mWindowingMode:I

    .line 312
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mActivityType:I

    .line 313
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskId:I

    .line 314
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsTaskOverlay:Z

    .line 315
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mIsLockTask:Z

    .line 317
    new-instance p1, Lcom/android/server/am/ActivityManagerShellCommand$1;

    invoke-direct {p1, p0}, Lcom/android/server/am/ActivityManagerShellCommand$1;-><init>(Lcom/android/server/am/ActivityManagerShellCommand;)V

    invoke-static {p0, p1}, Landroid/content/Intent;->parseCommandArgs(Landroid/os/ShellCommand;Landroid/content/Intent$CommandOptionHandler;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method static removeWallOption()V
    .registers 4

    .line 779
    const-string v0, "dalvik.vm.extra-opts"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 780
    if-eqz v1, :cond_1d

    const-string v2, "-Xprofile:wallclock"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 781
    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 782
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 783
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    :cond_1d
    return-void
.end method

.method private runProfile(Ljava/io/PrintWriter;)I
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 788
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 789
    nop

    .line 790
    nop

    .line 791
    nop

    .line 792
    nop

    .line 793
    nop

    .line 794
    const/4 v2, 0x0

    iput v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    .line 795
    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    .line 797
    nop

    .line 799
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 801
    const-string/jumbo v4, "start"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "Error: Unknown option: "

    const-string v7, "--user"

    const/4 v8, 0x1

    const/4 v9, -0x1

    const/4 v10, -0x2

    if-eqz v5, :cond_7d

    .line 802
    move v3, v2

    .line 804
    :goto_26
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_76

    .line 805
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 806
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v10

    goto :goto_26

    .line 807
    :cond_3b
    const-string v5, "--wall"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 808
    move v3, v8

    goto :goto_26

    .line 809
    :cond_45
    const-string v5, "--streaming"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 810
    iput-boolean v8, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    goto :goto_26

    .line 811
    :cond_50
    const-string v5, "--sampling"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 812
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    goto :goto_26

    .line 814
    :cond_63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 815
    return v9

    .line 818
    :cond_76
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 819
    move v14, v8

    move v13, v10

    goto :goto_d1

    :cond_7d
    const-string/jumbo v5, "stop"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b7

    .line 821
    :goto_86
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_ae

    .line 822
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9b

    .line 823
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v10

    goto :goto_86

    .line 825
    :cond_9b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 826
    return v9

    .line 829
    :cond_ae
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 830
    move v14, v2

    move-object v4, v3

    move v13, v10

    move v3, v14

    goto :goto_d1

    .line 832
    :cond_b7
    nop

    .line 833
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    .line 834
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c7

    .line 835
    move-object v4, v3

    move v14, v8

    move v13, v10

    move v3, v2

    goto :goto_d1

    .line 836
    :cond_c7
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14f

    move v14, v2

    move-object v4, v3

    move v13, v10

    move v3, v14

    .line 841
    :goto_d1
    if-ne v13, v9, :cond_d9

    .line 842
    const-string v0, "Error: Can\'t profile with user \'all\'"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 843
    return v9

    .line 846
    :cond_d9
    nop

    .line 847
    const/4 v5, 0x0

    .line 849
    if-eqz v14, :cond_102

    .line 850
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    .line 851
    const-string/jumbo v6, "w"

    invoke-virtual {v0, v5, v6}, Lcom/android/server/am/ActivityManagerShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v17

    .line 852
    if-nez v17, :cond_eb

    .line 853
    return v9

    .line 855
    :cond_eb
    new-instance v6, Landroid/app/ProfilerInfo;

    iget v7, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    const/16 v19, 0x0

    iget-boolean v8, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v15, v6

    move-object/from16 v16, v5

    move/from16 v18, v7

    move/from16 v20, v8

    invoke-direct/range {v15 .. v22}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZZLjava/lang/String;Z)V

    goto :goto_103

    .line 849
    :cond_102
    move-object v15, v5

    .line 860
    :goto_103
    if-eqz v3, :cond_128

    .line 862
    :try_start_105
    const-string v5, "dalvik.vm.extra-opts"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 863
    if-eqz v5, :cond_115

    const-string v6, "-Xprofile:wallclock"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_128

    .line 864
    :cond_115
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " -Xprofile:wallclock"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_128

    .line 876
    :catchall_126
    move-exception v0

    goto :goto_14e

    .line 867
    :cond_128
    :goto_128
    nop

    .line 870
    iget-object v11, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/16 v16, 0x0

    move-object v12, v4

    invoke-interface/range {v11 .. v16}, Landroid/app/IActivityManager;->profileControl(Ljava/lang/String;IZLandroid/app/ProfilerInfo;I)Z

    move-result v0

    if-nez v0, :cond_14c

    .line 871
    nop

    .line 872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PROFILE FAILED on process "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_149
    .catchall {:try_start_105 .. :try_end_149} :catchall_126

    .line 873
    nop

    .line 876
    nop

    .line 873
    return v9

    .line 876
    :cond_14c
    nop

    .line 880
    return v2

    .line 876
    :goto_14e
    throw v0

    .line 837
    :cond_14f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Profile command "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not valid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeDeviceConfig(Landroid/util/proto/ProtoOutputStream;JLjava/io/PrintWriter;Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    .registers 12

    .line 2075
    nop

    .line 2076
    if-eqz p1, :cond_26

    .line 2077
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 2078
    const-wide v0, 0x10d00000001L

    iget p5, p6, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p1, v0, v1, p5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2080
    const-wide v0, 0x10d00000002L

    iget p5, p6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p1, v0, v1, p5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2082
    const-wide v0, 0x10d00000003L

    sget p5, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    invoke-virtual {p1, v0, v1, p5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_28

    .line 2076
    :cond_26
    const-wide/16 p2, -0x1

    .line 2085
    :goto_28
    if-eqz p4, :cond_4b

    .line 2086
    const-string/jumbo p5, "stable-width-px: "

    invoke-virtual {p4, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p5, p6, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p4, p5}, Ljava/io/PrintWriter;->println(I)V

    .line 2087
    const-string/jumbo p5, "stable-height-px: "

    invoke-virtual {p4, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p5, p6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p4, p5}, Ljava/io/PrintWriter;->println(I)V

    .line 2088
    const-string/jumbo p5, "stable-density-dpi: "

    invoke-virtual {p4, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget p5, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    invoke-virtual {p4, p5}, Ljava/io/PrintWriter;->println(I)V

    .line 2091
    :cond_4b
    new-instance p5, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {p5}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 2092
    invoke-virtual {p5}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 2093
    iget-object p6, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object p6, p6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroid/app/KeyguardManager;

    .line 2094
    if-eqz p1, :cond_95

    .line 2095
    const-wide v0, 0x10400000004L

    invoke-virtual {p5}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2096
    const-wide v0, 0x10800000005L

    .line 2097
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v2

    .line 2096
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2098
    const-wide v0, 0x10d00000006L

    .line 2099
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    .line 2098
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2100
    const-wide v0, 0x10800000007L

    .line 2101
    invoke-virtual {p6}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v2

    .line 2100
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2103
    :cond_95
    if-eqz p4, :cond_cc

    .line 2104
    const-string/jumbo v0, "total-ram: "

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p5}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2105
    const-string p5, "low-ram: "

    invoke-virtual {p4, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result p5

    invoke-virtual {p4, p5}, Ljava/io/PrintWriter;->println(Z)V

    .line 2106
    const-string p5, "max-cores: "

    invoke-virtual {p4, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p5

    invoke-virtual {p4, p5}, Ljava/io/PrintWriter;->println(I)V

    .line 2107
    const-string p5, "has-secure-screen-lock: "

    invoke-virtual {p4, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p6}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result p5

    invoke-virtual {p4, p5}, Ljava/io/PrintWriter;->println(Z)V

    .line 2110
    :cond_cc
    nop

    .line 2112
    :try_start_cd
    iget-object p5, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {p5}, Landroid/app/IActivityTaskManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object p5
    :try_end_d3
    .catch Landroid/os/RemoteException; {:try_start_cd .. :try_end_d3} :catch_1a9

    .line 2115
    nop

    .line 2116
    iget p6, p5, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    if-eqz p6, :cond_f5

    .line 2117
    if-eqz p1, :cond_e4

    .line 2118
    const-wide v0, 0x10d00000008L

    iget p6, p5, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    invoke-virtual {p1, v0, v1, p6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2121
    :cond_e4
    if-eqz p4, :cond_f5

    .line 2122
    const-string/jumbo p6, "opengl-version: 0x"

    invoke-virtual {p4, p6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2123
    iget p5, p5, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    invoke-static {p5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2127
    :cond_f5
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getGlExtensionsFromDriver()Ljava/util/Set;

    move-result-object p5

    .line 2128
    invoke-interface {p5}, Ljava/util/Set;->size()I

    move-result p6

    new-array p6, p6, [Ljava/lang/String;

    .line 2129
    invoke-interface {p5, p6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p5

    check-cast p5, [Ljava/lang/String;

    .line 2130
    invoke-static {p5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 2131
    const/4 p6, 0x0

    move v0, p6

    :goto_10a
    array-length v1, p5

    if-ge v0, v1, :cond_129

    .line 2132
    if-eqz p1, :cond_119

    .line 2133
    const-wide v1, 0x20900000009L

    aget-object v3, p5, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2136
    :cond_119
    if-eqz p4, :cond_126

    .line 2137
    const-string/jumbo v1, "opengl-extensions: "

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget-object v1, p5, v0

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2131
    :cond_126
    add-int/lit8 v0, v0, 0x1

    goto :goto_10a

    .line 2142
    :cond_129
    iget-object p5, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object p5, p5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p5

    .line 2143
    invoke-virtual {p5, p6}, Landroid/content/pm/PackageManager;->getSharedLibraries(I)Ljava/util/List;

    move-result-object v0

    .line 2144
    sget-object v1, Lcom/android/server/am/-$$Lambda$jVSWDZTj55yxOQmZSLdNsbUkMb4;->INSTANCE:Lcom/android/server/am/-$$Lambda$jVSWDZTj55yxOQmZSLdNsbUkMb4;

    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2145
    move v1, p6

    :goto_13f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_171

    .line 2146
    if-eqz p1, :cond_159

    .line 2147
    const-wide v2, 0x2090000000aL

    .line 2148
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {v4}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v4

    .line 2147
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2150
    :cond_159
    if-eqz p4, :cond_16e

    .line 2151
    const-string/jumbo v2, "shared-libraries: "

    invoke-virtual {p4, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {v2}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2145
    :cond_16e
    add-int/lit8 v1, v1, 0x1

    goto :goto_13f

    .line 2155
    :cond_171
    invoke-virtual {p5}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object p5

    .line 2156
    sget-object v0, Lcom/android/server/am/-$$Lambda$ActivityManagerShellCommand$yu115wjRB5hvRTjVM9oePAy5cM0;->INSTANCE:Lcom/android/server/am/-$$Lambda$ActivityManagerShellCommand$yu115wjRB5hvRTjVM9oePAy5cM0;

    invoke-static {p5, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 2163
    nop

    :goto_17b
    array-length v0, p5

    if-ge p6, v0, :cond_1a3

    .line 2164
    aget-object v0, p5, p6

    iget-object v0, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_1a0

    .line 2165
    if-eqz p1, :cond_192

    .line 2166
    const-wide v0, 0x2090000000bL

    aget-object v2, p5, p6

    iget-object v2, v2, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2168
    :cond_192
    if-eqz p4, :cond_1a0

    .line 2169
    const-string v0, "features: "

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget-object v0, p5, p6

    iget-object v0, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2163
    :cond_1a0
    add-int/lit8 p6, p6, 0x1

    goto :goto_17b

    .line 2174
    :cond_1a3
    if-eqz p1, :cond_1a8

    .line 2175
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2177
    :cond_1a8
    return-void

    .line 2113
    :catch_1a9
    move-exception p1

    .line 2114
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method getGlExtensionsFromDriver()Ljava/util/Set;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1996
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1999
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljavax/microedition/khronos/egl/EGL10;

    .line 2000
    if-nez v7, :cond_18

    .line 2001
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Warning: couldn\'t get EGL"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2002
    return-object v6

    .line 2006
    :cond_18
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v7, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v8

    .line 2007
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2008
    invoke-interface {v7, v8, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 2011
    const/4 v9, 0x1

    new-array v10, v9, [I

    .line 2012
    const/4 v0, 0x0

    const/4 v11, 0x0

    invoke-interface {v7, v8, v0, v11, v10}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_39

    .line 2013
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Warning: couldn\'t get EGL config count"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2014
    return-object v6

    .line 2018
    :cond_39
    aget v0, v10, v11

    new-array v12, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 2019
    aget v0, v10, v11

    invoke-interface {v7, v8, v12, v0, v10}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 2020
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Warning: couldn\'t get EGL configs"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2021
    return-object v6

    .line 2027
    :cond_4f
    const/4 v0, 0x5

    new-array v13, v0, [I

    fill-array-data v13, :array_b4

    .line 2036
    const/4 v0, 0x3

    new-array v14, v0, [I

    fill-array-data v14, :array_c2

    .line 2039
    new-array v15, v9, [I

    .line 2041
    move v5, v11

    :goto_5e
    aget v0, v10, v11

    if-ge v5, v0, :cond_af

    .line 2043
    aget-object v0, v12, v5

    const/16 v1, 0x3027

    invoke-interface {v7, v8, v0, v1, v15}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 2044
    aget v0, v15, v11

    const/16 v1, 0x3050

    if-ne v0, v1, :cond_72

    .line 2045
    move/from16 v16, v5

    goto :goto_ac

    .line 2051
    :cond_72
    aget-object v0, v12, v5

    const/16 v1, 0x3033

    invoke-interface {v7, v8, v0, v1, v15}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 2052
    aget v0, v15, v11

    and-int/2addr v0, v9

    if-nez v0, :cond_81

    .line 2053
    move/from16 v16, v5

    goto :goto_ac

    .line 2058
    :cond_81
    aget-object v0, v12, v5

    const/16 v1, 0x3040

    invoke-interface {v7, v8, v0, v1, v15}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 2059
    aget v0, v15, v11

    and-int/2addr v0, v9

    if-eqz v0, :cond_9a

    .line 2060
    aget-object v2, v12, v5

    const/4 v4, 0x0

    move-object v0, v7

    move-object v1, v8

    move-object v3, v13

    move/from16 v16, v5

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerShellCommand;->addExtensionsForConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I[ILjava/util/Set;)V

    goto :goto_9c

    .line 2059
    :cond_9a
    move/from16 v16, v5

    .line 2062
    :goto_9c
    aget v0, v15, v11

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_ac

    .line 2063
    aget-object v2, v12, v16

    move-object v0, v7

    move-object v1, v8

    move-object v3, v13

    move-object v4, v14

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerShellCommand;->addExtensionsForConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I[ILjava/util/Set;)V

    .line 2041
    :cond_ac
    :goto_ac
    add-int/lit8 v5, v16, 0x1

    goto :goto_5e

    .line 2068
    :cond_af
    invoke-interface {v7, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 2070
    return-object v6

    nop

    :array_b4
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x3038
    .end array-data

    :array_c2
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method getStepSize(IIIZ)I
    .registers 6

    .line 2775
    nop

    .line 2776
    if-eqz p4, :cond_10

    if-ge p2, p1, :cond_10

    .line 2777
    sub-int/2addr p1, p3

    .line 2778
    nop

    .line 2779
    if-le p2, p1, :cond_e

    .line 2780
    sub-int v0, p2, p1

    sub-int v0, p3, v0

    goto :goto_11

    .line 2779
    :cond_e
    move v0, p3

    goto :goto_11

    .line 2783
    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-nez p4, :cond_1c

    if-le p2, p1, :cond_1c

    .line 2784
    add-int/2addr p1, p3

    .line 2785
    nop

    .line 2786
    if-ge p2, p1, :cond_1d

    .line 2787
    sub-int/2addr p1, p2

    add-int/2addr p3, p1

    goto :goto_1d

    .line 2790
    :cond_1c
    move p3, v0

    :cond_1d
    :goto_1d
    return p3
.end method

.method getUidState(Ljava/io/PrintWriter;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1888
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.DUMP"

    const-string v2, "getUidState()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1890
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->getUidState(I)I

    move-result v0

    .line 1891
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1892
    const-string v1, " ("

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1893
    const-class v1, Landroid/app/ActivityManager;

    const-string v2, "PROCESS_STATE_"

    invoke-static {v1, v2, v0}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1894
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1895
    return v1
.end method

.method moveTask(ILandroid/graphics/Rect;Landroid/graphics/Rect;IIZZI)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2735
    const/4 v0, 0x0

    if-eqz p6, :cond_44

    .line 2736
    :goto_3
    if-lez p5, :cond_85

    if-eqz p7, :cond_d

    iget p6, p2, Landroid/graphics/Rect;->right:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    if-lt p6, v1, :cond_15

    :cond_d
    if-nez p7, :cond_85

    iget p6, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    if-ge p6, v1, :cond_85

    .line 2739
    :cond_15
    if-eqz p7, :cond_2c

    .line 2740
    iget p6, p3, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p6, v1

    invoke-static {p4, p6}, Ljava/lang/Math;->min(II)I

    move-result p6

    .line 2741
    sub-int/2addr p5, p6

    .line 2742
    iget v1, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, p6

    iput v1, p2, Landroid/graphics/Rect;->right:I

    .line 2743
    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p6

    iput v1, p2, Landroid/graphics/Rect;->left:I

    goto :goto_40

    .line 2745
    :cond_2c
    iget p6, p3, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p6, v1

    invoke-static {p4, p6}, Ljava/lang/Math;->min(II)I

    move-result p6

    .line 2746
    sub-int/2addr p5, p6

    .line 2747
    iget v1, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p6

    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 2748
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p6

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 2750
    :goto_40
    invoke-virtual {p0, p1, p2, p8, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->taskResize(ILandroid/graphics/Rect;IZ)V

    goto :goto_3

    .line 2753
    :cond_44
    :goto_44
    if-gez p5, :cond_85

    if-eqz p7, :cond_4e

    iget p6, p2, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    if-gt p6, v1, :cond_56

    :cond_4e
    if-nez p7, :cond_85

    iget p6, p2, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    if-le p6, v1, :cond_85

    .line 2756
    :cond_56
    if-eqz p7, :cond_6d

    .line 2757
    iget p6, p2, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr p6, v1

    invoke-static {p4, p6}, Ljava/lang/Math;->min(II)I

    move-result p6

    .line 2758
    sub-int/2addr p5, p6

    .line 2759
    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p6

    iput v1, p2, Landroid/graphics/Rect;->right:I

    .line 2760
    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, p6

    iput v1, p2, Landroid/graphics/Rect;->left:I

    goto :goto_81

    .line 2762
    :cond_6d
    iget p6, p2, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr p6, v1

    invoke-static {p4, p6}, Ljava/lang/Math;->min(II)I

    move-result p6

    .line 2763
    sub-int/2addr p5, p6

    .line 2764
    iget v1, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p6

    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 2765
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, p6

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 2767
    :goto_81
    invoke-virtual {p0, p1, p2, p8, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->taskResize(ILandroid/graphics/Rect;IZ)V

    goto :goto_44

    .line 2771
    :cond_85
    return p5
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 8

    .line 164
    if-nez p1, :cond_7

    .line 165
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 167
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 169
    const/4 v1, -0x1

    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v2, :sswitch_data_468

    :cond_16
    goto/16 :goto_324

    :sswitch_18
    const-string/jumbo v2, "switch-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x24

    goto/16 :goto_325

    :sswitch_25
    const-string/jumbo v2, "stop-service"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x9

    goto/16 :goto_325

    :sswitch_32
    const-string v2, "idle-maintenance"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x1e

    goto/16 :goto_325

    :sswitch_3e
    const-string/jumbo v2, "no-home-screen"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x3d

    goto/16 :goto_325

    :sswitch_4b
    const-string v2, "display"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x35

    goto/16 :goto_325

    :sswitch_57
    const-string/jumbo v2, "wait-for-broadcast-idle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x3e

    goto/16 :goto_325

    :sswitch_64
    const-string/jumbo v2, "stop-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x28

    goto/16 :goto_325

    :sswitch_71
    const-string v2, "instrument"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0xb

    goto/16 :goto_325

    :sswitch_7d
    const-string/jumbo v2, "monitor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x1a

    goto/16 :goto_325

    :sswitch_8a
    const-string v2, "get-started-user-state"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x2a

    goto/16 :goto_325

    :sswitch_96
    const-string/jumbo v2, "update-appinfo"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x3c

    goto/16 :goto_325

    :sswitch_a3
    const-string/jumbo v2, "restart"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x1d

    goto/16 :goto_325

    :sswitch_b0
    const-string v2, "clear-debug-app"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x11

    goto/16 :goto_325

    :sswitch_bc
    const-string v2, "attach-agent"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x39

    goto/16 :goto_325

    :sswitch_c8
    const-string/jumbo v2, "start-fg-service"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x7

    goto/16 :goto_325

    :sswitch_d4
    const-string/jumbo v2, "set-agent-app"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x10

    goto/16 :goto_325

    :sswitch_e1
    const-string v2, "clear-watch-heap"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x13

    goto/16 :goto_325

    :sswitch_ed
    const-string/jumbo v2, "set-watch-heap"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x12

    goto/16 :goto_325

    :sswitch_fa
    const-string/jumbo v2, "to-intent-uri"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x22

    goto/16 :goto_325

    :sswitch_107
    const-string/jumbo v2, "supports-multiwindow"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x3a

    goto/16 :goto_325

    :sswitch_114
    const-string/jumbo v2, "trace-ipc"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0xc

    goto/16 :goto_325

    :sswitch_121
    const-string/jumbo v2, "supports-split-screen-multi-window"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x3b

    goto/16 :goto_325

    :sswitch_12e
    const-string v2, "bug-report"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x14

    goto/16 :goto_325

    :sswitch_13a
    const-string/jumbo v2, "untrack-associations"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x2c

    goto/16 :goto_325

    :sswitch_147
    const-string/jumbo v2, "start-activity"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    move v2, v4

    goto/16 :goto_325

    :sswitch_153
    const-string/jumbo v2, "to-app-uri"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x23

    goto/16 :goto_325

    :sswitch_160
    const-string/jumbo v2, "startservice"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    move v2, v3

    goto/16 :goto_325

    :sswitch_16c
    const-string/jumbo v2, "write"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x38

    goto/16 :goto_325

    :sswitch_179
    const-string/jumbo v2, "start"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    move v2, v5

    goto/16 :goto_325

    :sswitch_185
    const-string/jumbo v2, "stack"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x36

    goto/16 :goto_325

    :sswitch_192
    const-string v2, "crash"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x16

    goto/16 :goto_325

    :sswitch_19e
    const-string v2, "force-stop"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x15

    goto/16 :goto_325

    :sswitch_1aa
    const-string/jumbo v2, "task"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x37

    goto/16 :goto_325

    :sswitch_1b7
    const-string v2, "kill"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x17

    goto/16 :goto_325

    :sswitch_1c3
    const-string v2, "hang"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x1c

    goto/16 :goto_325

    :sswitch_1cf
    const-string v2, "make-uid-idle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x19

    goto/16 :goto_325

    :sswitch_1db
    const-string/jumbo v2, "startforegroundservice"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x4

    goto/16 :goto_325

    :sswitch_1e7
    const-string/jumbo v2, "watch-uids"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x1b

    goto/16 :goto_325

    :sswitch_1f4
    const-string/jumbo v2, "set-inactive"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x30

    goto/16 :goto_325

    :sswitch_201
    const-string/jumbo v2, "profile"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0xd

    goto/16 :goto_325

    :sswitch_20e
    const-string/jumbo v2, "screen-compat"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x1f

    goto/16 :goto_325

    :sswitch_21b
    const-string/jumbo v2, "track-associations"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x2b

    goto/16 :goto_325

    :sswitch_228
    const-string v2, "is-user-stopped"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x29

    goto/16 :goto_325

    :sswitch_234
    const-string v2, "kill-all"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x18

    goto/16 :goto_325

    :sswitch_240
    const-string v2, "get-config"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x2e

    goto/16 :goto_325

    :sswitch_24c
    const-string/jumbo v2, "set-standby-bucket"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x32

    goto/16 :goto_325

    :sswitch_259
    const-string v2, "get-current-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x25

    goto/16 :goto_325

    :sswitch_265
    const-string/jumbo v2, "to-uri"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x21

    goto/16 :goto_325

    :sswitch_272
    const-string/jumbo v2, "start-foreground-service"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x6

    goto/16 :goto_325

    :sswitch_27e
    const-string/jumbo v2, "unlock-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x27

    goto/16 :goto_325

    :sswitch_28b
    const-string/jumbo v2, "startfgservice"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x5

    goto/16 :goto_325

    :sswitch_297
    const-string/jumbo v2, "stopservice"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x8

    goto/16 :goto_325

    :sswitch_2a4
    const-string v2, "get-uid-state"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x2d

    goto/16 :goto_325

    :sswitch_2b0
    const-string/jumbo v2, "start-service"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x3

    goto/16 :goto_325

    :sswitch_2bc
    const-string/jumbo v2, "send-trim-memory"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x34

    goto :goto_325

    :sswitch_2c8
    const-string/jumbo v2, "suppress-resize-config-changes"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x2f

    goto :goto_325

    :sswitch_2d4
    const-string v2, "broadcast"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0xa

    goto :goto_325

    :sswitch_2df
    const-string/jumbo v2, "start-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x26

    goto :goto_325

    :sswitch_2eb
    const-string v2, "get-standby-bucket"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x33

    goto :goto_325

    :sswitch_2f6
    const-string/jumbo v2, "package-importance"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x20

    goto :goto_325

    :sswitch_302
    const-string v2, "get-inactive"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x31

    goto :goto_325

    :sswitch_30d
    const-string/jumbo v2, "set-debug-app"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0xf

    goto :goto_325

    :sswitch_319
    const-string v2, "dumpheap"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0xe

    goto :goto_325

    :goto_324
    move v2, v1

    :goto_325
    packed-switch v2, :pswitch_data_566

    .line 292
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    goto/16 :goto_450

    .line 290
    :pswitch_32e  #0x3e
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runWaitForBroadcastIdle(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 288
    :pswitch_333  #0x3d
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runNoHomeScreen(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 286
    :pswitch_338  #0x3c
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runUpdateApplicationInfo(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 284
    :pswitch_33d  #0x3b
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSupportsSplitScreenMultiwindow(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 282
    :pswitch_342  #0x3a
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSupportsMultiwindow(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 280
    :pswitch_347  #0x39
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runAttachAgent(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 278
    :pswitch_34c  #0x38
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runWrite(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 276
    :pswitch_351  #0x37
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runTask(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 274
    :pswitch_356  #0x36
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStack(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 272
    :pswitch_35b  #0x35
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runDisplay(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 270
    :pswitch_360  #0x34
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSendTrimMemory(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 268
    :pswitch_365  #0x33
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetStandbyBucket(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 266
    :pswitch_36a  #0x32
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetStandbyBucket(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 264
    :pswitch_36f  #0x31
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetInactive(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 262
    :pswitch_374  #0x30
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetInactive(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 260
    :pswitch_379  #0x2f
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSuppressResizeConfigChanges(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 258
    :pswitch_37e  #0x2e
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetConfig(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 256
    :pswitch_383  #0x2d
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->getUidState(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 254
    :pswitch_388  #0x2c
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runUntrackAssociations(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 252
    :pswitch_38d  #0x2b
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runTrackAssociations(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 250
    :pswitch_392  #0x2a
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetStartedUserState(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 248
    :pswitch_397  #0x29
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runIsUserStopped(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 246
    :pswitch_39c  #0x28
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStopUser(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 244
    :pswitch_3a1  #0x27
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runUnlockUser(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 242
    :pswitch_3a6  #0x26
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStartUser(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 240
    :pswitch_3ab  #0x25
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runGetCurrentUser(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 238
    :pswitch_3b0  #0x24
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSwitchUser(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 236
    :pswitch_3b5  #0x23
    invoke-virtual {p0, v0, v3}, Lcom/android/server/am/ActivityManagerShellCommand;->runToUri(Ljava/io/PrintWriter;I)I

    move-result p1

    return p1

    .line 234
    :pswitch_3ba  #0x22
    invoke-virtual {p0, v0, v4}, Lcom/android/server/am/ActivityManagerShellCommand;->runToUri(Ljava/io/PrintWriter;I)I

    move-result p1

    return p1

    .line 232
    :pswitch_3bf  #0x21
    invoke-virtual {p0, v0, v5}, Lcom/android/server/am/ActivityManagerShellCommand;->runToUri(Ljava/io/PrintWriter;I)I

    move-result p1

    return p1

    .line 230
    :pswitch_3c4  #0x20
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runPackageImportance(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 228
    :pswitch_3c9  #0x1f
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runScreenCompat(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 226
    :pswitch_3ce  #0x1e
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runIdleMaintenance(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 224
    :pswitch_3d3  #0x1d
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runRestart(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 222
    :pswitch_3d8  #0x1c
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runHang(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 220
    :pswitch_3dd  #0x1b
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runWatchUids(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 218
    :pswitch_3e2  #0x1a
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runMonitor(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 216
    :pswitch_3e7  #0x19
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runMakeIdle(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 214
    :pswitch_3ec  #0x18
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runKillAll(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 212
    :pswitch_3f1  #0x17
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runKill(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 210
    :pswitch_3f6  #0x16
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runCrash(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 208
    :pswitch_3fb  #0x15
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runForceStop(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 206
    :pswitch_400  #0x14
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runBugReport(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 204
    :pswitch_405  #0x13
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runClearWatchHeap(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 202
    :pswitch_40a  #0x12
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetWatchHeap(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 200
    :pswitch_40f  #0x11
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runClearDebugApp(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 198
    :pswitch_414  #0x10
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetAgentApp(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 196
    :pswitch_419  #0xf
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSetDebugApp(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 194
    :pswitch_41e  #0xe
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runDumpHeap(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 192
    :pswitch_423  #0xd
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runProfile(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 190
    :pswitch_428  #0xc
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runTraceIpc(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 187
    :pswitch_42d  #0xb
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    const-string v2, "Error: must be invoked through \'am instrument\'."

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 188
    return v1

    .line 185
    :pswitch_437  #0xa
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runSendBroadcast(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 183
    :pswitch_43c  #0x8, 0x9
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStopService(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 180
    :pswitch_441  #0x4, 0x5, 0x6, 0x7
    invoke-virtual {p0, v0, v4}, Lcom/android/server/am/ActivityManagerShellCommand;->runStartService(Ljava/io/PrintWriter;Z)I

    move-result p1

    return p1

    .line 175
    :pswitch_446  #0x2, 0x3
    invoke-virtual {p0, v0, v5}, Lcom/android/server/am/ActivityManagerShellCommand;->runStartService(Ljava/io/PrintWriter;Z)I

    move-result p1

    return p1

    .line 172
    :pswitch_44b  #0x0, 0x1
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->runStartActivity(Ljava/io/PrintWriter;)I

    move-result p1
    :try_end_44f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_44f} :catch_451

    return p1

    .line 292
    :goto_450
    return p1

    .line 294
    :catch_451
    move-exception p1

    .line 295
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 297
    return v1

    nop

    :sswitch_data_468
    .sparse-switch
        -0x7e761220 -> :sswitch_319
        -0x7566d004 -> :sswitch_30d
        -0x6684cefe -> :sswitch_302
        -0x65f435a5 -> :sswitch_2f6
        -0x6366a39f -> :sswitch_2eb
        -0x608449aa -> :sswitch_2df
        -0x607e173f -> :sswitch_2d4
        -0x4ef4b7a7 -> :sswitch_2c8
        -0x4db101b9 -> :sswitch_2bc
        -0x436e13b6 -> :sswitch_2b0
        -0x3bc220e3 -> :sswitch_2a4
        -0x3988e78d -> :sswitch_297
        -0x376fe74e -> :sswitch_28b
        -0x3619e74c -> :sswitch_27e
        -0x3530e48a -> :sswitch_272
        -0x33db6ce6 -> :sswitch_265
        -0x30697b4a -> :sswitch_259
        -0x2c900a2b -> :sswitch_24c
        -0x29b36e67 -> :sswitch_240
        -0x2420b54e -> :sswitch_234
        -0x20b34e72 -> :sswitch_228
        -0x171366ac -> :sswitch_21b
        -0x152733fd -> :sswitch_20e
        -0x12717657 -> :sswitch_201
        -0xa310e8a -> :sswitch_1f4
        -0x8b4339f -> :sswitch_1e7
        -0x5ffb810 -> :sswitch_1db
        -0x1a6e7d0 -> :sswitch_1cf
        0x30c072 -> :sswitch_1c3
        0x323b5e -> :sswitch_1b7
        0x363585 -> :sswitch_1aa
        0x547b9a4 -> :sswitch_19e
        0x5a863a7 -> :sswitch_192
        0x68ac288 -> :sswitch_185
        0x68ac462 -> :sswitch_179
        0x6c257df -> :sswitch_16c
        0xb07b013 -> :sswitch_160
        0xe24026e -> :sswitch_153
        0x20c2801a -> :sswitch_147
        0x251993ad -> :sswitch_13a
        0x27c1d6ad -> :sswitch_12e
        0x2894b589 -> :sswitch_121
        0x2b19d394 -> :sswitch_114
        0x2d9208a0 -> :sswitch_107
        0x302bd54d -> :sswitch_fa
        0x304b5275 -> :sswitch_ed
        0x30b487aa -> :sswitch_e1
        0x310633ae -> :sswitch_d4
        0x35abdbf4 -> :sswitch_c8
        0x3d13bd7d -> :sswitch_bc
        0x404a0027 -> :sswitch_b0
        0x416a9e0f -> :sswitch_a3
        0x434f294b -> :sswitch_96
        0x48b444b2 -> :sswitch_8a
        0x49b0bd5a -> :sswitch_7d
        0x532d63e7 -> :sswitch_71
        0x5e69b6b6 -> :sswitch_64
        0x607e963c -> :sswitch_57
        0x63a518c2 -> :sswitch_4b
        0x6e6f530e -> :sswitch_3e
        0x6ef5269a -> :sswitch_32
        0x6f0f8fea -> :sswitch_25
        0x7c2bb6c4 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_566
    .packed-switch 0x0
        :pswitch_44b  #00000000
        :pswitch_44b  #00000001
        :pswitch_446  #00000002
        :pswitch_446  #00000003
        :pswitch_441  #00000004
        :pswitch_441  #00000005
        :pswitch_441  #00000006
        :pswitch_441  #00000007
        :pswitch_43c  #00000008
        :pswitch_43c  #00000009
        :pswitch_437  #0000000a
        :pswitch_42d  #0000000b
        :pswitch_428  #0000000c
        :pswitch_423  #0000000d
        :pswitch_41e  #0000000e
        :pswitch_419  #0000000f
        :pswitch_414  #00000010
        :pswitch_40f  #00000011
        :pswitch_40a  #00000012
        :pswitch_405  #00000013
        :pswitch_400  #00000014
        :pswitch_3fb  #00000015
        :pswitch_3f6  #00000016
        :pswitch_3f1  #00000017
        :pswitch_3ec  #00000018
        :pswitch_3e7  #00000019
        :pswitch_3e2  #0000001a
        :pswitch_3dd  #0000001b
        :pswitch_3d8  #0000001c
        :pswitch_3d3  #0000001d
        :pswitch_3ce  #0000001e
        :pswitch_3c9  #0000001f
        :pswitch_3c4  #00000020
        :pswitch_3bf  #00000021
        :pswitch_3ba  #00000022
        :pswitch_3b5  #00000023
        :pswitch_3b0  #00000024
        :pswitch_3ab  #00000025
        :pswitch_3a6  #00000026
        :pswitch_3a1  #00000027
        :pswitch_39c  #00000028
        :pswitch_397  #00000029
        :pswitch_392  #0000002a
        :pswitch_38d  #0000002b
        :pswitch_388  #0000002c
        :pswitch_383  #0000002d
        :pswitch_37e  #0000002e
        :pswitch_379  #0000002f
        :pswitch_374  #00000030
        :pswitch_36f  #00000031
        :pswitch_36a  #00000032
        :pswitch_365  #00000033
        :pswitch_360  #00000034
        :pswitch_35b  #00000035
        :pswitch_356  #00000036
        :pswitch_351  #00000037
        :pswitch_34c  #00000038
        :pswitch_347  #00000039
        :pswitch_342  #0000003a
        :pswitch_33d  #0000003b
        :pswitch_338  #0000003c
        :pswitch_333  #0000003d
        :pswitch_32e  #0000003e
    .end packed-switch
.end method

.method public onHelp()V
    .registers 3

    .line 2884
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2885
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mDumping:Z

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->dumpHelp(Ljava/io/PrintWriter;Z)V

    .line 2886
    return-void
.end method

.method resizeStack(ILandroid/graphics/Rect;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2594
    if-nez p2, :cond_d

    .line 2595
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    const-string p2, "Error: invalid input bounds"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2596
    const/4 p1, -0x1

    return p1

    .line 2598
    :cond_d
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->resizeStackUnchecked(ILandroid/graphics/Rect;IZ)I

    move-result p1

    return p1
.end method

.method resizeStackUnchecked(ILandroid/graphics/Rect;IZ)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2575
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, -0x1

    move v1, p1

    move-object v2, p2

    move v5, p4

    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityTaskManager;->resizeStack(ILandroid/graphics/Rect;ZZZI)V

    .line 2576
    int-to-long p1, p3

    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_f} :catch_10

    .line 2578
    goto :goto_11

    .line 2577
    :catch_10
    move-exception p1

    .line 2579
    :goto_11
    const/4 p1, 0x0

    return p1
.end method

.method runAttachAgent(Ljava/io/PrintWriter;)I
    .registers 5

    .line 2810
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.SET_ACTIVITY_WATCHER"

    const-string v2, "attach-agent"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2812
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2813
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 2815
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 2816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Unknown option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2817
    const/4 p1, -0x1

    return p1

    .line 2819
    :cond_2d
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ActivityManagerService;->attachAgent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2820
    const/4 p1, 0x0

    return p1
.end method

.method runBugReport(Ljava/io/PrintWriter;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1000
    const/4 v0, 0x0

    move v1, v0

    .line 1001
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 1002
    const-string v1, "--progress"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1003
    const/4 v1, 0x1

    goto :goto_2

    .line 1004
    :cond_12
    const-string v1, "--telephony"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1005
    const/4 v1, 0x4

    goto :goto_2

    .line 1007
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Unknown option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1008
    const/4 p1, -0x1

    return p1

    .line 1011
    :cond_36
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v2, v1}, Landroid/app/IActivityManager;->requestBugReport(I)V

    .line 1012
    const-string v1, "Your lovely bug report is being created; please be patient."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1013
    return v0
.end method

.method runClearDebugApp(Ljava/io/PrintWriter;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 981
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v1, v0, v2}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 982
    return v0
.end method

.method runClearWatchHeap(Ljava/io/PrintWriter;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 993
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 994
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V

    .line 995
    const/4 p1, 0x0

    return p1
.end method

.method runCrash(Ljava/io/PrintWriter;)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1033
    const/4 p1, -0x1

    move v4, p1

    .line 1036
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 1037
    const-string v1, "--user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1038
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v4

    goto :goto_2

    .line 1040
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Unknown option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1041
    return p1

    .line 1045
    :cond_32
    nop

    .line 1046
    const/4 v0, 0x0

    .line 1047
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 1050
    :try_start_38
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_3c
    .catch Ljava/lang/NumberFormatException; {:try_start_38 .. :try_end_3c} :catch_3f

    .line 1053
    move v2, p1

    move-object v3, v0

    goto :goto_42

    .line 1051
    :catch_3f
    move-exception v0

    .line 1052
    move v2, p1

    move-object v3, v1

    .line 1054
    :goto_42
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 v1, -0x1

    const/4 v6, 0x0

    const-string/jumbo v5, "shell-induced crash"

    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->crashApplication(IILjava/lang/String;ILjava/lang/String;Z)V

    .line 1055
    const/4 p1, 0x0

    return p1
.end method

.method runDisplay(Ljava/io/PrintWriter;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2450
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2451
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    const v3, 0x60e6318c

    if-eq v1, v3, :cond_f

    :cond_e
    goto :goto_1a

    :cond_f
    const-string/jumbo v1, "move-stack"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    goto :goto_1b

    :goto_1a
    move v1, v2

    :goto_1b
    if-eqz v1, :cond_3b

    .line 2455
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: unknown command \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2456
    return v2

    .line 2453
    :cond_3b
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runDisplayMoveStack(Ljava/io/PrintWriter;)I

    move-result p1

    return p1
.end method

.method runDisplayMoveStack(Ljava/io/PrintWriter;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2517
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 2518
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 2519
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2520
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2521
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {v1, p1, v0}, Landroid/app/IActivityTaskManager;->moveStackToDisplay(II)V

    .line 2522
    const/4 p1, 0x0

    return p1
.end method

.method runDumpHeap(Ljava/io/PrintWriter;)I
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 884
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 885
    nop

    .line 886
    nop

    .line 887
    nop

    .line 888
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x2

    move v9, v3

    move v10, v4

    move v11, v10

    move v8, v5

    .line 891
    :cond_12
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v5

    const/4 v15, -0x1

    if-eqz v5, :cond_66

    .line 892
    const-string v6, "--user"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 893
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v8

    .line 894
    if-ne v8, v15, :cond_12

    .line 895
    const-string v0, "Error: Can\'t dump heap with user \'all\'"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 896
    return v15

    .line 898
    :cond_31
    const-string v6, "-n"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 899
    move v9, v4

    goto :goto_12

    .line 900
    :cond_3b
    const-string v6, "-g"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_45

    .line 901
    move v11, v3

    goto :goto_12

    .line 902
    :cond_45
    const-string v6, "-m"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 903
    nop

    .line 904
    move v10, v3

    move v9, v4

    goto :goto_12

    .line 906
    :cond_51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Unknown option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 907
    return v15

    .line 910
    :cond_66
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    .line 911
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    .line 912
    if-nez v6, :cond_9a

    .line 913
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 914
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v6, v12, v13}, Landroid/text/format/Time;->set(J)V

    .line 915
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "/data/local/tmp/heapdump-"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "%Y%m%d-%H%M%S"

    invoke-virtual {v6, v12}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".prof"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v12, v6

    goto :goto_9b

    .line 912
    :cond_9a
    move-object v12, v6

    .line 917
    :goto_9b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 918
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    .line 920
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 921
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 922
    const-string/jumbo v6, "w"

    invoke-virtual {v0, v12, v6}, Lcom/android/server/am/ActivityManagerShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v13

    .line 923
    if-nez v13, :cond_c4

    .line 924
    return v15

    .line 927
    :cond_c4
    new-instance v14, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v14, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 929
    new-instance v3, Landroid/os/RemoteCallback;

    new-instance v6, Lcom/android/server/am/ActivityManagerShellCommand$2;

    invoke-direct {v6, v0, v14}, Lcom/android/server/am/ActivityManagerShellCommand$2;-><init>(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/util/concurrent/CountDownLatch;)V

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V

    .line 936
    iget-object v6, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    move-object v7, v5

    move-object v0, v14

    move-object v14, v3

    invoke-interface/range {v6 .. v14}, Landroid/app/IActivityManager;->dumpHeap(Ljava/lang/String;IZZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)Z

    move-result v3

    if-nez v3, :cond_f4

    .line 938
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HEAP DUMP FAILED on process "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 939
    return v15

    .line 941
    :cond_f4
    const-string v3, "Waiting for dump to finish..."

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 942
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    .line 944
    :try_start_fc
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_ff
    .catch Ljava/lang/InterruptedException; {:try_start_fc .. :try_end_ff} :catch_100

    .line 947
    goto :goto_106

    .line 945
    :catch_100
    move-exception v0

    .line 946
    const-string v0, "Caught InterruptedException"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 949
    :goto_106
    return v4
.end method

.method runForceStop(Ljava/io/PrintWriter;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1017
    const/4 p1, -0x1

    move v0, p1

    .line 1020
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 1021
    const-string v0, "--user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1022
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    .line 1024
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Unknown option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1025
    return p1

    .line 1028
    :cond_32
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 1029
    const/4 p1, 0x0

    return p1
.end method

.method runGetConfig(Ljava/io/PrintWriter;)I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2180
    nop

    .line 2181
    nop

    .line 2182
    nop

    .line 2183
    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v6, v1

    move v3, v2

    move v4, v3

    move v5, v4

    .line 2186
    :goto_a
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_73

    .line 2187
    const-string v8, "--days"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 2188
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 2189
    if-lez v6, :cond_23

    goto :goto_a

    .line 2190
    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "--days must be a positive integer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2192
    :cond_2b
    const-string v8, "--proto"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    .line 2193
    move v4, v0

    goto :goto_a

    .line 2194
    :cond_35
    const-string v8, "--device"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3f

    .line 2195
    move v5, v0

    goto :goto_a

    .line 2196
    :cond_3f
    const-string v3, "--display"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 2197
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2198
    if-ltz v3, :cond_52

    goto :goto_a

    .line 2199
    :cond_52
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "--display must be a non-negative integer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2202
    :cond_5a
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Unknown option: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2203
    return v1

    .line 2207
    :cond_73
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    .line 2208
    if-nez v12, :cond_85

    .line 2209
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    const-string v0, "Activity manager has no configuration"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2210
    return v1

    .line 2213
    :cond_85
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-class v7, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 2214
    invoke-virtual {v0, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 2216
    if-nez v0, :cond_b0

    .line 2217
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Display does not exist: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2218
    return v1

    .line 2221
    :cond_b0
    new-instance v13, Landroid/util/DisplayMetrics;

    invoke-direct {v13}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2222
    invoke-virtual {v0, v13}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2224
    if-eqz v4, :cond_dd

    .line 2225
    new-instance p1, Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 2226
    const-wide v0, 0x10b00000001L

    invoke-virtual {v12, p1, v0, v1, v13}, Landroid/content/res/Configuration;->writeResConfigToProto(Landroid/util/proto/ProtoOutputStream;JLandroid/util/DisplayMetrics;)V

    .line 2227
    if-eqz v5, :cond_d8

    .line 2228
    const-wide v9, 0x10b00000002L

    const/4 v11, 0x0

    move-object v7, p0

    move-object v8, p1

    invoke-direct/range {v7 .. v13}, Lcom/android/server/am/ActivityManagerShellCommand;->writeDeviceConfig(Landroid/util/proto/ProtoOutputStream;JLjava/io/PrintWriter;Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 2230
    :cond_d8
    invoke-virtual {p1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 2231
    goto/16 :goto_151

    .line 2232
    :cond_dd
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "config: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12, v13}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "abi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const-string v3, ","

    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2234
    if-eqz v5, :cond_11b

    .line 2235
    const/4 v8, 0x0

    const-wide/16 v9, -0x1

    move-object v7, p0

    move-object v11, p1

    invoke-direct/range {v7 .. v13}, Lcom/android/server/am/ActivityManagerShellCommand;->writeDeviceConfig(Landroid/util/proto/ProtoOutputStream;JLjava/io/PrintWriter;Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 2238
    :cond_11b
    if-ltz v6, :cond_151

    .line 2239
    invoke-direct {p0, v6}, Lcom/android/server/am/ActivityManagerShellCommand;->getRecentConfigurations(I)Ljava/util/List;

    move-result-object v0

    .line 2240
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 2241
    if-lez v1, :cond_151

    .line 2242
    const-string/jumbo v3, "recentConfigs:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2243
    move v3, v2

    :goto_12e
    if-ge v3, v1, :cond_151

    .line 2244
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  config: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2245
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/Configuration;

    .line 2244
    invoke-static {v5}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2243
    add-int/lit8 v3, v3, 0x1

    goto :goto_12e

    .line 2251
    :cond_151
    :goto_151
    return v2
.end method

.method runGetCurrentUser(Ljava/io/PrintWriter;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1718
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    const-string v1, "Current user not set"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 1720
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1721
    const/4 p1, 0x0

    return p1
.end method

.method runGetInactive(Ljava/io/PrintWriter;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2373
    const/4 v0, -0x2

    .line 2376
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 2377
    const-string v0, "--user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2378
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 2380
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Unknown option: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2381
    const/4 p1, -0x1

    return p1

    .line 2384
    :cond_32
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 2386
    const-string/jumbo v2, "usagestats"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v2

    .line 2388
    invoke-interface {v2, v1, v0}, Landroid/app/usage/IUsageStatsManager;->isAppInactive(Ljava/lang/String;I)Z

    move-result v0

    .line 2389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Idle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2390
    const/4 p1, 0x0

    return p1
.end method

.method runGetStandbyBucket(Ljava/io/PrintWriter;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2343
    const/4 v0, -0x2

    .line 2346
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 2347
    const-string v0, "--user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2348
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 2350
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Unknown option: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2351
    const/4 p1, -0x1

    return p1

    .line 2354
    :cond_32
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 2356
    const-string/jumbo v2, "usagestats"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v2

    .line 2358
    if-eqz v1, :cond_4c

    .line 2359
    const/4 v3, 0x0

    invoke-interface {v2, v1, v3, v0}, Landroid/app/usage/IUsageStatsManager;->getAppStandbyBucket(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 2360
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2361
    goto :goto_76

    .line 2362
    :cond_4c
    const-string v1, "com.android.shell"

    invoke-interface {v2, v1, v0}, Landroid/app/usage/IUsageStatsManager;->getAppStandbyBuckets(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 2364
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_76

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/AppStandbyInfo;

    .line 2365
    iget-object v2, v1, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2366
    iget v1, v1, Landroid/app/usage/AppStandbyInfo;->mStandbyBucket:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2367
    goto :goto_5a

    .line 2369
    :cond_76
    :goto_76
    const/4 p1, 0x0

    return p1
.end method

.method runGetStartedUserState(Ljava/io/PrintWriter;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1847
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.DUMP"

    const-string/jumbo v2, "runGetStartedUserState()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1849
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1851
    :try_start_12
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->getStartedUserState(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_1b} :catch_1c

    .line 1854
    goto :goto_31

    .line 1852
    :catch_1c
    move-exception v1

    .line 1853
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User is not started: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1855
    :goto_31
    const/4 p1, 0x0

    return p1
.end method

.method runHang(Ljava/io/PrintWriter;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1621
    const/4 v0, 0x0

    move v1, v0

    .line 1622
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 1623
    const-string v1, "--allow-restart"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1624
    const/4 v1, 0x1

    goto :goto_2

    .line 1626
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Unknown option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1627
    const/4 p1, -0x1

    return p1

    .line 1631
    :cond_2c
    const-string v2, "Hanging the system..."

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1632
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 1633
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    invoke-interface {p1, v2, v1}, Landroid/app/IActivityManager;->hang(Landroid/os/IBinder;Z)V

    .line 1634
    return v0
.end method

.method runIdleMaintenance(Ljava/io/PrintWriter;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1652
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 1653
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Unknown option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1654
    const/4 p1, -0x1

    return p1

    .line 1657
    :cond_20
    const-string v0, "Performing idle maintenance..."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1658
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {p1}, Landroid/app/IActivityManager;->sendIdleJobTrigger()V

    .line 1659
    const/4 p1, 0x0

    return p1
.end method

.method runIsUserStopped(Ljava/io/PrintWriter;)I
    .registers 4

    .line 1840
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 1841
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->isUserStopped(I)Z

    move-result v0

    .line 1842
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1843
    const/4 p1, 0x0

    return p1
.end method

.method runKill(Ljava/io/PrintWriter;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1059
    const/4 p1, -0x1

    move v0, p1

    .line 1062
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 1063
    const-string v0, "--user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1064
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    .line 1066
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Unknown option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1067
    return p1

    .line 1070
    :cond_32
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Landroid/app/IActivityManager;->killBackgroundProcesses(Ljava/lang/String;I)V

    .line 1071
    const/4 p1, 0x0

    return p1
.end method

.method runKillAll(Ljava/io/PrintWriter;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1075
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {p1}, Landroid/app/IActivityManager;->killAllBackgroundProcesses()V

    .line 1076
    const/4 p1, 0x0

    return p1
.end method

.method runMakeIdle(Ljava/io/PrintWriter;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1080
    const/4 p1, -0x1

    move v0, p1

    .line 1083
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 1084
    const-string v0, "--user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1085
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    .line 1087
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Unknown option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1088
    return p1

    .line 1091
    :cond_32
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Landroid/app/IActivityManager;->makePackageIdle(Ljava/lang/String;I)V

    .line 1092
    const/4 p1, 0x0

    return p1
.end method

.method runMonitor(Ljava/io/PrintWriter;)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1409
    nop

    .line 1410
    const/4 v0, 0x0

    const/4 v1, 0x0

    move v7, v0

    move-object v6, v1

    .line 1411
    :goto_5
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 1412
    const-string v2, "--gdb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1413
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    .line 1414
    :cond_18
    const-string v2, "-m"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1415
    const/4 v7, 0x1

    goto :goto_5

    .line 1417
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Unknown option: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1418
    const/4 p1, -0x1

    return p1

    .line 1422
    :cond_3c
    new-instance v1, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    .line 1423
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getRawInputStream()Ljava/io/InputStream;

    move-result-object v5

    move-object v2, v1

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;-><init>(Landroid/app/IActivityManager;Ljava/io/PrintWriter;Ljava/io/InputStream;Ljava/lang/String;Z)V

    .line 1424
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->run()V

    .line 1425
    return v0
.end method

.method runMoveTopActivityToPinnedStack(Ljava/io/PrintWriter;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2637
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 2638
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2639
    const/4 v1, -0x1

    if-nez v0, :cond_19

    .line 2640
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    const-string v0, "Error: invalid input bounds"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2641
    return v1

    .line 2644
    :cond_19
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {v2, p1, v0}, Landroid/app/IActivityTaskManager;->moveTopActivityToPinnedStack(ILandroid/graphics/Rect;)Z

    move-result p1

    if-nez p1, :cond_2b

    .line 2645
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    const-string v0, "Didn\'t move top activity to pinned stack."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2646
    return v1

    .line 2648
    :cond_2b
    const/4 p1, 0x0

    return p1
.end method

.method runNoHomeScreen(Ljava/io/PrintWriter;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2855
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->getResources(Ljava/io/PrintWriter;)Landroid/content/res/Resources;

    move-result-object v0

    .line 2856
    if-nez v0, :cond_8

    .line 2857
    const/4 p1, -0x1

    return p1

    .line 2859
    :cond_8
    const v1, 0x11100a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2860
    const/4 p1, 0x0

    return p1
.end method

.method runPackageImportance(Ljava/io/PrintWriter;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1688
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 1689
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const-string v2, "com.android.shell"

    invoke-interface {v1, v0, v2}, Landroid/app/IActivityManager;->getPackageProcessState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1690
    invoke-static {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1691
    const/4 p1, 0x0

    return p1
.end method

.method runRestart(Ljava/io/PrintWriter;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1639
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 1640
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Unknown option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1641
    const/4 p1, -0x1

    return p1

    .line 1644
    :cond_20
    const-string v0, "Restart the system..."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1645
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 1646
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {p1}, Landroid/app/IActivityManager;->restart()V

    .line 1647
    const/4 p1, 0x0

    return p1
.end method

.method runScreenCompat(Ljava/io/PrintWriter;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1663
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 1665
    const-string/jumbo v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    .line 1666
    move v0, v1

    goto :goto_1b

    .line 1667
    :cond_11
    const-string/jumbo v0, "off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1668
    move v0, v2

    .line 1674
    :goto_1b
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 1677
    :cond_1f
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    if-eqz v0, :cond_25

    .line 1678
    move v4, v1

    goto :goto_26

    .line 1679
    :cond_25
    move v4, v2

    .line 1677
    :goto_26
    invoke-interface {v3, p1, v4}, Landroid/app/IActivityManager;->setPackageScreenCompatMode(Ljava/lang/String;I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_29} :catch_2a

    .line 1681
    goto :goto_2b

    .line 1680
    :catch_2a
    move-exception p1

    .line 1682
    :goto_2b
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p1

    .line 1683
    if-nez p1, :cond_1f

    .line 1684
    return v2

    .line 1670
    :cond_32
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: enabled mode must be \'on\' or \'off\' at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1671
    const/4 p1, -0x1

    return p1
.end method

.method runSendBroadcast(Ljava/io/PrintWriter;)I
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 710
    const/4 v2, -0x2

    :try_start_5
    invoke-direct {v0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent(I)Landroid/content/Intent;

    move-result-object v5
    :try_end_9
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_9} :catch_51

    .line 713
    nop

    .line 714
    const/high16 v2, 0x400000

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 715
    new-instance v2, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;

    invoke-direct {v2, v1}, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;-><init>(Ljava/io/PrintWriter;)V

    .line 716
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mReceiverPermission:Ljava/lang/String;

    const/16 v17, 0x0

    if-nez v3, :cond_1d

    const/4 v3, 0x0

    move-object v11, v3

    goto :goto_23

    .line 717
    :cond_1d
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object v3, v4, v17

    move-object v11, v4

    .line 718
    :goto_23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcasting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 719
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    .line 720
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    iget v0, v0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    move-object v7, v2

    move/from16 v16, v0

    invoke-interface/range {v3 .. v16}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    .line 722
    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;->waitForFinish()V

    .line 723
    return v17

    .line 711
    :catch_51
    move-exception v0

    move-object v1, v0

    .line 712
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method runSendTrimMemory(Ljava/io/PrintWriter;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2394
    const/4 p1, -0x2

    .line 2396
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_3d

    .line 2397
    const-string p1, "--user"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 2398
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result p1

    .line 2399
    if-ne p1, v1, :cond_1

    .line 2400
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    const-string v0, "Error: Can\'t use user \'all\'"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2401
    return v1

    .line 2404
    :cond_24
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Unknown option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2405
    return v1

    .line 2409
    :cond_3d
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2410
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 2412
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x5

    sparse-switch v3, :sswitch_data_e0

    :cond_4e
    goto :goto_95

    :sswitch_4f
    const-string v3, "HIDDEN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    move v3, v4

    goto :goto_96

    :sswitch_59
    const-string v3, "RUNNING_LOW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    const/4 v3, 0x3

    goto :goto_96

    :sswitch_63
    const-string v3, "COMPLETE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    const/4 v3, 0x6

    goto :goto_96

    :sswitch_6d
    const-string v3, "MODERATE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    const/4 v3, 0x4

    goto :goto_96

    :sswitch_77
    const-string v3, "RUNNING_MODERATE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    const/4 v3, 0x1

    goto :goto_96

    :sswitch_81
    const-string v3, "BACKGROUND"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    const/4 v3, 0x2

    goto :goto_96

    :sswitch_8b
    const-string v3, "RUNNING_CRITICAL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    move v3, v5

    goto :goto_96

    :goto_95
    move v3, v1

    :goto_96
    packed-switch v3, :pswitch_data_fe

    .line 2436
    :try_start_99
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_9d
    .catch Ljava/lang/NumberFormatException; {:try_start_99 .. :try_end_9d} :catch_c6

    goto :goto_b2

    .line 2432
    :pswitch_9e  #0x6
    const/16 v5, 0x50

    .line 2433
    goto :goto_b3

    .line 2429
    :pswitch_a1  #0x5
    const/16 v5, 0xf

    .line 2430
    goto :goto_b3

    .line 2426
    :pswitch_a4  #0x4
    const/16 v5, 0x3c

    .line 2427
    goto :goto_b3

    .line 2423
    :pswitch_a7  #0x3
    const/16 v5, 0xa

    .line 2424
    goto :goto_b3

    .line 2420
    :pswitch_aa  #0x2
    const/16 v5, 0x28

    .line 2421
    goto :goto_b3

    .line 2417
    :pswitch_ad  #0x1
    nop

    .line 2418
    goto :goto_b3

    .line 2414
    :pswitch_af  #0x0
    const/16 v5, 0x14

    .line 2415
    goto :goto_b3

    .line 2440
    :goto_b2
    nop

    .line 2442
    :goto_b3
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v2, v0, p1, v5}, Landroid/app/IActivityManager;->setProcessMemoryTrimLevel(Ljava/lang/String;II)Z

    move-result p1

    if-nez p1, :cond_c5

    .line 2443
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    const-string v0, "Unknown error: failed to set trim level"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2444
    return v1

    .line 2446
    :cond_c5
    return v4

    .line 2437
    :catch_c6
    move-exception p1

    .line 2438
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Unknown level option: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2439
    return v1

    :sswitch_data_e0
    .sparse-switch
        -0x73d1a5c1 -> :sswitch_8b
        -0x327dbed2 -> :sswitch_81
        -0xd10205d -> :sswitch_77
        0x9c2ed03 -> :sswitch_6d
        0xaeb2139 -> :sswitch_63
        0x3fef1094 -> :sswitch_59
        0x7f0191aa -> :sswitch_4f
    .end sparse-switch

    :pswitch_data_fe
    .packed-switch 0x0
        :pswitch_af  #00000000
        :pswitch_ad  #00000001
        :pswitch_aa  #00000002
        :pswitch_a7  #00000003
        :pswitch_a4  #00000004
        :pswitch_a1  #00000005
        :pswitch_9e  #00000006
    .end packed-switch
.end method

.method runSetAgentApp(Ljava/io/PrintWriter;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 974
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 975
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 976
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v1, p1, v0}, Landroid/app/IActivityManager;->setAgentApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    const/4 p1, 0x0

    return p1
.end method

.method runSetDebugApp(Ljava/io/PrintWriter;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 953
    nop

    .line 954
    const/4 p1, 0x1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 957
    :goto_5
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_39

    .line 958
    const-string v4, "-w"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 959
    move v1, p1

    goto :goto_5

    .line 960
    :cond_15
    const-string v2, "--persistent"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 961
    move v2, p1

    goto :goto_5

    .line 963
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Unknown option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 964
    const/4 p1, -0x1

    return p1

    .line 968
    :cond_39
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 969
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v3, p1, v1, v2}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 970
    return v0
.end method

.method runSetInactive(Ljava/io/PrintWriter;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2261
    const/4 p1, -0x2

    .line 2264
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 2265
    const-string p1, "--user"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 2266
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    .line 2268
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Unknown option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2269
    const/4 p1, -0x1

    return p1

    .line 2272
    :cond_32
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2273
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 2275
    const-string/jumbo v2, "usagestats"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v2

    .line 2277
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v2, v0, v1, p1}, Landroid/app/usage/IUsageStatsManager;->setAppInactive(Ljava/lang/String;ZI)V

    .line 2278
    const/4 p1, 0x0

    return p1
.end method

.method runSetStandbyBucket(Ljava/io/PrintWriter;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2305
    const/4 p1, -0x2

    .line 2308
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_32

    .line 2309
    const-string p1, "--user"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 2310
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    .line 2312
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Unknown option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2313
    return v1

    .line 2316
    :cond_32
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2317
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 2318
    invoke-direct {p0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->bucketNameToBucketValue(Ljava/lang/String;)I

    move-result v3

    .line 2319
    if-gez v3, :cond_41

    return v1

    .line 2320
    :cond_41
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    if-eqz v1, :cond_4a

    const/4 v1, 0x1

    goto :goto_4b

    :cond_4a
    move v1, v4

    .line 2323
    :goto_4b
    const-string/jumbo v5, "usagestats"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v5

    .line 2325
    if-nez v1, :cond_60

    .line 2326
    invoke-direct {p0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->bucketNameToBucketValue(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v5, v0, v1, p1}, Landroid/app/usage/IUsageStatsManager;->setAppStandbyBucket(Ljava/lang/String;II)V

    goto :goto_8f

    .line 2328
    :cond_60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2329
    new-instance v2, Landroid/app/usage/AppStandbyInfo;

    invoke-direct {v2, v0, v3}, Landroid/app/usage/AppStandbyInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2330
    :goto_6d
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_87

    .line 2331
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 2332
    invoke-direct {p0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->bucketNameToBucketValue(Ljava/lang/String;)I

    move-result v2

    .line 2333
    if-gez v2, :cond_7e

    goto :goto_6d

    .line 2334
    :cond_7e
    new-instance v3, Landroid/app/usage/AppStandbyInfo;

    invoke-direct {v3, v0, v2}, Landroid/app/usage/AppStandbyInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6d

    .line 2336
    :cond_87
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 2337
    invoke-interface {v5, v0, p1}, Landroid/app/usage/IUsageStatsManager;->setAppStandbyBuckets(Landroid/content/pm/ParceledListSlice;I)V

    .line 2339
    :goto_8f
    return v4
.end method

.method runSetWatchHeap(Ljava/io/PrintWriter;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 986
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 987
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 988
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V

    .line 989
    const/4 p1, 0x0

    return p1
.end method

.method runStack(Ljava/io/PrintWriter;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2461
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2462
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_be

    :cond_c
    goto :goto_6f

    :sswitch_d
    const-string/jumbo v1, "move-task"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    goto :goto_70

    :sswitch_18
    const-string/jumbo v1, "positiontask"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x4

    goto :goto_70

    :sswitch_23
    const-string v1, "list"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x5

    goto :goto_70

    :sswitch_2d
    const-string v1, "info"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x6

    goto :goto_70

    :sswitch_37
    const-string/jumbo v1, "resize"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_70

    :sswitch_42
    const-string/jumbo v1, "remove"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v1, 0x8

    goto :goto_70

    :sswitch_4e
    const-string/jumbo v1, "move-top-activity-to-pinned-stack"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x7

    goto :goto_70

    :sswitch_59
    const-string/jumbo v1, "resize-docked-stack"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x3

    goto :goto_70

    :sswitch_64
    const-string/jumbo v1, "resize-animated"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x2

    goto :goto_70

    :goto_6f
    move v1, v2

    :goto_70
    packed-switch v1, :pswitch_data_e4

    .line 2482
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: unknown command \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2483
    return v2

    .line 2480
    :pswitch_91  #0x8
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runStackRemove(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 2478
    :pswitch_96  #0x7
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runMoveTopActivityToPinnedStack(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 2476
    :pswitch_9b  #0x6
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runStackInfo(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 2474
    :pswitch_a0  #0x5
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runStackList(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 2472
    :pswitch_a5  #0x4
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runStackPositionTask(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 2470
    :pswitch_aa  #0x3
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runStackResizeDocked(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 2468
    :pswitch_af  #0x2
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runStackResizeAnimated(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 2466
    :pswitch_b4  #0x1
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runStackResize(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 2464
    :pswitch_b9  #0x0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runStackMoveTask(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    :sswitch_data_be
    .sparse-switch
        -0x5c78e564 -> :sswitch_64
        -0x44ac447a -> :sswitch_59
        -0x407f3e65 -> :sswitch_4e
        -0x37b5077c -> :sswitch_42
        -0x37b2634c -> :sswitch_37
        0x3164ae -> :sswitch_2d
        0x32b09e -> :sswitch_23
        0x216122e -> :sswitch_18
        0x3ceed601 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_e4
    .packed-switch 0x0
        :pswitch_b9  #00000000
        :pswitch_b4  #00000001
        :pswitch_af  #00000002
        :pswitch_aa  #00000003
        :pswitch_a5  #00000004
        :pswitch_a0  #00000005
        :pswitch_9b  #00000006
        :pswitch_96  #00000007
        :pswitch_91  #00000008
    .end packed-switch
.end method

.method runStackInfo(Ljava/io/PrintWriter;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2622
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2623
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2624
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {v2, v0, v1}, Landroid/app/IActivityTaskManager;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    .line 2625
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2626
    const/4 p1, 0x0

    return p1
.end method

.method runStackList(Ljava/io/PrintWriter;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2614
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getAllStackInfos()Ljava/util/List;

    move-result-object v0

    .line 2615
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$StackInfo;

    .line 2616
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2617
    goto :goto_a

    .line 2618
    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method runStackMoveTask(Ljava/io/PrintWriter;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2526
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 2527
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 2528
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2529
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2530
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 2532
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_20

    .line 2533
    const/4 v1, 0x1

    goto :goto_29

    .line 2534
    :cond_20
    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 2535
    move v1, v3

    .line 2541
    :goto_29
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {v2, p1, v0, v1}, Landroid/app/IActivityTaskManager;->moveTaskToStack(IIZ)V

    .line 2542
    return v3

    .line 2537
    :cond_2f
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: bad toTop arg: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2538
    const/4 p1, -0x1

    return p1
.end method

.method runStackPositionTask(Ljava/io/PrintWriter;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2602
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 2603
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 2604
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2605
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2606
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 2607
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2609
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {v2, p1, v0, v1}, Landroid/app/IActivityTaskManager;->positionTaskInStack(III)V

    .line 2610
    const/4 p1, 0x0

    return p1
.end method

.method runStackRemove(Ljava/io/PrintWriter;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2630
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 2631
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 2632
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->removeStack(I)V

    .line 2633
    const/4 p1, 0x0

    return p1
.end method

.method runStackResize(Ljava/io/PrintWriter;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2546
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 2547
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 2548
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2549
    if-nez v0, :cond_19

    .line 2550
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    const-string v0, "Error: invalid input bounds"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2551
    const/4 p1, -0x1

    return p1

    .line 2553
    :cond_19
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->resizeStack(ILandroid/graphics/Rect;I)I

    move-result p1

    return p1
.end method

.method runStackResizeAnimated(Ljava/io/PrintWriter;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2557
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 2558
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 2560
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2561
    const/4 v0, 0x0

    goto :goto_28

    .line 2563
    :cond_17
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2564
    if-nez v0, :cond_28

    .line 2565
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    const-string v0, "Error: invalid input bounds"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2566
    const/4 p1, -0x1

    return p1

    .line 2569
    :cond_28
    :goto_28
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->resizeStackUnchecked(ILandroid/graphics/Rect;IZ)I

    move-result p1

    return p1
.end method

.method runStackResizeDocked(Ljava/io/PrintWriter;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2583
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 2584
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 2585
    if-eqz v1, :cond_17

    if-nez v2, :cond_d

    goto :goto_17

    .line 2589
    :cond_d
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityTaskManager;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2590
    const/4 p1, 0x0

    return p1

    .line 2586
    :cond_17
    :goto_17
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    const-string v0, "Error: invalid input bounds"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2587
    const/4 p1, -0x1

    return p1
.end method

.method runStartActivity(Ljava/io/PrintWriter;)I
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 409
    const/4 v0, -0x2

    :try_start_5
    invoke-direct {v1, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent(I)Landroid/content/Intent;

    move-result-object v15
    :try_end_9
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_9} :catch_385

    .line 412
    nop

    .line 414
    iget v0, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    const/4 v14, -0x1

    const/4 v13, 0x1

    if-ne v0, v14, :cond_1a

    .line 415
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Error: Can\'t start service with user \'all\'"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 416
    return v13

    .line 419
    :cond_1a
    invoke-virtual {v15}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 420
    if-nez v0, :cond_44

    invoke-virtual {v15}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_44

    .line 421
    invoke-virtual {v15}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 422
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-virtual {v15}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iget v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    invoke-interface {v0, v3, v4}, Landroid/app/IActivityManager;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    goto :goto_45

    .line 426
    :cond_44
    move-object v12, v0

    :goto_45
    iget-boolean v0, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mStopOption:Z

    const/4 v11, 0x0

    if-eqz v0, :cond_eb

    .line 428
    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 429
    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_ac

    .line 432
    :cond_59
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 433
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    iget v6, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 432
    const-string v9, "ActivityManagerShellCommand"

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 435
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, v15, v12, v11, v0}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 436
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 437
    if-eqz v0, :cond_d2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_83

    goto :goto_d2

    .line 441
    :cond_83
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v13, :cond_a2

    .line 442
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Intent matches multiple activities; can\'t stop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 445
    return v13

    .line 447
    :cond_a2
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 449
    :goto_ac
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 450
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    .line 451
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    iget v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    invoke-interface {v3, v0, v4}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 453
    const-wide/16 v3, 0xfa

    :try_start_cc
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_cf
    .catch Ljava/lang/InterruptedException; {:try_start_cc .. :try_end_cf} :catch_d0

    .line 455
    goto :goto_eb

    .line 454
    :catch_d0
    move-exception v0

    goto :goto_eb

    .line 438
    :cond_d2
    :goto_d2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Intent does not match any activities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 440
    return v13

    .line 458
    :cond_eb
    :goto_eb
    nop

    .line 460
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mProfileFile:Ljava/lang/String;

    const/16 v16, 0x0

    if-nez v0, :cond_fa

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mAgent:Ljava/lang/String;

    if-eqz v0, :cond_f7

    goto :goto_fa

    :cond_f7
    move-object/from16 v0, v16

    goto :goto_11f

    .line 461
    :cond_fa
    :goto_fa
    nop

    .line 462
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mProfileFile:Ljava/lang/String;

    if-eqz v0, :cond_10b

    .line 463
    const-string/jumbo v3, "w"

    invoke-virtual {v1, v0, v3}, Lcom/android/server/am/ActivityManagerShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 464
    if-nez v0, :cond_109

    .line 465
    return v13

    .line 464
    :cond_109
    move-object v5, v0

    goto :goto_10d

    .line 462
    :cond_10b
    move-object/from16 v5, v16

    .line 468
    :goto_10d
    new-instance v0, Landroid/app/ProfilerInfo;

    iget-object v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mProfileFile:Ljava/lang/String;

    iget v6, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mSamplingInterval:I

    iget-boolean v7, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mAutoStop:Z

    iget-boolean v8, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mStreaming:Z

    iget-object v9, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mAgent:Ljava/lang/String;

    iget-boolean v10, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mAttachAgentDuringBind:Z

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZZLjava/lang/String;Z)V

    .line 472
    :goto_11f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 473
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    .line 474
    const/high16 v3, 0x10000000

    invoke-virtual {v15, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 476
    nop

    .line 478
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    .line 479
    nop

    .line 480
    iget v3, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mDisplayId:I

    if-eq v3, v14, :cond_14f

    .line 481
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    .line 482
    iget v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mDisplayId:I

    invoke-virtual {v3, v4}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    goto :goto_151

    .line 480
    :cond_14f
    move-object/from16 v3, v16

    .line 484
    :goto_151
    iget v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mWindowingMode:I

    if-eqz v4, :cond_160

    .line 485
    if-nez v3, :cond_15b

    .line 486
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    .line 488
    :cond_15b
    iget v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mWindowingMode:I

    invoke-virtual {v3, v4}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 490
    :cond_160
    iget v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mActivityType:I

    if-eqz v4, :cond_16f

    .line 491
    if-nez v3, :cond_16a

    .line 492
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    .line 494
    :cond_16a
    iget v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mActivityType:I

    invoke-virtual {v3, v4}, Landroid/app/ActivityOptions;->setLaunchActivityType(I)V

    .line 496
    :cond_16f
    iget v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskId:I

    if-eq v4, v14, :cond_185

    .line 497
    if-nez v3, :cond_179

    .line 498
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    .line 500
    :cond_179
    iget v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskId:I

    invoke-virtual {v3, v4}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 502
    iget-boolean v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mIsTaskOverlay:Z

    if-eqz v4, :cond_185

    .line 503
    invoke-virtual {v3, v13, v13}, Landroid/app/ActivityOptions;->setTaskOverlay(ZZ)V

    .line 506
    :cond_185
    iget-boolean v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mIsLockTask:Z

    if-eqz v4, :cond_192

    .line 507
    if-nez v3, :cond_18f

    .line 508
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    .line 510
    :cond_18f
    invoke-virtual {v3, v13}, Landroid/app/ActivityOptions;->setLockTaskEnabled(Z)Landroid/app/ActivityOptions;

    .line 512
    :cond_192
    iget-boolean v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    if-eqz v4, :cond_1ca

    .line 513
    iget-object v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v7, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    .line 515
    if-eqz v3, :cond_1a6

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    move-object/from16 v16, v3

    :cond_1a6
    iget v6, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    .line 513
    const-string v19, "com.android.shell"

    move-object v3, v4

    move-object v4, v5

    move-object/from16 v5, v19

    move/from16 v19, v6

    move-object v6, v15

    move/from16 v20, v7

    move-object v7, v12

    move/from16 v21, v11

    move/from16 v11, v20

    move-object/from16 v20, v12

    move-object v12, v0

    move-object/from16 v13, v16

    move/from16 v22, v14

    move/from16 v14, v19

    invoke-virtual/range {v3 .. v14}, Lcom/android/server/am/ActivityManagerService;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/WaitResult;

    move-result-object v0

    .line 516
    iget v3, v0, Landroid/app/WaitResult;->result:I

    move-object/from16 v16, v0

    goto :goto_1f1

    .line 518
    :cond_1ca
    move/from16 v21, v11

    move-object/from16 v20, v12

    move/from16 v22, v14

    iget-object v4, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mStartFlags:I

    .line 520
    if-eqz v3, :cond_1e0

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    move-object v13, v3

    goto :goto_1e2

    :cond_1e0
    move-object/from16 v13, v16

    :goto_1e2
    iget v14, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    .line 518
    const-string v6, "com.android.shell"

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v15

    move-object/from16 v7, v20

    move-object v12, v0

    invoke-virtual/range {v3 .. v14}, Lcom/android/server/am/ActivityManagerService;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v3

    .line 522
    :goto_1f1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 523
    iget-boolean v0, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    if-eqz v0, :cond_1fb

    move-object v0, v2

    goto :goto_1ff

    :cond_1fb
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 524
    :goto_1ff
    nop

    .line 525
    const/16 v6, -0x62

    if-eq v3, v6, :cond_2b6

    const/16 v6, -0x61

    if-eq v3, v6, :cond_2a0

    if-eqz v3, :cond_29d

    const/4 v6, 0x1

    if-eq v3, v6, :cond_295

    const/4 v7, 0x2

    if-eq v3, v7, :cond_28d

    const/4 v7, 0x3

    if-eq v3, v7, :cond_285

    const/16 v7, 0x64

    if-eq v3, v7, :cond_27d

    packed-switch v3, :pswitch_data_392

    .line 586
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: Activity not started, unknown error code "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2bd

    .line 555
    :pswitch_230  #0xffffffa5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: Activity not started, unable to resolve "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    invoke-virtual {v15}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 555
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 558
    goto/16 :goto_2bd

    .line 560
    :pswitch_24a  #0xffffffa4
    const-string v3, "Error type 3"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 561
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: Activity class "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " does not exist."

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 561
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 564
    goto :goto_2bd

    .line 566
    :pswitch_271  #0xffffffa3
    const-string v3, "Error: Activity not started, you requested to both forward and receive its result"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 569
    goto :goto_2bd

    .line 571
    :pswitch_277  #0xffffffa2
    const-string v3, "Error: Activity not started, you do not have permission to access it."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 574
    goto :goto_2bd

    .line 530
    :cond_27d
    nop

    .line 531
    const-string v3, "Warning: Activity not started because the  current activity is being kept for the user."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 534
    move v3, v6

    goto :goto_2bf

    .line 536
    :cond_285
    nop

    .line 537
    const-string v3, "Warning: Activity not started, intent has been delivered to currently running top-most instance."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 541
    move v3, v6

    goto :goto_2bf

    .line 549
    :cond_28d
    nop

    .line 550
    const-string v3, "Warning: Activity not started, its current task has been brought to the front"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 553
    move v3, v6

    goto :goto_2bf

    .line 543
    :cond_295
    nop

    .line 544
    const-string v3, "Warning: Activity not started because intent should be handled by the caller"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 547
    move v3, v6

    goto :goto_2bf

    .line 527
    :cond_29d
    const/4 v6, 0x1

    .line 528
    move v3, v6

    goto :goto_2bf

    .line 576
    :cond_2a0
    const/4 v6, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: Activity not started, voice control not allowed for: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 579
    goto :goto_2bd

    .line 581
    :cond_2b6
    const/4 v6, 0x1

    const-string v3, "Error: Not allowed to start background user activity that shouldn\'t be displayed for all users."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 584
    nop

    .line 590
    :goto_2bd
    move/from16 v3, v21

    :goto_2bf
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 591
    iget-boolean v0, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mWaitOption:Z

    if-eqz v0, :cond_36b

    if-eqz v3, :cond_36b

    .line 592
    if-nez v16, :cond_2d6

    .line 593
    new-instance v0, Landroid/app/WaitResult;

    invoke-direct {v0}, Landroid/app/WaitResult;-><init>()V

    .line 594
    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, v0, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    goto :goto_2d8

    .line 592
    :cond_2d6
    move-object/from16 v0, v16

    .line 596
    :goto_2d8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Status: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v0, Landroid/app/WaitResult;->timeout:Z

    if-eqz v7, :cond_2ea

    const-string/jumbo v7, "timeout"

    goto :goto_2ed

    :cond_2ea
    const-string/jumbo v7, "ok"

    :goto_2ed
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 597
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LaunchState: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Landroid/app/WaitResult;->launchState:I

    invoke-static {v7}, Landroid/app/WaitResult;->launchStateToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 598
    iget-object v3, v0, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v3, :cond_32f

    .line 599
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Activity: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 601
    :cond_32f
    iget-wide v7, v0, Landroid/app/WaitResult;->totalTime:J

    const-wide/16 v9, 0x0

    cmp-long v3, v7, v9

    if-ltz v3, :cond_34d

    .line 602
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TotalTime: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Landroid/app/WaitResult;->totalTime:J

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 604
    :cond_34d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WaitTime: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v4, v4, v17

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 605
    const-string v0, "Complete"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 606
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    .line 608
    :cond_36b
    iget v0, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    sub-int/2addr v0, v6

    iput v0, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    .line 609
    iget v0, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    if-lez v0, :cond_379

    .line 610
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->unhandledBack()V

    .line 612
    :cond_379
    iget v0, v1, Lcom/android/server/am/ActivityManagerShellCommand;->mRepeat:I

    if-gtz v0, :cond_37e

    .line 613
    return v21

    .line 612
    :cond_37e
    move v13, v6

    move-object/from16 v12, v20

    move/from16 v14, v22

    goto/16 :goto_45

    .line 410
    :catch_385
    move-exception v0

    move-object v1, v0

    .line 411
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    nop

    :pswitch_data_392
    .packed-switch -0x5e
        :pswitch_277  #ffffffa2
        :pswitch_271  #ffffffa3
        :pswitch_24a  #ffffffa4
        :pswitch_230  #ffffffa5
    .end packed-switch
.end method

.method runStartService(Ljava/io/PrintWriter;Z)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 617
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 620
    const/4 v1, -0x2

    :try_start_5
    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent(I)Landroid/content/Intent;

    move-result-object v4
    :try_end_9
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_9} :catch_b3

    .line 623
    nop

    .line 624
    iget v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    const/4 v9, -0x1

    if-ne v1, v9, :cond_15

    .line 625
    const-string p1, "Error: Can\'t start activity with user \'all\'"

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 626
    return v9

    .line 628
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 629
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 630
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 v3, 0x0

    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    iget v8, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    const-string v7, "com.android.shell"

    move v6, p2

    invoke-interface/range {v2 .. v8}, Landroid/app/IActivityManager;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;I)Landroid/content/ComponentName;

    move-result-object p1

    .line 632
    if-nez p1, :cond_44

    .line 633
    const-string p1, "Error: Not found; no service started."

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 634
    return v9

    .line 635
    :cond_44
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "!"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_69

    .line 636
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Requires permission "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 637
    return v9

    .line 638
    :cond_69
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "!!"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v1, "Error: "

    if-eqz p2, :cond_8e

    .line 639
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 640
    return v9

    .line 641
    :cond_8e
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v2, "?"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b1

    .line 642
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 643
    return v9

    .line 645
    :cond_b1
    const/4 p1, 0x0

    return p1

    .line 621
    :catch_b3
    move-exception p1

    .line 622
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method runStartUser(Ljava/io/PrintWriter;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1725
    const/4 v0, 0x0

    move v1, v0

    .line 1727
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 1728
    const-string v1, "-w"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1729
    const/4 v1, 0x1

    goto :goto_2

    .line 1731
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: unknown option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1732
    const/4 p1, -0x1

    return p1

    .line 1735
    :cond_2c
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1737
    const/4 v3, 0x0

    if-eqz v1, :cond_3d

    new-instance v4, Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;

    invoke-direct {v4, p0, v3}, Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;-><init>(Lcom/android/server/am/ActivityManagerShellCommand;Lcom/android/server/am/ActivityManagerShellCommand$1;)V

    move-object v3, v4

    .line 1738
    :cond_3d
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v4, v2, v3}, Landroid/app/IActivityManager;->startUserInBackgroundWithListener(ILandroid/os/IProgressListener;)Z

    move-result v2

    .line 1739
    if-eqz v1, :cond_4e

    if-eqz v2, :cond_4e

    .line 1740
    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v3, v1, v2}, Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;->waitForFinish(J)Z

    move-result v2

    .line 1743
    :cond_4e
    if-eqz v2, :cond_56

    .line 1744
    const-string v1, "Success: user started"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5f

    .line 1746
    :cond_56
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    const-string v1, "Error: could not start user"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1748
    :goto_5f
    return v0
.end method

.method runStopService(Ljava/io/PrintWriter;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 649
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 652
    const/4 v1, -0x2

    :try_start_5
    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent(I)Landroid/content/Intent;

    move-result-object v1
    :try_end_9
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_9} :catch_54

    .line 655
    nop

    .line 656
    iget v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_15

    .line 657
    const-string p1, "Error: Can\'t stop activity with user \'all\'"

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 658
    return v3

    .line 660
    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping service: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 661
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 662
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mUserId:I

    invoke-interface {p1, v2, v1, v4, v5}, Landroid/app/IActivityManager;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p1

    .line 663
    if-nez p1, :cond_41

    .line 664
    const-string p1, "Service not stopped: was not running."

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 665
    return v3

    .line 666
    :cond_41
    const/4 v1, 0x1

    if-ne p1, v1, :cond_4a

    .line 667
    const-string p1, "Service stopped"

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 668
    return v3

    .line 669
    :cond_4a
    if-ne p1, v3, :cond_52

    .line 670
    const-string p1, "Error stopping service"

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 671
    return v3

    .line 673
    :cond_52
    const/4 p1, 0x0

    return p1

    .line 653
    :catch_54
    move-exception p1

    .line 654
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method runStopUser(Ljava/io/PrintWriter;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1797
    nop

    .line 1798
    const/4 p1, 0x1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1800
    :goto_5
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    if-eqz v3, :cond_39

    .line 1801
    const-string v5, "-w"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1802
    move v1, p1

    goto :goto_5

    .line 1803
    :cond_16
    const-string v2, "-f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1804
    move v2, p1

    goto :goto_5

    .line 1806
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: unknown option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1807
    return v4

    .line 1810
    :cond_39
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 1811
    if-eqz v1, :cond_49

    new-instance v1, Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;

    invoke-direct {v1}, Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;-><init>()V

    goto :goto_4a

    :cond_49
    const/4 v1, 0x0

    .line 1813
    :goto_4a
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v3, p1, v2, v1}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I

    move-result v2

    .line 1814
    if-eqz v2, :cond_b2

    .line 1815
    nop

    .line 1816
    const/4 v0, -0x4

    if-eq v2, v0, :cond_80

    const/4 v0, -0x3

    if-eq v2, v0, :cond_7c

    const/4 v0, -0x2

    if-eq v2, v0, :cond_78

    if-eq v2, v4, :cond_61

    const-string p1, ""

    goto :goto_96

    .line 1821
    :cond_61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " (Unknown user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1822
    goto :goto_96

    .line 1818
    :cond_78
    nop

    .line 1819
    const-string p1, " (Can\'t stop current user)"

    goto :goto_96

    .line 1824
    :cond_7c
    nop

    .line 1825
    const-string p1, " (System user cannot be stopped)"

    goto :goto_96

    .line 1827
    :cond_80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " (Can\'t stop user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " - one of its related users can\'t be stopped)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1831
    :goto_96
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Switch failed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1832
    return v4

    .line 1833
    :cond_b2
    if-eqz v1, :cond_b7

    .line 1834
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;->waitForFinish()V

    .line 1836
    :cond_b7
    return v0
.end method

.method runSupportsMultiwindow(Ljava/io/PrintWriter;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2824
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->getResources(Ljava/io/PrintWriter;)Landroid/content/res/Resources;

    move-result-object v0

    .line 2825
    if-nez v0, :cond_8

    .line 2826
    const/4 p1, -0x1

    return p1

    .line 2828
    :cond_8
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/ActivityTaskManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2829
    const/4 p1, 0x0

    return p1
.end method

.method runSupportsSplitScreenMultiwindow(Ljava/io/PrintWriter;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2833
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->getResources(Ljava/io/PrintWriter;)Landroid/content/res/Resources;

    move-result-object v0

    .line 2834
    if-nez v0, :cond_8

    .line 2835
    const/4 p1, -0x1

    return p1

    .line 2837
    :cond_8
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/ActivityTaskManager;->supportsSplitScreenMultiWindow(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2838
    const/4 p1, 0x0

    return p1
.end method

.method runSuppressResizeConfigChanges(Ljava/io/PrintWriter;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2255
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 2256
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->suppressResizeConfigChanges(Z)V

    .line 2257
    const/4 p1, 0x0

    return p1
.end method

.method runSwitchUser(Ljava/io/PrintWriter;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1706
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    .line 1707
    invoke-virtual {p1}, Landroid/os/UserManager;->getUserSwitchability()I

    move-result p1

    .line 1708
    if-eqz p1, :cond_2c

    .line 1709
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1710
    const/4 p1, -0x1

    return p1

    .line 1712
    :cond_2c
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 1713
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 1714
    const/4 p1, 0x0

    return p1
.end method

.method runTask(Ljava/io/PrintWriter;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2672
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2673
    const-string v1, "lock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2674
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runTaskLock(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 2675
    :cond_11
    const-string/jumbo v1, "resizeable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 2676
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runTaskResizeable(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 2677
    :cond_1f
    const-string/jumbo v1, "resize"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 2678
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runTaskResize(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 2679
    :cond_2d
    const-string v1, "focus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 2680
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runTaskFocus(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 2682
    :cond_3a
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: unknown command \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2683
    const/4 p1, -0x1

    return p1
.end method

.method runTaskFocus(Ljava/io/PrintWriter;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2794
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2795
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting focus to task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2796
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {p1, v0}, Landroid/app/IActivityTaskManager;->setFocusedTask(I)V

    .line 2797
    const/4 p1, 0x0

    return p1
.end method

.method runTaskLock(Ljava/io/PrintWriter;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2688
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2689
    const-string/jumbo v1, "stop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2690
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->stopSystemLockTaskMode()V

    goto :goto_1c

    .line 2692
    :cond_13
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2693
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {v1, v0}, Landroid/app/IActivityTaskManager;->startSystemLockTaskMode(I)V

    .line 2695
    :goto_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity manager is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {v1}, Landroid/app/IActivityTaskManager;->isInLockTaskMode()Z

    move-result v1

    if-eqz v1, :cond_31

    const-string v1, ""

    goto :goto_34

    :cond_31
    const-string/jumbo v1, "not "

    :goto_34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "in lockTaskMode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2697
    const/4 p1, 0x0

    return p1
.end method

.method runTaskResize(Ljava/io/PrintWriter;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2710
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 2711
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 2712
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2713
    if-nez v0, :cond_19

    .line 2714
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    const-string v0, "Error: invalid input bounds"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2715
    const/4 p1, -0x1

    return p1

    .line 2717
    :cond_19
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->taskResize(ILandroid/graphics/Rect;IZ)V

    .line 2718
    return v1
.end method

.method runTaskResizeable(Ljava/io/PrintWriter;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2701
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 2702
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 2703
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 2704
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2705
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {v1, p1, v0}, Landroid/app/IActivityTaskManager;->setTaskResizeable(II)V

    .line 2706
    const/4 p1, 0x0

    return p1
.end method

.method runToUri(Ljava/io/PrintWriter;I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1697
    const/4 v0, -0x2

    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent(I)Landroid/content/Intent;

    move-result-object v0
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_5} :catch_f

    .line 1700
    nop

    .line 1701
    invoke-virtual {v0, p2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1702
    const/4 p1, 0x0

    return p1

    .line 1698
    :catch_f
    move-exception p1

    .line 1699
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method runTraceIpc(Ljava/io/PrintWriter;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 727
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 728
    const-string/jumbo v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 729
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runTraceIpcStart(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 730
    :cond_12
    const-string/jumbo v1, "stop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 731
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->runTraceIpcStop(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 733
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: unknown trace ipc command \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 734
    const/4 p1, -0x1

    return p1
.end method

.method runTraceIpcStart(Ljava/io/PrintWriter;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 739
    const-string v0, "Starting IPC tracing."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 740
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 741
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {p1}, Landroid/app/IActivityManager;->startBinderTracking()Z

    .line 742
    const/4 p1, 0x0

    return p1
.end method

.method runTraceIpcStop(Ljava/io/PrintWriter;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 746
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 748
    const/4 v1, 0x0

    .line 749
    :goto_5
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_2e

    .line 750
    const-string v1, "--dump-file"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 751
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 753
    :cond_19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Unknown option: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 754
    return v3

    .line 757
    :cond_2e
    if-nez v1, :cond_36

    .line 758
    const-string p1, "Error: Specify filename to dump logs to."

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 759
    return v3

    .line 762
    :cond_36
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 763
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 764
    const-string/jumbo v2, "w"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 765
    if-nez v2, :cond_48

    .line 766
    return v3

    .line 769
    :cond_48
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v4, v2}, Landroid/app/IActivityManager;->stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)Z

    move-result v2

    if-nez v2, :cond_56

    .line 770
    const-string p1, "STOP TRACE FAILED."

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 771
    return v3

    .line 774
    :cond_56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopped IPC tracing. Dumping logs to: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 775
    const/4 p1, 0x0

    return p1
.end method

.method runTrackAssociations(Ljava/io/PrintWriter;)I
    .registers 5

    .line 1859
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.SET_ACTIVITY_WATCHER"

    const-string/jumbo v2, "runTrackAssociations()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1861
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1862
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mTrackingAssociations:Z

    if-nez v1, :cond_21

    .line 1863
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerService;->mTrackingAssociations:Z

    .line 1864
    const-string v1, "Association tracking started."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_26

    .line 1866
    :cond_21
    const-string v1, "Association tracking already enabled."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1868
    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_2c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1869
    const/4 p1, 0x0

    return p1

    .line 1868
    :catchall_2c
    move-exception p1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method runUnlockUser(Ljava/io/PrintWriter;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1760
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1761
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerShellCommand;->argToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 1762
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerShellCommand;->argToBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 1763
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInterface:Landroid/app/IActivityManager;

    const/4 v4, 0x0

    invoke-interface {v3, v0, v1, v2, v4}, Landroid/app/IActivityManager;->unlockUser(I[B[BLandroid/os/IProgressListener;)Z

    move-result v0

    .line 1764
    if-eqz v0, :cond_27

    .line 1765
    const-string v0, "Success: user unlocked"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_30

    .line 1767
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    const-string v0, "Error: could not unlock user"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1769
    :goto_30
    const/4 p1, 0x0

    return p1
.end method

.method runUntrackAssociations(Ljava/io/PrintWriter;)I
    .registers 5

    .line 1873
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.SET_ACTIVITY_WATCHER"

    const-string/jumbo v2, "runUntrackAssociations()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1875
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1876
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mTrackingAssociations:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    .line 1877
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerService;->mTrackingAssociations:Z

    .line 1878
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAssociations:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1879
    const-string v1, "Association tracking stopped."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2d

    .line 1881
    :cond_28
    const-string v1, "Association tracking not running."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1883
    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_32

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1884
    return v2

    .line 1883
    :catchall_32
    move-exception p1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method runUpdateApplicationInfo(Ljava/io/PrintWriter;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2842
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 2843
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2844
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2846
    :goto_14
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 2847
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 2849
    :cond_1e
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v1, v0}, Lcom/android/server/am/ActivityManagerService;->scheduleApplicationInfoChanged(Ljava/util/List;I)V

    .line 2850
    const-string v0, "Packages updated with most recent ApplicationInfos."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2851
    const/4 p1, 0x0

    return p1
.end method

.method runWaitForBroadcastIdle(Ljava/io/PrintWriter;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2864
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->waitForBroadcastIdle(Ljava/io/PrintWriter;)V

    .line 2865
    const/4 p1, 0x0

    return p1
.end method

.method runWatchUids(Ljava/io/PrintWriter;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1603
    const/4 v0, -0x1

    move v1, v0

    .line 1604
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 1605
    const-string v1, "--oom"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1606
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    .line 1608
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Unknown option: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1609
    return v0

    .line 1614
    :cond_32
    new-instance v0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getRawInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v2, p1, v3, v1}, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;-><init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/PrintWriter;Ljava/io/InputStream;I)V

    .line 1615
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->run()V

    .line 1616
    const/4 p1, 0x0

    return p1
.end method

.method runWrite(Ljava/io/PrintWriter;)I
    .registers 5

    .line 2801
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.SET_ACTIVITY_WATCHER"

    const-string/jumbo v2, "registerUidObserver()"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2803
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->flushRecentTasks()V

    .line 2804
    const-string v0, "All tasks persisted."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2805
    const/4 p1, 0x0

    return p1
.end method

.method setBoundsSide(Landroid/graphics/Rect;Ljava/lang/String;I)V
    .registers 9

    .line 2652
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x62

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v1, :cond_38

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_2e

    const/16 v1, 0x72

    if-eq v0, v1, :cond_23

    const/16 v1, 0x74

    if-eq v0, v1, :cond_18

    :cond_17
    goto :goto_42

    :cond_18
    const-string/jumbo v0, "t"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v3

    goto :goto_43

    :cond_23
    const-string/jumbo v0, "r"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v4

    goto :goto_43

    :cond_2e
    const-string v0, "l"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    goto :goto_43

    :cond_38
    const-string v0, "b"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v2

    goto :goto_43

    :goto_42
    const/4 v0, -0x1

    :goto_43
    if-eqz v0, :cond_6d

    if-eq v0, v4, :cond_6a

    if-eq v0, v3, :cond_67

    if-eq v0, v2, :cond_64

    .line 2666
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown set side: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_70

    .line 2663
    :cond_64
    iput p3, p1, Landroid/graphics/Rect;->bottom:I

    .line 2664
    goto :goto_70

    .line 2660
    :cond_67
    iput p3, p1, Landroid/graphics/Rect;->top:I

    .line 2661
    goto :goto_70

    .line 2657
    :cond_6a
    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 2658
    goto :goto_70

    .line 2654
    :cond_6d
    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 2655
    nop

    .line 2669
    :goto_70
    return-void
.end method

.method taskResize(ILandroid/graphics/Rect;IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2723
    nop

    .line 2724
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand;->mTaskInterface:Landroid/app/IActivityTaskManager;

    invoke-interface {v0, p1, p2, p4}, Landroid/app/IActivityTaskManager;->resizeTask(ILandroid/graphics/Rect;I)V

    .line 2726
    int-to-long p1, p3

    :try_start_7
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_a} :catch_b

    .line 2728
    goto :goto_c

    .line 2727
    :catch_b
    move-exception p1

    .line 2729
    :goto_c
    return-void
.end method
