.class public Lcom/flyme/systemuitools/aod/view/AodSvgaView;
.super Lcom/opensource/svgaplayer/SVGAImageView;
.source "AodSvgaView.java"

# interfaces
.implements Lcom/flyme/systemuitools/aod/presenter/AODStateController$StyleChangeCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 19
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/SVGAImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/opensource/svgaplayer/SVGAImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/presenter/AODStateController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->addCallBack(Lcom/flyme/systemuitools/aod/presenter/AODStateController$StyleChangeCallback;)V

    .line 25
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/view/AodSvgaView;->updateAnimation()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/opensource/svgaplayer/SVGAImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/opensource/svgaplayer/SVGAImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private loadAnimation(Ljava/lang/String;)V
    .registers 4

    .line 38
    new-instance v0, Lcom/opensource/svgaplayer/SVGAParser;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/opensource/svgaplayer/SVGAParser;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v1, Lcom/flyme/systemuitools/aod/view/AodSvgaView$1;

    invoke-direct {v1, p0}, Lcom/flyme/systemuitools/aod/view/AodSvgaView$1;-><init>(Lcom/flyme/systemuitools/aod/view/AodSvgaView;)V

    invoke-virtual {v0, p1, v1}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromAssets(Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V

    return-void
.end method

.method private updateAnimation()V
    .registers 3

    .line 72
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/presenter/AODStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->getClockStyle()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_16

    const-string v0, "aod_animation_bg1.svga"

    .line 74
    invoke-direct {p0, v0}, Lcom/flyme/systemuitools/aod/view/AodSvgaView;->loadAnimation(Ljava/lang/String;)V

    goto :goto_51

    :cond_16
    const/16 v1, 0x10

    if-ne v0, v1, :cond_20

    const-string v0, "aod_animation_bg2.svga"

    .line 76
    invoke-direct {p0, v0}, Lcom/flyme/systemuitools/aod/view/AodSvgaView;->loadAnimation(Ljava/lang/String;)V

    goto :goto_51

    :cond_20
    const/16 v1, 0x11

    if-ne v0, v1, :cond_2a

    const-string v0, "aod_animation_bg3.svga"

    .line 78
    invoke-direct {p0, v0}, Lcom/flyme/systemuitools/aod/view/AodSvgaView;->loadAnimation(Ljava/lang/String;)V

    goto :goto_51

    :cond_2a
    const/16 v1, 0x12

    if-ne v0, v1, :cond_34

    const-string v0, "aod_spring_bg1_2020.svga"

    .line 80
    invoke-direct {p0, v0}, Lcom/flyme/systemuitools/aod/view/AodSvgaView;->loadAnimation(Ljava/lang/String;)V

    goto :goto_51

    :cond_34
    const/16 v1, 0x13

    if-ne v0, v1, :cond_3e

    const-string v0, "aod_spring_bg2_2020.svga"

    .line 82
    invoke-direct {p0, v0}, Lcom/flyme/systemuitools/aod/view/AodSvgaView;->loadAnimation(Ljava/lang/String;)V

    goto :goto_51

    :cond_3e
    const/16 v1, 0x14

    if-ne v0, v1, :cond_48

    const-string v0, "aod_spring_bg3_2020.svga"

    .line 84
    invoke-direct {p0, v0}, Lcom/flyme/systemuitools/aod/view/AodSvgaView;->loadAnimation(Ljava/lang/String;)V

    goto :goto_51

    :cond_48
    const/16 v1, 0x15

    if-ne v0, v1, :cond_51

    const-string v0, "aod_spring_bg4_2020.svga"

    .line 86
    invoke-direct {p0, v0}, Lcom/flyme/systemuitools/aod/view/AodSvgaView;->loadAnimation(Ljava/lang/String;)V

    :cond_51
    :goto_51
    return-void
.end method


# virtual methods
.method public onNotificationSettings(Z)V
    .registers 2

    return-void
.end method

.method public onStyleChange()V
    .registers 1

    .line 92
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/view/AodSvgaView;->updateAnimation()V

    return-void
.end method

.method public playAnimation()V
    .registers 5

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, v0, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->stepToFrame(IZ)V

    .line 57
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/presenter/AODStateController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->getClockStyle()I

    move-result v1

    .line 58
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/presenter/AODStateController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->isSpringHorizontalStyle2020()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 59
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/presenter/AODStateController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->isSpringVerticalStyle2020()Z

    move-result v2

    if-eqz v2, :cond_2d

    :cond_2c
    const/4 v0, 0x1

    .line 60
    :cond_2d
    new-instance v2, Lcom/flyme/systemuitools/aod/view/AodSvgaView$2;

    invoke-direct {v2, p0}, Lcom/flyme/systemuitools/aod/view/AodSvgaView$2;-><init>(Lcom/flyme/systemuitools/aod/view/AodSvgaView;)V

    const/16 v3, 0x11

    if-eq v1, v3, :cond_3c

    if-eqz v0, :cond_39

    goto :goto_3c

    :cond_39
    const-wide/16 v0, 0x190

    goto :goto_3e

    :cond_3c
    :goto_3c
    const-wide/16 v0, 0x258

    :goto_3e
    invoke-virtual {p0, v2, v0, v1}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
