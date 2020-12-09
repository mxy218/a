.class final Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"

# interfaces
.implements Lcom/android/server/display/DisplayAdapter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayAdapterListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .registers 2

    .line 1663
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$1;)V
    .registers 3

    .line 1663
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    return-void
.end method


# virtual methods
.method public onDisplayDeviceEvent(Lcom/android/server/display/DisplayDevice;I)V
    .registers 4

    .line 1666
    const/4 v0, 0x1

    if-eq p2, v0, :cond_16

    const/4 v0, 0x2

    if-eq p2, v0, :cond_10

    const/4 v0, 0x3

    if-eq p2, v0, :cond_a

    goto :goto_1c

    .line 1676
    :cond_a
    iget-object p2, p0, Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p2, p1}, Lcom/android/server/display/DisplayManagerService;->access$1300(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayDevice;)V

    goto :goto_1c

    .line 1672
    :cond_10
    iget-object p2, p0, Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p2, p1}, Lcom/android/server/display/DisplayManagerService;->access$1200(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayDevice;)V

    .line 1673
    goto :goto_1c

    .line 1668
    :cond_16
    iget-object p2, p0, Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p2, p1}, Lcom/android/server/display/DisplayManagerService;->access$1100(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayDevice;)V

    .line 1669
    nop

    .line 1679
    :goto_1c
    return-void
.end method

.method public onTraversalRequested()V
    .registers 4

    .line 1683
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$600(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 1684
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;->this$0:Lcom/android/server/display/DisplayManagerService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/display/DisplayManagerService;->access$1400(Lcom/android/server/display/DisplayManagerService;Z)V

    .line 1685
    monitor-exit v0

    .line 1686
    return-void

    .line 1685
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method
