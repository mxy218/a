.class Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$6;
.super Landroid/database/ContentObserver;
.source "FlymeBatteryMeterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;Landroid/os/Handler;)V
    .registers 3

    .line 282
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$6;->this$0:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6

    .line 285
    invoke-static {}, Lcom/flyme/systemui/statusbar/utils/CutoutHelper;->isCutoutScreen()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_9

    const/4 p1, 0x2

    goto :goto_a

    :cond_9
    move p1, v0

    .line 286
    :goto_a
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$6;->this$0:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "statusbar_battery_percent"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    invoke-static {v1, p1}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->access$902(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;I)I

    .line 288
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$6;->this$0:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    invoke-virtual {p1, v0}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->toggleBatteryPercent(Z)V

    .line 289
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$6;->this$0:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    invoke-virtual {p1, v0}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->apply(Z)V

    .line 290
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$6;->this$0:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
