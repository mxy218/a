.class Lcom/meizu/settings/widget/SystemLockView$2;
.super Ljava/lang/Object;
.source "SystemLockView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/widget/SystemLockView;->setTipAnim(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/widget/SystemLockView;


# direct methods
.method constructor <init>(Lcom/meizu/settings/widget/SystemLockView;)V
    .registers 2

    .line 614
    iput-object p1, p0, Lcom/meizu/settings/widget/SystemLockView$2;->this$0:Lcom/meizu/settings/widget/SystemLockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 617
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 618
    iget-object v0, p0, Lcom/meizu/settings/widget/SystemLockView$2;->this$0:Lcom/meizu/settings/widget/SystemLockView;

    invoke-static {v0}, Lcom/meizu/settings/widget/SystemLockView;->access$1300(Lcom/meizu/settings/widget/SystemLockView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    const v0, 0x3a83126f  # 0.001f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2b

    .line 620
    iget-object p1, p0, Lcom/meizu/settings/widget/SystemLockView$2;->this$0:Lcom/meizu/settings/widget/SystemLockView;

    invoke-static {p1}, Lcom/meizu/settings/widget/SystemLockView;->access$1300(Lcom/meizu/settings/widget/SystemLockView;)Landroid/widget/ImageView;

    move-result-object p1

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 621
    iget-object p0, p0, Lcom/meizu/settings/widget/SystemLockView$2;->this$0:Lcom/meizu/settings/widget/SystemLockView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/meizu/settings/widget/SystemLockView;->setInputTextButtonVisibility(Z)V

    :cond_2b
    return-void
.end method
