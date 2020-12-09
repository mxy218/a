.class final Lcom/android/server/power/PowerManagerService$BatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BatteryReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2

    .line 4092
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 4095
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 4096
    :try_start_7
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p2}, Lcom/android/server/power/PowerManagerService;->access$2500(Lcom/android/server/power/PowerManagerService;)V

    .line 4097
    monitor-exit p1

    .line 4098
    return-void

    .line 4097
    :catchall_e
    move-exception p2

    monitor-exit p1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw p2
.end method
