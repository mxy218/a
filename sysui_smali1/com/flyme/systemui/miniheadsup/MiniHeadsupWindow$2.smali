.class Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$2;
.super Ljava/lang/Object;
.source "MiniHeadsupWindow.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->animateChangeState()V
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

    .line 419
    iput-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$2;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$2;->it:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 424
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 425
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$2;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-static {v0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->access$000(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;)Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 426
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$2;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$2;->it:Landroid/view/animation/Interpolator;

    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->changeLevel(F)V

    .line 428
    :cond_1d
    iget-object p0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$2;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-static {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->access$100(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;)Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;

    move-result-object p0

    const/high16 v0, 0x3f800000  # 1.0f

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method
