.class Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FlymeBatteryMeterView.java"


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

    .line 256
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$5;->this$0:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 259
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 260
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$5;->this$0:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->access$800(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;)Z

    move-result p1

    if-nez p1, :cond_16

    .line 261
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$5;->this$0:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->access$700(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 263
    :cond_16
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$5;->this$0:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->access$700(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;)Landroid/widget/TextView;

    move-result-object p1

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 264
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$5;->this$0:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->access$700(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;)Landroid/widget/TextView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method
