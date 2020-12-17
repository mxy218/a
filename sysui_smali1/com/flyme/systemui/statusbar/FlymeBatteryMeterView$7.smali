.class Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$7;
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

    .line 294
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$7;->this$0:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4

    .line 297
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$7;->this$0:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->access$1000(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;)V

    .line 299
    invoke-static {}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDoChargeAnimation is change,the value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$7;->this$0:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->access$1100(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
