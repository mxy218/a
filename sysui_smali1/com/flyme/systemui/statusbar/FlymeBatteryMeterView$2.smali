.class Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$2;
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

    .line 133
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$2;->this$0:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    .line 136
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$2;->this$0:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->access$200(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->access$102(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;Z)Z

    .line 137
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$2;->this$0:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->apply(Z)V

    return-void
.end method
