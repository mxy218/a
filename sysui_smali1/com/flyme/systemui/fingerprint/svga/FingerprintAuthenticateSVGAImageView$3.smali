.class Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView$3;
.super Ljava/lang/Object;
.source "FingerprintAuthenticateSVGAImageView.java"

# interfaces
.implements Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView;->loadAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView$3;->this$0:Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
    .registers 4

    const-string v0, "SVGA"

    const-string v1, "onComplete"

    .line 92
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object p0, p0, Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView$3;->this$0:Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView;

    invoke-virtual {p0, p1}, Lcom/opensource/svgaplayer/SVGAImageView;->setVideoItem(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    return-void
.end method

.method public onError()V
    .registers 2

    const-string p0, "SVGA"

    const-string v0, "onError"

    .line 98
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
