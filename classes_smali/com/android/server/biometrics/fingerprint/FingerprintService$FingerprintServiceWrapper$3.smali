.class Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$3;
.super Lcom/android/server/biometrics/EnumerateClient;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->enumerate(Landroid/os/IBinder;ILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIZLjava/lang/String;)V
    .registers 25

    .line 322
    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->this$1:Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move-object/from16 v11, p12

    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/EnumerateClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected statsModality()I
    .registers 2

    .line 325
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$3;->this$1:Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v0, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->statsModality()I

    move-result v0

    return v0
.end method
