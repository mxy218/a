.class Lcom/meizu/common/widget/MorphingParams;
.super Ljava/lang/Object;
.source "Switch.java"


# instance fields
.field public fromAlpha:F

.field public fromColor:I

.field public fromCornerRadius:F

.field public fromDarkColor:I

.field public fromHeight:I

.field public fromWidth:I

.field public mDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

.field public toAlpha:F

.field public toColor:I

.field public toCornerRadius:F

.field public toDarkColor:I

.field public toHeight:I

.field public toWidth:I


# direct methods
.method private constructor <init>(Lcom/meizu/common/widget/StrokeGradientDrawable;)V
    .registers 2
    .param p1  # Lcom/meizu/common/widget/StrokeGradientDrawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1692
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1693
    iput-object p1, p0, Lcom/meizu/common/widget/MorphingParams;->mDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    return-void
.end method

.method public static create(Lcom/meizu/common/widget/StrokeGradientDrawable;)Lcom/meizu/common/widget/MorphingParams;
    .registers 2
    .param p0  # Lcom/meizu/common/widget/StrokeGradientDrawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1697
    new-instance v0, Lcom/meizu/common/widget/MorphingParams;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/MorphingParams;-><init>(Lcom/meizu/common/widget/StrokeGradientDrawable;)V

    return-object v0
.end method


# virtual methods
.method public alpha(FF)Lcom/meizu/common/widget/MorphingParams;
    .registers 3

    .line 1748
    iput p1, p0, Lcom/meizu/common/widget/MorphingParams;->fromAlpha:F

    .line 1749
    iput p2, p0, Lcom/meizu/common/widget/MorphingParams;->toAlpha:F

    return-object p0
.end method

.method public color(II)Lcom/meizu/common/widget/MorphingParams;
    .registers 3

    .line 1706
    iput p1, p0, Lcom/meizu/common/widget/MorphingParams;->fromColor:I

    .line 1707
    iput p2, p0, Lcom/meizu/common/widget/MorphingParams;->toColor:I

    return-object p0
.end method

.method public cornerRadius(II)Lcom/meizu/common/widget/MorphingParams;
    .registers 3

    int-to-float p1, p1

    .line 1718
    iput p1, p0, Lcom/meizu/common/widget/MorphingParams;->fromCornerRadius:F

    int-to-float p1, p2

    .line 1719
    iput p1, p0, Lcom/meizu/common/widget/MorphingParams;->toCornerRadius:F

    return-object p0
.end method

.method public darkColor(II)Lcom/meizu/common/widget/MorphingParams;
    .registers 3

    .line 1712
    iput p1, p0, Lcom/meizu/common/widget/MorphingParams;->fromDarkColor:I

    .line 1713
    iput p2, p0, Lcom/meizu/common/widget/MorphingParams;->toDarkColor:I

    return-object p0
.end method

.method public height(II)Lcom/meizu/common/widget/MorphingParams;
    .registers 3

    .line 1724
    iput p1, p0, Lcom/meizu/common/widget/MorphingParams;->fromHeight:I

    .line 1725
    iput p2, p0, Lcom/meizu/common/widget/MorphingParams;->toHeight:I

    return-object p0
.end method

.method public width(II)Lcom/meizu/common/widget/MorphingParams;
    .registers 3

    .line 1730
    iput p1, p0, Lcom/meizu/common/widget/MorphingParams;->fromWidth:I

    .line 1731
    iput p2, p0, Lcom/meizu/common/widget/MorphingParams;->toWidth:I

    return-object p0
.end method
