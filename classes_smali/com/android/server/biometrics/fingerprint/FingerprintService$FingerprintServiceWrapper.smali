.class final Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;
.super Landroid/hardware/fingerprint/IFingerprintService$Stub;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FingerprintServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;


# direct methods
.method private constructor <init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;)V
    .registers 2

    .line 195
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/fingerprint/FingerprintService$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p2, "x1"  # Lcom/android/server/biometrics/fingerprint/FingerprintService$1;

    .line 195
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;)V

    return-void
.end method

.method private canControlFODIconState()Z
    .registers 4

    .line 567
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$7200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    .line 568
    .local v0, "current":Lcom/android/server/biometrics/ClientMonitor;
    if-nez v0, :cond_a

    .line 569
    const/4 v1, 0x0

    return v1

    .line 572
    :cond_a
    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    .line 573
    .local v1, "callingPackageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1600(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;->isPackageAlwaysAllow(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method


# virtual methods
.method public addClientActiveCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V
    .registers 4
    .param p1, "callback"  # Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;

    .line 474
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$5800(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$5900(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    return-void
.end method

.method public addLockoutResetCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V
    .registers 3
    .param p1, "callback"  # Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 350
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$4001(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V

    .line 351
    return-void
.end method

.method public animateFODIcon(FI)I
    .registers 5
    .param p1, "alpha"  # F
    .param p2, "duration"  # I

    .line 558
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$7100(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6600(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->canControlFODIconState()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 561
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6700(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->animateFODIcon(FI)V

    .line 563
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public authenticate(Landroid/os/IBinder;JILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V
    .registers 29
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "opId"  # J
    .param p4, "groupId"  # I
    .param p5, "receiver"  # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p6, "flags"  # I
    .param p7, "opPackageName"  # Ljava/lang/String;

    .line 249
    move-object/from16 v0, p0

    move-object/from16 v15, p7

    iget-object v1, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1600(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;

    move-result-object v1

    move/from16 v2, p4

    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/flymefingerprint/FlymeFingerprintUtils;->checkIsFlymeParallelSpaceUserId(I)I

    move-result v14

    .line 251
    .end local p4  # "groupId":I
    .local v14, "groupId":I
    iget-object v1, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v1, v14, v15}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    .line 252
    iget-object v1, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1700(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z

    move-result v17

    .line 253
    .local v17, "restricted":Z
    new-instance v18, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;

    iget-object v2, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v1, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 254
    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1000(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v4

    iget-object v1, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1800(Lcom/android/server/biometrics/fingerprint/FingerprintService;)J

    move-result-wide v5

    new-instance v8, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;

    iget-object v1, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    move-object/from16 v13, p5

    invoke-direct {v8, v1, v13}, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    iget-object v1, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 255
    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1900(Lcom/android/server/biometrics/fingerprint/FingerprintService;)I

    move-result v9

    const/16 v16, 0x0

    const/16 v19, 0x0

    move-object/from16 v1, v18

    move-object/from16 v7, p1

    move v10, v14

    move-wide/from16 v11, p2

    move/from16 v13, v17

    move/from16 v20, v14

    .end local v14  # "groupId":I
    .local v20, "groupId":I
    move-object/from16 v14, p7

    move/from16 v15, v16

    move/from16 v16, v19

    invoke-direct/range {v1 .. v16}, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIJZLjava/lang/String;IZ)V

    .line 257
    .local v1, "client":Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
    iget-object v2, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    move-wide/from16 v3, p2

    move-object/from16 v5, p7

    invoke-static {v2, v1, v3, v4, v5}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$2000(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;)V

    .line 258
    return-void
.end method

.method public cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 4
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "opPackageName"  # Ljava/lang/String;

    .line 291
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0, p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$2700(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method public cancelAuthenticationFromService(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V
    .registers 16
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "opPackageName"  # Ljava/lang/String;
    .param p3, "callingUid"  # I
    .param p4, "callingPid"  # I
    .param p5, "callingUserId"  # I
    .param p6, "fromClient"  # Z

    .line 297
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$2800(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 298
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-static/range {v2 .. v8}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$2900(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/os/IBinder;Ljava/lang/String;IIIZ)V

    .line 300
    return-void
.end method

.method public cancelEnrollment(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"  # Landroid/os/IBinder;

    .line 240
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1400(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1500(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/os/IBinder;)V

    .line 242
    return-void
.end method

.method public closeHBM()V
    .registers 3

    .line 587
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$7400(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 589
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6600(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 590
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6700(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->closeHBM()V

    .line 592
    :cond_18
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 355
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 356
    return-void

    .line 359
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 361
    .local v0, "ident":J
    :try_start_13
    array-length v2, p3

    if-lez v2, :cond_27

    const-string v2, "--proto"

    const/4 v3, 0x0

    aget-object v3, p3, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 362
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v2, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$4100(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/io/FileDescriptor;)V

    goto :goto_2c

    .line 364
    :cond_27
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v2, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$4200(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/io/PrintWriter;)V
    :try_end_2c
    .catchall {:try_start_13 .. :try_end_2c} :catchall_31

    .line 367
    :goto_2c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 368
    nop

    .line 369
    return-void

    .line 367
    :catchall_31
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public enroll(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V
    .registers 25
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "cryptoToken"  # [B
    .param p3, "userId"  # I
    .param p4, "receiver"  # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p5, "flags"  # I
    .param p6, "opPackageName"  # Ljava/lang/String;

    .line 217
    move-object/from16 v14, p0

    iget-object v0, v14, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$800(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 219
    iget-object v0, v14, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$900(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z

    move-result v15

    .line 220
    .local v15, "restricted":Z
    move/from16 v9, p3

    .line 221
    .local v9, "groupId":I
    new-instance v16, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$1;

    iget-object v0, v14, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, v14, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1000(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v3

    iget-object v0, v14, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 222
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1100(Lcom/android/server/biometrics/fingerprint/FingerprintService;)J

    move-result-wide v4

    new-instance v7, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;

    iget-object v0, v14, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    move-object/from16 v13, p4

    invoke-direct {v7, v0, v13}, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    iget-object v0, v14, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)I

    move-result v8

    const/4 v0, 0x0

    new-array v12, v0, [I

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move-object/from16 v10, p2

    move v11, v15

    move-object/from16 v17, v12

    move-object/from16 v12, p6

    move-object/from16 v13, v17

    invoke-direct/range {v0 .. v13}, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$1;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;II[BZLjava/lang/String;[I)V

    .line 235
    .local v0, "client":Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;
    iget-object v1, v14, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    move/from16 v2, p3

    invoke-static {v1, v0, v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1300(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;I)V

    .line 236
    return-void
.end method

.method public enumerate(Landroid/os/IBinder;ILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)V
    .registers 21
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "userId"  # I
    .param p3, "receiver"  # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 333
    move-object/from16 v13, p0

    iget-object v0, v13, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$3600(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 335
    iget-object v0, v13, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$3700(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z

    move-result v14

    .line 336
    .local v14, "restricted":Z
    new-instance v15, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$3;

    iget-object v0, v13, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, v13, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getConstants()Lcom/android/server/biometrics/Constants;

    move-result-object v3

    iget-object v0, v13, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 337
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1000(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v4

    iget-object v0, v13, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$3800(Lcom/android/server/biometrics/fingerprint/FingerprintService;)J

    move-result-wide v5

    new-instance v8, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;

    iget-object v0, v13, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    move-object/from16 v12, p3

    invoke-direct {v8, v0, v12}, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    iget-object v0, v13, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 338
    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v16

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move/from16 v9, p2

    move/from16 v10, p2

    move v11, v14

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$3;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIZLjava/lang/String;)V

    .line 344
    .local v0, "client":Lcom/android/server/biometrics/EnumerateClient;
    iget-object v1, v13, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v1, v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$3900(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/EnumerateClient;)V

    .line 345
    return-void
.end method

.method public getAuthenticatorId(Ljava/lang/String;)J
    .registers 4
    .param p1, "opPackageName"  # Ljava/lang/String;

    .line 448
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$5101(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getEnrolledFingerprints(ILjava/lang/String;)Ljava/util/List;
    .registers 9
    .param p1, "userId"  # I
    .param p2, "opPackageName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .line 410
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 411
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 412
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 410
    const/4 v2, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$4900(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;ZIII)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 413
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 416
    :cond_1b
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getEnrolledTemplates(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLockoutTimeCount()I
    .registers 6

    .line 487
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getLockoutMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_44

    .line 488
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 489
    .local v0, "timeNow":J
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6100(Lcom/android/server/biometrics/fingerprint/FingerprintService;)J

    move-result-wide v2

    sub-long v2, v0, v2

    long-to-int v2, v2

    div-int/lit16 v2, v2, 0x3e8

    rsub-int/lit8 v2, v2, 0x3c

    .line 490
    .local v2, "remain":I
    if-gtz v2, :cond_1d

    .line 491
    const/4 v2, 0x0

    .line 493
    :cond_1d
    if-nez v2, :cond_2d

    .line 494
    iget-object v3, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6300(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v3

    new-instance v4, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$5;

    invoke-direct {v4, p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$5;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;)V

    invoke-virtual {v3, v4}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 502
    :cond_2d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get time count from FingerprintService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FingerprintService"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    return v2

    .line 507
    .end local v0  # "timeNow":J
    .end local v2  # "remain":I
    :cond_44
    const/4 v0, 0x0

    return v0
.end method

.method public hasClient()Z
    .registers 3

    .line 514
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6400(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 515
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->isClientActive()Z

    move-result v0

    return v0
.end method

.method public hasEnrolledFingerprints(ILjava/lang/String;)Z
    .registers 9
    .param p1, "userId"  # I
    .param p2, "opPackageName"  # Ljava/lang/String;

    .line 421
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 422
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 423
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 421
    const/4 v2, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$5000(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;ZIII)Z

    move-result v0

    if-nez v0, :cond_18

    .line 424
    const/4 v0, 0x0

    return v0

    .line 427
    :cond_18
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->hasEnrolledBiometrics(I)Z

    move-result v0

    return v0
.end method

.method public isClientActive()Z
    .registers 3

    .line 466
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$5500(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    monitor-enter v0

    .line 468
    :try_start_a
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$5600(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v1

    if-nez v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$5700(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v1

    if-eqz v1, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v1, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v1, 0x1

    :goto_1e
    monitor-exit v0

    return v1

    .line 469
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_a .. :try_end_22} :catchall_20

    throw v1
.end method

.method public isFingerprintIconVisible()Z
    .registers 3

    .line 520
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6500(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6600(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 522
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6700(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->isFingerprintIconVisible()Z

    move-result v0

    return v0

    .line 524
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public isHardwareDetected(JLjava/lang/String;)Z
    .registers 12
    .param p1, "deviceId"  # J
    .param p3, "opPackageName"  # Ljava/lang/String;

    .line 378
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 379
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 380
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 378
    const/4 v2, 0x0

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$4300(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;ZIII)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_18

    .line 381
    return v1

    .line 384
    :cond_18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 386
    .local v2, "token":J
    :try_start_1c
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$4400(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 387
    .local v0, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    if-eqz v0, :cond_31

    iget-object v4, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v4}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$4500(Lcom/android/server/biometrics/fingerprint/FingerprintService;)J

    move-result-wide v4
    :try_end_2a
    .catchall {:try_start_1c .. :try_end_2a} :catchall_35

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_31

    const/4 v1, 0x1

    .line 389
    :cond_31
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 387
    return v1

    .line 389
    .end local v0  # "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    :catchall_35
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public postEnroll(Landroid/os/IBinder;)I
    .registers 4
    .param p1, "token"  # Landroid/os/IBinder;

    .line 209
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$600(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$700(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method public preEnroll(Landroid/os/IBinder;)J
    .registers 4
    .param p1, "token"  # Landroid/os/IBinder;

    .line 203
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$400(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$500(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/os/IBinder;)J

    move-result-wide v0

    return-wide v0
.end method

.method public prepareForAuthentication(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiverInternal;Ljava/lang/String;IIII)V
    .registers 32
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "opId"  # J
    .param p4, "groupId"  # I
    .param p5, "wrapperReceiver"  # Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;
    .param p6, "opPackageName"  # Ljava/lang/String;
    .param p7, "cookie"  # I
    .param p8, "callingUid"  # I
    .param p9, "callingPid"  # I
    .param p10, "callingUserId"  # I

    .line 264
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v2, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v1, v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$2100(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 266
    move/from16 v1, p4

    move/from16 v2, p10

    if-ne v2, v1, :cond_1a

    invoke-static/range {p10 .. p10}, Landroid/os/UserHandle;->isMultiOpenUserId(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 267
    const/4 v2, 0x0

    .line 268
    .end local p10  # "callingUserId":I
    .local v2, "callingUserId":I
    const/4 v1, 0x0

    move/from16 v19, v2

    .end local p4  # "groupId":I
    .local v1, "groupId":I
    goto :goto_1c

    .line 271
    .end local v1  # "groupId":I
    .end local v2  # "callingUserId":I
    .restart local p4  # "groupId":I
    .restart local p10  # "callingUserId":I
    :cond_1a
    move/from16 v19, v2

    .end local p4  # "groupId":I
    .end local p10  # "callingUserId":I
    .restart local v1  # "groupId":I
    .local v19, "callingUserId":I
    :goto_1c
    iget-object v2, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    move-object/from16 v15, p6

    invoke-virtual {v2, v1, v15}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    .line 272
    const/16 v20, 0x1

    .line 273
    .local v20, "restricted":Z
    new-instance v2, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;

    iget-object v4, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v4}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v3, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 274
    invoke-static {v3}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1000(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v6

    iget-object v3, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$2200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)J

    move-result-wide v7

    new-instance v10, Lcom/android/server/biometrics/fingerprint/FingerprintService$BiometricPromptServiceListenerImpl;

    iget-object v3, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    move-object/from16 v13, p5

    invoke-direct {v10, v3, v13}, Lcom/android/server/biometrics/fingerprint/FingerprintService$BiometricPromptServiceListenerImpl;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;)V

    iget-object v3, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 276
    invoke-static {v3}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$2300(Lcom/android/server/biometrics/fingerprint/FingerprintService;)I

    move-result v11

    const/16 v16, 0x1

    const/16 v18, 0x0

    move-object v3, v2

    move-object/from16 v9, p1

    move v12, v1

    move-wide/from16 v13, p2

    move/from16 v15, v16

    move-object/from16 v16, p6

    move/from16 v17, p7

    invoke-direct/range {v3 .. v18}, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIJZLjava/lang/String;IZ)V

    .line 278
    .local v3, "client":Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
    iget-object v2, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    move-wide/from16 v4, p2

    move-object/from16 v6, p6

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, v19

    invoke-static/range {v2 .. v9}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$2400(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;III)V

    .line 280
    return-void
.end method

.method public remove(Landroid/os/IBinder;IIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)V
    .registers 25
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "fingerId"  # I
    .param p3, "groupId"  # I
    .param p4, "userId"  # I
    .param p5, "receiver"  # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 311
    move-object/from16 v15, p0

    iget-object v0, v15, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$3200(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 313
    if-nez p1, :cond_14

    .line 314
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "remove(): token is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return-void

    .line 318
    :cond_14
    iget-object v0, v15, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$3300(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z

    move-result v16

    .line 319
    .local v16, "restricted":Z
    new-instance v17, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$2;

    iget-object v0, v15, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, v15, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getConstants()Lcom/android/server/biometrics/Constants;

    move-result-object v3

    iget-object v0, v15, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 320
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1000(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v4

    iget-object v0, v15, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$3400(Lcom/android/server/biometrics/fingerprint/FingerprintService;)J

    move-result-wide v5

    new-instance v8, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;

    iget-object v0, v15, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    move-object/from16 v14, p5

    invoke-direct {v8, v0, v14}, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    .line 321
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    iget-object v0, v15, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, v16

    move-object/from16 v14, v18

    invoke-direct/range {v0 .. v14}, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$2;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIIZLjava/lang/String;Lcom/android/server/biometrics/BiometricUtils;)V

    .line 327
    .local v0, "client":Lcom/android/server/biometrics/RemovalClient;
    iget-object v1, v15, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v1, v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$3500(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/RemovalClient;)V

    .line 328
    return-void
.end method

.method public removeClientActiveCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V
    .registers 4
    .param p1, "callback"  # Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;

    .line 480
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6000(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$5900(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 482
    return-void
.end method

.method public rename(IILjava/lang/String;)V
    .registers 6
    .param p1, "fingerId"  # I
    .param p2, "groupId"  # I
    .param p3, "name"  # Ljava/lang/String;

    .line 395
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$4600(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$4700(Lcom/android/server/biometrics/fingerprint/FingerprintService;I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 397
    return-void

    .line 399
    :cond_10
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$4800(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$4;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$4;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 406
    return-void
.end method

.method public resetTimeout([B)V
    .registers 4
    .param p1, "token"  # [B

    .line 453
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.RESET_FINGERPRINT_LOCKOUT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$5200(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$5300(Lcom/android/server/biometrics/fingerprint/FingerprintService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->hasEnrolledBiometrics(I)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 456
    const-string v0, "FingerprintService"

    const-string v1, "Ignoring lockout reset, no templates enrolled"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    return-void

    .line 461
    :cond_1b
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$5400(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    iget-object v1, v1, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mResetFailedAttemptsForCurrentUserRunnable:Lcom/android/server/biometrics/fingerprint/FingerprintService$ResetFailedAttemptsForUserRunnable;

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 462
    return-void
.end method

.method public setActiveUser(I)V
    .registers 4
    .param p1, "userId"  # I

    .line 304
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$3000(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$3100(Lcom/android/server/biometrics/fingerprint/FingerprintService;I)V

    .line 306
    return-void
.end method

.method public setFODIcon(I)I
    .registers 4
    .param p1, "resid"  # I

    .line 548
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$7000(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6600(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->canControlFODIconState()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 551
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6700(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->setFODIcon(I)V

    .line 553
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setFingerprintIconColor([I)V
    .registers 4
    .param p1, "colors"  # [I

    .line 578
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$7300(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6600(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 581
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6700(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->setFingerprintIconColor([I)V

    .line 583
    :cond_18
    return-void
.end method

.method public setFingerprintIconVisible(Z)V
    .registers 4
    .param p1, "visible"  # Z

    .line 530
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6800(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6600(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->canControlFODIconState()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 532
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6700(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->setFingerprintIconVisible(Z)V

    .line 534
    :cond_1e
    return-void
.end method

.method public startPreparedClient(I)V
    .registers 4
    .param p1, "cookie"  # I

    .line 284
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$2500(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$2600(Lcom/android/server/biometrics/fingerprint/FingerprintService;I)V

    .line 286
    return-void
.end method

.method public updateFODIconPosition(II)I
    .registers 5
    .param p1, "x"  # I
    .param p2, "y"  # I

    .line 538
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6900(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6600(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->canControlFODIconState()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 541
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$6700(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->updateFODIconPosition(II)V

    .line 543
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method
