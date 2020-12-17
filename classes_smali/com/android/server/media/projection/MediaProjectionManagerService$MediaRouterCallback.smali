.class Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "MediaProjectionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/projection/MediaProjectionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaRouterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/media/projection/MediaProjectionManagerService;)V
    .registers 2

    .line 547
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/media/projection/MediaProjectionManagerService;Lcom/android/server/media/projection/MediaProjectionManagerService$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/media/projection/MediaProjectionManagerService;
    .param p2, "x1"  # Lcom/android/server/media/projection/MediaProjectionManagerService$1;

    .line 547
    invoke-direct {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;)V

    return-void
.end method


# virtual methods
.method public onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .registers 6
    .param p1, "router"  # Landroid/media/MediaRouter;
    .param p2, "type"  # I
    .param p3, "info"  # Landroid/media/MediaRouter$RouteInfo;

    .line 550
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$1200(Lcom/android/server/media/projection/MediaProjectionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 551
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_21

    .line 552
    :try_start_b
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v1, p3}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$1802(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/MediaRouter$RouteInfo;)Landroid/media/MediaRouter$RouteInfo;

    .line 553
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$900(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 554
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$900(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->stop()V

    .line 557
    :cond_21
    monitor-exit v0

    .line 558
    return-void

    .line 557
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_23

    throw v1
.end method

.method public onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .registers 6
    .param p1, "route"  # Landroid/media/MediaRouter;
    .param p2, "type"  # I
    .param p3, "info"  # Landroid/media/MediaRouter$RouteInfo;

    .line 562
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$1800(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    if-ne v0, p3, :cond_e

    .line 563
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$1802(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/MediaRouter$RouteInfo;)Landroid/media/MediaRouter$RouteInfo;

    .line 565
    :cond_e
    return-void
.end method
