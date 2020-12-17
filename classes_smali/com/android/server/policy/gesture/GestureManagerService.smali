.class public Lcom/android/server/policy/gesture/GestureManagerService;
.super Landroid/view/IGestureManager$Stub;
.source "GestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/gesture/GestureManagerService$BinderDeath;,
        Lcom/android/server/policy/gesture/GestureManagerService$GestureObserver;,
        Lcom/android/server/policy/gesture/GestureManagerService$GestureListener;
    }
.end annotation


# static fields
.field private static final ALL_GESTURE_ENABLE:I = -0x80000000

.field private static final DEBUG:Z = true

.field private static final DOUBLE_TAP_ENABLE:I = 0x10

.field private static final DRAW_C_ENABLE:I = 0x100

.field private static final DRAW_E_ENABLE:I = 0x80

.field private static final DRAW_M_ENABLE:I = 0x400

.field private static final DRAW_O_ENABLE:I = 0x800

.field private static final DRAW_S_ENABLE:I = 0x1000

.field private static final DRAW_V_ENABLE:I = 0x2000

.field private static final DRAW_W_ENABLE:I = 0x200

.field private static final DRAW_Z_ENABLE:I = 0x4000

.field private static final FOD_ENABLE:I = 0x1000000

.field private static final GESTURE_ENABLE:I = 0x1

.field private static final LONG_TAP_ENABLE:I = 0x40

.field private static final ONECE_TAP_ENABLE:I = 0x20

.field private static final SLIDE_DOWN_ENABLE:I = 0x8

.field private static final SLIDE_LEFT_ENABLE:I = 0x1

.field private static final SLIDE_RIGHT_ENABLE:I = 0x2

.field private static final SLIDE_UP_ENABLE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "GestureManager"

.field private static final VIBRATE_TIME_LONG:I = 0x32

.field private static final VIBRATE_TIME_SHORT:I = 0x19


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFilter:Landroid/content/IntentFilter;

.field private mGestureObserver:Lcom/android/server/policy/gesture/GestureManagerService$GestureObserver;

.field private mHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/gesture/GestureManagerService$GestureListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMainGestureControl:I

.field private mMainGestureControlPath:Ljava/lang/String;

.field private mMainGestureUrlTypeMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"  # Landroid/content/Context;

    .line 162
    invoke-direct {p0}, Landroid/view/IGestureManager$Stub;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mMainGestureControlPath:Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mMainGestureControl:I

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mListeners:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mMainGestureUrlTypeMap:Landroid/util/ArrayMap;

    .line 88
    new-instance v0, Lcom/android/server/policy/gesture/GestureManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/gesture/GestureManagerService$1;-><init>(Lcom/android/server/policy/gesture/GestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 163
    iput-object p1, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mContext:Landroid/content/Context;

    .line 164
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mHandler:Landroid/os/Handler;

    .line 166
    invoke-direct {p0}, Lcom/android/server/policy/gesture/GestureManagerService;->initialze()V

    .line 167
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/gesture/GestureManagerService;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/gesture/GestureManagerService;

    .line 41
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mMainGestureUrlTypeMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/policy/gesture/GestureManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/gesture/GestureManagerService;

    .line 41
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/policy/gesture/GestureManagerService;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/gesture/GestureManagerService;

    .line 41
    iget v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mMainGestureControl:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/policy/gesture/GestureManagerService;I)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/gesture/GestureManagerService;
    .param p1, "x1"  # I

    .line 41
    iput p1, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mMainGestureControl:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/policy/gesture/GestureManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/policy/gesture/GestureManagerService;

    .line 41
    invoke-direct {p0}, Lcom/android/server/policy/gesture/GestureManagerService;->setMainGestureControlValue()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/policy/gesture/GestureManagerService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/gesture/GestureManagerService;

    .line 41
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/policy/gesture/GestureManagerService;)Landroid/hardware/SensorEventListener;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/gesture/GestureManagerService;

    .line 41
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/policy/gesture/GestureManagerService;)Landroid/hardware/SensorManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/gesture/GestureManagerService;

    .line 41
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/policy/gesture/GestureManagerService;)Landroid/hardware/Sensor;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/gesture/GestureManagerService;

    .line 41
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mProximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/policy/gesture/GestureManagerService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/gesture/GestureManagerService;
    .param p1, "x1"  # I

    .line 41
    invoke-direct {p0, p1}, Lcom/android/server/policy/gesture/GestureManagerService;->notifyListeners(I)V

    return-void
