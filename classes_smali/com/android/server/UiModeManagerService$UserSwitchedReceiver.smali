.class final Lcom/android/server/UiModeManagerService$UserSwitchedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserSwitchedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .registers 2

    .line 976
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$UserSwitchedReceiver;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/UiModeManagerService;Lcom/android/server/UiModeManagerService$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/UiModeManagerService;
    .param p2, "x1"  # Lcom/android/server/UiModeManagerService$1;

    .line 976
    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService$UserSwitchedReceiver;-><init>(Lcom/android/server/UiModeManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 979
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$UserSwitchedReceiver;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 980
    :try_start_5
    const-string v1, "android.intent.extra.user_handle"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 983
    .local v1, "currentId":I
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$UserSwitchedReceiver;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v3, p1, v4, v1}, Lcom/android/server/UiModeManagerService;->access$900(Lcom/android/server/UiModeManagerService;Landroid/content/Context;Landroid/content/res/Resources;I)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 984
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$UserSwitchedReceiver;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v3, v2, v2}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 986
    .end local v1  # "currentId":I
    :cond_1d
    monitor-exit v0

    .line 987
    return-void

    .line 986
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_1f

    throw v1
.end method
