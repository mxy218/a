.class Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$9;
.super Ljava/lang/Object;
.source "MiniHeadsupWindow.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->animateSnap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field it:Landroid/view/animation/Interpolator;

.field final synthetic this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

.field final synthetic val$startY:F


# direct methods
.method constructor <init>(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;F)V
    .registers 3

    .line 529
    iput-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$9;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    iput p2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$9;->val$startY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 530
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$9;->it:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    .line 534
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 535
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$9;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    iget v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$9;->val$startY:F

    neg-float v2, v1

    iget-object p0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$9;->it:Landroid/view/animation/Interpolator;

    invoke-interface {p0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    mul-float/2addr v2, p0

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void
.end method
