.class public Lcom/android/server/ConsumerIrService;
.super Landroid/hardware/IConsumerIrService$Stub;
.source "ConsumerIrService.java"


# static fields
.field private static final MAX_XMIT_TIME:I = 0x1e8480

.field private static final TAG:Ljava/lang/String; = "ConsumerIrService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHalLock:Ljava/lang/Object;

.field private final mHasNativeHal:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 41
    invoke-direct {p0}, Landroid/hardware/IConsumerIrService$Stub;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    .line 42
    iput-object p1, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    .line 43
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 45
    const/4 v0, 0x1

    const-string v1, "ConsumerIrService"

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/ConsumerIrService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 46
    iget-object p1, p0, Lcom/android/server/ConsumerIrService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 48
    invoke-static {}, Lcom/android/server/ConsumerIrService;->halOpen()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/ConsumerIrService;->mHasNativeHal:Z

    .line 49
    iget-object p1, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.hardware.consumerir"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_44

    .line 50
    iget-boolean p1, p0, Lcom/android/server/ConsumerIrService;->mHasNativeHal:Z

    if-eqz p1, :cond_3c

    goto :goto_48

    .line 51
    :cond_3c
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "FEATURE_CONSUMER_IR present, but no IR HAL loaded!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_44
    iget-boolean p1, p0, Lcom/android/server/ConsumerIrService;->mHasNativeHal:Z

    if-nez p1, :cond_49

    .line 56
    :goto_48
    return-void

    .line 54
    :cond_49
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "IR HAL present, but FEATURE_CONSUMER_IR is not set!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static native halGetCarrierFrequencies()[I
.end method

.method private static native halOpen()Z
.end method

.method private static native halTransmit(I[I)I
.end method

.method private throwIfNoIrEmitter()V
    .registers 3

    .line 64
    iget-boolean v0, p0, Lcom/android/server/ConsumerIrService;->mHasNativeHal:Z

    if-eqz v0, :cond_5

    .line 67
    return-void

    .line 65
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "IR emitter not available"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCarrierFrequencies()[I
    .registers 3

    .line 104
    iget-object v0, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TRANSMIT_IR"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_19

    .line 109
    invoke-direct {p0}, Lcom/android/server/ConsumerIrService;->throwIfNoIrEmitter()V

    .line 111
    iget-object v0, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_10
    invoke-static {}, Lcom/android/server/ConsumerIrService;->halGetCarrierFrequencies()[I

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 113
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_16

    throw v1

    .line 106
    :cond_19
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires TRANSMIT_IR permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasIrEmitter()Z
    .registers 2

    .line 60
    iget-boolean v0, p0, Lcom/android/server/ConsumerIrService;->mHasNativeHal:Z

    return v0
.end method

.method public transmit(Ljava/lang/String;I[I)V
    .registers 9

    .line 72
    iget-object p1, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.TRANSMIT_IR"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_57

    .line 77
    const-wide/16 v0, 0x0

    .line 79
    array-length p1, p3

    const/4 v2, 0x0

    :goto_e
    if-ge v2, p1, :cond_21

    aget v3, p3, v2

    .line 80
    if-lez v3, :cond_19

    .line 83
    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 81
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Non-positive IR slice"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_21
    const-wide/32 v2, 0x1e8480

    cmp-long p1, v0, v2

    if-gtz p1, :cond_4f

    .line 90
    invoke-direct {p0}, Lcom/android/server/ConsumerIrService;->throwIfNoIrEmitter()V

    .line 93
    iget-object p1, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter p1

    .line 94
    :try_start_2e
    invoke-static {p2, p3}, Lcom/android/server/ConsumerIrService;->halTransmit(I[I)I

    move-result p2

    .line 96
    if-gez p2, :cond_4a

    .line 97
    const-string p3, "ConsumerIrService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error transmitting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_4a
    monitor-exit p1

    .line 100
    return-void

    .line 99
    :catchall_4c
    move-exception p2

    monitor-exit p1
    :try_end_4e
    .catchall {:try_start_2e .. :try_end_4e} :catchall_4c

    throw p2

    .line 87
    :cond_4f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "IR pattern too long"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_57
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Requires TRANSMIT_IR permission"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
