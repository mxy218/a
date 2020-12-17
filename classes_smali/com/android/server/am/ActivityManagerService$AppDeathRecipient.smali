.class final Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppDeathRecipient"
.end annotation


# instance fields
.field final mApp:Lcom/android/server/am/ProcessRecord;

.field final mAppThread:Landroid/app/IApplicationThread;

.field final mPid:I

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;ILandroid/app/IApplicationThread;)V
    .registers 6
    .param p2, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p3, "pid"  # I
    .param p4, "thread"  # Landroid/app/IApplicationThread;

    .line 1572
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1573
    sget-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-eqz p1, :cond_2b

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "New death recipient "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for thread "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1575
    invoke-interface {p4}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1573
    const-string v0, "ActivityManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    :cond_2b
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 1577
    iput p3, p0, Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;->mPid:I

    .line 1578
    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;->mAppThread:Landroid/app/IApplicationThread;

    .line 1579
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 7

    .line 1583
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Death received in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;->mAppThread:Landroid/app/IApplicationThread;

    .line 1585
    invoke-interface {v1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1583
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    :cond_28
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;->mPid:I

    invoke-static {v0}, Lcom/android/server/am/AmsInjector;->clearProcessWindow(I)V

    .line 1590
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_30
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1591
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v3, p0, Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;->mPid:I

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;->mAppThread:Landroid/app/IApplicationThread;

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;ILandroid/app/IApplicationThread;Z)V

    .line 1592
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_30 .. :try_end_40} :catchall_44

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1593
    return-void

    .line 1592
    :catchall_44
    move-exception v1

    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
