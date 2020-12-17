.class Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
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
.method constructor <init>(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;)V
    .registers 2

    .line 124
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$1;->this$0:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBootCompleted()V
    .registers 3

    .line 127
    invoke-static {}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onBootCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$1;->this$0:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->apply(Z)V

    return-void
.end method
