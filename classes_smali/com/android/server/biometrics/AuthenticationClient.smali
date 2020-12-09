.class public abstract Lcom/android/server/biometrics/AuthenticationClient;
.super Lcom/android/server/biometrics/ClientMonitor;
.source "AuthenticationClient.java"


# static fields
.field public static final LOCKOUT_NONE:I = 0x0

.field public static final LOCKOUT_PERMANENT:I = 0x2

.field public static final LOCKOUT_TIMED:I = 0x1


# instance fields
.field private mOpId:J

.field private final mRequireConfirmation:Z

.field private mStartTimeMs:J

.field private mStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIJZLjava/lang/String;IZ)V
    .registers 30

    .line 73
    move-object v13, p0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p12

    move-object/from16 v11, p13

    move/from16 v12, p14

    invoke-direct/range {v0 .. v12}, Lcom/android/server/biometrics/ClientMonitor;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIZLjava/lang/String;I)V

    .line 75
    move-wide/from16 v0, p10

    iput-wide v0, v13, Lcom/android/server/biometrics/AuthenticationClient;->mOpId:J

    .line 76
    move/from16 v0, p15

    iput-boolean v0, v13, Lcom/android/server/biometrics/AuthenticationClient;->mRequireConfirmation:Z

    .line 77
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .line 85
    invoke-super {p0}, Lcom/android/server/biometrics/ClientMonitor;->binderDied()V

    .line 89
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/AuthenticationClient;->stop(Z)I

    .line 90
    return-void
.end method

.method public getRequireConfirmation()Z
    .registers 2

    .line 102
    iget-boolean v0, p0, Lcom/android/server/biometrics/AuthenticationClient;->mRequireConfirmation:Z

    return v0
.end method

.method protected getStartTimeMs()J
    .registers 3

    .line 80
    iget-wide v0, p0, Lcom/android/server/biometrics/AuthenticationClient;->mStartTimeMs:J

    return-wide v0
.end method

.method public abstract handleFailedAttempt()I
.end method

