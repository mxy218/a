.class Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$11;
.super Ljava/lang/Object;
.source "MiniHeadsupWindow.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->animateHide(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field it:Landroid/view/animation/Interpolator;

.field startY:F

.field final synthetic this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

.field final synthetic val$state:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;)V
    .registers 3

    .line 569
    iput-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$11;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    iput-object p2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$11;->val$state:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 570
    iget-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$11;->val$state:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;

    sget-object p2, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;->Snooze:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;

    if-ne p1, p2, :cond_13

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    goto :goto_18

    :cond_13
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    :goto_18
    iput-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$11;->it:Landroid/view/animation/Interpolator;

    .line 571
    iget-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$11;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result p1

    iput p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$11;->startY:F

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    .line 575
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$11;->it:Landroid/view/animation/Interpolator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 576
    sget-object v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$13;->$SwitchMap$com$flyme$systemui$miniheadsup$MiniHeadsupWindow$HideState:[I

    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$11;->val$state:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_24

    goto :goto_41

    .line 582
    :cond_24
    iget-object p0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$11;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    const/high16 v0, 0x3f800000  # 1.0f

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto :goto_41

    .line 579
    :cond_2d
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$11;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    iget v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$11;->startY:F

    invoke-static {v0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->access$500(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;)Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;

    move-result-object v2

    iget v2, v2, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->WINDOW_HEIGHT:I

    neg-int v2, v2

    int-to-float v2, v2

    iget p0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$11;->startY:F

    sub-float/2addr v2, p0

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    :goto_41
    return-void
.end method
