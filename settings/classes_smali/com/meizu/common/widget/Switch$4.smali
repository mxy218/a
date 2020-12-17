.class Lcom/meizu/common/widget/Switch$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Switch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/Switch;->animateThumbToCheckedState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/Switch;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/Switch;)V
    .registers 2

    .line 687
    iput-object p1, p0, Lcom/meizu/common/widget/Switch$4;->this$0:Lcom/meizu/common/widget/Switch;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 690
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 691
    iget-object p0, p0, Lcom/meizu/common/widget/Switch$4;->this$0:Lcom/meizu/common/widget/Switch;

    invoke-static {p0}, Lcom/meizu/common/widget/Switch;->access$200(Lcom/meizu/common/widget/Switch;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    return-void
.end method
