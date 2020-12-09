.class Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;
.super Ljava/lang/Object;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PendingActivityLaunch"
.end annotation


# instance fields
.field final callerApp:Lcom/android/server/wm/WindowProcessController;

.field final r:Lcom/android/server/wm/ActivityRecord;

.field final sourceRecord:Lcom/android/server/wm/ActivityRecord;

.field final stack:Lcom/android/server/wm/ActivityStack;

.field final startFlags:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityStack;Lcom/android/server/wm/WindowProcessController;)V
    .registers 6

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    iput-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/wm/ActivityRecord;

    .line 417
    iput-object p2, p0, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->sourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 418
    iput p3, p0, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->startFlags:I

    .line 419
    iput-object p4, p0, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->stack:Lcom/android/server/wm/ActivityStack;

    .line 420
    iput-object p5, p0, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->callerApp:Lcom/android/server/wm/WindowProcessController;

    .line 421
    return-void
.end method


# virtual methods
.method sendErrorResult(Ljava/lang/String;)V
    .registers 4

    .line 425
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->callerApp:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->callerApp:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 426
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->callerApp:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IApplicationThread;->scheduleCrash(Ljava/lang/String;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    .line 431
    :cond_15
    goto :goto_2f

    .line 428
    :catch_16
    move-exception p1

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception scheduling crash of failed activity launcher sourceRecord="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;->sourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 432
    :goto_2f
    return-void
.end method
