.class Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView$1;
.super Landroid/database/ContentObserver;
.source "CircleBatteryLottieAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;Landroid/os/Handler;)V
    .registers 3

    .line 73
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView$1;->this$0:Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6

    .line 76
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView$1;->this$0:Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->access$100(Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "mz_current_power_mode"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_16

    const/4 v1, 0x1

    :cond_16
    invoke-static {p1, v1}, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->access$002(Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;Z)Z

    .line 79
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView$1;->this$0:Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;->access$200(Lcom/flyme/systemui/statusbar/CircleBatteryLottieAnimationView;)V

    return-void
.end method
