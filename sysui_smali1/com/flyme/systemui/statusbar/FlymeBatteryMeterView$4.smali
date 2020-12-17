.class Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$4;
.super Ljava/lang/Object;
.source "FlymeBatteryMeterView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->toggleBatteryPercent(Z)V
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

    .line 244
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$4;->this$0:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 7

    const-string v0, "padding"

    .line 247
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "alpha"

    .line 248
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 249
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$4;->this$0:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    invoke-static {v1}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->access$700(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    .line 250
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$4;->this$0:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    invoke-static {v2}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->access$700(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    .line 251
    iget-object v3, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$4;->this$0:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    invoke-static {v3}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->access$700(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    .line 252
    iget-object v4, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$4;->this$0:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    invoke-static {v4}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->access$700(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 253
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$4;->this$0:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->access$700(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method
