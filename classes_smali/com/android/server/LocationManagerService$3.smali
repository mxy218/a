.class Lcom/android/server/LocationManagerService$3;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/server/LocationManagerService;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/LocationManagerService;
    .param p2, "x0"  # Landroid/os/Handler;

    .line 456
    iput-object p1, p0, Lcom/android/server/LocationManagerService$3;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .param p1, "selfChange"  # Z

    .line 459
    iget-object v0, p0, Lcom/android/server/LocationManagerService$3;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 460
    :try_start_7
    iget-object v1, p0, Lcom/android/server/LocationManagerService$3;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$400(Lcom/android/server/LocationManagerService;)V

    .line 462
    iget-object v1, p0, Lcom/android/server/LocationManagerService$3;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$500(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocDataCollection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/LocationManagerService$LocDataCollection;->eventLocMode()V

    .line 464
    monitor-exit v0

    .line 465
    return-void

    .line 464
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v1
.end method
