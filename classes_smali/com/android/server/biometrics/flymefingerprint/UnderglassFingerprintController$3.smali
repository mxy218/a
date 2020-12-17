.class Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$3;
.super Ljava/lang/Object;
.source "UnderglassFingerprintController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->handleShowIcon(Lcom/android/server/biometrics/ClientMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    .line 597
    iput-object p1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$3;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 600
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$3;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$1600(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$1700(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;IZ)V

    .line 601
    return-void
.end method
