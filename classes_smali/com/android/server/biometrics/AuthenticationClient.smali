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

.field private mStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIJZLjava/lang/String;IZ)V
    .registers 30
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "constants"  # Lcom/android/server/biometrics/Constants;
    .param p3, "daemon"  # Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    .param p4, "halDeviceId"  # J
    .param p6, "token"  # Landroid/os/IBinder;
    .param p7, "listener"  # Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;
    .param p8, "targetUserId"  # I
    .param p9, "groupId"  # I
    .param p10, "opId"  # J
    .param p12, "restricted"  # Z
    .param p13, "owner"  # Ljava/lang/String;
    .param p14, "cookie"  # I
    .param p15, "requireConfirmation"  # Z

    .line 72
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

    .line 74
    move-wide/from16 v0, p10

    iput-wide v0, v13, Lcom/android/server/biometrics/AuthenticationClient;->mOpId:J

    .line 75
    move/from16 v2, p15

    iput-boolean v2, v13, Lcom/android/server/biometrics/AuthenticationClient;->mRequireConfirmation:Z

    .line 76
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .line 80
    invoke-super {p0}, Lcom/android/server/biometrics/ClientMonitor;->binderDied()V

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/AuthenticationClient;->stop(Z)I

    .line 85
    return-void
.end method

.method public getRequireConfirmation()Z
    .registers 2

    .line 97
    iget-boolean v0, p0, Lcom/android/server/biometrics/AuthenticationClient;->mRequireConfirmation:Z

    return v0
.end method

.method public abstract handleFailedAttempt()I
.end method

