.class public Lcom/android/server/location/ActivityRecognitionProxy;
.super Ljava/lang/Object;
.source "ActivityRecognitionProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityRecognitionProxy"


# instance fields
.field private final mInstance:Landroid/hardware/location/ActivityRecognitionHardware;

.field private final mIsSupported:Z

.field private final mServiceWatcher:Lcom/android/server/ServiceWatcher;


# direct methods
.method private constructor <init>(Landroid/content/Context;ZLandroid/hardware/location/ActivityRecognitionHardware;III)V
    .registers 16

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-boolean p2, p0, Lcom/android/server/location/ActivityRecognitionProxy;->mIsSupported:Z

    .line 78
    iput-object p3, p0, Lcom/android/server/location/ActivityRecognitionProxy;->mInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    .line 80
    new-instance p2, Lcom/android/server/location/ActivityRecognitionProxy$1;

    .line 87
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v8

    const-string v3, "ActivityRecognitionProxy"

    const-string v4, "com.android.location.service.ActivityRecognitionProvider"

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/location/ActivityRecognitionProxy$1;-><init>(Lcom/android/server/location/ActivityRecognitionProxy;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/location/ActivityRecognitionProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/ActivityRecognitionProxy;Landroid/os/IBinder;)V
    .registers 2

    .line 35
    invoke-direct {p0, p1}, Lcom/android/server/location/ActivityRecognitionProxy;->initializeService(Landroid/os/IBinder;)V

    return-void
.end method

.method public static createAndBind(Landroid/content/Context;ZLandroid/hardware/location/ActivityRecognitionHardware;III)Lcom/android/server/location/ActivityRecognitionProxy;
    .registers 14

    .line 51
    new-instance v7, Lcom/android/server/location/ActivityRecognitionProxy;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/ActivityRecognitionProxy;-><init>(Landroid/content/Context;ZLandroid/hardware/location/ActivityRecognitionHardware;III)V

    .line 59
    iget-object p0, v7, Lcom/android/server/location/ActivityRecognitionProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {p0}, Lcom/android/server/ServiceWatcher;->start()Z

    move-result p0

    if-eqz p0, :cond_15

    .line 60
    return-object v7

    .line 62
    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method private initializeService(Landroid/os/IBinder;)V
    .registers 5

    .line 97
    const-string v0, "ActivityRecognitionProxy"

    :try_start_2
    invoke-interface {p1}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 99
    const-class v2, Landroid/hardware/location/IActivityRecognitionHardwareWatcher;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 101
    nop

    .line 102
    invoke-static {p1}, Landroid/hardware/location/IActivityRecognitionHardwareWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IActivityRecognitionHardwareWatcher;

    move-result-object p1

    .line 103
    iget-object v1, p0, Lcom/android/server/location/ActivityRecognitionProxy;->mInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    if-eqz v1, :cond_20

    .line 104
    iget-object v1, p0, Lcom/android/server/location/ActivityRecognitionProxy;->mInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    invoke-interface {p1, v1}, Landroid/hardware/location/IActivityRecognitionHardwareWatcher;->onInstanceChanged(Landroid/hardware/location/IActivityRecognitionHardware;)V

    .line 106
    :cond_20
    goto :goto_4e

    :cond_21
    const-class v2, Landroid/hardware/location/IActivityRecognitionHardwareClient;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 108
    nop

    .line 109
    invoke-static {p1}, Landroid/hardware/location/IActivityRecognitionHardwareClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IActivityRecognitionHardwareClient;

    move-result-object p1

    .line 110
    iget-boolean v1, p0, Lcom/android/server/location/ActivityRecognitionProxy;->mIsSupported:Z

    iget-object v2, p0, Lcom/android/server/location/ActivityRecognitionProxy;->mInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    invoke-interface {p1, v1, v2}, Landroid/hardware/location/IActivityRecognitionHardwareClient;->onAvailabilityChanged(ZLandroid/hardware/location/IActivityRecognitionHardware;)V

    .line 111
    goto :goto_4e

    .line 112
    :cond_3a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid descriptor found on connection: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_4e} :catch_4f

    .line 116
    :goto_4e
    goto :goto_53

    .line 114
    :catch_4f
    move-exception p1

    .line 115
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    :goto_53
    return-void
.end method