.method public isBiometricPrompt()Z
    .registers 2

    .line 98
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getCookie()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method protected isCryptoOperation()Z
    .registers 5

    .line 107
    iget-wide v0, p0, Lcom/android/server/biometrics/AuthenticationClient;->mOpId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)Z
    .registers 11
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

    .line 135
    const-string v0, "Remote exception"

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/server/biometrics/AuthenticationClient;->mRequireConfirmation:Z

    .line 136
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getTargetUserId()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->isBiometricPrompt()Z

    move-result v6

    .line 135
    move-object v1, p0

    move v3, p2

    invoke-super/range {v1 .. v6}, Lcom/android/server/biometrics/ClientMonitor;->logOnAuthenticated(Landroid/content/Context;ZZIZ)V

    .line 138
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getListener()Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    move-result-object v1

    .line 140
    iget-object v2, p0, Lcom/android/server/biometrics/AuthenticationClient;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object v3, p0, Lcom/android/server/biometrics/AuthenticationClient;->mConstants:Lcom/android/server/biometrics/Constants;

    invoke-interface {v3}, Lcom/android/server/biometrics/Constants;->actionBiometricAuth()I

    move-result v3

    invoke-virtual {v2, v3, p2}, Lcom/android/internal/logging/MetricsLogger;->action(IZ)V

    .line 141
    nop

    .line 144
    const/4 v2, 0x1

    :try_start_26
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onAuthenticated("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "), ID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", Owner: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", isBP: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->isBiometricPrompt()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", requireConfirmation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/biometrics/AuthenticationClient;->mRequireConfirmation:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getTargetUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 144
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v3, 0x0

    if-eqz p2, :cond_106

    .line 153
    iput-boolean v2, p0, Lcom/android/server/biometrics/AuthenticationClient;->mAlreadyDone:Z

    .line 155
    if-eqz v1, :cond_8b

    .line 156
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->vibrateSuccess()V

    .line 158
    :cond_8b
    nop

    .line 159
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->shouldFrameworkHandleLockout()Z

    move-result p2

    if-eqz p2, :cond_95

    .line 160
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->resetFailedAttempts()V

    .line 162
    :cond_95
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->onStop()V

    .line 164
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [B

    .line 165
    nop

    :goto_9f
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_b4

    .line 166
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    aput-byte v4, p2, v3

    .line 165
    add-int/lit8 v3, v3, 0x1

    goto :goto_9f

    .line 168
    :cond_b4
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->isBiometricPrompt()Z

    move-result p3

    if-eqz p3, :cond_c2

    if-eqz v1, :cond_c2

    .line 170
    iget-boolean p1, p0, Lcom/android/server/biometrics/AuthenticationClient;->mRequireConfirmation:Z

    invoke-interface {v1, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;->onAuthenticationSucceededInternal(Z[B)V

    goto :goto_105

    .line 171
    :cond_c2
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->isBiometricPrompt()Z

    move-result p3

    if-nez p3, :cond_fb

    if-eqz v1, :cond_fb

    .line 172
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/security/KeyStore;->addAuthToken([B)I
    :try_end_d1
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_d1} :catch_165

    .line 176
    :try_start_d1
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getIsRestricted()Z

    move-result p2

    if-nez p2, :cond_e4

    .line 177
    nop

    .line 178
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getHalDeviceId()J

    move-result-wide p2

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getTargetUserId()I

    move-result v3

    .line 177
    invoke-interface {v1, p2, p3, p1, v3}, Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;->onAuthenticationSucceeded(JLandroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    goto :goto_fa

    .line 180
    :cond_e4
    nop

    .line 181
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getHalDeviceId()J

    move-result-wide p1

    const/4 p3, 0x0

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getTargetUserId()I

    move-result v3

    .line 180
    invoke-interface {v1, p1, p2, p3, v3}, Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;->onAuthenticationSucceeded(JLandroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    :try_end_f1
    .catch Landroid/os/RemoteException; {:try_start_d1 .. :try_end_f1} :catch_f2

    goto :goto_fa

    .line 183
    :catch_f2
    move-exception p1

    .line 184
    :try_start_f3
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    :goto_fa
    goto :goto_105

    .line 188
    :cond_fb
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Client not listening"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    nop

    .line 191
    :goto_105
    goto :goto_164

    .line 192
    :cond_106
    if-eqz v1, :cond_10b

    .line 193
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->vibrateError()V

    .line 197
    :cond_10b
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->handleFailedAttempt()I

    move-result p1

    .line 198
    if-eqz p1, :cond_145

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->shouldFrameworkHandleLockout()Z

    move-result p2

    if-eqz p2, :cond_145

    .line 199
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Forcing lockout (driver code should do this!), mode("

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {p0, v3}, Lcom/android/server/biometrics/AuthenticationClient;->stop(Z)I

    .line 202
    if-ne p1, v2, :cond_13b

    .line 203
    const/4 p2, 0x7

    goto :goto_13d

    .line 204
    :cond_13b
    const/16 p2, 0x9

    .line 205
    :goto_13d
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5, p2, v3}, Lcom/android/server/biometrics/AuthenticationClient;->onError(JII)Z

    .line 206
    goto :goto_160

    .line 210
    :cond_145
    if-eqz v1, :cond_160

    .line 211
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->isBiometricPrompt()Z

    move-result p2

    if-eqz p2, :cond_159

    .line 212
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getCookie()I

    move-result p2

    .line 213
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getRequireConfirmation()Z

    move-result p3

    .line 212
    invoke-interface {v1, p2, p3}, Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;->onAuthenticationFailedInternal(IZ)V

    goto :goto_160

    .line 215
    :cond_159
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getHalDeviceId()J

    move-result-wide p2

    invoke-interface {v1, p2, p3}, Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;->onAuthenticationFailed(J)V
    :try_end_160
    .catch Landroid/os/RemoteException; {:try_start_f3 .. :try_end_160} :catch_165

    .line 219
    :cond_160
    :goto_160
    if-eqz p1, :cond_163

    goto :goto_164

    :cond_163
    move v2, v3

    .line 224
    :goto_164
    goto :goto_16e

    .line 221
    :catch_165
    move-exception p1

    .line 222
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    nop

    .line 225
    :goto_16e
    return v2
.end method

.method public onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
    .registers 3

    .line 284
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "onEnrollResult() called for authenticate!"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/4 p1, 0x1

    return p1
.end method

.method public onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
    .registers 3

    .line 297
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "onEnumerationResult() called for authenticate!"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const/4 p1, 0x1

    return p1
.end method

.method public onError(JII)Z
    .registers 6

    .line 112
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->shouldFrameworkHandleLockout()Z

    move-result v0

    if-nez v0, :cond_25

    .line 113
    const/4 v0, 0x3

    if-eq p3, v0, :cond_11

    const/4 v0, 0x7

    if-eq p3, v0, :cond_1e

    const/16 v0, 0x9

    if-eq p3, v0, :cond_1e

    goto :goto_25

    .line 115
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->wasUserDetected()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->isBiometricPrompt()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 117
    goto :goto_25

    .line 121
    :cond_1e
    iget-boolean v0, p0, Lcom/android/server/biometrics/AuthenticationClient;->mStarted:Z

    if-eqz v0, :cond_25

    .line 122
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->vibrateError()V

    .line 129
    :cond_25
    :goto_25
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/ClientMonitor;->onError(JII)Z

    move-result p1

    return p1
.end method

.method public onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
    .registers 3

    .line 290
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "onRemoved() called for authenticate!"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const/4 p1, 0x1

    return p1
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method public resetFailedAttempts()V
    .registers 1

    .line 37
    return-void
.end method

.method public abstract shouldFrameworkHandleLockout()Z
.end method

.method public start()I
    .registers 7

    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/biometrics/AuthenticationClient;->mStarted:Z

    .line 234
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->onStart()V

    .line 236
    :try_start_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/biometrics/AuthenticationClient;->mStartTimeMs:J

    .line 237
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/biometrics/AuthenticationClient;->mOpId:J

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getGroupId()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;->authenticate(JI)I

    move-result v1

    .line 238
    const/4 v2, 0x0

    if-eqz v1, :cond_49

    .line 239
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startAuthentication failed, result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v3, p0, Lcom/android/server/biometrics/AuthenticationClient;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object v4, p0, Lcom/android/server/biometrics/AuthenticationClient;->mConstants:Lcom/android/server/biometrics/Constants;

    invoke-interface {v4}, Lcom/android/server/biometrics/Constants;->tagAuthStartError()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 241
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4, v0, v2}, Lcom/android/server/biometrics/AuthenticationClient;->onError(JII)Z

    .line 243
    return v1

    .line 245
    :cond_49
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "client "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is authenticating..."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6a} :catch_6c

    .line 249
    nop

    .line 250
    return v2

    .line 246
    :catch_6c
    move-exception v0

    .line 247
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "startAuthentication failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 248
    const/4 v0, 0x3

    return v0
.end method

.method protected statsAction()I
    .registers 2

    .line 94
    const/4 v0, 0x2

    return v0
.end method

.method public stop(Z)I
    .registers 5

    .line 255
    iget-boolean p1, p0, Lcom/android/server/biometrics/AuthenticationClient;->mAlreadyCancelled:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_10

    .line 256
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "stopAuthentication: already cancelled!"

    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return v0

    .line 260
    :cond_10
    iput-boolean v0, p0, Lcom/android/server/biometrics/AuthenticationClient;->mStarted:Z

    .line 262
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->onStop()V

    .line 265
    :try_start_15
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;->cancel()I

    move-result p1

    .line 266
    if-eqz p1, :cond_39

    .line 267
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopAuthentication failed, result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    return p1

    .line 270
    :cond_39
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "client "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is no longer authenticating"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_5a} :catch_5f

    .line 275
    nop

    .line 277
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/biometrics/AuthenticationClient;->mAlreadyCancelled:Z

    .line 278
    return v0

    .line 272
    :catch_5f
    move-exception p1

    .line 273
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "stopAuthentication failed"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 274
    const/4 p1, 0x3

    return p1
.end method

.method public abstract wasUserDetected()Z
.end method
