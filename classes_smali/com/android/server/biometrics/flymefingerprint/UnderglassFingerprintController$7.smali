.class Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$7;
.super Ljava/lang/Object;
.source "UnderglassFingerprintController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->show(Lcom/android/server/biometrics/ClientMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

.field final synthetic val$client:Lcom/android/server/biometrics/ClientMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;Lcom/android/server/biometrics/ClientMonitor;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    .line 786
    iput-object p1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$7;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    iput-object p2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$7;->val$client:Lcom/android/server/biometrics/ClientMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 789
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$7;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$7;->val$client:Lcom/android/server/biometrics/ClientMonitor;

    invoke-static {v0, v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$2300(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;Lcom/android/server/biometrics/ClientMonitor;)V

    .line 790
    return-void
.end method
