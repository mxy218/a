.class Lcom/flyme/systemui/charge/ChargeAnimationController$6;
.super Ljava/lang/Object;
.source "ChargeAnimationController.java"

# interfaces
.implements Lcom/meizu/flyme/wiredchargeview/WiredChargeView$OnWiredChargeViewAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/charge/ChargeAnimationController;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/charge/ChargeAnimationController;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/charge/ChargeAnimationController;)V
    .registers 2

    .line 166
    iput-object p1, p0, Lcom/flyme/systemui/charge/ChargeAnimationController$6;->this$0:Lcom/flyme/systemui/charge/ChargeAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 4

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wire onComplete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/flyme/systemui/charge/ChargeAnimationController$6;->this$0:Lcom/flyme/systemui/charge/ChargeAnimationController;

    invoke-static {v1}, Lcom/flyme/systemui/charge/ChargeAnimationController;->access$800(Lcom/flyme/systemui/charge/ChargeAnimationController;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChargeAnimationController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController$6;->this$0:Lcom/flyme/systemui/charge/ChargeAnimationController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/flyme/systemui/charge/ChargeAnimationController;->access$1102(Lcom/flyme/systemui/charge/ChargeAnimationController;Z)Z

    .line 177
    iget-object v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController$6;->this$0:Lcom/flyme/systemui/charge/ChargeAnimationController;

    invoke-static {v0}, Lcom/flyme/systemui/charge/ChargeAnimationController;->access$800(Lcom/flyme/systemui/charge/ChargeAnimationController;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 178
    iget-object v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController$6;->this$0:Lcom/flyme/systemui/charge/ChargeAnimationController;

    invoke-static {v0}, Lcom/flyme/systemui/charge/ChargeAnimationController;->access$900(Lcom/flyme/systemui/charge/ChargeAnimationController;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 179
    iget-object v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController$6;->this$0:Lcom/flyme/systemui/charge/ChargeAnimationController;

    invoke-static {v0}, Lcom/flyme/systemui/charge/ChargeAnimationController;->access$1300(Lcom/flyme/systemui/charge/ChargeAnimationController;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 180
    iget-object v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController$6;->this$0:Lcom/flyme/systemui/charge/ChargeAnimationController;

    invoke-static {v0}, Lcom/flyme/systemui/charge/ChargeAnimationController;->access$1400(Lcom/flyme/systemui/charge/ChargeAnimationController;)Z

    move-result v0

    invoke-static {v0}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->collectWirelessCharge(I)V

    .line 184
    :cond_49
    iget-object v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController$6;->this$0:Lcom/flyme/systemui/charge/ChargeAnimationController;

    invoke-static {v0}, Lcom/flyme/systemui/charge/ChargeAnimationController;->access$000(Lcom/flyme/systemui/charge/ChargeAnimationController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;->hasLiveWallpaper()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 185
    iget-object v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController$6;->this$0:Lcom/flyme/systemui/charge/ChargeAnimationController;

    invoke-static {v0}, Lcom/flyme/systemui/charge/ChargeAnimationController;->access$000(Lcom/flyme/systemui/charge/ChargeAnimationController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;->getLiveWallpaperAnimationTime()I

    move-result v0

    add-int/lit16 v0, v0, 0x12c

    int-to-long v0, v0

    goto :goto_6d

    :cond_6b
    const-wide/16 v0, 0x64

    .line 186
    :goto_6d
    iget-object v2, p0, Lcom/flyme/systemui/charge/ChargeAnimationController$6;->this$0:Lcom/flyme/systemui/charge/ChargeAnimationController;

    invoke-static {v2}, Lcom/flyme/systemui/charge/ChargeAnimationController;->access$600(Lcom/flyme/systemui/charge/ChargeAnimationController;)Landroid/widget/RelativeLayout;

    move-result-object v2

    iget-object p0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController$6;->this$0:Lcom/flyme/systemui/charge/ChargeAnimationController;

    invoke-static {p0}, Lcom/flyme/systemui/charge/ChargeAnimationController;->access$1200(Lcom/flyme/systemui/charge/ChargeAnimationController;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v2, p0, v0, v1}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onError(II)V
    .registers 3

    const-string p1, "ChargeAnimationController"

    const-string/jumbo p2, "wire onError"

    .line 191
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object p1, p0, Lcom/flyme/systemui/charge/ChargeAnimationController$6;->this$0:Lcom/flyme/systemui/charge/ChargeAnimationController;

    invoke-static {p1}, Lcom/flyme/systemui/charge/ChargeAnimationController;->access$300(Lcom/flyme/systemui/charge/ChargeAnimationController;)V

    .line 194
    iget-object p0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController$6;->this$0:Lcom/flyme/systemui/charge/ChargeAnimationController;

    invoke-static {p0}, Lcom/flyme/systemui/charge/ChargeAnimationController;->access$400(Lcom/flyme/systemui/charge/ChargeAnimationController;)V

    return-void
.end method

.method public onStart()V
    .registers 2

    const-string p0, "ChargeAnimationController"

    const-string/jumbo v0, "wire onStart"

    .line 169
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
