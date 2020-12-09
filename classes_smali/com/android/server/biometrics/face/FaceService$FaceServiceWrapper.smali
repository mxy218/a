.class final Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;
.super Landroid/hardware/face/IFaceService$Stub;
.source "FaceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/face/FaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FaceServiceWrapper"
.end annotation


# static fields
.field private static final ENROLL_TIMEOUT_SEC:I = 0x4b


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/face/FaceService;


# direct methods
.method private constructor <init>(Lcom/android/server/biometrics/face/FaceService;)V
    .registers 2

    .line 333
    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-direct {p0}, Landroid/hardware/face/IFaceService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/biometrics/face/FaceService;Lcom/android/server/biometrics/face/FaceService$1;)V
    .registers 3

    .line 333
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;-><init>(Lcom/android/server/biometrics/face/FaceService;)V

    return-void
.end method

.method private getFirstTemplateForUser(I)I
    .registers 4

    .line 718
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/face/FaceService;->getEnrolledTemplates(I)Ljava/util/List;

    move-result-object p1

    .line 719
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_18

    .line 720
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/face/Face;

    invoke-virtual {p1}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result p1

    return p1

    .line 722
    :cond_18
    return v1
.end method


# virtual methods
.method public addLockoutResetCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 510
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$4900(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/face/FaceService;->access$5001(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V

    .line 512
    return-void
.end method

.method public authenticate(Landroid/os/IBinder;JILandroid/hardware/face/IFaceServiceReceiver;ILjava/lang/String;)V
    .registers 27

    .line 414
    move-object/from16 v0, p0

    move-object/from16 v15, p7

    iget-object v1, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v2, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v1, v2}, Lcom/android/server/biometrics/face/FaceService;->access$2400(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 415
    iget-object v1, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    move/from16 v2, p4

    invoke-virtual {v1, v2, v15}, Lcom/android/server/biometrics/face/FaceService;->updateActiveGroup(ILjava/lang/String;)V

    .line 416
    iget-object v1, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v1}, Lcom/android/server/biometrics/face/FaceService;->access$2500(Lcom/android/server/biometrics/face/FaceService;)Z

    move-result v13

    .line 417
    new-instance v14, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;

    iget-object v2, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v2}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v1, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    .line 418
    invoke-static {v1}, Lcom/android/server/biometrics/face/FaceService;->access$1500(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v4

    iget-object v1, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v1}, Lcom/android/server/biometrics/face/FaceService;->access$2600(Lcom/android/server/biometrics/face/FaceService;)J

    move-result-wide v5

    new-instance v8, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;

    iget-object v1, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    move-object/from16 v7, p5

    invoke-direct {v8, v1, v7}, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;-><init>(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/face/IFaceServiceReceiver;)V

    iget-object v1, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    .line 419
    invoke-static {v1}, Lcom/android/server/biometrics/face/FaceService;->access$2700(Lcom/android/server/biometrics/face/FaceService;)I

    move-result v9

    const/4 v10, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v1, v14

    move-object/from16 v7, p1

    move-wide/from16 v11, p2

    move-object/from16 v18, v14

    move-object/from16 v14, p7

    move/from16 v15, v16

    move/from16 v16, v17

    invoke-direct/range {v1 .. v16}, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;-><init>(Lcom/android/server/biometrics/face/FaceService;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIJZLjava/lang/String;IZ)V

    .line 421
    iget-object v0, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    move-wide/from16 v1, p2

    move-object/from16 v3, p7

    move-object/from16 v4, v18

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/server/biometrics/face/FaceService;->access$2800(Lcom/android/server/biometrics/face/FaceService;Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;)V

    .line 422
    return-void
.end method

