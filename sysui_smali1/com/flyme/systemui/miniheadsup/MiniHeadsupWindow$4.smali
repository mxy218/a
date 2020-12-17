.class Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$4;
.super Ljava/lang/Object;
.source "MiniHeadsupWindow.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->animateChageState2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field it:Landroid/view/animation/Interpolator;

.field final synthetic this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;)V
    .registers 2

    .line 454
    iput-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$4;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$4;->it:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 459
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 460
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$4;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->changeLevel(F)V

    .line 461
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$4;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-static {v0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->access$300(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;)Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    move-result-object v0

    const/high16 v1, 0x40000000  # 2.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 462
    iget-object p0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$4;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-static {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->access$400(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;)Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method
