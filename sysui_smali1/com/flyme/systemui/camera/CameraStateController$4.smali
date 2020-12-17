.class Lcom/flyme/systemui/camera/CameraStateController$4;
.super Ljava/lang/Object;
.source "CameraStateController.java"

# interfaces
.implements Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/camera/CameraStateController;->parseSVGA()V
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

    .line 455
    iput-object p1, p0, Lcom/flyme/systemui/camera/CameraStateController$4;->this$0:Lcom/flyme/systemui/camera/CameraStateController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
    .registers 3

    .line 458
    new-instance v0, Lcom/opensource/svgaplayer/SVGADrawable;

    invoke-direct {v0, p1}, Lcom/opensource/svgaplayer/SVGADrawable;-><init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    .line 459
    iget-object p0, p0, Lcom/flyme/systemui/camera/CameraStateController$4;->this$0:Lcom/flyme/systemui/camera/CameraStateController;

    invoke-static {p0}, Lcom/flyme/systemui/camera/CameraStateController;->access$400(Lcom/flyme/systemui/camera/CameraStateController;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onError()V
    .registers 1

    return-void
.end method
