.class public abstract Lcom/android/server/biometrics/EnumerateClient;
.super Lcom/android/server/biometrics/ClientMonitor;
.source "EnumerateClient.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIZLjava/lang/String;)V
    .registers 25

    .line 37
    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p9

    move/from16 v9, p8

    move/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v12}, Lcom/android/server/biometrics/ClientMonitor;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIZLjava/lang/String;I)V

    .line 39
    return-void
.end method


# virtual methods
.method public notifyUserActivity()V
    .registers 1

    .line 43
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

    .line 113
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnumerateClient;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "onAuthenticated() called for enumerate!"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 p1, 0x1

    return p1
.end method

.method public onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
    .registers 3

    .line 119
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnumerateClient;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "onEnrollResult() called for enumerate!"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 p1, 0x1

    return p1
.end method

.method public onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
    .registers 5

    .line 101
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnumerateClient;->getListener()Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 102
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnumerateClient;->getListener()Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;->onEnumerated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 106
    :cond_d
    goto :goto_18

    .line 104
    :catch_e
    move-exception p1

    .line 105
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnumerateClient;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to notify enumerated:"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    :goto_18
    if-nez p2, :cond_1c

    const/4 p1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    return p1
.end method

.method public onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
    .registers 3

    .line 125
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnumerateClient;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "onRemoved() called for enumerate!"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 p1, 0x1

    return p1
.end method

.method public start()I
    .registers 6

    .line 54
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnumerateClient;->getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;->enumerate()I

    move-result v1

    .line 55
    if-eqz v1, :cond_44

    .line 56
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnumerateClient;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start enumerate for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/EnumerateClient;->getTargetUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " failed, result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v2, p0, Lcom/android/server/biometrics/EnumerateClient;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object v3, p0, Lcom/android/server/biometrics/EnumerateClient;->mConstants:Lcom/android/server/biometrics/Constants;

    invoke-interface {v3}, Lcom/android/server/biometrics/Constants;->tagEnumerateStartError()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 59
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnumerateClient;->getHalDeviceId()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4, v0}, Lcom/android/server/biometrics/EnumerateClient;->onError(JII)Z
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_43} :catch_45

    .line 61
    return v1

    .line 65
    :cond_44
    goto :goto_50

    .line 63
    :catch_45
    move-exception v1

    .line 64
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnumerateClient;->getLogTag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "startEnumeration failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    :goto_50
    return v0
.end method

.method protected statsAction()I
    .registers 2

    .line 47
    const/4 v0, 0x3

    return v0
.end method

.method public stop(Z)I
    .registers 6

    .line 71
    iget-boolean v0, p0, Lcom/android/server/biometrics/EnumerateClient;->mAlreadyCancelled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 72
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnumerateClient;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "stopEnumerate: already cancelled!"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return v1

    .line 77
    :cond_10
    :try_start_10
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnumerateClient;->getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;->cancel()I

    move-result v0

    .line 78
    if-eqz v0, :cond_34

    .line 79
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnumerateClient;->getLogTag()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stop enumeration failed, result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_33} :catch_43

    .line 80
    return v0

    .line 85
    :cond_34
    nop

    .line 89
    if-eqz p1, :cond_3f

    .line 90
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnumerateClient;->getHalDeviceId()J

    move-result-wide v2

    const/4 p1, 0x5

    invoke-virtual {p0, v2, v3, p1, v1}, Lcom/android/server/biometrics/EnumerateClient;->onError(JII)Z

    .line 93
    :cond_3f
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/biometrics/EnumerateClient;->mAlreadyCancelled:Z

    .line 94
    return v1

    .line 82
    :catch_43
    move-exception p1

    .line 83
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnumerateClient;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "stopEnumeration failed"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    const/4 p1, 0x3

    return p1
.end method
