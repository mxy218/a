.class Lcom/android/server/broadcastradio/hal2/TunerSession;
.super Landroid/hardware/radio/ITuner$Stub;
.source "TunerSession.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BcRadio2Srv.session"

.field private static final kAudioDeviceName:Ljava/lang/String; = "Radio tuner source"


# instance fields
.field final mCallback:Landroid/hardware/radio/ITunerCallback;

.field private mDummyConfig:Landroid/hardware/radio/RadioManager$BandConfig;

.field private final mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

.field private mIsClosed:Z

.field private mIsMuted:Z

.field private final mLock:Ljava/lang/Object;

.field private final mModule:Lcom/android/server/broadcastradio/hal2/RadioModule;


# direct methods
.method constructor <init>(Lcom/android/server/broadcastradio/hal2/RadioModule;Landroid/hardware/broadcastradio/V2_0/ITunerSession;Landroid/hardware/radio/ITunerCallback;)V
    .registers 5

    .line 54
    invoke-direct {p0}, Landroid/hardware/radio/ITuner$Stub;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsClosed:Z

    .line 48
    iput-boolean v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsMuted:Z

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mDummyConfig:Landroid/hardware/radio/RadioManager$BandConfig;

    .line 55
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/broadcastradio/hal2/RadioModule;

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mModule:Lcom/android/server/broadcastradio/hal2/RadioModule;

    .line 56
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    .line 57
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/ITunerCallback;

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mCallback:Landroid/hardware/radio/ITunerCallback;

    .line 58
    return-void
.end method

.method private checkNotClosedLocked()V
    .registers 3

    .line 93
    iget-boolean v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsClosed:Z

    if-nez v0, :cond_5

    .line 96
    return-void

    .line 94
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tuner is closed, no further operations are allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$isConfigFlagSet$2(Landroid/util/MutableInt;Landroid/util/MutableBoolean;IZ)V
    .registers 4

    .line 225
    iput p2, p0, Landroid/util/MutableInt;->value:I

    .line 226
    iput-boolean p3, p1, Landroid/util/MutableBoolean;->value:Z

    .line 227
    return-void
.end method

