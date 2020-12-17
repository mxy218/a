.class Lcom/android/systemui/bubbles/BubbleController$BubblesImeListener;
.super Landroid/view/IPinnedStackListener$Stub;
.source "BubbleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bubbles/BubbleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BubblesImeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bubbles/BubbleController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/bubbles/BubbleController;)V
    .registers 2

    .line 999
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleController$BubblesImeListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-direct {p0}, Landroid/view/IPinnedStackListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/bubbles/BubbleController$1;)V
    .registers 3

    .line 999
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleController$BubblesImeListener;-><init>(Lcom/android/systemui/bubbles/BubbleController;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onImeVisibilityChanged$0$BubbleController$BubblesImeListener(ZI)V
    .registers 3

    .line 1013
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController$BubblesImeListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleController;->access$000(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleStackView;->onImeVisibilityChanged(ZI)V

    return-void
.end method

.method public onActionsChanged(Landroid/content/pm/ParceledListSlice;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onImeVisibilityChanged(ZI)V
    .registers 5

    .line 1012
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$BubblesImeListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$000(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$BubblesImeListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$000(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleStackView;->getBubbleCount()I

    move-result v0

    if-lez v0, :cond_22

    .line 1013
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$BubblesImeListener;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$000(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$BubblesImeListener$k3Ccv-01hiK8jFFaKEuMmcHqId4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$BubblesImeListener$k3Ccv-01hiK8jFFaKEuMmcHqId4;-><init>(Lcom/android/systemui/bubbles/BubbleController$BubblesImeListener;ZI)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_22
    return-void
.end method

.method public onListenerRegistered(Landroid/view/IPinnedStackController;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onMinimizedStateChanged(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onMovementBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZI)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onShelfVisibilityChanged(ZI)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
