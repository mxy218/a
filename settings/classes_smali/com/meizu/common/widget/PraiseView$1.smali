.class Lcom/meizu/common/widget/PraiseView$1;
.super Ljava/lang/Object;
.source "PraiseView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/PraiseView;->initAnimation()Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/PraiseView;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/PraiseView;)V
    .registers 2

    .line 239
    iput-object p1, p0, Lcom/meizu/common/widget/PraiseView$1;->this$0:Lcom/meizu/common/widget/PraiseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2

    .line 247
    iget-object p1, p0, Lcom/meizu/common/widget/PraiseView$1;->this$0:Lcom/meizu/common/widget/PraiseView;

    invoke-static {p1}, Lcom/meizu/common/widget/PraiseView;->access$000(Lcom/meizu/common/widget/PraiseView;)Lcom/meizu/common/widget/PraiseView$onPraiseCallBack;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 249
    iget-object p0, p0, Lcom/meizu/common/widget/PraiseView$1;->this$0:Lcom/meizu/common/widget/PraiseView;

    invoke-static {p0}, Lcom/meizu/common/widget/PraiseView;->access$000(Lcom/meizu/common/widget/PraiseView;)Lcom/meizu/common/widget/PraiseView$onPraiseCallBack;

    move-result-object p0

    invoke-interface {p0}, Lcom/meizu/common/widget/PraiseView$onPraiseCallBack;->praAlphAnimEnd()V

    :cond_11
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
