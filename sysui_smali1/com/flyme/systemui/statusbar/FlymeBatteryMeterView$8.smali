.class Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$8;
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

    .line 304
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$8;->this$0:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6

    .line 307
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$8;->this$0:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "mz_current_power_mode"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_17

    move v1, v2

    :cond_17
    invoke-static {p1, v1}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->access$1202(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;Z)Z

    .line 310
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$8;->this$0:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    invoke-virtual {p0, v2}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->apply(Z)V

    return-void
.end method
