.class Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;
.super Ljava/lang/Object;
.source "KeyguardStatusBarView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateCornerCutoutPadding(Landroid/util/Pair;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)V
    .registers 2

    .line 344
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6

    const-string/jumbo v0, "start"

    .line 347
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string/jumbo v1, "top"

    .line 348
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "end"

    .line 349
    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "bottom"

    .line 350
    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 351
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    return-void
.end method