.method static synthetic lambda$setConfiguration$0(Landroid/hardware/radio/RadioManager$BandConfig;Landroid/hardware/radio/ITunerCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    invoke-interface {p1, p0}, Landroid/hardware/radio/ITunerCallback;->onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V

    return-void
.end method

.method static synthetic lambda$startBackgroundScan$1(Landroid/hardware/radio/ITunerCallback;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 182
    invoke-interface {p0}, Landroid/hardware/radio/ITunerCallback;->onBackgroundScanComplete()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 4

    .line 163
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 164
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 165
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/broadcastradio/hal2/-$$Lambda$YOfksBuizvGCCXXC3xdyOet2Yr8;

    invoke-direct {v2, v1}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$YOfksBuizvGCCXXC3xdyOet2Yr8;-><init>(Landroid/hardware/broadcastradio/V2_0/ITunerSession;)V

    invoke-static {v2}, Lcom/android/server/broadcastradio/hal2/Utils;->maybeRethrow(Lcom/android/server/broadcastradio/hal2/Utils$VoidFuncThrowingRemoteException;)V

    .line 166
    monitor-exit v0

    .line 167
    return-void

    .line 166
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public cancelAnnouncement()V
    .registers 3

    .line 171
    const-string v0, "BcRadio2Srv.session"

    const-string v1, "Announcements control doesn\'t involve cancelling at the HAL level in 2.x"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void
.end method

.method public close()V
    .registers 2

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->close(Ljava/lang/Integer;)V

    .line 63
    return-void
.end method

.method public close(Ljava/lang/Integer;)V
    .registers 5

    .line 73
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsClosed:Z

    if-eqz v1, :cond_9

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_27

    return-void

    .line 75
    :cond_9
    if-eqz p1, :cond_1d

    .line 77
    :try_start_b
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v1, p1}, Landroid/hardware/radio/ITunerCallback;->onError(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_15
    .catchall {:try_start_b .. :try_end_14} :catchall_27

    .line 80
    goto :goto_1d

    .line 78
    :catch_15
    move-exception p1

    .line 79
    :try_start_16
    const-string v1, "BcRadio2Srv.session"

    const-string v2, "mCallback.onError() failed: "

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    :cond_1d
    :goto_1d
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsClosed:Z

    .line 83
    iget-object p1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mModule:Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-virtual {p1, p0}, Lcom/android/server/broadcastradio/hal2/RadioModule;->onTunerSessionClosed(Lcom/android/server/broadcastradio/hal2/TunerSession;)V

    .line 84
    monitor-exit v0

    .line 85
    return-void

    .line 84
    :catchall_27
    move-exception p1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_16 .. :try_end_29} :catchall_27

    throw p1
.end method

.method public getConfiguration()Landroid/hardware/radio/RadioManager$BandConfig;
    .registers 3

    .line 110
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 111
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 112
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mDummyConfig:Landroid/hardware/radio/RadioManager$BandConfig;

    monitor-exit v0

    return-object v1

    .line 113
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public getImage(I)Landroid/graphics/Bitmap;
    .registers 3

    .line 176
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mModule:Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-virtual {v0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->getImage(I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getParameters(Ljava/util/List;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map;"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 259
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 260
    new-instance v1, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerSession$UmZx38YMX_OHk94g5WH0WyZPNu0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerSession$UmZx38YMX_OHk94g5WH0WyZPNu0;-><init>(Lcom/android/server/broadcastradio/hal2/TunerSession;Ljava/util/List;)V

    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/Utils;->maybeRethrow(Lcom/android/server/broadcastradio/hal2/Utils$FuncThrowingRemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->vendorInfoFromHal(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 262
    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public isClosed()Z
    .registers 2

    .line 89
    iget-boolean v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsClosed:Z

    return v0
.end method

.method public isConfigFlagSet(I)Z
    .registers 7

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isConfigFlagSet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/hardware/broadcastradio/V2_0/ConfigFlag;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BcRadio2Srv.session"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 219
    :try_start_1d
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 221
    new-instance v1, Landroid/util/MutableInt;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/MutableInt;-><init>(I)V

    .line 222
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V
    :try_end_2c
    .catchall {:try_start_1d .. :try_end_2c} :catchall_5e

    .line 224
    :try_start_2c
    iget-object v3, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    new-instance v4, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerSession$ypybq6SvfCU67BzHDgrQ7oDdspw;

    invoke-direct {v4, v1, v2}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerSession$ypybq6SvfCU67BzHDgrQ7oDdspw;-><init>(Landroid/util/MutableInt;Landroid/util/MutableBoolean;)V

    invoke-interface {v3, p1, v4}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->isConfigFlagSet(ILandroid/hardware/broadcastradio/V2_0/ITunerSession$isConfigFlagSetCallback;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_36} :catch_42
    .catchall {:try_start_2c .. :try_end_36} :catchall_5e

    .line 230
    nop

    .line 231
    :try_start_37
    const-string p1, "isConfigFlagSet"

    iget v1, v1, Landroid/util/MutableInt;->value:I

    invoke-static {p1, v1}, Lcom/android/server/broadcastradio/hal2/Convert;->throwOnError(Ljava/lang/String;I)V

    .line 233
    iget-boolean p1, v2, Landroid/util/MutableBoolean;->value:Z

    monitor-exit v0

    return p1

    .line 228
    :catch_42
    move-exception v1

    .line 229
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to check flag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/hardware/broadcastradio/V2_0/ConfigFlag;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 234
    :catchall_5e
    move-exception p1

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_37 .. :try_end_60} :catchall_5e

    throw p1
.end method

.method public isConfigFlagSupported(I)Z
    .registers 3

    .line 206
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/hal2/TunerSession;->isConfigFlagSet(I)Z
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_4} :catch_8
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_4} :catch_5

    .line 207
    return v0

    .line 210
    :catch_5
    move-exception p1

    .line 211
    const/4 p1, 0x0

    return p1

    .line 208
    :catch_8
    move-exception p1

    .line 209
    return v0
.end method

.method public isMuted()Z
    .registers 3

    .line 128
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 130
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsMuted:Z

    monitor-exit v0

    return v1

    .line 131
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public synthetic lambda$getParameters$4$TunerSession(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->listToArrayList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->getParameters(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$setParameters$3$TunerSession(Ljava/util/Map;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->vendorInfoToHal(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->setParameters(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public scan(ZZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 147
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    if-nez p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    invoke-interface {v1, p1, p2}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->scan(ZZ)I

    move-result p1

    .line 148
    const-string/jumbo p2, "step"

    invoke-static {p2, p1}, Lcom/android/server/broadcastradio/hal2/Convert;->throwOnError(Ljava/lang/String;I)V

    .line 149
    monitor-exit v0

    .line 150
    return-void

    .line 149
    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public setConfigFlag(IZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setConfigFlag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/hardware/broadcastradio/V2_0/ConfigFlag;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BcRadio2Srv.session"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_26
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 242
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-interface {v1, p1, p2}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->setConfigFlag(IZ)I

    move-result p1

    .line 243
    const-string/jumbo p2, "setConfigFlag"

    invoke-static {p2, p1}, Lcom/android/server/broadcastradio/hal2/Convert;->throwOnError(Ljava/lang/String;I)V

    .line 244
    monitor-exit v0

    .line 245
    return-void

    .line 244
    :catchall_37
    move-exception p1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_26 .. :try_end_39} :catchall_37

    throw p1
.end method

.method public setConfiguration(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .registers 5

    .line 100
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 101
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 102
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioManager$BandConfig;

    iput-object v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mDummyConfig:Landroid/hardware/radio/RadioManager$BandConfig;

    .line 103
    const-string v1, "BcRadio2Srv.session"

    const-string v2, "Ignoring setConfiguration - not applicable for broadcastradio HAL 2.x"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mModule:Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v2, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerSession$Q1jB_2_HaoKI-bs-SvZQ_1kfSsk;

    invoke-direct {v2, p1}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerSession$Q1jB_2_HaoKI-bs-SvZQ_1kfSsk;-><init>(Landroid/hardware/radio/RadioManager$BandConfig;)V

    invoke-virtual {v1, v2}, Lcom/android/server/broadcastradio/hal2/RadioModule;->fanoutAidlCallback(Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V

    .line 105
    monitor-exit v0

    .line 106
    return-void

    .line 105
    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p1
.end method

.method public setMuted(Z)V
    .registers 4

    .line 118
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 119
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 120
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsMuted:Z

    if-ne v1, p1, :cond_c

    monitor-exit v0

    return-void

    .line 121
    :cond_c
    iput-boolean p1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsMuted:Z

    .line 122
    const-string p1, "BcRadio2Srv.session"

    const-string v1, "Mute via RadioService is not implemented - please handle it via app"

    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    monitor-exit v0

    .line 124
    return-void

    .line 123
    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public setParameters(Ljava/util/Map;)Ljava/util/Map;
    .registers 4

    .line 249
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 250
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 251
    new-instance v1, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerSession$hsnpNw6T-T5c0D5uUev9VuiIUUg;

    invoke-direct {v1, p0, p1}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerSession$hsnpNw6T-T5c0D5uUev9VuiIUUg;-><init>(Lcom/android/server/broadcastradio/hal2/TunerSession;Ljava/util/Map;)V

    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/Utils;->maybeRethrow(Lcom/android/server/broadcastradio/hal2/Utils$FuncThrowingRemoteException;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->vendorInfoFromHal(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 253
    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public startBackgroundScan()Z
    .registers 3

    .line 181
    const-string v0, "BcRadio2Srv.session"

    const-string v1, "Explicit background scan trigger is not supported with HAL 2.x"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mModule:Lcom/android/server/broadcastradio/hal2/RadioModule;

    sget-object v1, Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerSession$RN6YGky4fEzp_y9hG2yxYfo0XPs;->INSTANCE:Lcom/android/server/broadcastradio/hal2/-$$Lambda$TunerSession$RN6YGky4fEzp_y9hG2yxYfo0XPs;

    invoke-virtual {v0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->fanoutAidlCallback(Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V

    .line 183
    const/4 v0, 0x1

    return v0
.end method

.method public startProgramListUpdates(Landroid/hardware/radio/ProgramList$Filter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 190
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->programFilterToHal(Landroid/hardware/radio/ProgramList$Filter;)Landroid/hardware/broadcastradio/V2_0/ProgramFilter;

    move-result-object p1

    invoke-interface {v1, p1}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->startProgramListUpdates(Landroid/hardware/broadcastradio/V2_0/ProgramFilter;)I

    move-result p1

    .line 191
    const-string/jumbo v1, "startProgramListUpdates"

    invoke-static {v1, p1}, Lcom/android/server/broadcastradio/hal2/Convert;->throwOnError(Ljava/lang/String;I)V

    .line 192
    monitor-exit v0

    .line 193
    return-void

    .line 192
    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public step(ZZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    iget-object p2, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 137
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 138
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    if-nez p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    invoke-interface {v0, p1}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->step(Z)I

    move-result p1

    .line 139
    const-string/jumbo v0, "step"

    invoke-static {v0, p1}, Lcom/android/server/broadcastradio/hal2/Convert;->throwOnError(Ljava/lang/String;I)V

    .line 140
    monitor-exit p2

    .line 141
    return-void

    .line 140
    :catchall_19
    move-exception p1

    monitor-exit p2
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public stopProgramListUpdates()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 199
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-interface {v1}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->stopProgramListUpdates()V

    .line 200
    monitor-exit v0

    .line 201
    return-void

    .line 200
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public tune(Landroid/hardware/radio/ProgramSelector;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 156
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->programSelectorToHal(Landroid/hardware/radio/ProgramSelector;)Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    move-result-object p1

    invoke-interface {v1, p1}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->tune(Landroid/hardware/broadcastradio/V2_0/ProgramSelector;)I

    move-result p1

    .line 157
    const-string/jumbo v1, "tune"

    invoke-static {v1, p1}, Lcom/android/server/broadcastradio/hal2/Convert;->throwOnError(Ljava/lang/String;I)V

    .line 158
    monitor-exit v0

    .line 159
    return-void

    .line 158
    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p1
.end method
