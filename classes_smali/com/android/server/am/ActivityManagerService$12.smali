.class Lcom/android/server/am/ActivityManagerService$12;
.super Landroid/content/IIntentReceiver$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->finishBooting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/am/ActivityManagerService;

    .line 5625
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$12;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .registers 14
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "resultCode"  # I
    .param p3, "data"  # Ljava/lang/String;
    .param p4, "extras"  # Landroid/os/Bundle;
    .param p5, "ordered"  # Z
    .param p6, "sticky"  # Z
    .param p7, "sendingUser"  # I

    .line 5630
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$12;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 5631
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$12;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v1, v1, Lcom/android/server/am/OomAdjuster;->mAppCompact:Lcom/android/server/am/AppCompactor;

    invoke-virtual {v1}, Lcom/android/server/am/AppCompactor;->compactAllSystem()V

    .line 5632
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$12;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->requestPssAllProcsLocked(JZZ)V

    .line 5633
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 5634
    return-void

    .line 5633
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
