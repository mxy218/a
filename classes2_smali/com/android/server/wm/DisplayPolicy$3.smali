.class Lcom/android/server/wm/DisplayPolicy$3;
.super Ljava/lang/Object;
.source "DisplayPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/DisplayPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayPolicy;)V
    .registers 2

    .line 1401
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$3;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1404
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$3;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$1000(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1405
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$3;->this$0:Lcom/android/server/wm/DisplayPolicy;

    const/4 v2, -0x3

    invoke-static {v1, v2}, Lcom/android/server/wm/DisplayPolicy;->access$1672(Lcom/android/server/wm/DisplayPolicy;I)I

    .line 1406
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$3;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->access$1100(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->reevaluateStatusBarVisibility()V

    .line 1407
    monitor-exit v0

    .line 1408
    return-void

    .line 1407
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v1
.end method
