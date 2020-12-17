.class public abstract Lcom/android/server/biometrics/ClientMonitor;
.super Lcom/android/server/biometrics/LoggableMonitor;
.source "ClientMonitor.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field protected static final DEBUG:Z = true

.field protected static final ERROR_ESRCH:I = 0x3

.field private static final FINGERPRINT_SONFICATION_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field protected mAlreadyCancelled:Z

.field protected mAlreadyDone:Z

.field protected final mConstants:Lcom/android/server/biometrics/Constants;

.field private final mContext:Landroid/content/Context;

.field private final mCookie:I

.field private final mDaemon:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

.field private final mErrorVibrationEffect:Landroid/os/VibrationEffect;

.field private final mGroupId:I

.field private final mHalDeviceId:J

.field private final mIsRestricted:Z

.field private mListener:Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

.field protected final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mOwner:Ljava/lang/String;

.field private final mSuccessVibrationEffect:Landroid/os/VibrationEffect;

.field private final mTargetUserId:I

.field private mToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 42
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 44
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 45
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/biometrics/ClientMonitor;->FINGERPRINT_SONFICATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIZLjava/lang/String;I)V
    .registers 16
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "constants"  # Lcom/android/server/biometrics/Constants;
    .param p3, "daemon"  # Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    .param p4, "halDeviceId"  # J
    .param p6, "token"  # Landroid/os/IBinder;
    .param p7, "listener"  # Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;
    .param p8, "userId"  # I
    .param p9, "groupId"  # I
    .param p10, "restricted"  # Z
    .param p11, "owner"  # Ljava/lang/String;
    .param p12, "cookie"  # I

    .line 86
    invoke-direct {p0}, Lcom/android/server/biometrics/LoggableMonitor;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/android/server/biometrics/ClientMonitor;->mContext:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcom/android/server/biometrics/ClientMonitor;->mConstants:Lcom/android/server/biometrics/Constants;

    .line 89
    iput-object p3, p0, Lcom/android/server/biometrics/ClientMonitor;->mDaemon:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    .line 90
    iput-wide p4, p0, Lcom/android/server/biometrics/ClientMonitor;->mHalDeviceId:J

    .line 91
    iput-object p6, p0, Lcom/android/server/biometrics/ClientMonitor;->mToken:Landroid/os/IBinder;

    .line 92
    iput-object p7, p0, Lcom/android/server/biometrics/ClientMonitor;->mListener:Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    .line 93
    iput p8, p0, Lcom/android/server/biometrics/ClientMonitor;->mTargetUserId:I

    .line 94
    iput p9, p0, Lcom/android/server/biometrics/ClientMonitor;->mGroupId:I

    .line 95
    iput-boolean p10, p0, Lcom/android/server/biometrics/ClientMonitor;->mIsRestricted:Z

    .line 96
    iput-object p11, p0, Lcom/android/server/biometrics/ClientMonitor;->mOwner:Ljava/lang/String;

    .line 97
    iput p12, p0, Lcom/android/server/biometrics/ClientMonitor;->mCookie:I

    .line 98
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/biometrics/ClientMonitor;->mSuccessVibrationEffect:Landroid/os/VibrationEffect;

    .line 99
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/biometrics/ClientMonitor;->mErrorVibrationEffect:Landroid/os/VibrationEffect;

    .line 100
    new-instance v1, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v1, p0, Lcom/android/server/biometrics/ClientMonitor;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 102
    if-eqz p6, :cond_3f

    .line 103
    :try_start_30
    invoke-interface {p6, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_3f

    .line 105
    :catch_34
    move-exception v0

    .line 106
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "caught remote exception in linkToDeath: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_40

    .line 107
    .end local v0  # "e":Landroid/os/RemoteException;
    :cond_3f
    :goto_3f
    nop

    .line 108
    :goto_40
    return-void
.end method

.method private blacklistContains(II)Z
    .registers 8
    .param p1, "acquiredInfo"  # I
    .param p2, "vendorCode"  # I

    .line 156
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mConstants:Lcom/android/server/biometrics/Constants;

    invoke-interface {v0}, Lcom/android/server/biometrics/Constants;->acquireVendorCode()I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_36

    .line 157
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getAcquireVendorIgnorelist()[I

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_35

    .line 158
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getAcquireVendorIgnorelist()[I

    move-result-object v2

    aget v2, v2, v0

    if-ne v2, p2, :cond_32

    .line 159
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring vendor message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return v1

    .line 157
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .end local v0  # "i":I
    :cond_35
    goto :goto_62

    .line 164
    :cond_36
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_37
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getAcquireIgnorelist()[I

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_62

    .line 165
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getAcquireIgnorelist()[I

    move-result-object v2

    aget v2, v2, v0

    if-ne v2, p1, :cond_5f

    .line 166
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return v1

    .line 164
    :cond_5f
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 171
    .end local v0  # "i":I
    :cond_62
    :goto_62
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 237
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Binder died, cancelling client"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/ClientMonitor;->stop(Z)I

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mToken:Landroid/os/IBinder;

    .line 240
    iput-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mListener:Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    .line 241
    return-void
.end method

.method public destroy()V
    .registers 7

    .line 222
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    .line 224
    const/4 v2, 0x0

    :try_start_6
    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_9
    .catch Ljava/util/NoSuchElementException; {:try_start_6 .. :try_end_9} :catch_a

    .line 228
    goto :goto_2f

    .line 225
    :catch_a
    move-exception v0

    .line 227
    .local v0, "e":Ljava/util/NoSuchElementException;
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "destroy(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Exception;

    const-string v5, "here"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    .end local v0  # "e":Ljava/util/NoSuchElementException;
    :goto_2f
    iput-object v1, p0, Lcom/android/server/biometrics/ClientMonitor;->mToken:Landroid/os/IBinder;

    .line 231
    :cond_31
    iput-object v1, p0, Lcom/android/server/biometrics/ClientMonitor;->mListener:Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    .line 232
    return-void
.end method

.method protected finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_28

    .line 247
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removing leaked reference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/ClientMonitor;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getHalDeviceId()J

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/biometrics/ClientMonitor;->onError(JII)Z
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_2d

    .line 252
    :cond_28
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 253
    nop

    .line 254
    return-void

    .line 252
    :catchall_2d
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAcquireIgnorelist()[I
    .registers 2

    .line 149
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public getAcquireVendorIgnorelist()[I
    .registers 2

    .line 152
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 2

    .line 257
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCookie()I
    .registers 2

    .line 115
    iget v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mCookie:I

    return v0
.end method

.method public final getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    .registers 2

    .line 273
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mDaemon:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    return-object v0
.end method

.method public final getGroupId()I
    .registers 2

    .line 285
    iget v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mGroupId:I

    return v0
.end method

.method public final getHalDeviceId()J
    .registers 3

    .line 261
    iget-wide v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mHalDeviceId:J

    return-wide v0
.end method

.method public final getIsRestricted()Z
    .registers 2

    .line 277
    iget-boolean v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mIsRestricted:Z

    return v0
.end method

.method public final getListener()Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;
    .registers 2

    .line 269
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mListener:Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mConstants:Lcom/android/server/biometrics/Constants;

    invoke-interface {v0}, Lcom/android/server/biometrics/Constants;->logTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOwnerString()Ljava/lang/String;
    .registers 2

    .line 265
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mOwner:Ljava/lang/String;

    return-object v0
.end method

.method public final getTargetUserId()I
    .registers 2

    .line 281
    iget v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mTargetUserId:I

    return v0
.end method

.method public final getToken()Landroid/os/IBinder;
    .registers 2

    .line 289
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public isAlreadyDone()Z
    .registers 2

    .line 175
    iget-boolean v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mAlreadyDone:Z

    return v0
.end method

.method public abstract notifyUserActivity()V
.end method

.method public onAcquired(II)Z
    .registers 6
    .param p1, "acquiredInfo"  # I
    .param p2, "vendorCode"  # I

    .line 185
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getTargetUserId()I

    move-result v1

    invoke-super {p0, v0, p1, p2, v1}, Lcom/android/server/biometrics/LoggableMonitor;->logOnAcquired(Landroid/content/Context;III)V

    .line 186
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Acquired: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :try_start_29
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mListener:Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    if-eqz v0, :cond_3c

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/ClientMonitor;->blacklistContains(II)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 189
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mListener:Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getHalDeviceId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;->onAcquired(JII)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_3c} :catch_45
    .catchall {:try_start_29 .. :try_end_3c} :catchall_43

    .line 191
    :cond_3c
    const/4 v0, 0x0

    .line 197
    if-nez p1, :cond_42

    .line 198
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->notifyUserActivity()V

    .line 191
    :cond_42
    return v0

    .line 197
    :catchall_43
    move-exception v0

    goto :goto_56

    .line 192
    :catch_45
    move-exception v0

    .line 193
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_46
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to invoke sendAcquired"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4f
    .catchall {:try_start_46 .. :try_end_4f} :catchall_43

    .line 194
    const/4 v1, 0x1

    .line 197
    if-nez p1, :cond_55

    .line 198
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->notifyUserActivity()V

    .line 194
    :cond_55
    return v1

    .line 197
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_56
    if-nez p1, :cond_5b

    .line 198
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->notifyUserActivity()V

    :cond_5b
    throw v0
.end method

.method public abstract onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
            "Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
.end method

.method public abstract onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
.end method

.method public onError(JII)Z
    .registers 12
    .param p1, "deviceId"  # J
    .param p3, "error"  # I
    .param p4, "vendorCode"  # I

    .line 210
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getTargetUserId()I

    move-result v1

    invoke-super {p0, v0, p3, p4, v1}, Lcom/android/server/biometrics/LoggableMonitor;->logOnError(Landroid/content/Context;III)V

    .line 212
    :try_start_9
    iget-object v0, p0, Lcom/android/server/biometrics/ClientMonitor;->mListener:Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    if-eqz v0, :cond_19

    .line 213
    iget-object v1, p0, Lcom/android/server/biometrics/ClientMonitor;->mListener:Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getCookie()I

    move-result v6

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;->onError(JIII)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_19} :catch_1a

    .line 217
    :cond_19
    goto :goto_24

    .line 215
    :catch_1a
    move-exception v0

    .line 216
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/biometrics/ClientMonitor;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to invoke sendError"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_24
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
.end method

.method public abstract start()I
.end method

.method public abstract stop(Z)I
.end method

.method public final vibrateError()V
    .registers 1

    .line 308
    return-void
.end method

.method public final vibrateSuccess()V
    .registers 1

    .line 299
    return-void
.end method
