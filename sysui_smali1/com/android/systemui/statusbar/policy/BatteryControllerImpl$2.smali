.class Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$2;
.super Ljava/lang/Object;
.source "BatteryControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;)V
    .registers 2

    .line 402
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 405
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_23

    const-string v0, "BatteryController"

    const-string v1, "registerReceiver again"

    .line 406
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->access$300(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 408
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->access$400(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;)V

    :cond_23
    return-void
.end method
