.class Lcom/android/systemui/stackdivider/WindowManagerProxy$5;
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

    .line 120
    iput-object p1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$5;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$5;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->access$000(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v0

    monitor-enter v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_28

    .line 125
    :try_start_7
    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$5;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->access$100(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$5;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->access$1300(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 126
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_25

    .line 127
    :try_start_17
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$5;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    .line 128
    invoke-static {p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->access$100(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object p0

    .line 127
    invoke-interface {v0, p0}, Landroid/view/IWindowManager;->setDockedStackDividerTouchRegion(Landroid/graphics/Rect;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_24} :catch_28

    goto :goto_3f

    :catchall_25
    move-exception p0

    .line 126
    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    :try_start_27
    throw p0
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_28} :catch_28

    :catch_28
    move-exception p0

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to set touchable region: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WindowManagerProxy"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3f
    return-void
.end method
