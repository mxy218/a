.class final Lcom/android/server/power/PowerManagerService$DockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DockReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2

    .line 4120
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V
    .registers 3

    .line 4120
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$DockReceiver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 4123
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 4124
    :try_start_7
    const-string v0, "android.intent.extra.DOCK_STATE"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 4126
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$2800(Lcom/android/server/power/PowerManagerService;)I

    move-result v0

    if-eq v0, p2, :cond_27

    .line 4127
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p2}, Lcom/android/server/power/PowerManagerService;->access$2802(Lcom/android/server/power/PowerManagerService;I)I

    .line 4128
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v0, 0x400

    invoke-static {p2, v0}, Lcom/android/server/power/PowerManagerService;->access$1576(Lcom/android/server/power/PowerManagerService;I)I

    .line 4129
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService$DockReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p2}, Lcom/android/server/power/PowerManagerService;->access$1600(Lcom/android/server/power/PowerManagerService;)V

    .line 4131
    :cond_27
    monitor-exit p1

    .line 4132
    return-void

    .line 4131
    :catchall_29
    move-exception p2

    monitor-exit p1
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_29

    throw p2
.end method
