.class Lcom/android/server/biometrics/BiometricServiceBase$1;
.super Ljava/lang/Object;
.source "BiometricServiceBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/BiometricServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/BiometricServiceBase;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/BiometricServiceBase;)V
    .registers 2

    .line 503
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase$1;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 507
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$1;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricServiceBase;->access$600(Lcom/android/server/biometrics/BiometricServiceBase;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    instance-of v0, v0, Lcom/android/server/biometrics/AuthenticationClient;

    if-nez v0, :cond_b

    .line 508
    return-void

    .line 510
    :cond_b
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$1;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricServiceBase;->access$600(Lcom/android/server/biometrics/BiometricServiceBase;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v0

    .line 511
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase$1;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-virtual {v1, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->isKeyguard(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 512
    return-void

    .line 514
    :cond_1e
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase$1;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    .line 515
    invoke-static {v1}, Lcom/android/server/biometrics/BiometricServiceBase;->access$300(Lcom/android/server/biometrics/BiometricServiceBase;)Landroid/app/IActivityTaskManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/app/IActivityTaskManager;->getTasks(I)Ljava/util/List;

    move-result-object v1

    .line 516
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_79

    .line 517
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 518
    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_79

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricServiceBase$1;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    .line 519
    invoke-static {v3}, Lcom/android/server/biometrics/BiometricServiceBase;->access$600(Lcom/android/server/biometrics/BiometricServiceBase;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/biometrics/ClientMonitor;->isAlreadyDone()Z

    move-result v3

    if-nez v3, :cond_79

    .line 520
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricServiceBase$1;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-virtual {v3}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stopping background authentication, top: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " currentClient: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$1;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricServiceBase;->access$600(Lcom/android/server/biometrics/BiometricServiceBase;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/biometrics/ClientMonitor;->stop(Z)I
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_79} :catch_7a

    .line 527
    :cond_79
    goto :goto_86

    .line 525
    :catch_7a
    move-exception v0

    .line 526
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase$1;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to get running tasks"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 528
    :goto_86
    return-void
.end method
