.class Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$3;
.super Ljava/lang/Object;
.source "PhoneStatusBarView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mzUpdateSafeInsets(Landroid/util/Pair;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V
    .registers 2

    .line 603
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6

    const-string/jumbo v0, "start"

    .line 606
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string/jumbo v1, "top"

    .line 607
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "end"

    .line 608
    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "bottom"

    .line 609
    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 610
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 611
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4c

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    :cond_4c
    return-void
.end method
