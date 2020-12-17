.class Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl$2;
.super Ljava/lang/Object;
.source "MzFlashlightControllerImpl.java"

# interfaces
.implements Lcom/meizu/camera/MeizuCamera$MeizuCameraErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->initFlashLight()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;)V
    .registers 2

    .line 259
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .registers 4

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError() -- msgType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlashlightController"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_2b

    const-string p1, "onError:   MediaServer died...so we have to init mMeizuCamera again in 3000s"

    .line 265
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->access$800(Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x0

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2b
    return-void
.end method
