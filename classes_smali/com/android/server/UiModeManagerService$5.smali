.class Lcom/android/server/UiModeManagerService$5;
.super Landroid/content/BroadcastReceiver;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .registers 2

    .line 230
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 233
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object p1, p1, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 235
    :try_start_5
    iget-object p2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p2}, Lcom/android/server/UiModeManagerService;->access$600(Lcom/android/server/UiModeManagerService;)V

    .line 236
    iget-object p2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 237
    monitor-exit p1

    .line 238
    return-void

    .line 237
    :catchall_12
    move-exception p2

    monitor-exit p1
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw p2
.end method