.end method

.method private convertKeyCodeToGestureType(I)I
    .registers 4
    .param p1, "keyCode"  # I

    .line 263
    const/4 v0, 0x0

    .line 264
    .local v0, "gestureTye":I
    const/16 v1, 0x19b

    if-ne p1, v1, :cond_8

    .line 265
    const/16 v0, 0xa0

    goto :goto_2f

    .line 266
    :cond_8
    const/16 v1, 0x1ae

    if-ne p1, v1, :cond_f

    .line 267
    const/16 v0, 0xa1

    goto :goto_2f

    .line 268
    :cond_f
    const/16 v1, 0x1af

    if-ne p1, v1, :cond_16

    .line 269
    const/16 v0, 0xa2

    goto :goto_2f

    .line 270
    :cond_16
    const/16 v1, 0x19e

    if-lt p1, v1, :cond_23

    const/16 v1, 0x1a1

    if-gt p1, v1, :cond_23

    .line 271
    add-int/lit16 v1, p1, -0x19e

    add-int/lit16 v0, v1, 0xb0

    goto :goto_2f

    .line 272
    :cond_23
    const/16 v1, 0x1a2

    if-lt p1, v1, :cond_2f

    const/16 v1, 0x1ac

    if-gt p1, v1, :cond_2f

    .line 273
    add-int/lit16 v1, p1, -0x1a2

    add-int/lit16 v0, v1, 0xc0

    .line 275
    :cond_2f
    :goto_2f
    return v0
.end method

.method private findByCallbackLocked(Landroid/view/IGestureCallback;)Lcom/android/server/policy/gesture/GestureManagerService$GestureListener;
    .registers 5
    .param p1, "callback"  # Landroid/view/IGestureCallback;

    .line 350
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 351
    iget-object v1, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/gesture/GestureManagerService$GestureListener;

    .line 352
    .local v1, "listener":Lcom/android/server/policy/gesture/GestureManagerService$GestureListener;
    if-eqz v1, :cond_18

    iget-object v2, v1, Lcom/android/server/policy/gesture/GestureManagerService$GestureListener;->mCallback:Landroid/view/IGestureCallback;

    if-ne p1, v2, :cond_18

    .line 353
    return-object v1

    .line 350
    .end local v1  # "listener":Lcom/android/server/policy/gesture/GestureManagerService$GestureListener;
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 356
    .end local v0  # "i":I
    :cond_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method private getMainScreenGestureControl()I
    .registers 7

    .line 404
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mMainGestureUrlTypeMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 405
    .local v0, "urLIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 407
    .local v1, "gesturesControlValue":I
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 408
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 409
    .local v2, "settingURL":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mMainGestureUrlTypeMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 410
    .local v3, "gestureEnableValue":I
    iget-object v4, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 412
    .local v4, "enable":I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_34

    or-int v5, v1, v3

    goto :goto_36

    :cond_34
    not-int v5, v3

    and-int/2addr v5, v1

    :goto_36
    move v1, v5

    .line 413
    .end local v2  # "settingURL":Ljava/lang/String;
    .end local v4  # "enable":I
    goto :goto_b

    .line 414
    .end local v3  # "gestureEnableValue":I
    :cond_38
    return v1
.end method

.method private initMainGestureControl()V
    .registers 2

    .line 398
    invoke-direct {p0}, Lcom/android/server/policy/gesture/GestureManagerService;->getMainScreenGestureControl()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mMainGestureControl:I

    .line 400
    invoke-direct {p0}, Lcom/android/server/policy/gesture/GestureManagerService;->setMainGestureControlValue()V

    .line 401
    return-void
.end method

