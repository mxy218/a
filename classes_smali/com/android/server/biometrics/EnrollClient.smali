.class public abstract Lcom/android/server/biometrics/EnrollClient;
.super Lcom/android/server/biometrics/ClientMonitor;
.source "EnrollClient.java"


# instance fields
.field private final mBiometricUtils:Lcom/android/server/biometrics/BiometricUtils;

.field private final mCryptoToken:[B

.field private final mDisabledFeatures:[I

.field private mEnrollmentStartTimeMs:J

.field private final mTimeoutSec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;II[BZLjava/lang/String;Lcom/android/server/biometrics/BiometricUtils;[II)V
    .registers 32

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
    array-length v0, v14

    invoke-static {v14, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, v13, Lcom/android/server/biometrics/EnrollClient;->mCryptoToken:[B

    .line 52
    array-length v0, v15

    invoke-static {v15, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, v13, Lcom/android/server/biometrics/EnrollClient;->mDisabledFeatures:[I

    .line 53
    move/from16 v0, p15

    iput v0, v13, Lcom/android/server/biometrics/EnrollClient;->mTimeoutSec:I

    .line 54
    return-void
.end method

.method private sendEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
    .registers 5

    .line 79
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->shouldVibrate()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 80
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->vibrateSuccess()V

    .line 82
    :cond_9
    iget-object v0, p0, Lcom/android/server/biometrics/EnrollClient;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object v1, p0, Lcom/android/server/biometrics/EnrollClient;->mConstants:Lcom/android/server/biometrics/Constants;

    invoke-interface {v1}, Lcom/android/server/biometrics/Constants;->actionBiometricEnroll()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 84
    const/4 v0, 0x1

    :try_start_15
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getListener()Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    move-result-object v1

    .line 85
    if-eqz v1, :cond_1e

    .line 86
    invoke-interface {v1, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;->onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1e} :catch_23

    .line 88
    :cond_1e
    if-nez p2, :cond_21

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    return v0

    .line 89
    :catch_23
    move-exception p1

    .line 90
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getLogTag()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Failed to notify EnrollResult:"

    invoke-static {p2, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    return v0
.end method


# virtual methods
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

    .line 155
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "onAuthenticated() called for enroll!"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 p1, 0x1

    return p1
.end method

.method public onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
    .registers 8

    .line 64
    if-nez p2, :cond_1e

    .line 65
    iget-object v0, p0, Lcom/android/server/biometrics/EnrollClient;->mBiometricUtils:Lcom/android/server/biometrics/BiometricUtils;

    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getTargetUserId()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Lcom/android/server/biometrics/BiometricUtils;->addBiometricForUser(Landroid/content/Context;ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getTargetUserId()I

    move-result v0

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/biometrics/EnrollClient;->mEnrollmentStartTimeMs:J

    sub-long/2addr v1, v3

    const/4 v3, 0x1

    .line 66
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/biometrics/EnrollClient;->logOnEnrolled(IJZ)V

    .line 70
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->notifyUserActivity()V

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/EnrollClient;->sendEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z

    move-result p1

    return p1
.end method

.method public onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
    .registers 3

    .line 148
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "onEnumerationResult() called for enroll!"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 p1, 0x1

    return p1
.end method

.method public onError(JII)Z
    .registers 10

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

    move-result p1

    return p1
.end method

.method public onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
    .registers 3

    .line 141
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "onRemoved() called for enroll!"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 p1, 0x1

    return p1
.end method

.method public abstract shouldVibrate()Z
.end method

.method public start()I
    .registers 7

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/biometrics/EnrollClient;->mEnrollmentStartTimeMs:J

    .line 99
    const/4 v0, 0x0

    :try_start_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 100
    move v2, v0

    :goto_d
    iget-object v3, p0, Lcom/android/server/biometrics/EnrollClient;->mDisabledFeatures:[I

    array-length v3, v3

    if-ge v2, v3, :cond_20

    .line 101
    iget-object v3, p0, Lcom/android/server/biometrics/EnrollClient;->mDisabledFeatures:[I

    aget v3, v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 104
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/biometrics/EnrollClient;->mCryptoToken:[B

    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getGroupId()I

    move-result v4

    iget v5, p0, Lcom/android/server/biometrics/EnrollClient;->mTimeoutSec:I

    invoke-interface {v2, v3, v4, v5, v1}, Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;->enroll([BIILjava/util/ArrayList;)I

    move-result v1

    .line 106
    if-eqz v1, :cond_5f

    .line 107
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startEnroll failed, result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v2, p0, Lcom/android/server/biometrics/EnrollClient;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object v3, p0, Lcom/android/server/biometrics/EnrollClient;->mConstants:Lcom/android/server/biometrics/Constants;

    invoke-interface {v3}, Lcom/android/server/biometrics/Constants;->tagEnrollStartError()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 109
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getHalDeviceId()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4, v0}, Lcom/android/server/biometrics/EnrollClient;->onError(JII)Z
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_5e} :catch_60

    .line 111
    return v1

    .line 115
    :cond_5f
    goto :goto_6b

    .line 113
    :catch_60
    move-exception v1

    .line 114
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getLogTag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "startEnroll failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    :goto_6b
    return v0
.end method

.method protected statsAction()I
    .registers 2

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public stop(Z)I
    .registers 6

    .line 121
    iget-boolean p1, p0, Lcom/android/server/biometrics/EnrollClient;->mAlreadyCancelled:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_10

    .line 122
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "stopEnroll: already cancelled!"

    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return v0

    .line 127
    :cond_10
    :try_start_10
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;->cancel()I

    move-result p1

    .line 128
    if-eqz p1, :cond_34

    .line 129
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startEnrollCancel failed, result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_33} :catch_35

    .line 130
    return p1

    .line 134
    :cond_34
    goto :goto_40

    .line 132
    :catch_35
    move-exception p1

    .line 133
    invoke-virtual {p0}, Lcom/android/server/biometrics/EnrollClient;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "stopEnrollment failed"

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    :goto_40
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/biometrics/EnrollClient;->mAlreadyCancelled:Z

    .line 136
    return v0
.end method
