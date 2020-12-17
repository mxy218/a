.class public Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;
.super Ljava/lang/Object;
.source "ConnectionRateController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$NetworkConnectionCallBack;
.implements Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$CallBack;,
        Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static DEBUG:Z = true

.field private static TAG:Ljava/lang/String; = "ConnectionRateController"

.field private static getMobileIfaces:Ljava/lang/reflect/Method;


# instance fields
.field private isShowConnectionRate:Z

.field private mBluetoothConnection:Z

.field private mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

.field private final mCallBacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$CallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionRateSampler:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;

.field private mContext:Landroid/content/Context;

.field private mDataConnection:Z

.field private mGentleCount:I

.field private mHandler:Landroid/os/Handler;

.field private mHideAnyWay:Z

.field private mLastConnectionRate:D

.field private mMainHandler:Landroid/os/Handler;

.field private mScreenOn:Z

.field private mShowConnectionRate:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 62
    :try_start_0
    const-class v0, Landroid/net/TrafficStats;

    const-string v1, "getMobileIfaces"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->getMobileIfaces:Ljava/lang/reflect/Method;

    .line 63
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->getMobileIfaces:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_13
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_1b

    .line 65
    :catch_14
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->TAG:Ljava/lang/String;

    const-string v1, "getMobileIfaces has not found"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1b
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 6
    .param p2  # Landroid/os/Looper;
        .annotation runtime Ljavax/inject/Named;
            value = "background_looper"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mCallBacks:Ljava/util/List;

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mGentleCount:I

    .line 217
    new-instance v1, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$2;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$2;-><init>(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;)V

    iput-object v1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mMainHandler:Landroid/os/Handler;

    .line 71
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mContext:Landroid/content/Context;

    const-string v1, "power"

    .line 72
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 73
    invoke-virtual {p1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p1

    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mScreenOn:Z

    .line 74
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mHandler:Landroid/os/Handler;

    .line 75
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "mz_current_network_speed"

    .line 76
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 77
    new-instance v1, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$1;-><init>(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;Landroid/os/Handler;)V

    .line 83
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->updateConnectionRate()V

    const/4 p0, -0x1

    .line 84
    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;)V
    .registers 1

    .line 36
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->updateConnectionRate()V

    return-void
.end method

.method static synthetic access$100(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;)Z
    .registers 1

    .line 36
    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mDataConnection:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;Z)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->toggleConnectionRate(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;Z)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->updateWifiConnection(Z)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .line 36
    invoke-static {}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->getMobileIfacesList()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;)D
    .registers 3

    .line 36
    iget-wide v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mLastConnectionRate:D

    return-wide v0
.end method

.method static synthetic access$400()Z
    .registers 1

    .line 36
    sget-boolean v0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .registers 1

    .line 36
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;)Landroid/os/Handler;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;D)V
    .registers 3

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->updateConnectionRate(D)V

    return-void
.end method

.method static synthetic access$800(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;)Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mConnectionRateSampler:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;

    return-object p0
.end method

.method static synthetic access$802(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;)Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mConnectionRateSampler:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$ConnectionRateSampler;

    return-object p1
.end method

