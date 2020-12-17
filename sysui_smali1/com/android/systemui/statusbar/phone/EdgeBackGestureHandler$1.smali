.class Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$1;
.super Landroid/view/IPinnedStackListener$Stub;
.source "EdgeBackGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)V
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$1;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-direct {p0}, Landroid/view/IPinnedStackListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionsChanged(Landroid/content/pm/ParceledListSlice;)V
    .registers 2

    return-void
.end method

.method public onImeVisibilityChanged(ZI)V
    .registers 5

    .line 94
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isCtsRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 96
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$1;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$002(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;I)I

    return-void

    .line 102
    :cond_11
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$1;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    if-eqz p1, :cond_16

    goto :goto_17

    :cond_16
    move p2, v1

    :goto_17
    invoke-static {p0, p2}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$002(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;I)I

    return-void
.end method

.method public onListenerRegistered(Landroid/view/IPinnedStackController;)V
    .registers 2

    return-void
.end method

.method public onMinimizedStateChanged(Z)V
    .registers 2

    return-void
.end method

.method public onMovementBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZI)V
    .registers 7

    return-void
.end method

.method public onShelfVisibilityChanged(ZI)V
    .registers 3

    return-void
.end method
