.class public abstract Lcom/android/server/biometrics/EnrollClient;
.super Lcom/android/server/biometrics/ClientMonitor;
.source "EnrollClient.java"


# static fields
.field private static final ENROLLMENT_TIMEOUT_MS:I = 0xea60

.field private static final MS_PER_SEC:J = 0x3e8L


# instance fields
.field private final mBiometricUtils:Lcom/android/server/biometrics/BiometricUtils;

.field private final mCryptoToken:[B

.field private final mDisabledFeatures:[I

.field private mEnrollmentStartTimeMs:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;II[BZLjava/lang/String;Lcom/android/server/biometrics/BiometricUtils;[I)V
    .registers 31
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "constants"  # Lcom/android/server/biometrics/Constants;
    .param p3, "daemon"  # Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    .param p4, "halDeviceId"  # J
    .param p6, "token"  # Landroid/os/IBinder;
    .param p7, "listener"  # Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;
    .param p8, "userId"  # I
    .param p9, "groupId"  # I
    .param p10, "cryptoToken"  # [B
    .param p11, "restricted"  # Z
    .param p12, "owner"  # Ljava/lang/String;
    .param p13, "utils"  # Lcom/android/server/biometrics/BiometricUtils;
    .param p14, "disabledFeatures"  # [I

    .line 48
    move-object/from16 v13, p0

    move-object/from16 v14, p10

    move-object/from16 v15, p14

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p11

    move-object/from16 v11, p12

    invoke-direct/range {v0 .. v12}, Lcom/android/server/biometrics/ClientMonitor;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIZLjava/lang/String;I)V

    .line 50
    move-object/from16 v0, p13

    iput-object v0, v13, Lcom/android/server/biometrics/EnrollClient;->mBiometricUtils:Lcom/android/server/biometrics/BiometricUtils;

    .line 51
    array-length v1, v14

    invoke-static {v14, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, v13, Lcom/android/server/biometrics/EnrollClient;->mCryptoToken:[B

    .line 52
    array-length v1, v15

    invoke-static {v15, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, v13, Lcom/android/server/biometrics/EnrollClient;->mDisabledFeatures:[I

    .line 53
    return-void
.end method

.method private sendEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
    .registers 7
    .param p1, "identifier"  # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"  # I

    .line 78
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->shouldVibrate()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 79
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->vibrateSuccess()V

    .line 81
    :cond_9
    iget-object v0, p0, Lcom/android/server/biometrics/EnrollClient;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object v1, p0, Lcom/android/server/biometrics/EnrollClient;->mConstants:Lcom/android/server/biometrics/Constants;

    invoke-interface {v1}, Lcom/android/server/biometrics/Constants;->actionBiometricEnroll()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 83
    const/4 v0, 0x1

    :try_start_15
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getListener()Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    move-result-object v1

    .line 84
    .local v1, "listener":Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;
    if-eqz v1, :cond_1e

    .line 85
    invoke-interface {v1, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;->onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1e} :catch_23

    .line 87
    :cond_1e
    if-nez p2, :cond_21

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    return v0

    .line 88
    .end local v1  # "listener":Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;
    :catch_23
    move-exception v1

    .line 89
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getLogTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to notify EnrollResult:"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    return v0
.end method


# virtual methods
.method public onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)Z
    .registers 6
    .param p1, "identifier"  # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "authenticated"  # Z
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

    .line 155
    .local p3, "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onAuthenticated() called for enroll!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method public onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
    .registers 8
    .param p1, "identifier"  # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"  # I

    .line 63
    if-nez p2, :cond_1e

    .line 64
    iget-object v0, p0, Lcom/android/server/biometrics/EnrollClient;->mBiometricUtils:Lcom/android/server/biometrics/BiometricUtils;

    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getTargetUserId()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Lcom/android/server/biometrics/BiometricUtils;->addBiometricForUser(Landroid/content/Context;ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getTargetUserId()I

    move-result v0

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/biometrics/EnrollClient;->mEnrollmentStartTimeMs:J

    sub-long/2addr v1, v3

    const/4 v3, 0x1

    .line 65
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/biometrics/EnrollClient;->logOnEnrolled(IJZ)V

    .line 69
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->notifyUserActivity()V

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/EnrollClient;->sendEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z

    move-result v0

    return v0
.end method

.method public onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
    .registers 5
    .param p1, "identifier"  # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"  # I

    .line 148
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onEnumerationResult() called for enroll!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public onError(JII)Z
    .registers 10
    .param p1, "deviceId"  # J
    .param p3, "error"  # I
    .param p4, "vendorCode"  # I

    .line 167
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getTargetUserId()I

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/biometrics/EnrollClient;->mEnrollmentStartTimeMs:J

    sub-long/2addr v1, v3

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/biometrics/EnrollClient;->logOnEnrolled(IJZ)V

    .line 169
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/ClientMonitor;->onError(JII)Z

    move-result v0

    return v0
.end method

.method public onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
    .registers 5
    .param p1, "identifier"  # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"  # I

    .line 141
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onRemoved() called for enroll!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method public abstract shouldVibrate()Z
.end method

.method public start()I
    .registers 8

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/biometrics/EnrollClient;->mEnrollmentStartTimeMs:J

    .line 97
    const/16 v0, 0x3c

    .line 99
    .local v0, "timeout":I
    const/4 v1, 0x0

    :try_start_9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v2, "disabledFeatures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move v3, v1

    .local v3, "i":I
    :goto_f
    iget-object v4, p0, Lcom/android/server/biometrics/EnrollClient;->mDisabledFeatures:[I

    array-length v4, v4

    if-ge v3, v4, :cond_22

    .line 101
    iget-object v4, p0, Lcom/android/server/biometrics/EnrollClient;->mDisabledFeatures:[I

    aget v4, v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 104
    .end local v3  # "i":I
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/biometrics/EnrollClient;->mCryptoToken:[B

    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getGroupId()I

    move-result v5

    const/16 v6, 0x3c

    invoke-interface {v3, v4, v5, v6, v2}, Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;->enroll([BIILjava/util/ArrayList;)I

    move-result v3

    .line 106
    .local v3, "result":I
    if-eqz v3, :cond_61

    .line 107
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getLogTag()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startEnroll failed, result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v4, p0, Lcom/android/server/biometrics/EnrollClient;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object v5, p0, Lcom/android/server/biometrics/EnrollClient;->mConstants:Lcom/android/server/biometrics/Constants;

    invoke-interface {v5}, Lcom/android/server/biometrics/Constants;->tagEnrollStartError()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 109
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getHalDeviceId()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual {p0, v4, v5, v6, v1}, Lcom/android/server/biometrics/EnrollClient;->onError(JII)Z
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_60} :catch_62

    .line 111
    return v3

    .line 115
    .end local v2  # "disabledFeatures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3  # "result":I
    :cond_61
    goto :goto_6d

    .line 113
    :catch_62
    move-exception v2

    .line 114
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getLogTag()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "startEnroll failed"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    .end local v2  # "e":Landroid/os/RemoteException;
    :goto_6d
    return v1
.end method

.method protected statsAction()I
    .registers 2

    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public stop(Z)I
    .registers 7
    .param p1, "initiatedByClient"  # Z

    .line 121
    iget-boolean v0, p0, Lcom/android/server/biometrics/EnrollClient;->mAlreadyCancelled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 122
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "stopEnroll: already cancelled!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return v1

    .line 127
    :cond_10
    :try_start_10
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;->cancel()I

    move-result v0

    .line 128
    .local v0, "result":I
    if-eqz v0, :cond_34

    .line 129
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startEnrollCancel failed, result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_33} :catch_35

    .line 130
    return v0

    .line 134
    .end local v0  # "result":I
    :cond_34
    goto :goto_40

    .line 132
    :catch_35
    move-exception v0

    .line 133
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getLogTag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "stopEnrollment failed"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/biometrics/EnrollClient;->mAlreadyCancelled:Z

    .line 136
    return v1
.end method
