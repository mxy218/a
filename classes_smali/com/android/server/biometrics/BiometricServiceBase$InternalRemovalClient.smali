.class final Lcom/android/server/biometrics/BiometricServiceBase$InternalRemovalClient;
.super Lcom/android/server/biometrics/RemovalClient;
.source "BiometricServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/BiometricServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InternalRemovalClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/BiometricServiceBase;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIIZLjava/lang/String;)V
    .registers 27

    .line 307
    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/android/server/biometrics/BiometricServiceBase$InternalRemovalClient;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    .line 308
    invoke-virtual {p1}, Lcom/android/server/biometrics/BiometricServiceBase;->getConstants()Lcom/android/server/biometrics/Constants;

    move-result-object v2

    .line 309
    invoke-virtual {p1}, Lcom/android/server/biometrics/BiometricServiceBase;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v13

    .line 308
    move-object/from16 v1, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v13}, Lcom/android/server/biometrics/RemovalClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIIZLjava/lang/String;Lcom/android/server/biometrics/BiometricUtils;)V

    .line 310
    return-void
.end method


# virtual methods
.method protected statsModality()I
    .registers 2

    .line 314
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$InternalRemovalClient;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricServiceBase;->statsModality()I

    move-result v0

    return v0
.end method
