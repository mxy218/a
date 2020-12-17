.class Lcom/flyme/systemuitools/aod/view/AodSvgaView$2;
.super Ljava/lang/Object;
.source "AodSvgaView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemuitools/aod/view/AodSvgaView;->playAnimation()V
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

    .line 60
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/AodSvgaView$2;->this$0:Lcom/flyme/systemuitools/aod/view/AodSvgaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const-string v0, "AodSvgaView"

    const-string v1, "playAnimation"

    .line 63
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/AodSvgaView$2;->this$0:Lcom/flyme/systemuitools/aod/view/AodSvgaView;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/opensource/svgaplayer/SVGAImageView;->stepToFrame(IZ)V

    return-void
.end method
