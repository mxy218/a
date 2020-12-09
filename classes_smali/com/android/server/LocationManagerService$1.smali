.class Lcom/android/server/LocationManagerService$1;
.super Landroid/app/AppOpsManager$OnOpChangedInternalListener;
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

    .line 323
    iput-object p1, p0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Landroid/app/AppOpsManager$OnOpChangedInternalListener;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onOpChanged$0$LocationManagerService$1()V
    .registers 3

    .line 328
    iget-object v0, p0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 329
    :try_start_7
    iget-object v1, p0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$200(Lcom/android/server/LocationManagerService;)V

    .line 330
    monitor-exit v0

    .line 331
    return-void

    .line 330
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public onOpChanged(ILjava/lang/String;)V
    .registers 3

    .line 327
    iget-object p1, p0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {p1}, Lcom/android/server/LocationManagerService;->access$000(Lcom/android/server/LocationManagerService;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/server/-$$Lambda$LocationManagerService$1$HAAnoF9DI9FvCHK_geH89--2z2I;

    invoke-direct {p2, p0}, Lcom/android/server/-$$Lambda$LocationManagerService$1$HAAnoF9DI9FvCHK_geH89--2z2I;-><init>(Lcom/android/server/LocationManagerService$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 332
    return-void
.end method
