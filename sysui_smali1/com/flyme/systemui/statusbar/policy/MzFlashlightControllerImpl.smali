.class public Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;
.super Ljava/lang/Object;
.source "MzFlashlightControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/FlashlightController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl$CTRABroadCast;,
        Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl$H;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCtraBroadCast:Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl$CTRABroadCast;

.field private mFilter:Landroid/content/IntentFilter;

.field private mFlashLightListener:Lcom/meizu/camera/MeizuCamera$FlashLightListener;

.field private mIsFlashLightOn:Z

.field private mIsFlashLightSwitchEnabled:Z

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMainHandler:Landroid/os/Handler;

.field private mMeizuCamera:Lcom/meizu/camera/MeizuCamera;

.field private mMeizuCameraErrorCallback:Lcom/meizu/camera/MeizuCamera$MeizuCameraErrorCallback;

.field private mWorkHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/policy/flashlight;->init(Landroid/content/Context;)V

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mMeizuCamera:Lcom/meizu/camera/MeizuCamera;

    const/4 v1, 0x0

    .line 40
    iput-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mIsFlashLightOn:Z

    const/4 v2, 0x1

    .line 41
    iput-boolean v2, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mIsFlashLightSwitchEnabled:Z

    .line 42
    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mFlashLightListener:Lcom/meizu/camera/MeizuCamera$FlashLightListener;

    .line 43
    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mMeizuCameraErrorCallback:Lcom/meizu/camera/MeizuCamera$MeizuCameraErrorCallback;

    .line 44
    new-instance v3, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl$H;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4, v0}, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl$H;-><init>(Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;Landroid/os/Looper;Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl$1;)V

    iput-object v3, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mMainHandler:Landroid/os/Handler;

    .line 53
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mListeners:Ljava/util/ArrayList;

    .line 86
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mContext:Landroid/content/Context;

    .line 87
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mFilter:Landroid/content/IntentFilter;

    .line 88
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "meizu.intent.action.OFFFLISHLIGHT"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    new-instance v2, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl$CTRABroadCast;

    invoke-direct {v2, p0}, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl$CTRABroadCast;-><init>(Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;)V

    iput-object v2, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mCtraBroadCast:Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl$CTRABroadCast;

    .line 91
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mCtraBroadCast:Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl$CTRABroadCast;

    iget-object v4, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 93
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "FlashlightController"

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 94
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 95
    new-instance v3, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl$H;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v3, p0, v2, v0}, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl$H;-><init>(Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;Landroid/os/Looper;Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl$1;)V

    iput-object v3, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mWorkHandler:Landroid/os/Handler;

    .line 97
    new-instance v2, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl$H;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v2, p0, p1, v0}, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl$H;-><init>(Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;Landroid/os/Looper;Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl$1;)V

    iput-object v2, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mMainHandler:Landroid/os/Handler;

    .line 99
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method static synthetic access$100(Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;)V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->initFlashLight()V

    return-void
.end method

.method static synthetic access$200(Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;)V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->turnOnFlashLight()V

    return-void
.end method

.method static synthetic access$300(Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;)V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->turnOffFlashLight()V

    return-void
.end method

.method static synthetic access$400(Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;IZ)V
    .registers 3

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->dispatchListeners(IZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;Z)V
    .registers 2

    .line 27
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->setFlashLightSwitchEnabled(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;IZ)V
    .registers 3

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->postDispatchListeners(IZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;)Z
    .registers 1

    .line 27
    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mIsFlashLightOn:Z

    return p0
.end method

.method static synthetic access$702(Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;Z)Z
    .registers 2

    .line 27
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mIsFlashLightOn:Z

    return p1
.end method

