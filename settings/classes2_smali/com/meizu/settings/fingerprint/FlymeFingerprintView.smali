.class public Lcom/meizu/settings/fingerprint/FlymeFingerprintView;
.super Landroid/widget/RelativeLayout;
.source "FlymeFingerprintView.java"


# static fields
.field private static final FINGERPRINT_RES_ID:[I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnrollColor:I

.field private mFingerprintPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mFingerprintResLength:I

.field private mLastIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x14

    new-array v0, v0, [I

    .line 20
    fill-array-data v0, :array_a

    sput-object v0, Lcom/meizu/settings/fingerprint/FlymeFingerprintView;->FINGERPRINT_RES_ID:[I

    return-void

    :array_a
    .array-data 4
        0x7f11000a
        0x7f110015
        0x7f110017
        0x7f110018
        0x7f110019
        0x7f11001a
        0x7f11001b
        0x7f11001c
        0x7f11001d
        0x7f11000b
        0x7f11000c
        0x7f11000d
        0x7f11000e
        0x7f11000f
        0x7f110010
        0x7f110011
        0x7f110012
        0x7f110013
        0x7f110014
        0x7f110016
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/meizu/settings/fingerprint/FlymeFingerprintView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/meizu/settings/fingerprint/FlymeFingerprintView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    invoke-direct {p0, p1}, Lcom/meizu/settings/fingerprint/FlymeFingerprintView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/fingerprint/FlymeFingerprintView;)Landroid/view/animation/PathInterpolator;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintView;->mFingerprintPathInterpolator:Landroid/view/animation/PathInterpolator;

    return-object p0
.end method

.method private createPathView(IIZ)Lcom/eftimoff/androipathview/PathView;
    .registers 6

    .line 71
    new-instance v0, Lcom/eftimoff/androipathview/PathView;

    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/eftimoff/androipathview/PathView;-><init>(Landroid/content/Context;)V

    .line 72
    invoke-virtual {v0, p2}, Lcom/eftimoff/androipathview/PathView;->setPathColor(I)V

    .line 73
    invoke-virtual {v0}, Lcom/eftimoff/androipathview/PathView;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 74
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f07018d

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    invoke-virtual {v0, p2}, Lcom/eftimoff/androipathview/PathView;->setPathWidth(F)V

    .line 75
    invoke-virtual {v0, p1}, Lcom/eftimoff/androipathview/PathView;->setSvgResource(I)V

    .line 76
    new-instance p1, Lcom/meizu/settings/fingerprint/FlymeFingerprintView$2;

    invoke-direct {p1, p0, p3, v0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintView$2;-><init>(Lcom/meizu/settings/fingerprint/FlymeFingerprintView;ZLcom/eftimoff/androipathview/PathView;)V

    const-wide/16 p2, 0x32

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .registers 6

    .line 48
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintView;->mContext:Landroid/content/Context;

    .line 49
    sget-object p1, Lcom/meizu/settings/fingerprint/FlymeFingerprintView;->FINGERPRINT_RES_ID:[I

    array-length p1, p1

    iput p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintView;->mFingerprintResLength:I

    .line 50
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3e4ccccd  # 0.2f

    const/4 v1, 0x0

    const v2, 0x3dcccccd  # 0.1f

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintView;->mFingerprintPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 52
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0602c9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintView;->mEnrollColor:I

    return-void
.end method


# virtual methods
.method public setPercentage(I)V
    .registers 5

    if-nez p1, :cond_9

    const/4 p1, 0x0

    .line 92
    iput p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintView;->mLastIndex:I

    .line 93
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    return-void

    .line 97
    :cond_9
    iget v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintView;->mFingerprintResLength:I

    mul-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x64

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    .line 99
    :goto_10
    iget v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintView;->mLastIndex:I

    if-gt v1, p1, :cond_41

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLastIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintView;->mLastIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "test"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    sget-object v1, Lcom/meizu/settings/fingerprint/FlymeFingerprintView;->FINGERPRINT_RES_ID:[I

    iget v2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintView;->mLastIndex:I

    aget v1, v1, v2

    iget v2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintView;->mEnrollColor:I

    invoke-direct {p0, v1, v2, v0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintView;->createPathView(IIZ)Lcom/eftimoff/androipathview/PathView;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 103
    iget v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintView;->mLastIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintView;->mLastIndex:I

    goto :goto_10

    :cond_41
    return-void
.end method
