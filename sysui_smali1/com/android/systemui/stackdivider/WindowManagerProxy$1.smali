.class Lcom/android/systemui/stackdivider/WindowManagerProxy$1;
.super Ljava/lang/Object;
.source "WindowManagerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/WindowManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 66
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->access$000(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v0

    monitor-enter v0

    .line 67
    :try_start_7
    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->access$100(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->access$000(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 68
    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->access$300(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->access$200(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 69
    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->access$500(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->access$400(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 70
    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->access$700(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->access$600(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 71
    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->access$900(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->access$800(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 72
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_7 .. :try_end_53} :catchall_ce

    .line 74
    :try_start_53
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v3

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    .line 75
    invoke-static {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->access$100(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v4

    .line 76
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->access$300(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6c

    move-object v5, v1

    goto :goto_73

    :cond_6c
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->access$300(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v0

    move-object v5, v0

    .line 77
    :goto_73
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->access$500(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_81

    move-object v6, v1

    goto :goto_88

    :cond_81
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->access$500(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v0

    move-object v6, v0

    .line 78
    :goto_88
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->access$700(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_96

    move-object v7, v1

    goto :goto_9d

    :cond_96
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->access$700(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v0

    move-object v7, v0

    .line 79
    :goto_9d
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->access$900(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ab

    move-object v8, v1

    goto :goto_b2

    :cond_ab
    iget-object p0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->access$900(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object p0

    move-object v8, p0

    .line 75
    :goto_b2
    invoke-interface/range {v3 .. v8}, Landroid/app/IActivityTaskManager;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_b5
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_b5} :catch_b6

    goto :goto_cd

    :catch_b6
    move-exception p0

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to resize stack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WindowManagerProxy"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_cd
    return-void

    :catchall_ce
    move-exception p0

    .line 72
    :try_start_cf
    monitor-exit v0
    :try_end_d0
    .catchall {:try_start_cf .. :try_end_d0} :catchall_ce

    throw p0
.end method
