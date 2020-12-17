.class Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView$2;
.super Ljava/lang/Object;
.source "FingerprintAuthenticateSVGAImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView;->startDownAnimation()V
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

    .line 68
    iput-object p1, p0, Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView$2;->this$0:Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 71
    iget-object p0, p0, Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView$2;->this$0:Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/opensource/svgaplayer/SVGAImageView;->stepToFrame(IZ)V

    return-void
.end method
