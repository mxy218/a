.class Lcom/android/server/twilight/TwilightService$1;
.super Ljava/lang/Object;
.source "TwilightService.java"

# interfaces
.implements Lcom/android/server/twilight/TwilightManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/twilight/TwilightService;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/twilight/TwilightService;


# direct methods
.method constructor <init>(Lcom/android/server/twilight/TwilightService;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLastTwilightState()Lcom/android/server/twilight/TwilightState;
    .registers 3

    .line 109
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v0}, Lcom/android/server/twilight/TwilightService;->access$000(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    .line 110
    :try_start_7
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v1, v1, Lcom/android/server/twilight/TwilightService;->mLastTwilightState:Lcom/android/server/twilight/TwilightState;

    monitor-exit v0

    return-object v1

    .line 111
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V
    .registers 6

    .line 85
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v0}, Lcom/android/server/twilight/TwilightService;->access$000(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    .line 86
    :try_start_7
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v1}, Lcom/android/server/twilight/TwilightService;->access$000(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    .line 87
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v2}, Lcom/android/server/twilight/TwilightService;->access$000(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    if-eqz v1, :cond_32

    iget-object p1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {p1}, Lcom/android/server/twilight/TwilightService;->access$000(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_32

    .line 90
    iget-object p1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {p1}, Lcom/android/server/twilight/TwilightService;->access$100(Lcom/android/server/twilight/TwilightService;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 92
    :cond_32
    monitor-exit v0

    .line 93
    return-void

    .line 92
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public unregisterListener(Lcom/android/server/twilight/TwilightListener;)V
    .registers 5

    .line 97
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v0}, Lcom/android/server/twilight/TwilightService;->access$000(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    .line 98
    :try_start_7
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v1}, Lcom/android/server/twilight/TwilightService;->access$000(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    .line 99
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v2}, Lcom/android/server/twilight/TwilightService;->access$000(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    if-nez v1, :cond_32

    iget-object p1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {p1}, Lcom/android/server/twilight/TwilightService;->access$000(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_32

    .line 102
    iget-object p1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {p1}, Lcom/android/server/twilight/TwilightService;->access$100(Lcom/android/server/twilight/TwilightService;)Landroid/os/Handler;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 104
    :cond_32
    monitor-exit v0

    .line 105
    return-void

    .line 104
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw p1
.end method
