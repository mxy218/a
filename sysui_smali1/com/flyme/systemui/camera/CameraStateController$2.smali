.class Lcom/flyme/systemui/camera/CameraStateController$2;
.super Ljava/lang/Object;
.source "CameraStateController.java"

# interfaces
.implements Lcom/opensource/svgaplayer/SVGACallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/camera/CameraStateController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/camera/CameraStateController;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/camera/CameraStateController;)V
    .registers 2

    .line 102
    iput-object p1, p0, Lcom/flyme/systemui/camera/CameraStateController$2;->this$0:Lcom/flyme/systemui/camera/CameraStateController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .registers 4

    .line 105
    iget-object p0, p0, Lcom/flyme/systemui/camera/CameraStateController$2;->this$0:Lcom/flyme/systemui/camera/CameraStateController;

    invoke-static {p0}, Lcom/flyme/systemui/camera/CameraStateController;->access$400(Lcom/flyme/systemui/camera/CameraStateController;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object p0

    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/opensource/svgaplayer/SVGAImageView;->stepToPercentage(DZ)V

    return-void
.end method

.method public onPause()V
    .registers 1

    return-void
.end method

.method public onRepeat()V
    .registers 1

    return-void
.end method

.method public onStep(ID)V
    .registers 4

    return-void
.end method
