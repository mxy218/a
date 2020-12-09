.class public abstract Lcom/android/server/biometrics/RemovalClient;
.super Lcom/android/server/biometrics/ClientMonitor;
.source "RemovalClient.java"


# instance fields
.field private final mBiometricId:I

.field private final mBiometricUtils:Lcom/android/server/biometrics/BiometricUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIIZLjava/lang/String;Lcom/android/server/biometrics/BiometricUtils;)V
    .registers 28

    .line 40
    move-object v13, p0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p10

    move/from16 v9, p9

    move/from16 v10, p11

    move-object/from16 v11, p12

    invoke-direct/range {v0 .. v12}, Lcom/android/server/biometrics/ClientMonitor;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIZLjava/lang/String;I)V

    .line 42
    move/from16 v0, p8

    iput v0, v13, Lcom/android/server/biometrics/RemovalClient;->mBiometricId:I

    .line 43
    move-object/from16 v0, p13

    iput-object v0, v13, Lcom/android/server/biometrics/RemovalClient;->mBiometricUtils:Lcom/android/server/biometrics/BiometricUtils;

    .line 44
    return-void
.end method

.method private sendRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
    .registers 5

    .line 102
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/RemovalClient;->getListener()Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 103
    invoke-virtual {p0}, Lcom/android/server/biometrics/RemovalClient;->getListener()Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;->onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 107
    :cond_d
    goto :goto_18

    .line 105
    :catch_e
    move-exception p1

    .line 106
    invoke-virtual {p0}, Lcom/android/server/biometrics/RemovalClient;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to notify Removed:"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    :goto_18
    if-nez p2, :cond_1c

    const/4 p1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    return p1
.end method


# virtual methods
.method public notifyUserActivity()V
    .registers 1

    .line 48
    return-void
.end method

.method public onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)Z
    .registers 4
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

    .line 129
    invoke-virtual {p0}, Lcom/android/server/biometrics/RemovalClient;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "onAuthenticated() called for remove!"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 p1, 0x1

    return p1
.end method

.method public onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
    .registers 3

    .line 122
    invoke-virtual {p0}, Lcom/android/server/biometrics/RemovalClient;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "onEnrollResult() called for remove!"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 p1, 0x1

    return p1
.end method

.method public onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
    .registers 3

    .line 136
    invoke-virtual {p0}, Lcom/android/server/biometrics/RemovalClient;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "onEnumerationResult() called for remove!"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 p1, 0x1

    return p1
.end method

.method public onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
    .registers 7

    .line 113
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v0

    if-eqz v0, :cond_17

    .line 114
    iget-object v0, p0, Lcom/android/server/biometrics/RemovalClient;->mBiometricUtils:Lcom/android/server/biometrics/BiometricUtils;

    invoke-virtual {p0}, Lcom/android/server/biometrics/RemovalClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/RemovalClient;->getTargetUserId()I

    move-result v2

    .line 115
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v3

    .line 114
    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/biometrics/BiometricUtils;->removeBiometricForUser(Landroid/content/Context;II)V

    .line 117
    :cond_17
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/RemovalClient;->sendRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z

    move-result p1

    return p1
.end method

.method public start()I
    .registers 6

    .line 59
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/biometrics/RemovalClient;->getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/RemovalClient;->getGroupId()I

    move-result v2

    iget v3, p0, Lcom/android/server/biometrics/RemovalClient;->mBiometricId:I

    invoke-interface {v1, v2, v3}, Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;->remove(II)I

    move-result v1

    .line 60
    if-eqz v1, :cond_48

    .line 61
    invoke-virtual {p0}, Lcom/android/server/biometrics/RemovalClient;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startRemove with id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/biometrics/RemovalClient;->mBiometricId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " failed, result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v2, p0, Lcom/android/server/biometrics/RemovalClient;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object v3, p0, Lcom/android/server/biometrics/RemovalClient;->mConstants:Lcom/android/server/biometrics/Constants;

    invoke-interface {v3}, Lcom/android/server/biometrics/Constants;->tagRemoveStartError()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 64
    invoke-virtual {p0}, Lcom/android/server/biometrics/RemovalClient;->getHalDeviceId()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4, v0}, Lcom/android/server/biometrics/RemovalClient;->onError(JII)Z
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_47} :catch_49

    .line 66
    return v1

    .line 70
    :cond_48
    goto :goto_54

    .line 68
    :catch_49
    move-exception v1

    .line 69
    invoke-virtual {p0}, Lcom/android/server/biometrics/RemovalClient;->getLogTag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "startRemove failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    :goto_54
    return v0
.end method

.method protected statsAction()I
    .registers 2

    .line 52
    const/4 v0, 0x4

    return v0
.end method

.method public stop(Z)I
    .registers 5

    .line 76
    iget-boolean p1, p0, Lcom/android/server/biometrics/RemovalClient;->mAlreadyCancelled:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_10

    .line 77
    invoke-virtual {p0}, Lcom/android/server/biometrics/RemovalClient;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "stopRemove: already cancelled!"

    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return v0

    .line 82
    :cond_10
    :try_start_10
    invoke-virtual {p0}, Lcom/android/server/biometrics/RemovalClient;->getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;->cancel()I

    move-result p1

    .line 83
    if-eqz p1, :cond_34

    .line 84
    invoke-virtual {p0}, Lcom/android/server/biometrics/RemovalClient;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopRemoval failed, result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return p1

    .line 87
    :cond_34
    invoke-virtual {p0}, Lcom/android/server/biometrics/RemovalClient;->getLogTag()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "client "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/RemovalClient;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is no longer removing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_55} :catch_5a

    .line 91
    nop

    .line 92
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/biometrics/RemovalClient;->mAlreadyCancelled:Z

    .line 93
    return v0

    .line 88
    :catch_5a
    move-exception p1

    .line 89
    invoke-virtual {p0}, Lcom/android/server/biometrics/RemovalClient;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "stopRemoval failed"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    const/4 p1, 0x3

    return p1
.end method
