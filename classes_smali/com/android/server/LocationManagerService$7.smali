.class Lcom/android/server/LocationManagerService$7;
.super Lcom/android/internal/content/PackageMonitor;
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

    .line 424
    iput-object p1, p0, Lcom/android/server/LocationManagerService$7;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageDisappeared(Ljava/lang/String;I)V
    .registers 4

    .line 427
    iget-object p2, p0, Lcom/android/server/LocationManagerService$7;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {p2}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 428
    :try_start_7
    iget-object v0, p0, Lcom/android/server/LocationManagerService$7;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/LocationManagerService;->access$800(Lcom/android/server/LocationManagerService;Ljava/lang/String;)V

    .line 429
    monitor-exit p2

    .line 430
    return-void

    .line 429
    :catchall_e
    move-exception p1

    monitor-exit p2
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw p1
.end method
