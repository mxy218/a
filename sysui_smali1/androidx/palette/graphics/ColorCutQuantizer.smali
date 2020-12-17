.class final Landroidx/palette/graphics/ColorCutQuantizer;
.super Ljava/lang/Object;
.source "ColorCutQuantizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/palette/graphics/ColorCutQuantizer$Vbox;
    }
.end annotation


# static fields
.field private static final VBOX_COMPARATOR_VOLUME:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/palette/graphics/ColorCutQuantizer$Vbox;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mColors:[I

.field final mFilters:[Landroidx/palette/graphics/Palette$Filter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final mHistogram:[I

.field final mQuantizedColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/palette/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempHsl:[F

.field final mTimingLogger:Landroid/util/TimingLogger;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 457
    new-instance v0, Landroidx/palette/graphics/ColorCutQuantizer$1;

    invoke-direct {v0}, Landroidx/palette/graphics/ColorCutQuantizer$1;-><init>()V

    sput-object v0, Landroidx/palette/graphics/ColorCutQuantizer;->VBOX_COMPARATOR_VOLUME:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>([II[Landroidx/palette/graphics/Palette$Filter;)V
    .registers 9
    .param p3  # [Landroidx/palette/graphics/Palette$Filter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 63
    iput-object v0, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mTempHsl:[F

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mTimingLogger:Landroid/util/TimingLogger;

    .line 75
    iput-object p3, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mFilters:[Landroidx/palette/graphics/Palette$Filter;

    const p3, 0x8000

    new-array p3, p3, [I

    .line 77
    iput-object p3, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mHistogram:[I

    const/4 v0, 0x0

    move v1, v0

    .line 78
    :goto_16
    array-length v2, p1

    if-ge v1, v2, :cond_2a

    .line 79
    aget v2, p1, v1

    invoke-static {v2}, Landroidx/palette/graphics/ColorCutQuantizer;->quantizeFromRgb888(I)I

    move-result v2

    .line 81
    aput v2, p1, v1

    .line 83
    aget v3, p3, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, p3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_2a
    move p1, v0

    move v1, p1

    .line 92
    :goto_2c
    array-length v2, p3

    if-ge p1, v2, :cond_44

    .line 93
    aget v2, p3, p1

    if-lez v2, :cond_3b

    invoke-direct {p0, p1}, Landroidx/palette/graphics/ColorCutQuantizer;->shouldIgnoreColor(I)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 95
    aput v0, p3, p1

    .line 97
    :cond_3b
    aget v2, p3, p1

    if-lez v2, :cond_41

    add-int/lit8 v1, v1, 0x1

    :cond_41
    add-int/lit8 p1, p1, 0x1

    goto :goto_2c

    .line 108
    :cond_44
    new-array p1, v1, [I

    iput-object p1, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mColors:[I

    move v2, v0

    move v3, v2

    .line 110
    :goto_4a
    array-length v4, p3

    if-ge v2, v4, :cond_59

    .line 111
    aget v4, p3, v2

    if-lez v4, :cond_56

    add-int/lit8 v4, v3, 0x1

    .line 112
    aput v2, p1, v3

    move v3, v4

    :cond_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    :cond_59
    if-gt v1, p2, :cond_7a

    .line 122
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    .line 123
    array-length p2, p1

    :goto_63
    if-ge v0, p2, :cond_80

    aget v1, p1, v0

    .line 124
    iget-object v2, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    new-instance v3, Landroidx/palette/graphics/Palette$Swatch;

    invoke-static {v1}, Landroidx/palette/graphics/ColorCutQuantizer;->approximateToRgb888(I)I

    move-result v4

    aget v1, p3, v1

    invoke-direct {v3, v4, v1}, Landroidx/palette/graphics/Palette$Swatch;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_63

    .line 133
    :cond_7a
    invoke-direct {p0, p2}, Landroidx/palette/graphics/ColorCutQuantizer;->quantizePixels(I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    :cond_80
    return-void
.end method

.method private static approximateToRgb888(I)I
    .registers 3

    .line 484
    invoke-static {p0}, Landroidx/palette/graphics/ColorCutQuantizer;->quantizedRed(I)I

    move-result v0

    invoke-static {p0}, Landroidx/palette/graphics/ColorCutQuantizer;->quantizedGreen(I)I

    move-result v1

    invoke-static {p0}, Landroidx/palette/graphics/ColorCutQuantizer;->quantizedBlue(I)I

    move-result p0

    invoke-static {v0, v1, p0}, Landroidx/palette/graphics/ColorCutQuantizer;->approximateToRgb888(III)I

    move-result p0

    return p0
.end method

.method static approximateToRgb888(III)I
    .registers 5

    const/16 v0, 0x8

    const/4 v1, 0x5

    .line 478
    invoke-static {p0, v1, v0}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result p0

    .line 479
    invoke-static {p1, v1, v0}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result p1

    .line 480
    invoke-static {p2, v1, v0}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result p2

    .line 478
    invoke-static {p0, p1, p2}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method

.method private generateAverageColors(Ljava/util/Collection;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/palette/graphics/ColorCutQuantizer$Vbox;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/palette/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 200
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;

    .line 201
    invoke-virtual {v1}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->getAverageColor()Landroidx/palette/graphics/Palette$Swatch;

    move-result-object v1

    .line 202
    invoke-direct {p0, v1}, Landroidx/palette/graphics/ColorCutQuantizer;->shouldIgnoreColor(Landroidx/palette/graphics/Palette$Swatch;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 205
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_27
    return-object v0
.end method

.method static modifySignificantOctet([IIII)V
    .registers 6

    const/4 v0, -0x3

    if-eq p1, v0, :cond_40

    const/4 v0, -0x2

    if-eq p1, v0, :cond_25

    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    goto :goto_40

    :cond_a
    :goto_a
    if-gt p2, p3, :cond_40

    .line 424
    aget p1, p0, p2

    .line 425
    invoke-static {p1}, Landroidx/palette/graphics/ColorCutQuantizer;->quantizedBlue(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0xa

    .line 426
    invoke-static {p1}, Landroidx/palette/graphics/ColorCutQuantizer;->quantizedGreen(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v0, v1

    .line 427
    invoke-static {p1}, Landroidx/palette/graphics/ColorCutQuantizer;->quantizedRed(I)I

    move-result p1

    or-int/2addr p1, v0

    aput p1, p0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    :cond_25
    :goto_25
    if-gt p2, p3, :cond_40

    .line 415
    aget p1, p0, p2

    .line 416
    invoke-static {p1}, Landroidx/palette/graphics/ColorCutQuantizer;->quantizedGreen(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0xa

    .line 417
    invoke-static {p1}, Landroidx/palette/graphics/ColorCutQuantizer;->quantizedRed(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v0, v1

    .line 418
    invoke-static {p1}, Landroidx/palette/graphics/ColorCutQuantizer;->quantizedBlue(I)I

    move-result p1

    or-int/2addr p1, v0

    aput p1, p0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_25

    :cond_40
    :goto_40
    return-void
.end method

.method private static modifyWordWidth(III)I
    .registers 3

    if-le p2, p1, :cond_6

    sub-int p1, p2, p1

    shl-int/2addr p0, p1

    goto :goto_8

    :cond_6
    sub-int/2addr p1, p2

    shr-int/2addr p0, p1

    :goto_8
    const/4 p1, 0x1

    shl-int p2, p1, p2

    sub-int/2addr p2, p1

    and-int/2addr p0, p2

    return p0
.end method

.method private static quantizeFromRgb888(I)I
    .registers 5

    .line 468
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v0

    .line 469
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v3, v1, v2}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v3

    .line 470
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p0, v1, v2}, Landroidx/palette/graphics/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result p0

    shl-int/lit8 v0, v0, 0xa

    shl-int/lit8 v1, v3, 0x5

    or-int/2addr v0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method private quantizePixels(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroidx/palette/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation

    .line 152
    new-instance v0, Ljava/util/PriorityQueue;

    sget-object v1, Landroidx/palette/graphics/ColorCutQuantizer;->VBOX_COMPARATOR_VOLUME:Ljava/util/Comparator;

    invoke-direct {v0, p1, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 155
    new-instance v1, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;

    iget-object v2, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mColors:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v2}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;-><init>(Landroidx/palette/graphics/ColorCutQuantizer;II)V

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 159
    invoke-direct {p0, v0, p1}, Landroidx/palette/graphics/ColorCutQuantizer;->splitBoxes(Ljava/util/PriorityQueue;I)V

    .line 162
    invoke-direct {p0, v0}, Landroidx/palette/graphics/ColorCutQuantizer;->generateAverageColors(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static quantizedBlue(I)I
    .registers 1

    and-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method static quantizedGreen(I)I
    .registers 1

    shr-int/lit8 p0, p0, 0x5

    and-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method static quantizedRed(I)I
    .registers 1

    shr-int/lit8 p0, p0, 0xa

    and-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method private shouldIgnoreColor(I)Z
    .registers 3

    .line 434
    invoke-static {p1}, Landroidx/palette/graphics/ColorCutQuantizer;->approximateToRgb888(I)I

    move-result p1

    .line 435
    iget-object v0, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mTempHsl:[F

    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 436
    iget-object v0, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mTempHsl:[F

    invoke-direct {p0, p1, v0}, Landroidx/palette/graphics/ColorCutQuantizer;->shouldIgnoreColor(I[F)Z

    move-result p0

    return p0
.end method

.method private shouldIgnoreColor(I[F)Z
    .registers 7

    .line 444
    iget-object v0, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mFilters:[Landroidx/palette/graphics/Palette$Filter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    array-length v2, v0

    if-lez v2, :cond_1b

    .line 445
    array-length v0, v0

    move v2, v1

    :goto_a
    if-ge v2, v0, :cond_1b

    .line 446
    iget-object v3, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mFilters:[Landroidx/palette/graphics/Palette$Filter;

    aget-object v3, v3, v2

    invoke-interface {v3, p1, p2}, Landroidx/palette/graphics/Palette$Filter;->isAllowed(I[F)Z

    move-result v3

    if-nez v3, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1b
    return v1
.end method

.method private shouldIgnoreColor(Landroidx/palette/graphics/Palette$Swatch;)Z
    .registers 3

    .line 440
    invoke-virtual {p1}, Landroidx/palette/graphics/Palette$Swatch;->getRgb()I

    move-result v0

    invoke-virtual {p1}, Landroidx/palette/graphics/Palette$Swatch;->getHsl()[F

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroidx/palette/graphics/ColorCutQuantizer;->shouldIgnoreColor(I[F)Z

    move-result p0

    return p0
.end method

.method private splitBoxes(Ljava/util/PriorityQueue;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/PriorityQueue<",
            "Landroidx/palette/graphics/ColorCutQuantizer$Vbox;",
            ">;I)V"
        }
    .end annotation

    .line 176
    :goto_0
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->size()I

    move-result p0

    if-ge p0, p2, :cond_1f

    .line 177
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;

    if-eqz p0, :cond_1f

    .line 179
    invoke-virtual {p0}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->canSplit()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 181
    invoke-virtual {p0}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->splitBox()Landroidx/palette/graphics/ColorCutQuantizer$Vbox;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 187
    invoke-virtual {p1, p0}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1f
    return-void
.end method


# virtual methods
.method getQuantizedColors()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/palette/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object p0, p0, Landroidx/palette/graphics/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    return-object p0
.end method