.method static synthetic access$800(Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;)Landroid/os/Handler;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mWorkHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private cleanUpListenersLocked(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V
    .registers 4

    .line 304
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_24

    .line 305
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;

    if-eqz v1, :cond_1c

    if-ne v1, p1, :cond_21

    .line 307
    :cond_1c
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_24
    return-void
.end method

.method private dispatchListeners(IZ)V
    .registers 11

    .line 160
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    const-string v1, "FlashlightController"

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[foree] dispatchListeners: message = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", argument = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", listeners = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_34
    if-ge v3, v1, :cond_66

    .line 165
    iget-object v5, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;

    const/4 v6, 0x1

    if-eqz v5, :cond_62

    const/4 v7, -0x1

    if-eq p1, v7, :cond_5e

    if-eqz p1, :cond_5a

    if-eq p1, v6, :cond_56

    const/4 v6, 0x2

    if-eq p1, v6, :cond_52

    goto :goto_63

    .line 181
    :cond_52
    invoke-interface {v5, p2}, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;->onFlashlightAvailabilityChanged(Z)V

    goto :goto_63

    .line 177
    :cond_56
    invoke-interface {v5, v2}, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;->onFlashlightChanged(Z)V

    goto :goto_63

    .line 173
    :cond_5a
    invoke-interface {v5, v6}, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;->onFlashlightChanged(Z)V

    goto :goto_63

    .line 169
    :cond_5e
    invoke-interface {v5}, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;->onFlashlightError()V

    goto :goto_63

    :cond_62
    move v4, v6

    :goto_63
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    :cond_66
    if-eqz v4, :cond_6c

    const/4 v1, 0x0

    .line 190
    invoke-direct {p0, v1}, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->cleanUpListenersLocked(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V

    .line 193
    :cond_6c
    invoke-direct {p0, p1, p2}, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->sendFlashLightStatus(IZ)V

    .line 194
    monitor-exit v0

    return-void

    :catchall_71
    move-exception p0

    monitor-exit v0
    :try_end_73
    .catchall {:try_start_3 .. :try_end_73} :catchall_71

    throw p0
.end method

.method private getFlashLightMode()I
    .registers 4

    const-string p0, "Get FLASH_LIGHT_PREFER_ID failed, set original camera id : 3"

    const-string v0, "FlashlightController"

    .line 291
    :try_start_4
    const-class v1, Lcom/meizu/camera/MeizuCamera;

    const-string v2, "FLASH_LIGHT_ID"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    .line 292
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_11
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_11} :catch_1a
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_11} :catch_16
    .catchall {:try_start_4 .. :try_end_11} :catchall_12

    return p0

    .line 298
    :catchall_12
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 296
    :catch_16
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 294
    :catch_1a
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1d
    const/4 p0, 0x3

    return p0
.end method

.method private declared-synchronized getFlashlightEnabled()Z
    .registers 2

    monitor-enter p0

    .line 313
    :try_start_1
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mIsFlashLightOn:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initFlashLight()V
    .registers 5

    const-string v0, "FlashlightController"

    .line 241
    :try_start_2
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->openMeizuCamera()Lcom/meizu/camera/MeizuCamera;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mMeizuCamera:Lcom/meizu/camera/MeizuCamera;

    .line 242
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mMeizuCamera:Lcom/meizu/camera/MeizuCamera;

    if-eqz v1, :cond_6b

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "创建 mMeizuCamera = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mMeizuCamera:Lcom/meizu/camera/MeizuCamera;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mFlashLightListener:Lcom/meizu/camera/MeizuCamera$FlashLightListener;

    if-nez v1, :cond_2e

    .line 245
    new-instance v1, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl$1;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl$1;-><init>(Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;)V

    iput-object v1, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mFlashLightListener:Lcom/meizu/camera/MeizuCamera$FlashLightListener;

    .line 258
    :cond_2e
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mMeizuCameraErrorCallback:Lcom/meizu/camera/MeizuCamera$MeizuCameraErrorCallback;

    if-nez v1, :cond_39

    .line 259
    new-instance v1, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl$2;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl$2;-><init>(Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;)V

    iput-object v1, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mMeizuCameraErrorCallback:Lcom/meizu/camera/MeizuCamera$MeizuCameraErrorCallback;

    .line 271
    :cond_39
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mMeizuCamera:Lcom/meizu/camera/MeizuCamera;

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mFlashLightListener:Lcom/meizu/camera/MeizuCamera$FlashLightListener;

    invoke-virtual {v1, v2}, Lcom/meizu/camera/MeizuCamera;->setFlashLightListener(Lcom/meizu/camera/MeizuCamera$FlashLightListener;)V

    .line 272
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mMeizuCamera:Lcom/meizu/camera/MeizuCamera;

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mMeizuCameraErrorCallback:Lcom/meizu/camera/MeizuCamera$MeizuCameraErrorCallback;

    invoke-virtual {v1, v2}, Lcom/meizu/camera/MeizuCamera;->setMeizuCameraErrorCallback(Lcom/meizu/camera/MeizuCamera$MeizuCameraErrorCallback;)V
    :try_end_47
    .catchall {:try_start_2 .. :try_end_47} :catchall_48

    goto :goto_6b

    :catchall_48
    move-exception v1

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onError:   exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x2

    .line 276
    iget-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mIsFlashLightSwitchEnabled:Z

    invoke-direct {p0, v0, v1}, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->postDispatchListeners(IZ)V

    .line 277
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mWorkHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_6b
    :goto_6b
    return-void
.end method

