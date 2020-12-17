.class public Lcom/flyme/systemui/fingerprint/svga/FingerprintShowSVGAImageView;
.super Lcom/opensource/svgaplayer/SVGAImageView;
.source "FingerprintShowSVGAImageView.java"

# interfaces
.implements Lcom/flyme/systemui/fingerprint/IUnderScreenFingerprint;


# static fields
.field private static final DEFAULT_COLOR:[I


# instance fields
.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 28
    fill-array-data v0, :array_a

    sput-object v0, Lcom/flyme/systemui/fingerprint/svga/FingerprintShowSVGAImageView;->DEFAULT_COLOR:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x4dffffff  # 5.3687088E8f
        0x4dffffff  # 5.3687088E8f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/SVGAImageView;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/flyme/systemui/fingerprint/svga/FingerprintShowSVGAImageView;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/opensource/svgaplayer/SVGAImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/flyme/systemui/fingerprint/svga/FingerprintShowSVGAImageView;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/opensource/svgaplayer/SVGAImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/flyme/systemui/fingerprint/svga/FingerprintShowSVGAImageView;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/opensource/svgaplayer/SVGAImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 26
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/flyme/systemui/fingerprint/svga/FingerprintShowSVGAImageView;->mPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public fpCancelAnimation()V
    .registers 1

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 65
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public startDownAnimation()V
    .registers 1

    return-void
.end method

.method public startShowFpAnimation()V
    .registers 1

    return-void
.end method
