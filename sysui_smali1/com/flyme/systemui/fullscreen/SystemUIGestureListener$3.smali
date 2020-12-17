.class Lcom/flyme/systemui/fullscreen/SystemUIGestureListener$3;
.super Landroid/view/ISystemGestureExclusionListener$Stub;
.source "SystemUIGestureListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;)V
    .registers 2

    .line 401
    iput-object p1, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener$3;->this$0:Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;

    invoke-direct {p0}, Landroid/view/ISystemGestureExclusionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onSystemGestureExclusionChanged$0$SystemUIGestureListener$3(Landroid/graphics/Region;)V
    .registers 2

    .line 406
    iget-object p0, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener$3;->this$0:Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;

    invoke-static {p0}, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->access$400(Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;)Landroid/graphics/Region;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    return-void
.end method

.method public onSystemGestureExclusionChanged(ILandroid/graphics/Region;)V
    .registers 4

    .line 405
    iget-object v0, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener$3;->this$0:Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;

    invoke-static {v0}, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->access$200(Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;)I

    move-result v0

    if-ne p1, v0, :cond_16

    .line 406
    iget-object p1, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener$3;->this$0:Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;

    invoke-static {p1}, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->access$300(Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/flyme/systemui/fullscreen/-$$Lambda$SystemUIGestureListener$3$xXfVqGLpsSD5WzIyZBfIM2Qroh4;

    invoke-direct {v0, p0, p2}, Lcom/flyme/systemui/fullscreen/-$$Lambda$SystemUIGestureListener$3$xXfVqGLpsSD5WzIyZBfIM2Qroh4;-><init>(Lcom/flyme/systemui/fullscreen/SystemUIGestureListener$3;Landroid/graphics/Region;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_16
    return-void
.end method
