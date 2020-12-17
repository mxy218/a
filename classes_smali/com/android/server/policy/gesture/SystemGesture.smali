.class public Lcom/android/server/policy/gesture/SystemGesture;
.super Ljava/lang/Object;
.source "SystemGesture.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/gesture/SystemGesture$BinderDeath;
    }
.end annotation


# static fields
.field public static final ACTION_CONFIRM_SHUTDOWN_RESTART:Ljava/lang/String; = "com.meizu.MZ_SHUTDOWN_RESTART_CONFIRM"


# instance fields
.field private final IGNORE_MBACK_TIMEOUT:I

.field private final TAG:Ljava/lang/String;

.field private final TOUCH_LEFT_X:I

.field private final TOUCH_RIGHT_X:I

.field private final TOUCH_TOP_Y:I

.field private mContext:Landroid/content/Context;

.field private mDownX:F

.field private mDownY:F

.field private mGestureListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/gesture/GestureListenerBase;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureLock:Ljava/lang/Object;

.field private mGestureLockState:Z

.field private mGestureSwitchController:Lcom/android/server/policy/gesture/GestureSwitchController;

.field private mGestureTrigger:Z

.field private mHandler:Landroid/os/Handler;

.field public mIStatusBar:Lcom/android/internal/statusbar/IStatusBar;

.field private mInterceptTouchEvent:Z

.field mMzPhoneWindowManager:Lcom/android/server/policy/MzPhoneWindowManager;

.field private mPowerManager:Landroid/os/PowerManager;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mSystemGestureClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/gesture/SystemGestureClient;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetGestureListener:Lcom/android/server/policy/gesture/GestureListenerBase;

