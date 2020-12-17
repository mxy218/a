.class Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FlymeBatteryMeterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->apply(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

.field final synthetic val$endAlpha:I


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;I)V
    .registers 3

    .line 458
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$10;->this$0:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    iput p2, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$10;->val$endAlpha:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    .line 469
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$10;->this$0:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->access$1302(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;I)I

    .line 470
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$10;->this$0:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    iget v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$10;->val$endAlpha:I

    invoke-static {p1, v0}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->access$1402(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;I)I

    .line 471
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$10;->this$0:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->requestLayout()V

    .line 472
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$10;->this$0:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->postInvalidate()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 461
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 462
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$10;->this$0:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->access$1302(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;I)I

    .line 463
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$10;->this$0:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    iget v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$10;->val$endAlpha:I

    invoke-static {p1, v0}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->access$1402(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;I)I

    .line 464
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$10;->this$0:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->requestLayout()V

    .line 465
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$10;->this$0:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->postInvalidate()V

    return-void
.end method
