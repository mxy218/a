.class Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$9;
.super Ljava/lang/Object;
.source "FlymeBatteryMeterView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;)V
    .registers 2

    .line 449
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$9;->this$0:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 452
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$9;->this$0:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    const-string/jumbo v1, "width"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->access$1302(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;I)I

    .line 453
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$9;->this$0:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    const-string v1, "alpha"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->access$1402(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;I)I

    .line 454
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$9;->this$0:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->requestLayout()V

    .line 455
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$9;->this$0:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->postInvalidate()V

    return-void
.end method
