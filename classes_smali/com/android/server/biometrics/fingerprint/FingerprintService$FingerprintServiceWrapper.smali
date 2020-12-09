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


# static fields
.field private static final ENROLL_TIMEOUT_SEC:I = 0x3c


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;


# direct methods
.method private constructor <init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;)V
    .registers 2

    .line 186
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/fingerprint/FingerprintService$1;)V
    .registers 3

    .line 186
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;)V

    return-void
.end method


# virtual methods
.method public addClientActiveCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V
    .registers 4

    .line 458
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$5700(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$5800(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    return-void
.end method

.method public addLockoutResetCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$3901(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V

    .line 335
    return-void
.end method

.method public authenticate(Landroid/os/IBinder;JILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V
    .registers 27

    .line 241
    move-object/from16 v0, p0

    move-object/from16 v15, p7

    iget-object v1, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    move/from16 v10, p4

    invoke-virtual {v1, v10, v15}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    .line 242
    iget-object v1, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1600(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z

    move-result v13

    .line 243
    new-instance v14, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;

    iget-object v2, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v1, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 244
    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1000(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v4

    iget-object v1, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1700(Lcom/android/server/biometrics/fingerprint/FingerprintService;)J

    move-result-wide v5

    new-instance v8, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;

    iget-object v1, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    move-object/from16 v7, p5

    invoke-direct {v8, v1, v7}, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    iget-object v1, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 245
    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1800(Lcom/android/server/biometrics/fingerprint/FingerprintService;)I

    move-result v9

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v1, v14

    move-object/from16 v7, p1

    move-wide/from16 v11, p2

    move-object/from16 v18, v14

    move-object/from16 v14, p7

    move/from16 v15, v16

    move/from16 v16, v17

    invoke-direct/range {v1 .. v16}, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIJZLjava/lang/String;IZ)V

    .line 247
    iget-object v0, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    move-wide/from16 v1, p2

    move-object/from16 v3, p7

    move-object/from16 v4, v18

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1900(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;)V

    .line 248
    return-void
.end method

.method public cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 4

    .line 275
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0, p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$2600(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public cancelAuthenticationFromService(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V
    .registers 16

    .line 281
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$2700(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 282
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-static/range {v2 .. v8}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$2800(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/os/IBinder;Ljava/lang/String;IIIZ)V

    .line 284
    return-void
.end method

.method public cancelEnrollment(Landroid/os/IBinder;)V
    .registers 4

    .line 233
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1400(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1500(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/os/IBinder;)V

    .line 235
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    .line 339
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 340
    return-void

    .line 343
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 345
    :try_start_13
    array-length v2, p3

    if-lez v2, :cond_27

    const-string v2, "--proto"

    const/4 v3, 0x0

    aget-object p3, p3, v3

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_27

    .line 346
    iget-object p2, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {p2, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$4000(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/io/FileDescriptor;)V

    goto :goto_2c

    .line 348
    :cond_27
    iget-object p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$4100(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/io/PrintWriter;)V
    :try_end_2c
    .catchall {:try_start_13 .. :try_end_2c} :catchall_31

    .line 351
    :goto_2c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 352
    nop

    .line 353
    return-void

    .line 351
    :catchall_31
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public enroll(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V
    .registers 25

    .line 209
    move-object/from16 v15, p0

    iget-object v0, v15, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$800(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 211
    iget-object v0, v15, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$900(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z

    move-result v11

    .line 212
    nop

    .line 213
    new-instance v14, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$1;

    iget-object v0, v15, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, v15, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1000(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v3

    iget-object v0, v15, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 214
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1100(Lcom/android/server/biometrics/fingerprint/FingerprintService;)J

    move-result-wide v4

    new-instance v7, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;

    iget-object v0, v15, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    move-object/from16 v1, p4

    invoke-direct {v7, v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    iget-object v0, v15, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)I

    move-result v8

    const/4 v0, 0x0

    new-array v13, v0, [I

    const/16 v16, 0x3c

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move/from16 v9, p3

    move-object/from16 v10, p2

    move-object/from16 v12, p6

    move-object/from16 v17, v14

    move/from16 v14, v16

    invoke-direct/range {v0 .. v14}, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$1;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;II[BZLjava/lang/String;[II)V

    .line 228
    iget-object v0, v15, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    move/from16 v1, p3

    move-object/from16 v2, v17

    invoke-static {v0, v2, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1300(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;I)V

    .line 229
    return-void
.end method

.method public enumerate(Landroid/os/IBinder;ILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)V
    .registers 19

    .line 317
    move-object v13, p0

    iget-object v0, v13, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$3500(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 319
    iget-object v0, v13, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$3600(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z

    move-result v11

    .line 320
    new-instance v14, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$3;

    iget-object v0, v13, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, v13, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getConstants()Lcom/android/server/biometrics/Constants;

    move-result-object v3

    iget-object v0, v13, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 321
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1000(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v4

    iget-object v0, v13, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$3700(Lcom/android/server/biometrics/fingerprint/FingerprintService;)J

    move-result-wide v5

    new-instance v8, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;

    iget-object v0, v13, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    move-object/from16 v1, p3

    invoke-direct {v8, v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    iget-object v0, v13, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 322
    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v12

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v7, p1

    move/from16 v9, p2

    move/from16 v10, p2

    invoke-direct/range {v0 .. v12}, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$3;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIZLjava/lang/String;)V

    .line 328
    iget-object v0, v13, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0, v14}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$3800(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/EnumerateClient;)V

    .line 329
    return-void
.end method

.method public getAuthenticatorId(Ljava/lang/String;)J
    .registers 4

    .line 432
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$5001(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getEnrolledFingerprints(ILjava/lang/String;)Ljava/util/List;
    .registers 9
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

    .line 394
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 395
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 396
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 394
    const/4 v2, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$4800(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;ZIII)Z

    move-result p2

    if-nez p2, :cond_1b

    .line 397
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 400
    :cond_1b
    iget-object p2, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {p2, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getEnrolledTemplates(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public hasEnrolledFingerprints(ILjava/lang/String;)Z
    .registers 9

    .line 405
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 406
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 407
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 405
    const/4 v2, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$4900(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;ZIII)Z

    move-result p2

    if-nez p2, :cond_18

    .line 408
    const/4 p1, 0x0

    return p1

    .line 411
    :cond_18
    iget-object p2, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {p2, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->hasEnrolledBiometrics(I)Z

    move-result p1

    return p1
.end method

.method public isClientActive()Z
    .registers 3

    .line 450
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$5400(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    monitor-enter v0

    .line 452
    :try_start_a
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$5500(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v1

    if-nez v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$5600(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/ClientMonitor;

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

    .line 453
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_a .. :try_end_22} :catchall_20

    throw v1
.end method

.method public isHardwareDetected(JLjava/lang/String;)Z
    .registers 10

    .line 362
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 363
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 364
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 362
    const/4 v2, 0x0

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$4200(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;ZIII)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_18

    .line 365
    return p2

    .line 368
    :cond_18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 370
    :try_start_1c
    iget-object p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$4300(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object p1

    .line 371
    if-eqz p1, :cond_31

    iget-object p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$4400(Lcom/android/server/biometrics/fingerprint/FingerprintService;)J

    move-result-wide v2
    :try_end_2a
    .catchall {:try_start_1c .. :try_end_2a} :catchall_35

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_31

    const/4 p2, 0x1

    .line 373
    :cond_31
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 371
    return p2

    .line 373
    :catchall_35
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public postEnroll(Landroid/os/IBinder;)I
    .registers 4

    .line 201
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$600(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$700(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/os/IBinder;)I

    move-result p1

    return p1
.end method

.method public preEnroll(Landroid/os/IBinder;)J
    .registers 4

    .line 195
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$400(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$500(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/os/IBinder;)J

    move-result-wide v0

    return-wide v0
.end method

.method public prepareForAuthentication(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiverInternal;Ljava/lang/String;IIII)V
    .registers 29

    .line 254
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v2, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v1, v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$2000(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 255
    iget-object v1, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    move/from16 v11, p4

    move-object/from16 v15, p6

    invoke-virtual {v1, v11, v15}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    .line 257
    new-instance v1, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;

    iget-object v3, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v3}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v2, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 258
    invoke-static {v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1000(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v5

    iget-object v2, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$2100(Lcom/android/server/biometrics/fingerprint/FingerprintService;)J

    move-result-wide v6

    new-instance v9, Lcom/android/server/biometrics/fingerprint/FingerprintService$BiometricPromptServiceListenerImpl;

    iget-object v2, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    move-object/from16 v8, p5

    invoke-direct {v9, v2, v8}, Lcom/android/server/biometrics/fingerprint/FingerprintService$BiometricPromptServiceListenerImpl;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;)V

    iget-object v2, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 260
    invoke-static {v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$2200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)I

    move-result v10

    const/4 v14, 0x1

    const/16 v17, 0x0

    move-object v2, v1

    move-object/from16 v8, p1

    move-wide/from16 v12, p2

    move/from16 v16, p7

    invoke-direct/range {v2 .. v17}, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIJZLjava/lang/String;IZ)V

    .line 262
    iget-object v2, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    move-object v3, v1

    move-wide/from16 v4, p2

    move-object/from16 v6, p6

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-static/range {v2 .. v9}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$2300(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;III)V

    .line 264
    return-void
.end method

.method public remove(Landroid/os/IBinder;IIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)V
    .registers 24

    .line 295
    move-object/from16 v15, p0

    iget-object v0, v15, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$3100(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 297
    if-nez p1, :cond_14

    .line 298
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "remove(): token is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    return-void

    .line 302
    :cond_14
    iget-object v0, v15, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$3200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z

    move-result v12

    .line 303
    new-instance v14, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$2;

    iget-object v0, v15, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, v15, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getConstants()Lcom/android/server/biometrics/Constants;

    move-result-object v3

    iget-object v0, v15, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 304
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$1000(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v4

    iget-object v0, v15, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$3300(Lcom/android/server/biometrics/fingerprint/FingerprintService;)J

    move-result-wide v5

    new-instance v8, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;

    iget-object v0, v15, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    move-object/from16 v1, p5

    invoke-direct {v8, v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    .line 305
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    iget-object v0, v15, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v16

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v17, v14

    move-object/from16 v14, v16

    invoke-direct/range {v0 .. v14}, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$2;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIIZLjava/lang/String;Lcom/android/server/biometrics/BiometricUtils;)V

    .line 311
    iget-object v0, v15, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$3400(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/RemovalClient;)V

    .line 312
    return-void
.end method

.method public removeClientActiveCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V
    .registers 4

    .line 464
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$5900(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$5800(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 466
    return-void
.end method

.method public rename(IILjava/lang/String;)V
    .registers 6

    .line 379
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$4500(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$4600(Lcom/android/server/biometrics/fingerprint/FingerprintService;I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 381
    return-void

    .line 383
    :cond_10
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$4700(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$4;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$4;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 390
    return-void
.end method

.method public resetTimeout([B)V
    .registers 3

    .line 437
    iget-object p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v0, "android.permission.RESET_FINGERPRINT_LOCKOUT"

    invoke-static {p1, v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$5100(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 439
    iget-object p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$5200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->hasEnrolledBiometrics(I)Z

    move-result p1

    if-nez p1, :cond_1b

    .line 440
    const-string p1, "FingerprintService"

    const-string v0, "Ignoring lockout reset, no templates enrolled"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    return-void

    .line 445
    :cond_1b
    iget-object p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$5300(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    iget-object v0, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mResetFailedAttemptsForCurrentUserRunnable:Lcom/android/server/biometrics/fingerprint/FingerprintService$ResetFailedAttemptsForUserRunnable;

    invoke-virtual {p1, v0}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 446
    return-void
.end method

.method public setActiveUser(I)V
    .registers 4

    .line 288
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$2900(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$3000(Lcom/android/server/biometrics/fingerprint/FingerprintService;I)V

    .line 290
    return-void
.end method

.method public startPreparedClient(I)V
    .registers 4

    .line 268
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$2400(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->access$2500(Lcom/android/server/biometrics/fingerprint/FingerprintService;I)V

    .line 270
    return-void
.end method
