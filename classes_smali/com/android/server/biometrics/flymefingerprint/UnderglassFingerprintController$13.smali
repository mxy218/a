.class Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$13;
.super Ljava/lang/Object;
.source "UnderglassFingerprintController.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;
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

    .line 924
    iput-object p1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$13;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2
    .param p1, "displayId"  # I

    .line 927
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 8
    .param p1, "displayId"  # I

    .line 935
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$13;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$1400(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 936
    :try_start_7
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$13;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$2900(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)I

    move-result v1

    .line 937
    .local v1, "state":I
    iget-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$13;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v2}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$3000(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    if-ne v2, p1, :cond_8c

    iget-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$13;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v2}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$400(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v2

    instance-of v2, v2, Lcom/android/server/biometrics/AuthenticationClient;

    if-eqz v2, :cond_8c

    .line 938
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "display state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_58

    .line 941
    iget-object v4, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$13;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v4, v3, v2}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$1700(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;IZ)V

    .line 942
    iget-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$13;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-virtual {v2, v4, v3}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->animateFODIcon(FI)V

    .line 944
    iget-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$13;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v2, v3}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$3100(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;Z)V

    .line 946
    iget-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$13;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v2}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$2100(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Lcom/android/server/biometrics/flymefingerprint/HBMController;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/biometrics/flymefingerprint/HBMController;->setScreenOn(Z)V

    goto :goto_8c

    .line 948
    :cond_58
    const/4 v4, 0x2

    if-ne v1, v4, :cond_8c

    .line 949
    iget-object v4, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$13;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v4}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$2100(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Lcom/android/server/biometrics/flymefingerprint/HBMController;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/biometrics/flymefingerprint/HBMController;->setScreenOn(Z)V

    .line 951
    iget-object v4, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$13;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v4}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$1500(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Z

    move-result v4

    if-nez v4, :cond_77

    .line 952
    iget-object v4, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$13;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    iget-object v5, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$13;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v5}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$1600(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)I

    move-result v5

    invoke-static {v4, v5, v2}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$1700(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;IZ)V

    .line 955
    :cond_77
    iget-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$13;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v2}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$1500(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Z

    move-result v2

    if-eqz v2, :cond_8c

    iget-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$13;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v2}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$3200(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Z

    move-result v2

    if-nez v2, :cond_8c

    .line 956
    iget-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$13;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v2, v3}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$1502(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;Z)Z

    .line 960
    .end local v1  # "state":I
    :cond_8c
    :goto_8c
    monitor-exit v0

    .line 961
    return-void

    .line 960
    :catchall_8e
    move-exception v1

    monitor-exit v0
    :try_end_90
    .catchall {:try_start_7 .. :try_end_90} :catchall_8e

    throw v1
.end method

.method public onDisplayRemoved(I)V
    .registers 2
    .param p1, "displayId"  # I

    .line 931
    return-void
.end method
