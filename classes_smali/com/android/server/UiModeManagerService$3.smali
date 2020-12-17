.class Lcom/android/server/UiModeManagerService$3;
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
    .param p1, "this$0"  # Lcom/android/server/UiModeManagerService;

    .line 165
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$3;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 168
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const v3, -0x5bb23923

    if-eq v1, v3, :cond_f

    :cond_e
    goto :goto_19

    :cond_f
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v2

    goto :goto_1a

    :goto_19
    const/4 v0, -0x1

    :goto_1a
    if-eqz v0, :cond_1d

    goto :goto_2e

    .line 170
    :cond_1d
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$3;->this$0:Lcom/android/server/UiModeManagerService;

    const-string/jumbo v1, "plugged"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v1, 0x1

    goto :goto_2b

    :cond_2a
    move v1, v2

    :goto_2b
    invoke-static {v0, v1}, Lcom/android/server/UiModeManagerService;->access$202(Lcom/android/server/UiModeManagerService;Z)Z

    .line 173
    :goto_2e
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$3;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 174
    :try_start_33
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$3;->this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean v1, v1, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v1, :cond_3e

    .line 175
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$3;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v1, v2, v2}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 177
    :cond_3e
    monitor-exit v0

    .line 178
    return-void

    .line 177
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_33 .. :try_end_42} :catchall_40

    throw v1
.end method