.method public cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 5

    .line 449
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$3500(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0, p1, p2}, Lcom/android/server/biometrics/face/FaceService;->access$3600(Lcom/android/server/biometrics/face/FaceService;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 451
    return-void
.end method

.method public cancelAuthenticationFromService(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V
    .registers 16

    .line 456
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$3700(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 457
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-static/range {v2 .. v8}, Lcom/android/server/biometrics/face/FaceService;->access$3800(Lcom/android/server/biometrics/face/FaceService;Landroid/os/IBinder;Ljava/lang/String;IIIZ)V

    .line 459
    return-void
.end method

.method public cancelEnrollment(Landroid/os/IBinder;)V
    .registers 4

    .line 406
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$2200(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/face/FaceService;->access$2300(Lcom/android/server/biometrics/face/FaceService;Landroid/os/IBinder;)V

    .line 408
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    .line 516
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "FaceService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 517
    return-void

    .line 520
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 522
    :try_start_13
    array-length v2, p3

    const/4 v3, 0x1

    if-le v2, v3, :cond_33

    const-string v2, "--hal"

    const/4 v4, 0x0

    aget-object v4, p3, v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 523
    iget-object p2, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    array-length v2, p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {p3, v3, v2, v4}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    invoke-static {p2, p1, p3}, Lcom/android/server/biometrics/face/FaceService;->access$5100(Lcom/android/server/biometrics/face/FaceService;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    goto :goto_38

    .line 525
    :cond_33
    iget-object p1, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {p1, p2}, Lcom/android/server/biometrics/face/FaceService;->access$5200(Lcom/android/server/biometrics/face/FaceService;Ljava/io/PrintWriter;)V
    :try_end_38
    .catchall {:try_start_13 .. :try_end_38} :catchall_3d

    .line 528
    :goto_38
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 529
    nop

    .line 530
    return-void

    .line 528
    :catchall_3d
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public enroll(ILandroid/os/IBinder;[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[I)V
    .registers 25

    .line 368
    move-object/from16 v15, p0

    iget-object v0, v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$1300(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 369
    iget-object v0, v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    move/from16 v1, p1

    move-object/from16 v12, p5

    invoke-virtual {v0, v1, v12}, Lcom/android/server/biometrics/face/FaceService;->updateActiveGroup(ILjava/lang/String;)V

    .line 371
    iget-object v0, v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$800(Lcom/android/server/biometrics/face/FaceService;)Landroid/app/NotificationManager;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v2, "FaceService"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 374
    iget-object v0, v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$1400(Lcom/android/server/biometrics/face/FaceService;)Z

    move-result v11

    .line 375
    new-instance v14, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper$1;

    iget-object v0, v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$1500(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v3

    iget-object v0, v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    .line 376
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$1600(Lcom/android/server/biometrics/face/FaceService;)J

    move-result-wide v4

    new-instance v7, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;

    iget-object v0, v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    move-object/from16 v1, p4

    invoke-direct {v7, v0, v1}, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;-><init>(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/face/IFaceServiceReceiver;)V

    iget-object v0, v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$1700(Lcom/android/server/biometrics/face/FaceService;)I

    move-result v8

    const/4 v9, 0x0

    const/16 v16, 0x4b

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v6, p2

    move-object/from16 v10, p3

    move-object/from16 v13, p6

    move-object/from16 v17, v14

    move/from16 v14, v16

    invoke-direct/range {v0 .. v14}, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper$1;-><init>(Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;II[BZLjava/lang/String;[II)V

    .line 401
    iget-object v0, v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$2000(Lcom/android/server/biometrics/face/FaceService;)I

    move-result v1

    move-object/from16 v2, v17

    invoke-static {v0, v2, v1}, Lcom/android/server/biometrics/face/FaceService;->access$2100(Lcom/android/server/biometrics/face/FaceService;Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;I)V

    .line 402
    return-void
.end method

.method public enumerate(Landroid/os/IBinder;ILandroid/hardware/face/IFaceServiceReceiver;)V
    .registers 19

    .line 493
    move-object v13, p0

    iget-object v0, v13, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$4500(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 495
    iget-object v0, v13, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$4600(Lcom/android/server/biometrics/face/FaceService;)Z

    move-result v11

    .line 496
    new-instance v14, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper$3;

    iget-object v0, v13, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, v13, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService;->getConstants()Lcom/android/server/biometrics/Constants;

    move-result-object v3

    iget-object v0, v13, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    .line 497
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$1500(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v4

    iget-object v0, v13, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$4700(Lcom/android/server/biometrics/face/FaceService;)J

    move-result-wide v5

    new-instance v8, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;

    iget-object v0, v13, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    move-object/from16 v1, p3

    invoke-direct {v8, v0, v1}, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;-><init>(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/face/IFaceServiceReceiver;)V

    iget-object v0, v13, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    .line 498
    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v12

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v7, p1

    move/from16 v9, p2

    move/from16 v10, p2

    invoke-direct/range {v0 .. v12}, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper$3;-><init>(Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIZLjava/lang/String;)V

    .line 504
    iget-object v0, v13, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0, v14}, Lcom/android/server/biometrics/face/FaceService;->access$4800(Lcom/android/server/biometrics/face/FaceService;Lcom/android/server/biometrics/EnumerateClient;)V

    .line 505
    return-void
.end method

.method public generateChallenge(Landroid/os/IBinder;)J
    .registers 4

    .line 342
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$900(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/face/FaceService;->access$1000(Lcom/android/server/biometrics/face/FaceService;Landroid/os/IBinder;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAuthenticatorId(Ljava/lang/String;)J
    .registers 4

    .line 612
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/face/FaceService;->access$6500(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getEnrolledFaces(ILjava/lang/String;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/face/Face;",
            ">;"
        }
    .end annotation

    .line 572
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$6100(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 573
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    .line 574
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 575
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 573
    const/4 v4, 0x0

    move-object v3, p2

    invoke-static/range {v2 .. v7}, Lcom/android/server/biometrics/face/FaceService;->access$6200(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;ZIII)Z

    move-result p2

    if-nez p2, :cond_1f

    .line 576
    const/4 p1, 0x0

    return-object p1

    .line 579
    :cond_1f
    iget-object p2, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {p2, p1}, Lcom/android/server/biometrics/face/FaceService;->getEnrolledTemplates(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getFeature(IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .registers 13

    .line 674
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$7000(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 676
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$7100(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    new-instance v7, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$6Efp5LtXdV1OgyOr4AaGf19hmLs;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p4

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$6Efp5LtXdV1OgyOr4AaGf19hmLs;-><init>(Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;ILjava/lang/String;ILandroid/hardware/face/IFaceServiceReceiver;)V

    invoke-virtual {v0, v7}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 701
    return-void
.end method

.method public hasEnrolledFaces(ILjava/lang/String;)Z
    .registers 11

    .line 584
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$6300(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 585
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    .line 586
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 587
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 585
    const/4 v4, 0x0

    move-object v3, p2

    invoke-static/range {v2 .. v7}, Lcom/android/server/biometrics/face/FaceService;->access$6400(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;ZIII)Z

    move-result p2

    if-nez p2, :cond_1f

    .line 588
    const/4 p1, 0x0

    return p1

    .line 591
    :cond_1f
    iget-object p2, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {p2, p1}, Lcom/android/server/biometrics/face/FaceService;->hasEnrolledBiometrics(I)Z

    move-result p1

    return p1
.end method

.method public isHardwareDetected(JLjava/lang/String;)Z
    .registers 10

    .line 539
    iget-object p1, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string p2, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {p1, p2}, Lcom/android/server/biometrics/face/FaceService;->access$5300(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    .line 541
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 542
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 540
    const/4 v2, 0x0

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/biometrics/face/FaceService;->access$5400(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;ZIII)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_1f

    .line 543
    return p2

    .line 546
    :cond_1f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 548
    :try_start_23
    iget-object p1, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {p1}, Lcom/android/server/biometrics/face/FaceService;->access$5500(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object p1

    .line 549
    if-eqz p1, :cond_38

    iget-object p1, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {p1}, Lcom/android/server/biometrics/face/FaceService;->access$5600(Lcom/android/server/biometrics/face/FaceService;)J

    move-result-wide v2
    :try_end_31
    .catchall {:try_start_23 .. :try_end_31} :catchall_3c

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_38

    const/4 p2, 0x1

    .line 551
    :cond_38
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 549
    return p2

    .line 551
    :catchall_3c
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public synthetic lambda$getFeature$3$FaceService$FaceServiceWrapper(ILjava/lang/String;ILandroid/hardware/face/IFaceServiceReceiver;)V
    .registers 7

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFeature for user("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/face/FaceService;->updateActiveGroup(ILjava/lang/String;)V

    .line 683
    iget-object p1, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {p1}, Lcom/android/server/biometrics/face/FaceService;->access$7400(Lcom/android/server/biometrics/face/FaceService;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/biometrics/face/FaceService;->hasEnrolledBiometrics(I)Z

    move-result p1

    if-nez p1, :cond_41

    .line 684
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No enrolled biometrics while getting feature: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    return-void

    .line 689
    :cond_41
    iget-object p1, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {p1}, Lcom/android/server/biometrics/face/FaceService;->access$7500(Lcom/android/server/biometrics/face/FaceService;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->getFirstTemplateForUser(I)I

    move-result p1

    .line 691
    iget-object p2, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {p2}, Lcom/android/server/biometrics/face/FaceService;->access$7300(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object p2

    if-eqz p2, :cond_76

    .line 693
    :try_start_53
    iget-object p2, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {p2}, Lcom/android/server/biometrics/face/FaceService;->access$7300(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object p2

    invoke-interface {p2, p3, p1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->getFeature(II)Landroid/hardware/biometrics/face/V1_0/OptionalBool;

    move-result-object p1

    .line 694
    iget p2, p1, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->status:I

    if-nez p2, :cond_63

    const/4 p2, 0x1

    goto :goto_64

    :cond_63
    const/4 p2, 0x0

    :goto_64
    iget-boolean p1, p1, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->value:Z

    invoke-interface {p4, p2, p3, p1}, Landroid/hardware/face/IFaceServiceReceiver;->onFeatureGet(ZIZ)V
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_69} :catch_6a

    .line 697
    goto :goto_76

    .line 695
    :catch_6a
    move-exception p1

    .line 696
    iget-object p2, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {p2}, Lcom/android/server/biometrics/face/FaceService;->getTag()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Unable to getRequireAttention"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 699
    :cond_76
    :goto_76
    return-void
.end method

.method public synthetic lambda$resetLockout$1$FaceService$FaceServiceWrapper([B)V
    .registers 5

    .line 620
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$7800(Lcom/android/server/biometrics/face/FaceService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->hasEnrolledBiometrics(I)Z

    move-result v0

    const-string v1, "FaceService"

    if-nez v0, :cond_14

    .line 621
    const-string p1, "Ignoring lockout reset, no templates enrolled"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    return-void

    .line 625
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resetting lockout for user: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v2}, Lcom/android/server/biometrics/face/FaceService;->access$7900(Lcom/android/server/biometrics/face/FaceService;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :try_start_2e
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$1500(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;->resetLockout([B)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_37} :catch_38

    .line 631
    goto :goto_44

    .line 629
    :catch_38
    move-exception p1

    .line 630
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable to reset lockout"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 632
    :goto_44
    return-void
.end method

.method public synthetic lambda$revokeChallenge$0$FaceService$FaceServiceWrapper(Landroid/os/IBinder;)V
    .registers 3

    .line 351
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$8000(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    if-nez v0, :cond_e

    .line 354
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/face/FaceService;->access$8100(Lcom/android/server/biometrics/face/FaceService;Landroid/os/IBinder;)I

    goto :goto_14

    .line 358
    :cond_e
    iget-object p1, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/server/biometrics/face/FaceService;->access$8202(Lcom/android/server/biometrics/face/FaceService;Z)Z

    .line 360
    :goto_14
    return-void
.end method

.method public synthetic lambda$setFeature$2$FaceService$FaceServiceWrapper(ILjava/lang/String;I[BZLandroid/hardware/face/IFaceServiceReceiver;)V
    .registers 9

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFeature for user("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/face/FaceService;->updateActiveGroup(ILjava/lang/String;)V

    .line 645
    iget-object p1, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {p1}, Lcom/android/server/biometrics/face/FaceService;->access$7600(Lcom/android/server/biometrics/face/FaceService;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/biometrics/face/FaceService;->hasEnrolledBiometrics(I)Z

    move-result p1

    if-nez p1, :cond_42

    .line 646
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No enrolled biometrics while setting feature: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    return-void

    .line 650
    :cond_42
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 651
    const/4 p2, 0x0

    move v0, p2

    :goto_49
    array-length v1, p4

    if-ge v0, v1, :cond_58

    .line 652
    aget-byte v1, p4, v0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    .line 656
    :cond_58
    iget-object p4, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {p4}, Lcom/android/server/biometrics/face/FaceService;->access$7700(Lcom/android/server/biometrics/face/FaceService;)I

    move-result p4

    invoke-direct {p0, p4}, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->getFirstTemplateForUser(I)I

    move-result p4

    .line 658
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$7300(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    if-eqz v0, :cond_9e

    .line 660
    :try_start_6a
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$7300(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    invoke-interface {v0, p3, p5, p1, p4}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->setFeature(IZLjava/util/ArrayList;I)I

    move-result p1

    .line 661
    if-nez p1, :cond_77

    const/4 p2, 0x1

    :cond_77
    invoke-interface {p6, p2, p3}, Landroid/hardware/face/IFaceServiceReceiver;->onFeatureSet(ZI)V
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_7a} :catch_7b

    .line 665
    goto :goto_9e

    .line 662
    :catch_7b
    move-exception p1

    .line 663
    iget-object p2, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {p2}, Lcom/android/server/biometrics/face/FaceService;->getTag()Ljava/lang/String;

    move-result-object p2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Unable to set feature: "

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " to enabled:"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 667
    :cond_9e
    :goto_9e
    return-void
.end method

.method public prepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiverInternal;Ljava/lang/String;IIII)V
    .registers 30

    .line 429
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v2, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-static {v1, v2}, Lcom/android/server/biometrics/face/FaceService;->access$2900(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 430
    iget-object v1, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    move/from16 v2, p5

    move-object/from16 v15, p7

    invoke-virtual {v1, v2, v15}, Lcom/android/server/biometrics/face/FaceService;->updateActiveGroup(ILjava/lang/String;)V

    .line 432
    new-instance v1, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;

    iget-object v3, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v3}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v2, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    .line 433
    invoke-static {v2}, Lcom/android/server/biometrics/face/FaceService;->access$1500(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v5

    iget-object v2, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v2}, Lcom/android/server/biometrics/face/FaceService;->access$3000(Lcom/android/server/biometrics/face/FaceService;)J

    move-result-wide v6

    new-instance v9, Lcom/android/server/biometrics/face/FaceService$BiometricPromptServiceListenerImpl;

    iget-object v2, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    move-object/from16 v8, p6

    invoke-direct {v9, v2, v8}, Lcom/android/server/biometrics/face/FaceService$BiometricPromptServiceListenerImpl;-><init>(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;)V

    iget-object v2, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    .line 435
    invoke-static {v2}, Lcom/android/server/biometrics/face/FaceService;->access$3100(Lcom/android/server/biometrics/face/FaceService;)I

    move-result v10

    const/4 v11, 0x0

    const/4 v14, 0x1

    move-object v2, v1

    move-object/from16 v8, p2

    move-wide/from16 v12, p3

    move/from16 v16, p8

    move/from16 v17, p1

    invoke-direct/range {v2 .. v17}, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;-><init>(Lcom/android/server/biometrics/face/FaceService;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIJZLjava/lang/String;IZ)V

    .line 437
    iget-object v2, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    move-object v3, v1

    move-wide/from16 v4, p3

    move-object/from16 v6, p7

    move/from16 v7, p9

    move/from16 v8, p10

    move/from16 v9, p11

    invoke-static/range {v2 .. v9}, Lcom/android/server/biometrics/face/FaceService;->access$3200(Lcom/android/server/biometrics/face/FaceService;Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;III)V

    .line 439
    return-void
.end method

.method public remove(Landroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .registers 24

    .line 470
    move-object/from16 v15, p0

    iget-object v0, v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$4100(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 471
    iget-object v0, v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    move/from16 v11, p3

    move-object/from16 v1, p5

    invoke-virtual {v0, v11, v1}, Lcom/android/server/biometrics/face/FaceService;->updateActiveGroup(ILjava/lang/String;)V

    .line 473
    if-nez p1, :cond_1d

    .line 474
    const-string v0, "FaceService"

    const-string/jumbo v1, "remove(): token is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    return-void

    .line 478
    :cond_1d
    iget-object v0, v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$4200(Lcom/android/server/biometrics/face/FaceService;)Z

    move-result v12

    .line 479
    new-instance v14, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper$2;

    iget-object v0, v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService;->getConstants()Lcom/android/server/biometrics/Constants;

    move-result-object v3

    iget-object v0, v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    .line 480
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$1500(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v4

    iget-object v0, v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$4300(Lcom/android/server/biometrics/face/FaceService;)J

    move-result-wide v5

    new-instance v8, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;

    iget-object v0, v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    move-object/from16 v1, p4

    invoke-direct {v8, v0, v1}, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;-><init>(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/face/IFaceServiceReceiver;)V

    const/4 v10, 0x0

    .line 481
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    iget-object v0, v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v16

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move/from16 v9, p2

    move/from16 v11, p3

    move-object/from16 v17, v14

    move-object/from16 v14, v16

    invoke-direct/range {v0 .. v14}, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper$2;-><init>(Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIIZLjava/lang/String;Lcom/android/server/biometrics/BiometricUtils;)V

    .line 487
    iget-object v0, v15, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$4400(Lcom/android/server/biometrics/face/FaceService;Lcom/android/server/biometrics/RemovalClient;)V

    .line 488
    return-void
.end method

.method public rename(ILjava/lang/String;)V
    .registers 5

    .line 557
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$5700(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 558
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$5800(Lcom/android/server/biometrics/face/FaceService;I)Z

    move-result v0

    if-nez v0, :cond_14

    .line 559
    return-void

    .line 561
    :cond_14
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$6000(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper$4;-><init>(Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 568
    return-void
.end method

.method public resetLockout([B)V
    .registers 4

    .line 617
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$6600(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 619
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$6700(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$kw0BBGgTrFveHiSJWRbNG8sygqA;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$kw0BBGgTrFveHiSJWRbNG8sygqA;-><init>(Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;[B)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 633
    return-void
.end method

.method public revokeChallenge(Landroid/os/IBinder;)I
    .registers 4

    .line 348
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$1100(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$1200(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$oUY0TN9T4s4roMpe33Oc2nS7uzI;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$oUY0TN9T4s4roMpe33Oc2nS7uzI;-><init>(Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 361
    const/4 p1, 0x0

    return p1
.end method

.method public setActiveUser(I)V
    .registers 4

    .line 463
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$3900(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/face/FaceService;->access$4000(Lcom/android/server/biometrics/face/FaceService;I)V

    .line 465
    return-void
.end method

.method public setFeature(IIZ[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .registers 17

    .line 638
    move-object v1, p0

    iget-object v0, v1, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v2, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v0, v2}, Lcom/android/server/biometrics/face/FaceService;->access$6800(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 640
    iget-object v0, v1, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$6900(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v8

    new-instance v9, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$1ZJGnsaJl1du-I_XjU-JKzIy49Q;

    move-object v0, v9

    move v2, p1

    move-object/from16 v3, p6

    move v4, p2

    move-object v5, p4

    move v6, p3

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$FaceServiceWrapper$1ZJGnsaJl1du-I_XjU-JKzIy49Q;-><init>(Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;ILjava/lang/String;I[BZLandroid/hardware/face/IFaceServiceReceiver;)V

    invoke-virtual {v8, v9}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 669
    return-void
.end method

.method public startPreparedClient(I)V
    .registers 4

    .line 443
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$3300(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/face/FaceService;->access$3400(Lcom/android/server/biometrics/face/FaceService;I)V

    .line 445
    return-void
.end method

.method public userActivity()V
    .registers 4

    .line 705
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$7200(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 707
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$7300(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 709
    :try_start_f
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$7300(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->userActivity()I
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_18} :catch_19

    .line 712
    goto :goto_25

    .line 710
    :catch_19
    move-exception v0

    .line 711
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v1}, Lcom/android/server/biometrics/face/FaceService;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to send userActivity"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 714
    :cond_25
    :goto_25
    return-void
.end method