.method private initURLKeyMap()V
    .registers 4

    .line 211
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mMainGestureUrlTypeMap:Landroid/util/ArrayMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "mz_quick_wakeup_slide_left_right"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mMainGestureUrlTypeMap:Landroid/util/ArrayMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "mz_quick_wakeup_slide_up"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mMainGestureUrlTypeMap:Landroid/util/ArrayMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "mz_quick_wakeup_slide_down"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mMainGestureUrlTypeMap:Landroid/util/ArrayMap;

    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "mz_quick_wakeup_draw_c"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mMainGestureUrlTypeMap:Landroid/util/ArrayMap;

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "mz_quick_wakeup_draw_e"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mMainGestureUrlTypeMap:Landroid/util/ArrayMap;

    const/16 v1, 0x400

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "mz_quick_wakeup_draw_m"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mMainGestureUrlTypeMap:Landroid/util/ArrayMap;

    const/16 v1, 0x800

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "mz_quick_wakeup_draw_o"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mMainGestureUrlTypeMap:Landroid/util/ArrayMap;

    const/16 v1, 0x1000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "mz_quick_wakeup_draw_s"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mMainGestureUrlTypeMap:Landroid/util/ArrayMap;

    const/16 v1, 0x2000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "mz_quick_wakeup_draw_v"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mMainGestureUrlTypeMap:Landroid/util/ArrayMap;

    const/16 v1, 0x200

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "mz_quick_wakeup_draw_w"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mMainGestureUrlTypeMap:Landroid/util/ArrayMap;

    const/16 v1, 0x4000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "mz_quick_wakeup_draw_z"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mMainGestureUrlTypeMap:Landroid/util/ArrayMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "mz_quick_wakeup_double_click"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mMainGestureUrlTypeMap:Landroid/util/ArrayMap;

    const/high16 v1, -0x80000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "mz_quick_wakeup_switch"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mMainGestureUrlTypeMap:Landroid/util/ArrayMap;

    const/high16 v1, 0x1000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "mz_fingerprint_use_unlock"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    return-void
.end method

