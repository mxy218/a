.class public final synthetic Lcom/flyme/systemui/fullscreen/-$$Lambda$SystemUIGestureListener$3$xXfVqGLpsSD5WzIyZBfIM2Qroh4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/flyme/systemui/fullscreen/SystemUIGestureListener$3;

.field private final synthetic f$1:Landroid/graphics/Region;


# direct methods
.method public synthetic constructor <init>(Lcom/flyme/systemui/fullscreen/SystemUIGestureListener$3;Landroid/graphics/Region;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flyme/systemui/fullscreen/-$$Lambda$SystemUIGestureListener$3$xXfVqGLpsSD5WzIyZBfIM2Qroh4;->f$0:Lcom/flyme/systemui/fullscreen/SystemUIGestureListener$3;

    iput-object p2, p0, Lcom/flyme/systemui/fullscreen/-$$Lambda$SystemUIGestureListener$3$xXfVqGLpsSD5WzIyZBfIM2Qroh4;->f$1:Landroid/graphics/Region;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/flyme/systemui/fullscreen/-$$Lambda$SystemUIGestureListener$3$xXfVqGLpsSD5WzIyZBfIM2Qroh4;->f$0:Lcom/flyme/systemui/fullscreen/SystemUIGestureListener$3;

    iget-object p0, p0, Lcom/flyme/systemui/fullscreen/-$$Lambda$SystemUIGestureListener$3$xXfVqGLpsSD5WzIyZBfIM2Qroh4;->f$1:Landroid/graphics/Region;

    invoke-virtual {v0, p0}, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener$3;->lambda$onSystemGestureExclusionChanged$0$SystemUIGestureListener$3(Landroid/graphics/Region;)V

    return-void
.end method
