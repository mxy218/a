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
    .registers 5

    .line 1490
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1494
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 1495
    iput p3, p0, Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;->mPid:I

    .line 1496
    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;->mAppThread:Landroid/app/IApplicationThread;

    .line 1497
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 7

    .line 1504
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1505
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v3, p0, Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;->mPid:I

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;->mAppThread:Landroid/app/IApplicationThread;

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;ILandroid/app/IApplicationThread;Z)V

    .line 1506
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_17

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1507
    return-void

    .line 1506
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
