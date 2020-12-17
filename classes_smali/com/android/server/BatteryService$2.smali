.class Lcom/android/server/BatteryService$2;
.super Landroid/database/ContentObserver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService;->onBootPhase(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/BatteryService;
    .param p2, "x0"  # Landroid/os/Handler;

    .line 400
    iput-object p1, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .param p1, "selfChange"  # Z

    .line 403
    iget-object v0, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$000(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 404
    :try_start_7
    iget-object v1, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;)V

    .line 405
    monitor-exit v0

    .line 406
    return-void

    .line 405
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method
