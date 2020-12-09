.class final Lcom/android/server/power/PowerManagerService$DreamReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DreamReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2

    .line 4101
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$DreamReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V
    .registers 3

    .line 4101
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$DreamReceiver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 4104
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$DreamReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 4105
    :try_start_7
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService$DreamReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p2}, Lcom/android/server/power/PowerManagerService;->access$2600(Lcom/android/server/power/PowerManagerService;)V

    .line 4106
    monitor-exit p1

    .line 4107
    return-void

    .line 4106
    :catchall_e
    move-exception p2

    monitor-exit p1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw p2
.end method
