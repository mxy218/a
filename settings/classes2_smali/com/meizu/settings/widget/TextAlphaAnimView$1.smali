.class Lcom/meizu/settings/widget/TextAlphaAnimView$1;
.super Ljava/lang/Object;
.source "TextAlphaAnimView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/widget/TextAlphaAnimView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/widget/TextAlphaAnimView;


# direct methods
.method constructor <init>(Lcom/meizu/settings/widget/TextAlphaAnimView;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lcom/meizu/settings/widget/TextAlphaAnimView$1;->this$0:Lcom/meizu/settings/widget/TextAlphaAnimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2

    .line 71
    iget-object p0, p0, Lcom/meizu/settings/widget/TextAlphaAnimView$1;->this$0:Lcom/meizu/settings/widget/TextAlphaAnimView;

    invoke-virtual {p0}, Landroid/widget/TextView;->clearAnimation()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