.field private mTargetGestureListenerIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/MzPhoneWindowManager;)V
    .registers 5
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "mMzPhoneWindowManager"  # Lcom/android/server/policy/MzPhoneWindowManager;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "SystemGesture"

    iput-object v0, p0, Lcom/android/server/policy/gesture/SystemGesture;->TAG:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/gesture/SystemGesture;->mInterceptTouchEvent:Z

    .line 44
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/policy/gesture/SystemGesture;->mIStatusBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 49
    const/16 v1, 0x23

    iput v1, p0, Lcom/android/server/policy/gesture/SystemGesture;->IGNORE_MBACK_TIMEOUT:I

    .line 50
    const/16 v1, 0x730

    iput v1, p0, Lcom/android/server/policy/gesture/SystemGesture;->TOUCH_TOP_Y:I

    .line 51
    const/16 v1, 0x1ae

    iput v1, p0, Lcom/android/server/policy/gesture/SystemGesture;->TOUCH_LEFT_X:I

    .line 52
    const/16 v1, 0x294

    iput v1, p0, Lcom/android/server/policy/gesture/SystemGesture;->TOUCH_RIGHT_X:I

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/gesture/SystemGesture;->mGestureListeners:Ljava/util/ArrayList;

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/gesture/SystemGesture;->mSystemGestureClients:Ljava/util/ArrayList;

    .line 65
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/policy/gesture/SystemGesture;->mTargetGestureListenerIndex:I

    .line 67
    iput-boolean v0, p0, Lcom/android/server/policy/gesture/SystemGesture;->mGestureTrigger:Z

    .line 68
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/gesture/SystemGesture;->mGestureLock:Ljava/lang/Object;

    .line 69
    iput-boolean v0, p0, Lcom/android/server/policy/gesture/SystemGesture;->mGestureLockState:Z

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/gesture/SystemGesture;->mDownY:F

    .line 71
    iput v0, p0, Lcom/android/server/policy/gesture/SystemGesture;->mDownX:F

    .line 206
    new-instance v0, Lcom/android/server/policy/gesture/SystemGesture$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/gesture/SystemGesture$1;-><init>(Lcom/android/server/policy/gesture/SystemGesture;)V

    iput-object v0, p0, Lcom/android/server/policy/gesture/SystemGesture;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 74
    iput-object p2, p0, Lcom/android/server/policy/gesture/SystemGesture;->mMzPhoneWindowManager:Lcom/android/server/policy/MzPhoneWindowManager;

    .line 75
    iput-object p1, p0, Lcom/android/server/policy/gesture/SystemGesture;->mContext:Landroid/content/Context;

    .line 76
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/policy/gesture/SystemGesture;->mPowerManager:Landroid/os/PowerManager;

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/policy/gesture/SystemGesture;->mHandler:Landroid/os/Handler;

    .line 78
    new-instance v0, Lcom/android/server/policy/gesture/GestureSwitchController;

    iget-object v1, p0, Lcom/android/server/policy/gesture/SystemGesture;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/policy/gesture/GestureSwitchController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/gesture/SystemGesture;->mGestureSwitchController:Lcom/android/server/policy/gesture/GestureSwitchController;

    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/policy/gesture/SystemGesture;->registerConfirmBroadcastReceiver(Landroid/content/Context;)V

    .line 80
    iget-object v0, p0, Lcom/android/server/policy/gesture/SystemGesture;->mGestureListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/policy/gesture/VibratorDetect;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/gesture/VibratorDetect;-><init>(Lcom/android/server/policy/gesture/SystemGesture;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/android/server/policy/gesture/SystemGesture;->mGestureListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/policy/gesture/WindowModeGestureListener;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/gesture/WindowModeGestureListener;-><init>(Lcom/android/server/policy/gesture/SystemGesture;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/android/server/policy/gesture/SystemGesture;->mGestureListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/policy/gesture/GameAssistantGestureListener;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/gesture/GameAssistantGestureListener;-><init>(Lcom/android/server/policy/gesture/SystemGesture;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/android/server/policy/gesture/SystemGesture;->mGestureListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/policy/gesture/RecentGestureListener;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/gesture/RecentGestureListener;-><init>(Lcom/android/server/policy/gesture/SystemGesture;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/android/server/policy/gesture/SystemGesture;->mGestureListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/gesture/ThreeFingerScreenshotsDetect;-><init>(Lcom/android/server/policy/gesture/SystemGesture;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/gesture/SystemGesture;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/gesture/SystemGesture;

    .line 40
    iget-object v0, p0, Lcom/android/server/policy/gesture/SystemGesture;->mSystemGestureClients:Ljava/util/ArrayList;

    return-object v0
.end method

.method private ignoreMBack(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"  # Landroid/view/MotionEvent;

    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, "res":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/high16 v2, 0x44e60000  # 1840.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_20

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    const/high16 v2, 0x44250000  # 660.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_20

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    const/high16 v2, 0x43d70000  # 430.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_20

    .line 194
    const/4 v0, 0x1

    .line 197
    :cond_20
    return v0
.end method

.method private onGetureListenerUpdate()V
    .registers 7

    .line 269
    iget-object v0, p0, Lcom/android/server/policy/gesture/SystemGesture;->mSystemGestureClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 271
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/gesture/SystemGesture;->mGestureListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/gesture/GestureListenerBase;

    .line 272
    .local v2, "listener":Lcom/android/server/policy/gesture/GestureListenerBase;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/policy/gesture/GestureListenerBase;->setSystemGesutreClient(Lcom/android/server/policy/gesture/SystemGestureClient;)V

    .line 273
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1a
    iget-object v4, p0, Lcom/android/server/policy/gesture/SystemGesture;->mSystemGestureClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3b

    .line 274
    iget-object v4, p0, Lcom/android/server/policy/gesture/SystemGesture;->mSystemGestureClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/policy/gesture/SystemGestureClient;

    .line 275
    .local v4, "client":Lcom/android/server/policy/gesture/SystemGestureClient;
    if-eqz v4, :cond_38

    iget v5, v4, Lcom/android/server/policy/gesture/SystemGestureClient;->gesture:I

    invoke-virtual {v2, v5}, Lcom/android/server/policy/gesture/GestureListenerBase;->isSupportGestureType(I)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 276
    invoke-virtual {v2, v4}, Lcom/android/server/policy/gesture/GestureListenerBase;->setSystemGesutreClient(Lcom/android/server/policy/gesture/SystemGestureClient;)V

    .line 277
    goto :goto_3b

    .line 273
    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 280
    .end local v2  # "listener":Lcom/android/server/policy/gesture/GestureListenerBase;
    .end local v3  # "i":I
    .end local v4  # "client":Lcom/android/server/policy/gesture/SystemGestureClient;
    :cond_3b
    :goto_3b
    goto :goto_9

    .line 281
    :cond_3c
    monitor-exit v0

    .line 282
    return-void

    .line 281
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method private registerConfirmBroadcastReceiver(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"  # Landroid/content/Context;

    .line 201
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 202
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.meizu.MZ_SHUTDOWN_RESTART_CONFIRM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/android/server/policy/gesture/SystemGesture;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 204
    return-void
.end method


# virtual methods
.method public configureGestureEffectStartArea()V
    .registers 3

    .line 186
    iget-object v0, p0, Lcom/android/server/policy/gesture/SystemGesture;->mGestureListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/gesture/GestureListenerBase;

    .line 187
    .local v1, "listener":Lcom/android/server/policy/gesture/GestureListenerBase;
    invoke-virtual {v1}, Lcom/android/server/policy/gesture/GestureListenerBase;->systemReady()V

    .line 188
    .end local v1  # "listener":Lcom/android/server/policy/gesture/GestureListenerBase;
    goto :goto_6

    .line 189
    :cond_16
    return-void
.end method

.method public dispatcherWaitToCheckSystemGesture(Landroid/view/MotionEvent;I)Z
    .registers 9
    .param p1, "event"  # Landroid/view/MotionEvent;
    .param p2, "displayId"  # I

    .line 333
    iget-object v0, p0, Lcom/android/server/policy/gesture/SystemGesture;->mGestureListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/gesture/GestureListenerBase;

    .line 334
    .local v1, "listener":Lcom/android/server/policy/gesture/GestureListenerBase;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/policy/gesture/GestureListenerBase;->dispatcherWaitToCheckSystemGesture(Landroid/view/MotionEvent;I)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 336
    const/4 v0, 0x1

    :try_start_19
    iget-object v2, p0, Lcom/android/server/policy/gesture/SystemGesture;->mGestureLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_1c} :catch_2a

    .line 337
    :try_start_1c
    iput-boolean v0, p0, Lcom/android/server/policy/gesture/SystemGesture;->mGestureLockState:Z

    .line 338
    iget-object v3, p0, Lcom/android/server/policy/gesture/SystemGesture;->mGestureLock:Ljava/lang/Object;

    const-wide/16 v4, 0x50

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 339
    monitor-exit v2

    .line 342
    goto :goto_2e

    .line 339
    :catchall_27
    move-exception v3

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_27

    .end local v1  # "listener":Lcom/android/server/policy/gesture/GestureListenerBase;
    .end local p0  # "this":Lcom/android/server/policy/gesture/SystemGesture;
    .end local p1  # "event":Landroid/view/MotionEvent;
    .end local p2  # "displayId":I
    :try_start_29
    throw v3
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_2a} :catch_2a

    .line 340
    .restart local v1  # "listener":Lcom/android/server/policy/gesture/GestureListenerBase;
    .restart local p0  # "this":Lcom/android/server/policy/gesture/SystemGesture;
    .restart local p1  # "event":Landroid/view/MotionEvent;
    .restart local p2  # "displayId":I
    :catch_2a
    move-exception v2

    .line 341
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 343
    .end local v2  # "e":Ljava/lang/InterruptedException;
    :goto_2e
    return v0

    .line 345
    .end local v1  # "listener":Lcom/android/server/policy/gesture/GestureListenerBase;
    :cond_2f
    goto :goto_6

    .line 346
    :cond_30
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "prefix"  # Ljava/lang/String;
    .param p2, "pw"  # Ljava/io/PrintWriter;

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SystemGesture"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 231
    const-string v0, "Dump system gesture client"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/android/server/policy/gesture/SystemGesture;->mSystemGestureClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 233
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/policy/gesture/SystemGesture;->mSystemGestureClients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/gesture/SystemGestureClient;

    .line 234
    .local v2, "client":Lcom/android/server/policy/gesture/SystemGestureClient;
    invoke-virtual {v2}, Lcom/android/server/policy/gesture/SystemGestureClient;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 235
    .end local v2  # "client":Lcom/android/server/policy/gesture/SystemGestureClient;
    goto :goto_22

    .line 236
    :cond_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_1c .. :try_end_37} :catchall_56

    .line 237
    iget-object v0, p0, Lcom/android/server/policy/gesture/SystemGesture;->mTargetGestureListener:Lcom/android/server/policy/gesture/GestureListenerBase;

    if-eqz v0, :cond_55

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Last target gesture Listener : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/gesture/SystemGesture;->mTargetGestureListener:Lcom/android/server/policy/gesture/GestureListenerBase;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    :cond_55
    return-void

    .line 236
    :catchall_56
    move-exception v1

    :try_start_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v1
.end method

.method public getGestureSwitchController()Lcom/android/server/policy/gesture/GestureSwitchController;
    .registers 2

    .line 226
    iget-object v0, p0, Lcom/android/server/policy/gesture/SystemGesture;->mGestureSwitchController:Lcom/android/server/policy/gesture/GestureSwitchController;

    return-object v0
.end method

.method public getMzPhoneWindowManager()Lcom/android/server/policy/MzPhoneWindowManager;
    .registers 2

    .line 222
    iget-object v0, p0, Lcom/android/server/policy/gesture/SystemGesture;->mMzPhoneWindowManager:Lcom/android/server/policy/MzPhoneWindowManager;

    return-object v0
.end method

.method public getPhoneWindowManager()Lcom/android/server/policy/PhoneWindowManager;
    .registers 2

    .line 218
    iget-object v0, p0, Lcom/android/server/policy/gesture/SystemGesture;->mMzPhoneWindowManager:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/MzPhoneWindowManager;->getPhoneWindowManager()Lcom/android/server/policy/PhoneWindowManager;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 3
    .param p1, "msg"  # Landroid/os/Message;

    .line 309
    const/4 v0, 0x0

    return v0
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)Z
    .registers 8
    .param p1, "event"  # Landroid/view/KeyEvent;
    .param p2, "policyFlags"  # I
    .param p3, "interactive"  # Z

    .line 313
    iget-object v0, p0, Lcom/android/server/policy/gesture/SystemGesture;->mGestureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 314
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/policy/gesture/SystemGesture;->mGestureLockState:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    .line 315
    iput-boolean v2, p0, Lcom/android/server/policy/gesture/SystemGesture;->mGestureLockState:Z

    .line 316
    iget-object v1, p0, Lcom/android/server/policy/gesture/SystemGesture;->mGestureLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 318
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_2c

    .line 320
    iget-object v0, p0, Lcom/android/server/policy/gesture/SystemGesture;->mGestureListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/gesture/GestureListenerBase;

    .line 321
    .local v1, "listener":Lcom/android/server/policy/gesture/GestureListenerBase;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/policy/gesture/GestureListenerBase;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 322
    const/4 v0, 0x1

    return v0

    .line 324
    .end local v1  # "listener":Lcom/android/server/policy/gesture/GestureListenerBase;
    :cond_2a
    goto :goto_16

    .line 325
    :cond_2b
    return v2

    .line 318
    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public interceptMotionBeforeDispatching(Landroid/view/MotionEvent;II)J
    .registers 6
    .param p1, "event"  # Landroid/view/MotionEvent;
    .param p2, "policyFlags"  # I
    .param p3, "displayId"  # I

    .line 329
    iget-boolean v0, p0, Lcom/android/server/policy/gesture/SystemGesture;->mInterceptTouchEvent:Z

    if-eqz v0, :cond_7

    const-wide/16 v0, -0x1

    goto :goto_9

    :cond_7
    const-wide/16 v0, 0x0

    :goto_9
    return-wide v0
.end method

.method public interceptMotionBeforeQueueing(Landroid/view/MotionEvent;I)I
    .registers 11
    .param p1, "event"  # Landroid/view/MotionEvent;
    .param p2, "policyFlags"  # I

    .line 88
    const/4 v0, 0x1

    .line 90
    .local v0, "result":I
    iget-object v1, p0, Lcom/android/server/policy/gesture/SystemGesture;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenDim()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    .line 91
    iget-object v1, p0, Lcom/android/server/policy/gesture/SystemGesture;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4, v2}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 92
    and-int/lit8 v0, v0, -0x2

    .line 93
    return v0

    .line 96
    :cond_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_b0

    const/4 v4, 0x3

    if-eq v1, v3, :cond_2d

    const/4 v5, 0x2

    if-eq v1, v5, :cond_c7

    if-eq v1, v4, :cond_2d

    const/4 v4, 0x5

    if-eq v1, v4, :cond_c7

    const/4 v4, 0x6

    if-eq v1, v4, :cond_c7

    goto/16 :goto_114

    .line 135
    :cond_2d
    iget-object v1, p0, Lcom/android/server/policy/gesture/SystemGesture;->mGestureLock:Ljava/lang/Object;

    monitor-enter v1

    .line 136
    :try_start_30
    iget-boolean v5, p0, Lcom/android/server/policy/gesture/SystemGesture;->mGestureLockState:Z

    if-eqz v5, :cond_3b

    .line 137
    iput-boolean v2, p0, Lcom/android/server/policy/gesture/SystemGesture;->mGestureLockState:Z

    .line 138
    iget-object v5, p0, Lcom/android/server/policy/gesture/SystemGesture;->mGestureLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    .line 140
    :cond_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_30 .. :try_end_3c} :catchall_ad

    .line 142
    const/4 v1, 0x0

    .line 143
    .local v1, "startCancelIndex":I
    iget-object v5, p0, Lcom/android/server/policy/gesture/SystemGesture;->mTargetGestureListener:Lcom/android/server/policy/gesture/GestureListenerBase;

    if-nez v5, :cond_73

    .line 144
    iget-object v5, p0, Lcom/android/server/policy/gesture/SystemGesture;->mGestureListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_47
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_72

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/policy/gesture/GestureListenerBase;

    .line 145
    .local v6, "listener":Lcom/android/server/policy/gesture/GestureListenerBase;
    invoke-virtual {v6, p1, p2}, Lcom/android/server/policy/gesture/GestureListenerBase;->interceptMotionBeforeQueueing(Landroid/view/MotionEvent;I)I

    move-result v7

    and-int/2addr v7, v3

    if-nez v7, :cond_71

    .line 146
    iput-boolean v3, p0, Lcom/android/server/policy/gesture/SystemGesture;->mInterceptTouchEvent:Z

    .line 148
    invoke-virtual {v6}, Lcom/android/server/policy/gesture/GestureListenerBase;->shouldInterceptGesture()Z

    move-result v7

    if-eqz v7, :cond_71

    .line 149
    iput-object v6, p0, Lcom/android/server/policy/gesture/SystemGesture;->mTargetGestureListener:Lcom/android/server/policy/gesture/GestureListenerBase;

    .line 150
    iget-object v5, p0, Lcom/android/server/policy/gesture/SystemGesture;->mGestureListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    iput v5, p0, Lcom/android/server/policy/gesture/SystemGesture;->mTargetGestureListenerIndex:I

    .line 151
    iget v5, p0, Lcom/android/server/policy/gesture/SystemGesture;->mTargetGestureListenerIndex:I

    add-int/2addr v5, v3

    .line 152
    .end local v1  # "startCancelIndex":I
    .local v5, "startCancelIndex":I
    move v1, v5

    goto :goto_72

    .line 155
    .end local v5  # "startCancelIndex":I
    .end local v6  # "listener":Lcom/android/server/policy/gesture/GestureListenerBase;
    .restart local v1  # "startCancelIndex":I
    :cond_71
    goto :goto_47

    :cond_72
    :goto_72
    goto :goto_76

    .line 157
    :cond_73
    invoke-virtual {v5, p1, p2}, Lcom/android/server/policy/gesture/GestureListenerBase;->interceptMotionBeforeQueueing(Landroid/view/MotionEvent;I)I

    .line 160
    :goto_76
    iget-object v3, p0, Lcom/android/server/policy/gesture/SystemGesture;->mTargetGestureListener:Lcom/android/server/policy/gesture/GestureListenerBase;

    if-eqz v3, :cond_a4

    iget-object v3, p0, Lcom/android/server/policy/gesture/SystemGesture;->mGestureListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_a4

    .line 162
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 163
    .local v3, "cancelEvent":Landroid/view/MotionEvent;
    move v5, v1

    .local v5, "i":I
    :goto_87
    iget-object v6, p0, Lcom/android/server/policy/gesture/SystemGesture;->mGestureListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_a4

    .line 164
    iget v6, p0, Lcom/android/server/policy/gesture/SystemGesture;->mTargetGestureListenerIndex:I

    if-eq v5, v6, :cond_a1

    .line 165
    invoke-virtual {v3, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 166
    iget-object v6, p0, Lcom/android/server/policy/gesture/SystemGesture;->mGestureListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/policy/gesture/GestureListenerBase;

    invoke-virtual {v6, v3, p2}, Lcom/android/server/policy/gesture/GestureListenerBase;->interceptMotionBeforeQueueing(Landroid/view/MotionEvent;I)I

    .line 163
    :cond_a1
    add-int/lit8 v5, v5, 0x1

    goto :goto_87

    .line 171
    .end local v3  # "cancelEvent":Landroid/view/MotionEvent;
    .end local v5  # "i":I
    :cond_a4
    iget-boolean v3, p0, Lcom/android/server/policy/gesture/SystemGesture;->mInterceptTouchEvent:Z

    if-eqz v3, :cond_aa

    .line 172
    and-int/lit8 v0, v0, -0x2

    .line 175
    :cond_aa
    iput-boolean v2, p0, Lcom/android/server/policy/gesture/SystemGesture;->mInterceptTouchEvent:Z

    goto :goto_114

    .line 140
    .end local v1  # "startCancelIndex":I
    :catchall_ad
    move-exception v2

    :try_start_ae
    monitor-exit v1
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_ad

    throw v2

    .line 100
    :cond_b0
    invoke-static {}, Landroid/scene/SceneClient;->getInstance()Landroid/scene/SceneClient;

    move-result-object v1

    new-instance v4, Landroid/scene/Scene;

    const v5, 0x100000a

    const-string v6, "TouchBoost"

    invoke-direct {v4, v5, v6}, Landroid/scene/Scene;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/scene/SceneClient;->notifyScene(Landroid/scene/Scene;)V

    .line 103
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/policy/gesture/SystemGesture;->mTargetGestureListener:Lcom/android/server/policy/gesture/GestureListenerBase;

    .line 104
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/policy/gesture/SystemGesture;->mTargetGestureListenerIndex:I

    .line 109
    :cond_c7
    iget-object v1, p0, Lcom/android/server/policy/gesture/SystemGesture;->mTargetGestureListener:Lcom/android/server/policy/gesture/GestureListenerBase;

    if-nez v1, :cond_10b

    .line 110
    iget-object v1, p0, Lcom/android/server/policy/gesture/SystemGesture;->mGestureListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/policy/gesture/GestureListenerBase;

    .line 111
    .local v4, "listener":Lcom/android/server/policy/gesture/GestureListenerBase;
    invoke-virtual {v4, p1, p2}, Lcom/android/server/policy/gesture/GestureListenerBase;->interceptMotionBeforeQueueing(Landroid/view/MotionEvent;I)I

    move-result v5

    and-int/2addr v5, v3

    if-nez v5, :cond_109

    .line 112
    iput-boolean v3, p0, Lcom/android/server/policy/gesture/SystemGesture;->mInterceptTouchEvent:Z

    .line 113
    iget-object v5, p0, Lcom/android/server/policy/gesture/SystemGesture;->mGestureLock:Ljava/lang/Object;

    monitor-enter v5

    .line 114
    :try_start_e9
    iget-boolean v6, p0, Lcom/android/server/policy/gesture/SystemGesture;->mGestureLockState:Z

    if-eqz v6, :cond_f4

    .line 115
    iput-boolean v2, p0, Lcom/android/server/policy/gesture/SystemGesture;->mGestureLockState:Z

    .line 116
    iget-object v6, p0, Lcom/android/server/policy/gesture/SystemGesture;->mGestureLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notify()V

    .line 118
    :cond_f4
    monitor-exit v5
    :try_end_f5
    .catchall {:try_start_e9 .. :try_end_f5} :catchall_106

    .line 120
    invoke-virtual {v4}, Lcom/android/server/policy/gesture/GestureListenerBase;->shouldInterceptGesture()Z

    move-result v5

    if-eqz v5, :cond_109

    .line 121
    iput-object v4, p0, Lcom/android/server/policy/gesture/SystemGesture;->mTargetGestureListener:Lcom/android/server/policy/gesture/GestureListenerBase;

    .line 122
    iget-object v1, p0, Lcom/android/server/policy/gesture/SystemGesture;->mGestureListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/gesture/SystemGesture;->mTargetGestureListenerIndex:I

    .line 123
    goto :goto_10a

    .line 118
    :catchall_106
    move-exception v1

    :try_start_107
    monitor-exit v5
    :try_end_108
    .catchall {:try_start_107 .. :try_end_108} :catchall_106

    throw v1

    .line 126
    .end local v4  # "listener":Lcom/android/server/policy/gesture/GestureListenerBase;
    :cond_109
    goto :goto_d1

    :cond_10a
    :goto_10a
    goto :goto_114

    .line 128
    :cond_10b
    invoke-virtual {v1, p1, p2}, Lcom/android/server/policy/gesture/GestureListenerBase;->interceptMotionBeforeQueueing(Landroid/view/MotionEvent;I)I

    move-result v1

    and-int/2addr v1, v3

    if-nez v1, :cond_114

    .line 129
    iput-boolean v3, p0, Lcom/android/server/policy/gesture/SystemGesture;->mInterceptTouchEvent:Z

    .line 179
    :cond_114
    :goto_114
    iget-boolean v1, p0, Lcom/android/server/policy/gesture/SystemGesture;->mInterceptTouchEvent:Z

    if-eqz v1, :cond_11a

    .line 180
    and-int/lit8 v0, v0, -0x2

    .line 182
    :cond_11a
    return v0
.end method

.method public registerSystemGestureListener(Ljava/lang/String;ILandroid/view/ISystemGestureListener;)V
    .registers 12
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "gesture"  # I
    .param p3, "listener"  # Landroid/view/ISystemGestureListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 245
    if-eqz p3, :cond_4a

    .line 246
    new-instance v0, Lcom/android/server/policy/gesture/SystemGestureClient;

    invoke-interface {p3}, Landroid/view/ISystemGestureListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v1, v0

    move-object v3, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/policy/gesture/SystemGestureClient;-><init>(Landroid/os/IBinder;Ljava/lang/String;IILandroid/view/ISystemGestureListener;)V

    move-object v7, v0

    .line 247
    .local v7, "client":Lcom/android/server/policy/gesture/SystemGestureClient;
    iget-object v1, p0, Lcom/android/server/policy/gesture/SystemGesture;->mSystemGestureClients:Ljava/util/ArrayList;

    monitor-enter v1

    .line 248
    :try_start_17
    iget-object v0, p0, Lcom/android/server/policy/gesture/SystemGesture;->mSystemGestureClients:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 251
    iget-object v0, p0, Lcom/android/server/policy/gesture/SystemGesture;->mSystemGestureClients:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_47

    .line 253
    new-instance v0, Lcom/android/server/policy/gesture/SystemGesture$BinderDeath;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/policy/gesture/SystemGesture$BinderDeath;-><init>(Lcom/android/server/policy/gesture/SystemGesture;Ljava/lang/String;IILcom/android/server/policy/gesture/SystemGestureClient;)V

    .line 254
    .local v0, "binderDeath":Lcom/android/server/policy/gesture/SystemGesture$BinderDeath;
    invoke-interface {p3}, Landroid/view/ISystemGestureListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 255
    invoke-direct {p0}, Lcom/android/server/policy/gesture/SystemGesture;->onGetureListenerUpdate()V

    goto :goto_4a

    .line 249
    .end local v0  # "binderDeath":Lcom/android/server/policy/gesture/SystemGesture$BinderDeath;
    :cond_3f
    :try_start_3f
    new-instance v0, Landroid/os/RemoteException;

    const-string v2, "Dumplicate register because of same parameters"

    invoke-direct {v0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v7  # "client":Lcom/android/server/policy/gesture/SystemGestureClient;
    .end local p0  # "this":Lcom/android/server/policy/gesture/SystemGesture;
    .end local p1  # "pkg":Ljava/lang/String;
    .end local p2  # "gesture":I
    .end local p3  # "listener":Landroid/view/ISystemGestureListener;
    throw v0

    .line 252
    .restart local v7  # "client":Lcom/android/server/policy/gesture/SystemGestureClient;
    .restart local p0  # "this":Lcom/android/server/policy/gesture/SystemGesture;
    .restart local p1  # "pkg":Ljava/lang/String;
    .restart local p2  # "gesture":I
    .restart local p3  # "listener":Landroid/view/ISystemGestureListener;
    :catchall_47
    move-exception v0

    monitor-exit v1
    :try_end_49
    .catchall {:try_start_3f .. :try_end_49} :catchall_47

    throw v0

    .line 257
    .end local v7  # "client":Lcom/android/server/policy/gesture/SystemGestureClient;
    :cond_4a
    :goto_4a
    return-void
.end method

.method public unregisterSystemGestureListener(Ljava/lang/String;ILandroid/view/ISystemGestureListener;)V
    .registers 11
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "gesture"  # I
    .param p3, "listener"  # Landroid/view/ISystemGestureListener;

    .line 261
    new-instance v6, Lcom/android/server/policy/gesture/SystemGestureClient;

    invoke-interface {p3}, Landroid/view/ISystemGestureListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move-object v0, v6

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/gesture/SystemGestureClient;-><init>(Landroid/os/IBinder;Ljava/lang/String;IILandroid/view/ISystemGestureListener;)V

    .line 262
    .local v0, "client":Lcom/android/server/policy/gesture/SystemGestureClient;
    iget-object v1, p0, Lcom/android/server/policy/gesture/SystemGesture;->mSystemGestureClients:Ljava/util/ArrayList;

    monitor-enter v1

    .line 263
    :try_start_14
    iget-object v2, p0, Lcom/android/server/policy/gesture/SystemGesture;->mSystemGestureClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 264
    invoke-direct {p0}, Lcom/android/server/policy/gesture/SystemGesture;->onGetureListenerUpdate()V

    .line 265
    monitor-exit v1

    .line 266
    return-void

    .line 265
    :catchall_1e
    move-exception v2

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_1e

    throw v2
.end method