.method static synthetic access$900(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;)Landroid/os/Handler;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private applyConnectionRateChange()V
    .registers 7

    .line 327
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mCallBacks:Ljava/util/List;

    monitor-enter v0

    .line 328
    :try_start_3
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mCallBacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$CallBack;

    .line 329
    iget-boolean v3, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->isShowConnectionRate:Z

    iget-wide v4, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mLastConnectionRate:D

    invoke-interface {v2, v3, v4, v5}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$CallBack;->onConnectionRateChange(ZD)V

    goto :goto_9

    .line 331
    :cond_1d
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method private static getMobileIfacesList()Ljava/lang/String;
    .registers 3

    .line 89
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->getMobileIfaces:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    const/4 v2, 0x0

    :try_start_6
    new-array v2, v2, [Ljava/lang/Object;

    .line 91
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const-string v2, ","

    invoke-static {v0, v2}, Lcom/flyme/systemui/statusbar/utils/StringUtils;->join([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_14} :catch_1a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_14} :catch_15

    return-object v0

    :catch_15
    move-exception v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1e

    :catch_1a
    move-exception v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_1e
    :goto_1e
    return-object v1
.end method

.method private isShowConnectionRate()Z
    .registers 4

    .line 316
    sget-boolean v0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->DEBUG:Z

    if-eqz v0, :cond_3a

    .line 317
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isShowConnectionRate: btcr,mShowConnectionRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mShowConnectionRate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mDataConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mDataConnection:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mBluetoothConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mBluetoothConnection:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mHideAnyWay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mHideAnyWay:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_3a
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mShowConnectionRate:Z

    if-eqz v0, :cond_48

    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mDataConnection:Z

    if-nez v0, :cond_46

    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mBluetoothConnection:Z

    if-eqz p0, :cond_48

    :cond_46
    const/4 p0, 0x1

    goto :goto_49

    :cond_48
    const/4 p0, 0x0

    :goto_49
    return p0
.end method

.method private toggleConnectionRate()V
    .registers 2

    const/4 v0, 0x0

    .line 312
    invoke-direct {p0, v0}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->toggleConnectionRate(Z)V

    return-void
.end method

.method private toggleConnectionRate(Z)V
    .registers 5

    .line 296
    monitor-enter p0

    .line 297
    :try_start_1
    sget-boolean v0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->DEBUG:Z

    if-eqz v0, :cond_32

    .line 298
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toggleConnectionRate: btcr,screenOnChange="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isShowConnectionRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->isShowConnectionRate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isShowConnectionRate()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->isShowConnectionRate()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 298
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_32
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->isShowConnectionRate:Z

    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->isShowConnectionRate()Z

    move-result v1

    if-ne v0, v1, :cond_3c

    if-eqz p1, :cond_71

    .line 303
    :cond_3c
    sget-object p1, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "toggleConnectionRate: isShowConnectionRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->isShowConnectionRate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->isShowConnectionRate()Z

    move-result p1

    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->isShowConnectionRate:Z

    const-wide/16 v0, 0x0

    .line 305
    iput-wide v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mLastConnectionRate:D

    .line 306
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mMainHandler:Landroid/os/Handler;

    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->isShowConnectionRate:Z

    if-eqz v0, :cond_6c

    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mScreenOn:Z

    if-eqz v0, :cond_6c

    const/16 v0, 0x3e9

    goto :goto_6e

    :cond_6c
    const/16 v0, 0x3ea

    :goto_6e
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 308
    :cond_71
    monitor-exit p0

    return-void

    :catchall_73
    move-exception p1

    monitor-exit p0
    :try_end_75
    .catchall {:try_start_1 .. :try_end_75} :catchall_73

    throw p1
.end method

.method private updateConnectionRate()V
    .registers 5

    .line 283
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "mz_current_network_speed"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    .line 285
    :cond_11
    sget-boolean v0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->DEBUG:Z

    if-eqz v0, :cond_36

    .line 286
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateConnectionRate: btcr,mShowConnectionRate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mShowConnectionRate:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",showConnectionRate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_36
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mShowConnectionRate:Z

    if-eq v1, v0, :cond_3f

    .line 290
    iput-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mShowConnectionRate:Z

    .line 291
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->toggleConnectionRate()V

    :cond_3f
    return-void
.end method

.method private updateConnectionRate(D)V
    .registers 6

    .line 265
    sget-boolean v0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->DEBUG:Z

    if-eqz v0, :cond_1b

    .line 266
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateConnectionRate: btcr,rate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    const-wide v0, 0x3f847ae147ae147bL  # 0.01

    cmpl-double v0, p1, v0

    if-lez v0, :cond_2a

    .line 269
    iput-wide p1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mLastConnectionRate:D

    const/4 p1, 0x0

    .line 270
    iput p1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mGentleCount:I

    goto :goto_45

    .line 272
    :cond_2a
    iget v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mGentleCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mGentleCount:I

    .line 273
    iget v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mGentleCount:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_3e

    const-wide/16 v0, 0x0

    .line 274
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mLastConnectionRate:D

    goto :goto_45

    .line 276
    :cond_3e
    iget-wide p1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mLastConnectionRate:D

    const-wide/high16 v0, 0x4000000000000000L  # 2.0

    div-double/2addr p1, v0

    iput-wide p1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mLastConnectionRate:D

    .line 279
    :goto_45
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->applyConnectionRateChange()V

    return-void
.end method

.method private updateWifiConnection(Z)V
    .registers 4

    .line 257
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mCallBacks:Ljava/util/List;

    monitor-enter v0

    .line 258
    :try_start_3
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mCallBacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$CallBack;

    .line 259
    invoke-interface {v1, p1}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$CallBack;->onWifiConnectionChange(Z)V

    goto :goto_9

    .line 261
    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method


# virtual methods
.method public addCallBack(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$CallBack;)V
    .registers 5

    .line 335
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mCallBacks:Ljava/util/List;

    monitor-enter v0

    .line 336
    :try_start_3
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mCallBacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_11

    .line 338
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->isShowConnectionRate:Z

    iget-wide v1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mLastConnectionRate:D

    invoke-interface {p1, v0, v1, v2}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$CallBack;->onConnectionRateChange(ZD)V

    return-void

    :catchall_11
    move-exception p0

    .line 337
    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public onBluetoothDevicesChanged()V
    .registers 1

    return-void
.end method

.method public onBluetoothStateChange(Z)V
    .registers 5

    .line 150
    sget-boolean v0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->DEBUG:Z

    if-eqz v0, :cond_28

    .line 151
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBluetoothStateChange: btcr,enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mBluetoothController.isBluetoothConnected()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 153
    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    if-eqz p1, :cond_34

    .line 155
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothConnected()Z

    move-result p1

    if-eqz p1, :cond_34

    const/4 p1, 0x1

    goto :goto_35

    :cond_34
    const/4 p1, 0x0

    .line 158
    :goto_35
    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->setBluetoothConnection(Z)V

    return-void
.end method

.method public onDataConnection(Z)V
    .registers 2

    .line 354
    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->setDataConnection(Z)V

    return-void
.end method

.method public onScanningStateChanged(Z)V
    .registers 2

    return-void
.end method

.method public onWifiConnection(Z)V
    .registers 2

    .line 359
    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->setWifiConnection(Z)V

    return-void
.end method

.method public removeBluetoothController()V
    .registers 2

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    return-void
.end method

.method public removeCallBack(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$CallBack;)V
    .registers 3

    .line 342
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mCallBacks:Ljava/util/List;

    monitor-enter v0

    .line 343
    :try_start_3
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mCallBacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 344
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method protected setBluetoothConnection(Z)V
    .registers 5

    .line 131
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothConnection: new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mBluetoothConnection:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mBluetoothConnection:Z

    if-eq v0, p1, :cond_29

    .line 133
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mBluetoothConnection:Z

    .line 134
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->toggleConnectionRate()V

    :cond_29
    return-void
.end method

.method public setBluetoothController(Lcom/android/systemui/statusbar/policy/BluetoothController;)V
    .registers 2

    .line 102
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    return-void
.end method

.method protected setDataConnection(Z)V
    .registers 5

    .line 118
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataConnection: new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mDataConnection:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mDataConnection:Z

    if-eq v0, p1, :cond_29

    .line 120
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mDataConnection:Z

    .line 121
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->toggleConnectionRate()V

    :cond_29
    return-void
.end method

.method public setScreenOn(Z)V
    .registers 5

    .line 139
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScreenOn: new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mScreenOn:Z

    if-eq v0, p1, :cond_3b

    .line 141
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mScreenOn:Z

    .line 142
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mMainHandler:Landroid/os/Handler;

    const/16 v0, 0x3eb

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 143
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mMainHandler:Landroid/os/Handler;

    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mScreenOn:Z

    if-eqz p0, :cond_36

    const-wide/16 v1, 0x0

    goto :goto_38

    :cond_36
    const-wide/16 v1, 0x2710

    :goto_38
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3b
    return-void
.end method

.method protected setWifiConnection(Z)V
    .registers 4

    .line 126
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0xbb9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 127
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->mMainHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
