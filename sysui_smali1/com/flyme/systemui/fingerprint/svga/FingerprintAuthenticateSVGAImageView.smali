.class public Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView;
.super Lcom/opensource/svgaplayer/SVGAImageView;
.source "FingerprintAuthenticateSVGAImageView.java"

# interfaces
.implements Lcom/flyme/systemui/fingerprint/IUnderScreenFingerprint;


# instance fields
.field private mAnimationType:I

.field private mContext:Landroid/content/Context;

.field private mFingerprintAnimationObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 33
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/SVGAImageView;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/opensource/svgaplayer/SVGAImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView;->mHandler:Landroid/os/Handler;

    .line 38
    iput-object p1, p0, Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView;->mContext:Landroid/content/Context;

    .line 40
    new-instance p2, Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView$1;

    iget-object v0, p0, Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView;->mHandler:Landroid/os/Handler;

    invoke-direct {p2, p0, v0}, Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView$1;-><init>(Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView;->mFingerprintAnimationObserver:Landroid/database/ContentObserver;

    .line 48
    iget-object p2, p0, Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "fingerprint_animation"

    .line 49
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView;->mFingerprintAnimationObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 48
    invoke-virtual {p2, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 51
    iget-object p2, p0, Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView;->mAnimationType:I

    .line 53
    invoke-direct {p0}, Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView;->loadAnimation()V

    .line 54
    invoke-static {p1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->registerCallback(Lcom/flyme/systemui/fingerprint/IUnderScreenFingerprint;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/opensource/svgaplayer/SVGAImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/opensource/svgaplayer/SVGAImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 26
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView;I)I
    .registers 2

    .line 20
    iput p1, p0, Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView;->mAnimationType:I

    return p1
.end method

.method static synthetic access$100(Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView;)Landroid/content/Context;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView;)V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView;->loadAnimation()V

    return-void
.end method

.method private getAnimationFile(I)Ljava/lang/String;
    .registers 3

    const-string p0, "diffusion.svga"

    if-nez p1, :cond_5

    goto :goto_11

    :cond_5
    const/4 v0, 0x2

    if-ne p1, v0, :cond_b

    const-string p0, "energy_ray.svga"

    goto :goto_11

    :cond_b
    const/4 v0, 0x1

    if-ne p1, v0, :cond_11

    const-string/jumbo p0, "void_force.svga"

    :cond_11
    :goto_11
    return-object p0
.end method

.method private loadAnimation()V
    .registers 4

    .line 87
    iget v0, p0, Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView;->mAnimationType:I

    invoke-direct {p0, v0}, Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView;->getAnimationFile(I)Ljava/lang/String;

    move-result-object v0

    .line 88
    new-instance v1, Lcom/opensource/svgaplayer/SVGAParser;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/opensource/svgaplayer/SVGAParser;-><init>(Landroid/content/Context;)V

    .line 89
    new-instance v2, Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView$3;

    invoke-direct {v2, p0}, Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView$3;-><init>(Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView;)V

    invoke-virtual {v1, v0, v2}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromAssets(Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V

    return-void
.end method


# virtual methods
.method public fpCancelAnimation()V
    .registers 1

    return-void
.end method

.method public startDownAnimation()V
    .registers 2

    .line 68
    new-instance v0, Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView$2;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView$2;-><init>(Lcom/flyme/systemui/fingerprint/svga/FingerprintAuthenticateSVGAImageView;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startShowFpAnimation()V
    .registers 1

    return-void
.end method
