.class public abstract Lcom/android/server/location/GnssMeasurementsProvider;
.super Lcom/android/server/location/RemoteListenerHelper;
.source "GnssMeasurementsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GnssMeasurementsProvider$GnssMeasurementProviderNative;,
        Lcom/android/server/location/GnssMeasurementsProvider$StatusChangedOperation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/RemoteListenerHelper<",
        "Landroid/location/IGnssMeasurementsListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "GnssMeasurementsProvider"


# instance fields
.field private mEnableFullTracking:Z

.field private mIsCollectionStarted:Z

.field private final mNative:Lcom/android/server/location/GnssMeasurementsProvider$GnssMeasurementProviderNative;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 38
    const-string v0, "GnssMeasurementsProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GnssMeasurementsProvider;->DEBUG:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "handler"  # Landroid/os/Handler;

    .line 46
    new-instance v0, Lcom/android/server/location/GnssMeasurementsProvider$GnssMeasurementProviderNative;

    invoke-direct {v0}, Lcom/android/server/location/GnssMeasurementsProvider$GnssMeasurementProviderNative;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/location/GnssMeasurementsProvider;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/location/GnssMeasurementsProvider$GnssMeasurementProviderNative;)V

    .line 47
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/location/GnssMeasurementsProvider$GnssMeasurementProviderNative;)V
    .registers 5
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "handler"  # Landroid/os/Handler;
    .param p3, "aNative"  # Lcom/android/server/location/GnssMeasurementsProvider$GnssMeasurementProviderNative;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 52
    const-string v0, "GnssMeasurementsProvider"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/location/RemoteListenerHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 53
    iput-object p3, p0, Lcom/android/server/location/GnssMeasurementsProvider;->mNative:Lcom/android/server/location/GnssMeasurementsProvider$GnssMeasurementProviderNative;

    .line 54
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 35
    invoke-static {}, Lcom/android/server/location/GnssMeasurementsProvider;->native_is_measurement_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Z)Z
    .registers 2
    .param p0, "x0"  # Z

    .line 35
    invoke-static {p0}, Lcom/android/server/location/GnssMeasurementsProvider;->native_start_measurement_collection(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Z
    .registers 1

    .line 35
    invoke-static {}, Lcom/android/server/location/GnssMeasurementsProvider;->native_stop_measurement_collection()Z

    move-result v0

    return v0
.end method

.method private static native native_is_measurement_supported()Z
.end method

.method private static native native_start_measurement_collection(Z)Z
.end method

.method private static native native_stop_measurement_collection()Z
.end method


# virtual methods
.method protected getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;
    .registers 5
    .param p1, "result"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<",
            "Landroid/location/IGnssMeasurementsListener;",
            ">;"
        }
    .end annotation

    .line 121
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_2a

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled addListener result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GnssMeasurementsProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-object v0

    .line 131
    :pswitch_1b  #0x6
    const/4 v0, 0x3

    .line 132
    .local v0, "status":I
    goto :goto_24

    .line 137
    .end local v0  # "status":I
    :pswitch_1d  #0x5
    return-object v0

    .line 134
    :pswitch_1e  #0x3
    const/4 v0, 0x2

    .line 135
    .restart local v0  # "status":I
    goto :goto_24

    .line 128
    .end local v0  # "status":I
    :pswitch_20  #0x1, 0x2, 0x4
    const/4 v0, 0x0

    .line 129
    .restart local v0  # "status":I
    goto :goto_24

    .line 123
    .end local v0  # "status":I
    :pswitch_22  #0x0
    const/4 v0, 0x1

    .line 124
    .restart local v0  # "status":I
    nop

    .line 142
    :goto_24
    new-instance v1, Lcom/android/server/location/GnssMeasurementsProvider$StatusChangedOperation;

    invoke-direct {v1, v0}, Lcom/android/server/location/GnssMeasurementsProvider$StatusChangedOperation;-><init>(I)V

    return-object v1

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_22  #00000000
        :pswitch_20  #00000001
        :pswitch_20  #00000002
        :pswitch_1e  #00000003
        :pswitch_20  #00000004
        :pswitch_1d  #00000005
        :pswitch_1b  #00000006
    .end packed-switch
.end method