.method public isBiometricPrompt()Z
    .registers 2

    .line 93
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

    .line 102
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
    .registers 13
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

    .line 130
    .local p3, "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const-string v0, "Remote exception"

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/server/biometrics/AuthenticationClient;->mRequireConfirmation:Z

    .line 131
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getTargetUserId()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->isBiometricPrompt()Z

    move-result v6

    .line 130
    move-object v1, p0

    move v3, p2

    invoke-super/range {v1 .. v6}, Lcom/android/server/biometrics/ClientMonitor;->logOnAuthenticated(Landroid/content/Context;ZZIZ)V

    .line 133
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getListener()Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    move-result-object v1

    .line 135
    .local v1, "listener":Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;
    iget-object v2, p0, Lcom/android/server/biometrics/AuthenticationClient;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object v3, p0, Lcom/android/server/biometrics/AuthenticationClient;->mConstants:Lcom/android/server/biometrics/Constants;

    invoke-interface {v3}, Lcom/android/server/biometrics/Constants;->actionBiometricAuth()I

    move-result v3

    invoke-virtual {v2, v3, p2}, Lcom/android/internal/logging/MetricsLogger;->action(IZ)V

    .line 136
    const/4 v2, 0x0

    .line 139
    .local v2, "result":Z
    :try_start_25
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onAuthenticated("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "), ID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", Owner: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", isBP: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
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

    .line 145
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getTargetUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 139
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p2, :cond_107

    .line 148
    iput-boolean v4, p0, Lcom/android/server/biometrics/AuthenticationClient;->mAlreadyDone:Z

    .line 150
    if-eqz v1, :cond_8b

    .line 151
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->vibrateSuccess()V

    .line 153
    :cond_8b
    const/4 v2, 0x1

    .line 154
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->shouldFrameworkHandleLockout()Z

    move-result v4

    if-eqz v4, :cond_95

    .line 155
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->resetFailedAttempts()V

    .line 157
    :cond_95
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->onStop()V

    .line 159
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [B

    .line 160
    .local v4, "byteToken":[B
    nop

    .local v3, "i":I
    :goto_9f
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_b4

    .line 161
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    aput-byte v5, v4, v3

    .line 160
    add-int/lit8 v3, v3, 0x1

    goto :goto_9f

    .line 163
    .end local v3  # "i":I
    :cond_b4
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->isBiometricPrompt()Z

    move-result v3

    if-eqz v3, :cond_c2

    if-eqz v1, :cond_c2

    .line 165
    iget-boolean v3, p0, Lcom/android/server/biometrics/AuthenticationClient;->mRequireConfirmation:Z

    invoke-interface {v1, v3, v4}, Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;->onAuthenticationSucceededInternal(Z[B)V

    goto :goto_106

    .line 166
    :cond_c2
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->isBiometricPrompt()Z

    move-result v3

    if-nez v3, :cond_fc

    if-eqz v1, :cond_fc

    .line 167
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/security/KeyStore;->addAuthToken([B)I
    :try_end_d1
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_d1} :catch_168

    .line 171
    :try_start_d1
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getIsRestricted()Z

    move-result v3

    if-nez v3, :cond_e4

    .line 172
    nop

    .line 173
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v5

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getTargetUserId()I

    move-result v3

    .line 172
    invoke-interface {v1, v5, v6, p1, v3}, Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;->onAuthenticationSucceeded(JLandroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    goto :goto_f1

    .line 175
    :cond_e4
    nop

    .line 176
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getTargetUserId()I

    move-result v7

    .line 175
    invoke-interface {v1, v5, v6, v3, v7}, Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;->onAuthenticationSucceeded(JLandroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    :try_end_f1
    .catch Landroid/os/RemoteException; {:try_start_d1 .. :try_end_f1} :catch_f2

    .line 180
    :goto_f1
    goto :goto_106

    .line 178
    :catch_f2
    move-exception v3

    .line 179
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_f3
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    nop

    .end local v3  # "e":Landroid/os/RemoteException;
    goto :goto_106

    .line 183
    :cond_fc
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Client not listening"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v2, 0x1

    .line 186
    .end local v4  # "byteToken":[B
    :goto_106
    goto :goto_167

    .line 187
    :cond_107
    if-eqz v1, :cond_10c

    .line 188
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->vibrateError()V

    .line 192
    :cond_10c
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->handleFailedAttempt()I

    move-result v5

    .line 193
    .local v5, "lockoutMode":I
    if-eqz v5, :cond_148

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->shouldFrameworkHandleLockout()Z

    move-result v6

    if-eqz v6, :cond_148

    .line 194
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Forcing lockout (driver code should do this!), mode("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual {p0, v3}, Lcom/android/server/biometrics/AuthenticationClient;->stop(Z)I

    .line 197
    if-ne v5, v4, :cond_13c

    .line 198
    const/4 v6, 0x7

    goto :goto_13e

    .line 199
    :cond_13c
    const/16 v6, 0x9

    :goto_13e
    nop

    .line 200
    .local v6, "errorCode":I
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v7

    invoke-virtual {p0, v7, v8, v6, v3}, Lcom/android/server/biometrics/AuthenticationClient;->onError(JII)Z

    .line 201
    nop

    .end local v6  # "errorCode":I
    goto :goto_163

    .line 205
    :cond_148
    if-eqz v1, :cond_163

    .line 206
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->isBiometricPrompt()Z

    move-result v6

    if-eqz v6, :cond_15c

    .line 207
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getCookie()I

    move-result v6

    .line 208
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getRequireConfirmation()Z

    move-result v7

    .line 207
    invoke-interface {v1, v6, v7}, Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;->onAuthenticationFailedInternal(IZ)V

    goto :goto_163

    .line 210
    :cond_15c
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v6

    invoke-interface {v1, v6, v7}, Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;->onAuthenticationFailed(J)V
    :try_end_163
    .catch Landroid/os/RemoteException; {:try_start_f3 .. :try_end_163} :catch_168

    .line 214
    :cond_163
    :goto_163
    if-eqz v5, :cond_166

    move v3, v4

    :cond_166
    move v2, v3

    .line 219
    .end local v5  # "lockoutMode":I
    :goto_167
    goto :goto_171

    .line 216
    :catch_168
    move-exception v3

    .line 217
    .restart local v3  # "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    const/4 v2, 0x1

    .line 220
    .end local v3  # "e":Landroid/os/RemoteException;
    :goto_171
    return v2
.end method

.method public onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
    .registers 5
    .param p1, "identifier"  # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"  # I

    .line 278
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onEnrollResult() called for authenticate!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/4 v0, 0x1

    return v0
.end method

.method public onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
    .registers 5
    .param p1, "identifier"  # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"  # I

    .line 291
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onEnumerationResult() called for authenticate!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v0, 0x1

    return v0
.end method

.method public onError(JII)Z
    .registers 6
    .param p1, "deviceId"  # J
    .param p3, "error"  # I
    .param p4, "vendorCode"  # I

    .line 107
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->shouldFrameworkHandleLockout()Z

    move-result v0

    if-nez v0, :cond_25

    .line 108
    const/4 v0, 0x3

    if-eq p3, v0, :cond_11

    const/4 v0, 0x7

    if-eq p3, v0, :cond_1e

    const/16 v0, 0x9

    if-eq p3, v0, :cond_1e

    goto :goto_25

    .line 110
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->wasUserDetected()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->isBiometricPrompt()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 112
    goto :goto_25

    .line 116
    :cond_1e
    iget-boolean v0, p0, Lcom/android/server/biometrics/AuthenticationClient;->mStarted:Z

    if-eqz v0, :cond_25

    .line 117
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->vibrateError()V

    .line 124
    :cond_25
    :goto_25
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/ClientMonitor;->onError(JII)Z

    move-result v0

    return v0
.end method

.method public onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
    .registers 5
    .param p1, "identifier"  # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"  # I

    .line 284
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onRemoved() called for authenticate!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/4 v0, 0x1

    return v0
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

    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/biometrics/AuthenticationClient;->mStarted:Z

    .line 229
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->onStart()V

    .line 231
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/biometrics/AuthenticationClient;->mOpId:J

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getGroupId()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;->authenticate(JI)I

    move-result v1

    .line 232
    .local v1, "result":I
    const/4 v2, 0x0

    if-eqz v1, :cond_43

    .line 233
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

    .line 234
    iget-object v3, p0, Lcom/android/server/biometrics/AuthenticationClient;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object v4, p0, Lcom/android/server/biometrics/AuthenticationClient;->mConstants:Lcom/android/server/biometrics/Constants;

    invoke-interface {v4}, Lcom/android/server/biometrics/Constants;->tagAuthStartError()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 235
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4, v0, v2}, Lcom/android/server/biometrics/AuthenticationClient;->onError(JII)Z

    .line 237
    return v1

    .line 239
    :cond_43
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is authenticating..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_64} :catch_66

    .line 243
    nop

    .line 244
    .end local v1  # "result":I
    return v2

    .line 240
    :catch_66
    move-exception v0

    .line 241
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "startAuthentication failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    const/4 v1, 0x3

    return v1
.end method

.method protected statsAction()I
    .registers 2

    .line 89
    const/4 v0, 0x2

    return v0
.end method

.method public stop(Z)I
    .registers 7
    .param p1, "initiatedByClient"  # Z

    .line 249
    iget-boolean v0, p0, Lcom/android/server/biometrics/AuthenticationClient;->mAlreadyCancelled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 250
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "stopAuthentication: already cancelled!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return v1

    .line 254
    :cond_10
    iput-boolean v1, p0, Lcom/android/server/biometrics/AuthenticationClient;->mStarted:Z

    .line 256
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->onStop()V

    .line 259
    :try_start_15
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;->cancel()I

    move-result v0

    .line 260
    .local v0, "result":I
    if-eqz v0, :cond_39

    .line 261
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopAuthentication failed, result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return v0

    .line 264
    :cond_39
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is no longer authenticating"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_5a} :catch_5f

    .line 269
    nop

    .line 271
    .end local v0  # "result":I
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/biometrics/AuthenticationClient;->mAlreadyCancelled:Z

    .line 272
    return v1

    .line 266
    :catch_5f
    move-exception v0

    .line 267
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthenticationClient;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "stopAuthentication failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    const/4 v1, 0x3

    return v1
.end method

.method public abstract wasUserDetected()Z
.end method