.method private openMeizuCamera()Lcom/meizu/camera/MeizuCamera;
    .registers 1

    .line 286
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->getFlashLightMode()I

    move-result p0

    invoke-static {p0}, Lcom/meizu/camera/MeizuCamera;->open(I)Lcom/meizu/camera/MeizuCamera;

    move-result-object p0

    return-object p0
.end method

.method private postDispatchListeners(IZ)V
    .registers 4

    .line 156
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mMainHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private sendFlashLightStatus(IZ)V
    .registers 5

    .line 198
    new-instance v0, Landroid/content/Intent;

    const-string v1, "meizu.intent.action.FLISHLIGHTSTATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "message"

    .line 199
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "argument"

    .line 200
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 201
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setFlashLightSwitchEnabled(Z)V
    .registers 2

    .line 282
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mIsFlashLightSwitchEnabled:Z

    return-void
.end method

.method private turnOffFlashLight()V
    .registers 3

    const-string v0, "FlashlightController"

    const-string/jumbo v1, "turnOffFlashLight() -- turnOffFlashLight() called!"

    .line 228
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mMeizuCamera:Lcom/meizu/camera/MeizuCamera;

    if-nez v0, :cond_c

    .line 232
    :cond_c
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mMeizuCamera:Lcom/meizu/camera/MeizuCamera;

    if-eqz v0, :cond_17

    iget-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mIsFlashLightOn:Z

    if-eqz v1, :cond_17

    .line 233
    invoke-virtual {v0}, Lcom/meizu/camera/MeizuCamera;->closeTorch()I

    :cond_17
    const/4 v0, 0x1

    .line 235
    iget-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mIsFlashLightSwitchEnabled:Z

    invoke-direct {p0, v0, v1}, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->postDispatchListeners(IZ)V

    const/4 v0, 0x0

    .line 236
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mIsFlashLightOn:Z

    return-void
.end method

.method private turnOnFlashLight()V
    .registers 5

    const-string v0, "FlashlightController"

    const-string/jumbo v1, "turnOnFlashLight() -- turnOnFlashLight() called!"

    .line 205
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :try_start_8
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mMeizuCamera:Lcom/meizu/camera/MeizuCamera;

    if-nez v1, :cond_c

    .line 210
    :cond_c
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mMeizuCamera:Lcom/meizu/camera/MeizuCamera;

    if-eqz v1, :cond_53

    iget-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mIsFlashLightOn:Z

    if-nez v1, :cond_53

    .line 211
    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMeizuCamera.openTorch() called! result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_34

    const/4 v0, 0x0

    .line 214
    iget-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mIsFlashLightSwitchEnabled:Z

    invoke-direct {p0, v0, v1}, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->postDispatchListeners(IZ)V

    const/4 v0, 0x1

    .line 215
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mIsFlashLightOn:Z

    goto :goto_53

    :cond_34
    const/4 v2, -0x1

    .line 217
    iget-boolean v3, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mIsFlashLightSwitchEnabled:Z

    invoke-direct {p0, v2, v3}, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->postDispatchListeners(IZ)V

    .line 218
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMeizuCamera.openTorch() called! but result is not right, so ignore.. result = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_4e} :catch_4f

    goto :goto_53

    :catch_4f
    move-exception p0

    .line 223
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_53
    :goto_53
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V
    .registers 4

    .line 137
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 138
    :try_start_3
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->cleanUpListenersLocked(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V

    .line 139
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .registers 2

    .line 26
    check-cast p1, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public hasFlashlight()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isAvailable()Z
    .registers 1

    .line 122
    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mIsFlashLightSwitchEnabled:Z

    return p0
.end method

.method public isEnabled()Z
    .registers 1

    .line 127
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->getFlashlightEnabled()Z

    move-result p0

    return p0
.end method

.method public killFlashlight()V
    .registers 2

    const/4 v0, 0x0

    .line 152
    invoke-virtual {p0, v0}, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->setFlashlight(Z)V

    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V
    .registers 3

    .line 145
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 146
    :try_start_3
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->cleanUpListenersLocked(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V

    .line 147
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .registers 2

    .line 26
    check-cast p1, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V

    return-void
.end method

.method public setFlashlight(Z)V
    .registers 2

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/policy/flashlight;->f(Z)V

    if-eqz p1, :cond_10

    .line 110
    iget-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mIsFlashLightOn:Z

    if-nez p1, :cond_1a

    .line 111
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mWorkHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1a

    .line 114
    :cond_10
    iget-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mIsFlashLightOn:Z

    if-eqz p1, :cond_1a

    .line 115
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->mWorkHandler:Landroid/os/Handler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1a
    :goto_1a
    return-void
.end method
