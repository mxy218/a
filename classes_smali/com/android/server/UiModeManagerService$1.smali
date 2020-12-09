.class Lcom/android/server/UiModeManagerService$1;
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

    .line 167
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 170
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$1;->getResultCode()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    .line 175
    return-void

    .line 178
    :cond_8
    const/4 p1, 0x0

    const-string v0, "enableFlags"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 179
    const-string v1, "disableFlags"

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 180
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v1, v1, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 181
    :try_start_1a
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2, v0, p1}, Lcom/android/server/UiModeManagerService;->access$000(Lcom/android/server/UiModeManagerService;Ljava/lang/String;II)V

    .line 182
    monitor-exit v1

    .line 183
    return-void

    .line 182
    :catchall_25
    move-exception p1

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_25

    throw p1
.end method
