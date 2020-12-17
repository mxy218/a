.class Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl$1;
.super Ljava/lang/Object;
.source "MzFlashlightControllerImpl.java"

# interfaces
.implements Lcom/meizu/camera/MeizuCamera$FlashLightListener;


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

    .line 245
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFlashLight(Z)V
    .registers 4

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFlashLight call back called --- enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlashlightController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;

    invoke-static {v0, p1}, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->access$500(Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;Z)V

    .line 250
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->access$600(Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;IZ)V

    if-nez p1, :cond_37

    .line 251
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->access$700(Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;)Z

    move-result p1

    if-eqz p1, :cond_37

    .line 252
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->access$702(Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;Z)Z

    .line 253
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;

    const/4 p1, 0x1

    invoke-static {p0, p1, v0}, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->access$600(Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;IZ)V

    :cond_37
    return-void
.end method
