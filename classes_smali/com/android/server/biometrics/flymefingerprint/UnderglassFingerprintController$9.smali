.class Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$9;
.super Ljava/lang/Object;
.source "UnderglassFingerprintController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->setFingerprintIconVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;Z)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    .line 813
    iput-object p1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$9;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    iput-boolean p2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$9;->val$visible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 816
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$9;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$1400(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 817
    :try_start_7
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$9;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    iget-boolean v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$9;->val$visible:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    move v2, v3

    :goto_11
    invoke-static {v1, v2}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$2502(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;I)I

    .line 818
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$9;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$400(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v1

    if-eqz v1, :cond_56

    .line 819
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$9;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$1800(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->getFingerprintView()Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;

    move-result-object v1

    .line 820
    iget-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$9;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-virtual {v2}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->isFingerprintIconVisible()Z

    move-result v2

    if-eqz v2, :cond_30

    move v2, v3

    goto :goto_32

    :cond_30
    const/16 v2, 0x8

    .line 819
    :goto_32
    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->setVisibility(I)V

    .line 821
    iget-boolean v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$9;->val$visible:Z

    if-eqz v1, :cond_4b

    .line 822
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$9;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$2100(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Lcom/android/server/biometrics/flymefingerprint/HBMController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/flymefingerprint/HBMController;->activeScreen()V

    .line 823
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$9;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$1800(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->updateFingerprintView(Z)V

    .line 825
    :cond_4b
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$9;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    iget-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$9;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-virtual {v2}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->isFingerprintIconVisible()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$2600(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;Z)V

    .line 827
    :cond_56
    monitor-exit v0

    .line 828
    return-void

    .line 827
    :catchall_58
    move-exception v1

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_7 .. :try_end_5a} :catchall_58

    throw v1
.end method
