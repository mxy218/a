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

    .line 358
    iput-object p1, p0, Lcom/android/server/LocationManagerService$2;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4

    .line 361
    iget-object p1, p0, Lcom/android/server/LocationManagerService$2;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {p1}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 362
    :try_start_7
    iget-object v0, p0, Lcom/android/server/LocationManagerService$2;->this$0:Lcom/android/server/LocationManagerService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/LocationManagerService;->access$300(Lcom/android/server/LocationManagerService;Z)V

    .line 363
    monitor-exit p1

    .line 364
    return-void

    .line 363
    :catchall_f
    move-exception v0

    monitor-exit p1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v0
.end method
