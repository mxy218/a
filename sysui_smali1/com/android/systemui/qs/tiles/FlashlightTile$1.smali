.class Lcom/android/systemui/qs/tiles/FlashlightTile$1;
.super Landroid/content/BroadcastReceiver;
.source "FlashlightTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/FlashlightTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/FlashlightTile;)V
    .registers 2

    .line 181
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 184
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$000(Lcom/android/systemui/qs/tiles/FlashlightTile;)Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->isAvailable()Z

    move-result p1

    if-nez p1, :cond_18

    .line 185
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$100(Lcom/android/systemui/qs/tiles/FlashlightTile;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "clickFlashLight() -- flash disabled, so return..."

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_18
    const-string p1, "reason"

    .line 190
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 191
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$000(Lcom/android/systemui/qs/tiles/FlashlightTile;)Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->isEnabled()Z

    move-result v0

    .line 192
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$200(Lcom/android/systemui/qs/tiles/FlashlightTile;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ,reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ,mIsFlashLightOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_63

    const-string v1, "gesture"

    .line 193
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_63

    .line 194
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$000(Lcom/android/systemui/qs/tiles/FlashlightTile;)Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-result-object p0

    xor-int/lit8 p1, v0, 0x1

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->setFlashlight(Z)V

    goto :goto_74

    :cond_63
    const/4 p1, 0x0

    const-string/jumbo v0, "state"

    .line 198
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 199
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$1;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$000(Lcom/android/systemui/qs/tiles/FlashlightTile;)Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->setFlashlight(Z)V

    :goto_74
    return-void
.end method
