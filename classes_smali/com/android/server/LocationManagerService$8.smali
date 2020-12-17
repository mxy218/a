.class Lcom/android/server/LocationManagerService$8;
.super Landroid/content/BroadcastReceiver;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LocationManagerService;->initializeLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/LocationManagerService;

    .line 531
    iput-object p1, p0, Lcom/android/server/LocationManagerService$8;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 534
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 535
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 536
    return-void

    .line 538
    :cond_7
    iget-object v1, p0, Lcom/android/server/LocationManagerService$8;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 539
    const/4 v2, -0x1

    :try_start_f
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v3, :sswitch_data_76

    :cond_1b
    goto :goto_4d

    :sswitch_1c
    const-string v3, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    move v2, v7

    goto :goto_4d

    :sswitch_26
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    move v2, v4

    goto :goto_4d

    :sswitch_30
    const-string v3, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    move v2, v8

    goto :goto_4d

    :sswitch_3a
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    move v2, v6

    goto :goto_4d

    :sswitch_44
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    move v2, v5

    :goto_4d
    if-eqz v2, :cond_64

    if-eq v2, v8, :cond_5e

    if-eq v2, v7, :cond_5e

    if-eq v2, v6, :cond_58

    if-eq v2, v5, :cond_58

    goto :goto_70

    .line 549
    :cond_58
    iget-object v2, p0, Lcom/android/server/LocationManagerService$8;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v2}, Lcom/android/server/LocationManagerService;->access$1200(Lcom/android/server/LocationManagerService;)V

    goto :goto_70

    .line 545
    :cond_5e
    iget-object v2, p0, Lcom/android/server/LocationManagerService$8;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v2}, Lcom/android/server/LocationManagerService;->access$1100(Lcom/android/server/LocationManagerService;)V

    .line 546
    goto :goto_70

    .line 541
    :cond_64
    iget-object v2, p0, Lcom/android/server/LocationManagerService$8;->this$0:Lcom/android/server/LocationManagerService;

    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/LocationManagerService;->access$1000(Lcom/android/server/LocationManagerService;I)V

    .line 542
    nop

    .line 552
    :goto_70
    monitor-exit v1

    .line 553
    return-void

    .line 552
    :catchall_72
    move-exception v2

    monitor-exit v1
    :try_end_74
    .catchall {:try_start_f .. :try_end_74} :catchall_72

    throw v2

    nop

    :sswitch_data_76
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_44
        -0x56ac2893 -> :sswitch_3a
        -0x16fbb1bb -> :sswitch_30
        0x392cb822 -> :sswitch_26
        0x3eac4465 -> :sswitch_1c
    .end sparse-switch
.end method
