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

    .line 440
    iput-object p1, p0, Lcom/android/server/LocationManagerService$8;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    .line 443
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 444
    if-nez p1, :cond_7

    .line 445
    return-void

    .line 447
    :cond_7
    iget-object v0, p0, Lcom/android/server/LocationManagerService$8;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 448
    const/4 v1, -0x1

    :try_start_f
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v2, :sswitch_data_76

    :cond_1b
    goto :goto_4d

    :sswitch_1c
    const-string v2, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    move v1, v6

    goto :goto_4d

    :sswitch_26
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    move v1, v3

    goto :goto_4d

    :sswitch_30
    const-string v2, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    move v1, v7

    goto :goto_4d

    :sswitch_3a
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    move v1, v5

    goto :goto_4d

    :sswitch_44
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    move v1, v4

    :goto_4d
    if-eqz v1, :cond_64

    if-eq v1, v7, :cond_5e

    if-eq v1, v6, :cond_5e

    if-eq v1, v5, :cond_58

    if-eq v1, v4, :cond_58

    goto :goto_70

    .line 458
    :cond_58
    iget-object p1, p0, Lcom/android/server/LocationManagerService$8;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {p1}, Lcom/android/server/LocationManagerService;->access$1100(Lcom/android/server/LocationManagerService;)V

    goto :goto_70

    .line 454
    :cond_5e
    iget-object p1, p0, Lcom/android/server/LocationManagerService$8;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {p1}, Lcom/android/server/LocationManagerService;->access$1000(Lcom/android/server/LocationManagerService;)V

    .line 455
    goto :goto_70

    .line 450
    :cond_64
    iget-object p1, p0, Lcom/android/server/LocationManagerService$8;->this$0:Lcom/android/server/LocationManagerService;

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/LocationManagerService;->access$900(Lcom/android/server/LocationManagerService;I)V

    .line 451
    nop

    .line 461
    :goto_70
    monitor-exit v0

    .line 462
    return-void

    .line 461
    :catchall_72
    move-exception p1

    monitor-exit v0
    :try_end_74
    .catchall {:try_start_f .. :try_end_74} :catchall_72

    throw p1

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
