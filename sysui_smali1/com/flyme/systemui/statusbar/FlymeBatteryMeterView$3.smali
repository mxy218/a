.class Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$3;
.super Ljava/lang/Object;
.source "FlymeBatteryMeterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->initBattery()V
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

    .line 191
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$3;->this$0:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 194
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$3;->this$0:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->access$300(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;)I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_11

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$3;->this$0:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    invoke-static {v1}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->access$400(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;)I

    move-result v1

    goto :goto_19

    :cond_11
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$3;->this$0:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    invoke-static {v1}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->access$300(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;)I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    :goto_19
    invoke-static {v0, v1}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->access$302(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;I)I

    .line 195
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$3;->this$0:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->access$300(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;)I

    move-result v1

    if-le v1, v2, :cond_25

    goto :goto_2b

    :cond_25
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$3;->this$0:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    invoke-static {v1}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->access$300(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;)I

    move-result v2

    :goto_2b
    invoke-static {v0, v2}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->access$302(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;I)I

    .line 196
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$3;->this$0:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->postInvalidate()V

    .line 197
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$3;->this$0:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->access$600(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView$3;->this$0:Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;->access$500(Lcom/flyme/systemui/statusbar/FlymeBatteryMeterView;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
