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

    .line 5293
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$12;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .registers 8

    .line 5298
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$12;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter p1

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 5299
    iget-object p2, p0, Lcom/android/server/am/ActivityManagerService$12;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object p2, p2, Lcom/android/server/am/OomAdjuster;->mAppCompact:Lcom/android/server/am/AppCompactor;

    invoke-virtual {p2}, Lcom/android/server/am/AppCompactor;->compactAllSystem()V

    .line 5300
    iget-object p2, p0, Lcom/android/server/am/ActivityManagerService$12;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p3

    const/4 p5, 0x1

    const/4 p6, 0x0

    invoke-virtual {p2, p3, p4, p5, p6}, Lcom/android/server/am/ActivityManagerService;->requestPssAllProcsLocked(JZZ)V

    .line 5301
    monitor-exit p1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 5302
    return-void

    .line 5301
    :catchall_1f
    move-exception p2

    :try_start_20
    monitor-exit p1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p2
.end method
