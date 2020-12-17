.class Lcom/flyme/systemuitools/aod/view/AodSvgaView$1;
.super Ljava/lang/Object;
.source "AodSvgaView.java"

# interfaces
.implements Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemuitools/aod/view/AodSvgaView;->loadAnimation(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemuitools/aod/view/AodSvgaView;


# direct methods
.method constructor <init>(Lcom/flyme/systemuitools/aod/view/AodSvgaView;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/AodSvgaView$1;->this$0:Lcom/flyme/systemuitools/aod/view/AodSvgaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
    .registers 4

    const-string v0, "AodSvgaView"

    const-string v1, "onComplete"

    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/AodSvgaView$1;->this$0:Lcom/flyme/systemuitools/aod/view/AodSvgaView;

    invoke-virtual {p0, p1}, Lcom/opensource/svgaplayer/SVGAImageView;->setVideoItem(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    return-void
.end method

.method public onError()V
    .registers 2

    const-string p0, "AodSvgaView"

    const-string v0, "onError"

    .line 50
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
