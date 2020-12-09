.class Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper$1;
.super Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;
.source "FaceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->enroll(ILandroid/os/IBinder;[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;II[BZLjava/lang/String;[II)V
    .registers 30

    .line 378
    move-object/from16 v0, p1

    move-object v1, p0

    iput-object v0, v1, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper$1;->this$1:Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;

    iget-object v2, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    move-object v0, p0

    move-object v1, v2

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;II[BZLjava/lang/String;[II)V

    return-void
.end method


# virtual methods
.method public getAcquireIgnorelist()[I
    .registers 2

    .line 382
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper$1;->this$1:Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;

    iget-object v0, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$1800(Lcom/android/server/biometrics/face/FaceService;)[I

    move-result-object v0

    return-object v0
.end method

.method public getAcquireVendorIgnorelist()[I
    .registers 2

    .line 387
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper$1;->this$1:Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;

    iget-object v0, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$1900(Lcom/android/server/biometrics/face/FaceService;)[I

    move-result-object v0

    return-object v0
.end method

.method public shouldVibrate()Z
    .registers 2

    .line 392
    const/4 v0, 0x0

    return v0
.end method

.method protected statsModality()I
    .registers 2

    .line 397
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper$1;->this$1:Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;

    iget-object v0, v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService;->statsModality()I

    move-result v0

    return v0
.end method
