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

    .line 195
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$3;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 198
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const v2, -0x5bb23923

    if-eq v0, v2, :cond_f

    :cond_e
    goto :goto_19

    :cond_f
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    move p1, v1

    goto :goto_1a

    :goto_19
    const/4 p1, -0x1

    :goto_1a
    if-eqz p1, :cond_1d

    goto :goto_2e

    .line 200
    :cond_1d
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$3;->this$0:Lcom/android/server/UiModeManagerService;

    const-string/jumbo v0, "plugged"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_2a

    const/4 p2, 0x1

    goto :goto_2b

    :cond_2a
    move p2, v1

    :goto_2b
    invoke-static {p1, p2}, Lcom/android/server/UiModeManagerService;->access$202(Lcom/android/server/UiModeManagerService;Z)Z

    .line 203
    :goto_2e
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$3;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object p1, p1, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 204
    :try_start_33
    iget-object p2, p0, Lcom/android/server/UiModeManagerService$3;->this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean p2, p2, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz p2, :cond_3e

    .line 205
    iget-object p2, p0, Lcom/android/server/UiModeManagerService$3;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {p2, v1, v1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 207
    :cond_3e
    monitor-exit p1

    .line 208
    return-void

    .line 207
    :catchall_40
    move-exception p2

    monitor-exit p1
    :try_end_42
    .catchall {:try_start_33 .. :try_end_42} :catchall_40

    throw p2
.end method