.method public isAvailableInPlatform()Z
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/android/server/location/GnssMeasurementsProvider;->mNative:Lcom/android/server/location/GnssMeasurementsProvider$GnssMeasurementProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/GnssMeasurementsProvider$GnssMeasurementProviderNative;->isMeasurementSupported()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$onMeasurementsAvailable$0$GnssMeasurementsProvider(Landroid/location/GnssMeasurementsEvent;Landroid/location/IGnssMeasurementsListener;Lcom/android/server/location/CallerIdentity;)V
    .registers 7
    .param p1, "event"  # Landroid/location/GnssMeasurementsEvent;
    .param p2, "listener"  # Landroid/location/IGnssMeasurementsListener;
    .param p3, "callerIdentity"  # Lcom/android/server/location/CallerIdentity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/android/server/location/GnssMeasurementsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p3}, Lcom/android/server/location/GnssMeasurementsProvider;->hasPermission(Landroid/content/Context;Lcom/android/server/location/CallerIdentity;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 99
    iget-object v0, p3, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    const-string v1, "GnssMeasurementsProvider"

    const-string v2, "GNSS measurements"

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/location/GnssMeasurementsProvider;->logPermissionDisabledEventNotReported(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void

    .line 103
    :cond_12
    invoke-interface {p2, p1}, Landroid/location/IGnssMeasurementsListener;->onGnssMeasurementsReceived(Landroid/location/GnssMeasurementsEvent;)V

    .line 104
    return-void
.end method

.method public onCapabilitiesUpdated(Z)V
    .registers 2
    .param p1, "isGnssMeasurementsSupported"  # Z

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/server/location/GnssMeasurementsProvider;->setSupported(Z)V

    .line 110
    invoke-virtual {p0}, Lcom/android/server/location/GnssMeasurementsProvider;->updateResult()V

    .line 111
    return-void
.end method

.method public onGpsEnabledChanged()V
    .registers 1

    .line 114
    invoke-virtual {p0}, Lcom/android/server/location/GnssMeasurementsProvider;->tryUpdateRegistrationWithService()V

    .line 115
    invoke-virtual {p0}, Lcom/android/server/location/GnssMeasurementsProvider;->updateResult()V

    .line 116
    return-void
.end method

.method public onMeasurementsAvailable(Landroid/location/GnssMeasurementsEvent;)V
    .registers 3
    .param p1, "event"  # Landroid/location/GnssMeasurementsEvent;

    .line 97
    new-instance v0, Lcom/android/server/location/-$$Lambda$GnssMeasurementsProvider$Qlkb-fzzYggD17FlZmrylRJr2vE;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/-$$Lambda$GnssMeasurementsProvider$Qlkb-fzzYggD17FlZmrylRJr2vE;-><init>(Lcom/android/server/location/GnssMeasurementsProvider;Landroid/location/GnssMeasurementsEvent;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/GnssMeasurementsProvider;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 105
    return-void
.end method

.method protected registerWithService()I
    .registers 7

    .line 72
    iget-object v0, p0, Lcom/android/server/location/GnssMeasurementsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "development_settings_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 74
    .local v0, "devOptions":I
    iget-object v2, p0, Lcom/android/server/location/GnssMeasurementsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enable_gnss_raw_meas_full_tracking"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 76
    .local v2, "fullTrackingToggled":I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_20

    if-ne v2, v3, :cond_20

    move v4, v3

    goto :goto_21

    :cond_20
    move v4, v1

    .line 78
    .local v4, "enableFullTracking":Z
    :goto_21
    iget-object v5, p0, Lcom/android/server/location/GnssMeasurementsProvider;->mNative:Lcom/android/server/location/GnssMeasurementsProvider$GnssMeasurementProviderNative;

    invoke-virtual {v5, v4}, Lcom/android/server/location/GnssMeasurementsProvider$GnssMeasurementProviderNative;->startMeasurementCollection(Z)Z

    move-result v5

    .line 79
    .local v5, "result":Z
    if-eqz v5, :cond_2e

    .line 80
    iput-boolean v3, p0, Lcom/android/server/location/GnssMeasurementsProvider;->mIsCollectionStarted:Z

    .line 81
    iput-boolean v4, p0, Lcom/android/server/location/GnssMeasurementsProvider;->mEnableFullTracking:Z

    .line 82
    return v1

    .line 84
    :cond_2e
    const/4 v1, 0x4

    return v1
.end method

.method resumeIfStarted()V
    .registers 3

    .line 57
    sget-boolean v0, Lcom/android/server/location/GnssMeasurementsProvider;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 58
    const-string v0, "GnssMeasurementsProvider"

    const-string/jumbo v1, "resumeIfStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_c
    iget-boolean v0, p0, Lcom/android/server/location/GnssMeasurementsProvider;->mIsCollectionStarted:Z

    if-eqz v0, :cond_17

    .line 61
    iget-object v0, p0, Lcom/android/server/location/GnssMeasurementsProvider;->mNative:Lcom/android/server/location/GnssMeasurementsProvider$GnssMeasurementProviderNative;

    iget-boolean v1, p0, Lcom/android/server/location/GnssMeasurementsProvider;->mEnableFullTracking:Z

    invoke-virtual {v0, v1}, Lcom/android/server/location/GnssMeasurementsProvider$GnssMeasurementProviderNative;->startMeasurementCollection(Z)Z

    .line 63
    :cond_17
    return-void
.end method

.method protected unregisterFromService()V
    .registers 3

    .line 90
    iget-object v0, p0, Lcom/android/server/location/GnssMeasurementsProvider;->mNative:Lcom/android/server/location/GnssMeasurementsProvider$GnssMeasurementProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/GnssMeasurementsProvider$GnssMeasurementProviderNative;->stopMeasurementCollection()Z

    move-result v0

    .line 91
    .local v0, "stopped":Z
    if-eqz v0, :cond_b

    .line 92
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/location/GnssMeasurementsProvider;->mIsCollectionStarted:Z

    .line 94
    :cond_b
    return-void
.end method
