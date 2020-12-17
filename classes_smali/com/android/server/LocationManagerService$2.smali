.class Lcom/android/server/LocationManagerService$2;
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

    .line 442
    iput-object p1, p0, Lcom/android/server/LocationManagerService$2;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5
    .param p1, "selfChange"  # Z

    .line 445
    iget-object v0, p0, Lcom/android/server/LocationManagerService$2;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 446
    :try_start_7
    iget-object v1, p0, Lcom/android/server/LocationManagerService$2;->this$0:Lcom/android/server/LocationManagerService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/LocationManagerService;->access$300(Lcom/android/server/LocationManagerService;Z)V

    .line 447
    monitor-exit v0

    .line 448
    return-void

    .line 447
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method
