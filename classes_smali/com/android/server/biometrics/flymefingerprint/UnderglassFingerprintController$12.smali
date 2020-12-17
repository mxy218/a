.class Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$12;
.super Ljava/lang/Object;
.source "UnderglassFingerprintController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->animateFODIcon(FI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

.field final synthetic val$alpha:F

.field final synthetic val$duration:I


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;FI)V
    .registers 4
    .param p1, "this$0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    .line 869
    iput-object p1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$12;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    iput p2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$12;->val$alpha:F

    iput p3, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$12;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 872
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$12;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$1400(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 873
    :try_start_7
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$12;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$1800(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;

    move-result-object v1

    iget v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$12;->val$alpha:F

    iget v3, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$12;->val$duration:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->animateImageAlpha(FI)V

    .line 874
    monitor-exit v0

    .line 875
    return-void

    .line 874
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw v1
.end method
