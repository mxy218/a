.class public abstract Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
.super Lcom/android/server/biometrics/AuthenticationClient;
.source "BiometricServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/BiometricServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "AuthenticationClientImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/BiometricServiceBase;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIJZLjava/lang/String;IZ)V
    .registers 32

    .line 223
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    .line 224
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/biometrics/BiometricServiceBase;->getConstants()Lcom/android/server/biometrics/Constants;

    move-result-object v2

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-wide/from16 v10, p10

    move/from16 v12, p12

    move-object/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    invoke-direct/range {v0 .. v15}, Lcom/android/server/biometrics/AuthenticationClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIJZLjava/lang/String;IZ)V

    .line 226
    return-void
.end method


# virtual methods
.method public handleFailedAttempt()I
    .registers 5

    .line 266
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricServiceBase;->getLockoutMode()I

    move-result v0

    .line 267
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-static {v1}, Lcom/android/server/biometrics/BiometricServiceBase;->access$500(Lcom/android/server/biometrics/BiometricServiceBase;)Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 268
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1e

    .line 269
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-static {v1}, Lcom/android/server/biometrics/BiometricServiceBase;->access$500(Lcom/android/server/biometrics/BiometricServiceBase;)Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    move-result-object v1

    iget v3, v1, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->permanentLockout:I

    add-int/2addr v3, v2

    iput v3, v1, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->permanentLockout:I

    goto :goto_2b

    .line 270
    :cond_1e
    if-ne v0, v2, :cond_2b

    .line 271
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-static {v1}, Lcom/android/server/biometrics/BiometricServiceBase;->access$500(Lcom/android/server/biometrics/BiometricServiceBase;)Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    move-result-object v1

    iget v3, v1, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->lockout:I

    add-int/2addr v3, v2

    iput v3, v1, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->lockout:I

    .line 276
    :cond_2b
    :goto_2b
    if-eqz v0, :cond_2e

    .line 277
    return v0

    .line 279
    :cond_2e
    const/4 v0, 0x0

    return v0
.end method

.method protected isFingerprint()Z
    .registers 2

    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method public notifyUserActivity()V
    .registers 2

    .line 261
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricServiceBase;->access$400(Lcom/android/server/biometrics/BiometricServiceBase;)V

    .line 262
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricServiceBase;->access$300(Lcom/android/server/biometrics/BiometricServiceBase;)Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-static {v1}, Lcom/android/server/biometrics/BiometricServiceBase;->access$200(Lcom/android/server/biometrics/BiometricServiceBase;)Lcom/android/server/biometrics/BiometricServiceBase$BiometricTaskStackListener;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 247
    goto :goto_1c

    .line 245
    :catch_10
    move-exception v0

    .line 246
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Could not register task stack listener"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 248
    :goto_1c
    return-void
.end method

.method public onStop()V
    .registers 4

    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricServiceBase;->access$300(Lcom/android/server/biometrics/BiometricServiceBase;)Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-static {v1}, Lcom/android/server/biometrics/BiometricServiceBase;->access$200(Lcom/android/server/biometrics/BiometricServiceBase;)Lcom/android/server/biometrics/BiometricServiceBase$BiometricTaskStackListener;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 256
    goto :goto_1c

    .line 254
    :catch_10
    move-exception v0

    .line 255
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Could not unregister task stack listener"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 257
    :goto_1c
    return-void
.end method

.method protected statsClient()I
    .registers 3

    .line 230
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase;->isKeyguard(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 231
    const/4 v0, 0x1

    return v0

    .line 232
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->isBiometricPrompt()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 233
    const/4 v0, 0x2

    return v0

    .line 234
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->isFingerprint()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 235
    const/4 v0, 0x3

    return v0

    .line 237
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method
