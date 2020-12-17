.class Lcom/meizu/common/widget/SubscribeButton$1;
.super Ljava/lang/Object;
.source "SubscribeButton.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/SubscribeButton;->startAnimator(FFI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/SubscribeButton;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/SubscribeButton;)V
    .registers 2

    .line 481
    iput-object p1, p0, Lcom/meizu/common/widget/SubscribeButton$1;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 494
    iget-object p0, p0, Lcom/meizu/common/widget/SubscribeButton$1;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/meizu/common/widget/SubscribeButton;->access$002(Lcom/meizu/common/widget/SubscribeButton;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 489
    iget-object p0, p0, Lcom/meizu/common/widget/SubscribeButton$1;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/meizu/common/widget/SubscribeButton;->access$002(Lcom/meizu/common/widget/SubscribeButton;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 484
    iget-object p0, p0, Lcom/meizu/common/widget/SubscribeButton$1;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/meizu/common/widget/SubscribeButton;->access$002(Lcom/meizu/common/widget/SubscribeButton;Z)Z

    return-void
.end method