.method private initialze()V
    .registers 4

    .line 171
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mVibrator:Landroid/os/Vibrator;

    .line 172
    invoke-direct {p0}, Lcom/android/server/policy/gesture/GestureManagerService;->initURLKeyMap()V

    .line 174
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 175
    const v1, 0xa10006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mMainGestureControlPath:Ljava/lang/String;

    .line 176
    invoke-direct {p0}, Lcom/android/server/policy/gesture/GestureManagerService;->initMainGestureControl()V

    .line 178
    new-instance v0, Lcom/android/server/policy/gesture/GestureManagerService$GestureObserver;

    iget-object v1, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/gesture/GestureManagerService$GestureObserver;-><init>(Lcom/android/server/policy/gesture/GestureManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mGestureObserver:Lcom/android/server/policy/gesture/GestureManagerService$GestureObserver;

    .line 180
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 181
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mProximitySensor:Landroid/hardware/Sensor;

    .line 184
    invoke-direct {p0}, Lcom/android/server/policy/gesture/GestureManagerService;->registerContentObserver()V

    .line 185
    invoke-direct {p0}, Lcom/android/server/policy/gesture/GestureManagerService;->registerBroadcastReceiver()V

    .line 186
    return-void
.end method

.method private intToByteArray(I)[B
    .registers 5
    .param p1, "i"  # I

    .line 388
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 389
    .local v0, "result":[B
    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 390
    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 391
    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 392
    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 393
    return-object v0
.end method

.method private isFingerprintUsedAsUnlock()Z
    .registers 4

    .line 432
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mContext:Landroid/content/Context;

    .line 433
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 432
    const/4 v1, 0x0

    const-string/jumbo v2, "mz_fingerprint_use_unlock"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_12

    move v1, v2

    :cond_12
    move v0, v1

    .line 435
    .local v0, "usedAsUnlock":Z
    return v0
.end method

.method private notifyListeners(I)V
    .registers 7
    .param p1, "type"  # I

    .line 333
    const/4 v0, 0x0

    .line 334
    .local v0, "listener":Lcom/android/server/policy/gesture/GestureManagerService$GestureListener;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_43

    .line 335
    iget-object v2, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/policy/gesture/GestureManagerService$GestureListener;

    .line 336
    if-eqz v0, :cond_40

    .line 338
    :try_start_15
    iget-object v2, v0, Lcom/android/server/policy/gesture/GestureManagerService$GestureListener;->mCallback:Landroid/view/IGestureCallback;

    invoke-interface {v2, p1}, Landroid/view/IGestureCallback;->onGestureTrigger(I)V

    .line 340
    const-string v2, "GestureManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyListeners "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/policy/gesture/GestureManagerService$GestureListener;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", type is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_3b} :catch_3c

    .line 344
    goto :goto_40

    .line 341
    :catch_3c
    move-exception v2

    .line 343
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 334
    .end local v2  # "e":Landroid/os/RemoteException;
    :cond_40
    :goto_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 347
    .end local v1  # "i":I
    :cond_43
    return-void
.end method

.method private registerBroadcastReceiver()V
    .registers 4

    .line 189
    new-instance v0, Lcom/android/server/policy/gesture/GestureManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/gesture/GestureManagerService$2;-><init>(Lcom/android/server/policy/gesture/GestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 204
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mFilter:Landroid/content/IntentFilter;

    .line 205
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 208
    return-void
.end method

.method private registerContentObserver()V
    .registers 5

    .line 231
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 232
    const-string/jumbo v1, "mz_quick_wakeup_slide_left_right"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mGestureObserver:Lcom/android/server/policy/gesture/GestureManagerService$GestureObserver;

    .line 231
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 233
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 234
    const-string/jumbo v1, "mz_quick_wakeup_slide_up"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mGestureObserver:Lcom/android/server/policy/gesture/GestureManagerService$GestureObserver;

    .line 233
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 235
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 236
    const-string/jumbo v1, "mz_quick_wakeup_slide_down"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mGestureObserver:Lcom/android/server/policy/gesture/GestureManagerService$GestureObserver;

    .line 235
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 237
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 238
    const-string/jumbo v1, "mz_quick_wakeup_draw_c"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mGestureObserver:Lcom/android/server/policy/gesture/GestureManagerService$GestureObserver;

    .line 237
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 239
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 240
    const-string/jumbo v1, "mz_quick_wakeup_draw_e"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mGestureObserver:Lcom/android/server/policy/gesture/GestureManagerService$GestureObserver;

    .line 239
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 241
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 242
    const-string/jumbo v1, "mz_quick_wakeup_draw_m"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mGestureObserver:Lcom/android/server/policy/gesture/GestureManagerService$GestureObserver;

    .line 241
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 243
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 244
    const-string/jumbo v1, "mz_quick_wakeup_draw_o"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mGestureObserver:Lcom/android/server/policy/gesture/GestureManagerService$GestureObserver;

    .line 243
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 245
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 246
    const-string/jumbo v1, "mz_quick_wakeup_draw_s"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mGestureObserver:Lcom/android/server/policy/gesture/GestureManagerService$GestureObserver;

    .line 245
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 247
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 248
    const-string/jumbo v1, "mz_quick_wakeup_draw_v"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mGestureObserver:Lcom/android/server/policy/gesture/GestureManagerService$GestureObserver;

    .line 247
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 249
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 250
    const-string/jumbo v1, "mz_quick_wakeup_draw_w"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mGestureObserver:Lcom/android/server/policy/gesture/GestureManagerService$GestureObserver;

    .line 249
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 251
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 252
    const-string/jumbo v1, "mz_quick_wakeup_draw_z"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mGestureObserver:Lcom/android/server/policy/gesture/GestureManagerService$GestureObserver;

    .line 251
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 253
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 254
    const-string/jumbo v1, "mz_quick_wakeup_double_click"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mGestureObserver:Lcom/android/server/policy/gesture/GestureManagerService$GestureObserver;

    .line 253
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 255
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 256
    const-string/jumbo v1, "mz_quick_wakeup_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mGestureObserver:Lcom/android/server/policy/gesture/GestureManagerService$GestureObserver;

    .line 255
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 257
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 258
    const-string/jumbo v1, "mz_fingerprint_use_unlock"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mGestureObserver:Lcom/android/server/policy/gesture/GestureManagerService$GestureObserver;

    .line 257
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 260
    return-void
.end method

.method private setMainGestureControlValue()V
    .registers 4

    .line 418
    iget v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mMainGestureControl:I

    .line 419
    .local v0, "value":I
    iget v1, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mMainGestureControl:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-nez v1, :cond_11

    invoke-direct {p0}, Lcom/android/server/policy/gesture/GestureManagerService;->isFingerprintUsedAsUnlock()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 420
    const/high16 v0, -0x7f000000

    .line 422
    :cond_11
    iget-object v1, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mMainGestureControlPath:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/gesture/GestureManagerService;->writeGestureControlValue(ILjava/lang/String;)V

    .line 423
    return-void
.end method

.method private shouldVibrate(I)Z
    .registers 3
    .param p1, "keyCode"  # I

    .line 426
    const/16 v0, 0x19d

    if-eq p1, v0, :cond_e

    const/16 v0, 0x1ae

    if-eq p1, v0, :cond_e

    const/16 v0, 0x1af

    if-eq p1, v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private writeGestureControlValue(ILjava/lang/String;)V
    .registers 8
    .param p1, "controlValue"  # I
    .param p2, "gestureControlPath"  # Ljava/lang/String;

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "writeGestureControlValue    controlValue "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GestureManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const/4 v0, 0x0

    .line 364
    .local v0, "fos":Ljava/io/OutputStream;
    const-string/jumbo v2, "writeGestureControlValue error: "

    if-eqz p2, :cond_36

    .line 365
    const/4 v3, 0x0

    :try_start_22
    new-array v4, v3, [Ljava/lang/String;

    invoke-static {p2, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v4, v3}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v3

    move-object v0, v3

    goto :goto_36

    .line 376
    :catchall_30
    move-exception v1

    goto :goto_83

    .line 373
    :catch_32
    move-exception v3

    goto :goto_6e

    .line 371
    :catch_34
    move-exception v3

    goto :goto_78

    .line 366
    :cond_36
    :goto_36
    if-nez v0, :cond_5d

    .line 367
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeGestureControlValue ....gestureControlPath  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  may do not exit"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_22 .. :try_end_52} :catch_34
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_52} :catch_32
    .catchall {:try_start_22 .. :try_end_52} :catchall_30

    .line 376
    if-eqz v0, :cond_5c

    .line 378
    :try_start_54
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58

    .line 382
    goto :goto_5c

    .line 379
    :catch_58
    move-exception v1

    .line 381
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 368
    .end local v1  # "e":Ljava/io/IOException;
    :cond_5c
    :goto_5c
    return-void

    .line 370
    :cond_5d
    :try_start_5d
    invoke-direct {p0, p1}, Lcom/android/server/policy/gesture/GestureManagerService;->intToByteArray(I)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_64
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_5d .. :try_end_64} :catch_34
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_64} :catch_32
    .catchall {:try_start_5d .. :try_end_64} :catchall_30

    .line 376
    nop

    .line 378
    :try_start_65
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_69

    .line 382
    :goto_68
    goto :goto_82

    .line 379
    :catch_69
    move-exception v1

    .line 381
    .restart local v1  # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1  # "e":Ljava/io/IOException;
    goto :goto_68

    .line 374
    .local v3, "e":Ljava/io/IOException;
    :goto_6e
    :try_start_6e
    invoke-static {v1, v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_30

    .line 376
    nop

    .end local v3  # "e":Ljava/io/IOException;
    if-eqz v0, :cond_82

    .line 378
    :try_start_74
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_69

    goto :goto_68

    .line 372
    .local v3, "e":Ljava/nio/file/NoSuchFileException;
    :goto_78
    :try_start_78
    invoke-static {v1, v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_30

    .line 376
    nop

    .end local v3  # "e":Ljava/nio/file/NoSuchFileException;
    if-eqz v0, :cond_82

    .line 378
    :try_start_7e
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_69

    goto :goto_68

    .line 384
    :cond_82
    :goto_82
    return-void

    .line 376
    :goto_83
    if-eqz v0, :cond_8d

    .line 378
    :try_start_85
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_89

    .line 382
    goto :goto_8d

    .line 379
    :catch_89
    move-exception v2

    .line 381
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 382
    .end local v2  # "e":Ljava/io/IOException;
    :cond_8d
    :goto_8d
    throw v1
.end method


# virtual methods
.method public registeCallback(Landroid/view/IGestureCallback;Ljava/lang/String;)V
    .registers 10
    .param p1, "callback"  # Landroid/view/IGestureCallback;
    .param p2, "tag"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 304
    monitor-enter p0

    .line 305
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/policy/gesture/GestureManagerService;->findByCallbackLocked(Landroid/view/IGestureCallback;)Lcom/android/server/policy/gesture/GestureManagerService$GestureListener;

    move-result-object v0

    .line 306
    .local v0, "find":Lcom/android/server/policy/gesture/GestureManagerService$GestureListener;
    if-eqz v0, :cond_1f

    .line 307
    const-string v1, "GestureManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Object tried to add duplicate listeners: tag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    monitor-exit p0

    return-void

    .line 310
    :cond_1f
    new-instance v1, Lcom/android/server/policy/gesture/GestureManagerService$GestureListener;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/policy/gesture/GestureManagerService$GestureListener;-><init>(Lcom/android/server/policy/gesture/GestureManagerService;Landroid/view/IGestureCallback;Ljava/lang/String;)V

    .line 311
    .local v1, "listener":Lcom/android/server/policy/gesture/GestureManagerService$GestureListener;
    new-instance v2, Lcom/android/server/policy/gesture/GestureManagerService$BinderDeath;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v2, p0, p2, v3, v1}, Lcom/android/server/policy/gesture/GestureManagerService$BinderDeath;-><init>(Lcom/android/server/policy/gesture/GestureManagerService;Ljava/lang/String;ILcom/android/server/policy/gesture/GestureManagerService$GestureListener;)V

    .line 312
    .local v2, "binderDeath":Lcom/android/server/policy/gesture/GestureManagerService$BinderDeath;
    invoke-interface {p1}, Landroid/view/IGestureCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 313
    iget-object v3, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 314
    .local v3, "ret":Z
    const-string v4, "GestureManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Object tried to add listeners: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", mListeners.size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    nop

    .end local v0  # "find":Lcom/android/server/policy/gesture/GestureManagerService$GestureListener;
    .end local v1  # "listener":Lcom/android/server/policy/gesture/GestureManagerService$GestureListener;
    .end local v2  # "binderDeath":Lcom/android/server/policy/gesture/GestureManagerService$BinderDeath;
    .end local v3  # "ret":Z
    monitor-exit p0

    .line 316
    return-void

    .line 315
    :catchall_62
    move-exception v0

    monitor-exit p0
    :try_end_64
    .catchall {:try_start_1 .. :try_end_64} :catchall_62

    throw v0
.end method

.method public removeCallback(Landroid/view/IGestureCallback;)V
    .registers 6
    .param p1, "callback"  # Landroid/view/IGestureCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 321
    monitor-enter p0

    .line 322
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/policy/gesture/GestureManagerService;->findByCallbackLocked(Landroid/view/IGestureCallback;)Lcom/android/server/policy/gesture/GestureManagerService$GestureListener;

    move-result-object v0

    .line 323
    .local v0, "find":Lcom/android/server/policy/gesture/GestureManagerService$GestureListener;
    if-nez v0, :cond_10

    .line 324
    const-string v1, "GestureManager"

    const-string v2, "can\'t find the listener."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    monitor-exit p0

    return-void

    .line 327
    :cond_10
    iget-object v1, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 328
    const-string v1, "GestureManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Object tried to remove listeners: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/policy/gesture/GestureManagerService$GestureListener;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mListeners.size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    nop

    .end local v0  # "find":Lcom/android/server/policy/gesture/GestureManagerService$GestureListener;
    monitor-exit p0

    .line 330
    return-void

    .line 329
    :catchall_3e
    move-exception v0

    monitor-exit p0
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_3e

    throw v0
.end method

.method public triggerGesture(I)V
    .registers 5
    .param p1, "gestureKeyCode"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 282
    invoke-direct {p0, p1}, Lcom/android/server/policy/gesture/GestureManagerService;->shouldVibrate(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 288
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 292
    :cond_d
    invoke-direct {p0, p1}, Lcom/android/server/policy/gesture/GestureManagerService;->convertKeyCodeToGestureType(I)I

    move-result v0

    .line 293
    .local v0, "gestureType":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " triggerGesture keyCode:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "   gestureType  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GestureManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v1, p0, Lcom/android/server/policy/gesture/GestureManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/gesture/GestureManagerService$3;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/gesture/GestureManagerService$3;-><init>(Lcom/android/server/policy/gesture/GestureManagerService;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 300
    return-void
.end method
