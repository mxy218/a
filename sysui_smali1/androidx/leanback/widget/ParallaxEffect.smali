.class public abstract Landroidx/leanback/widget/ParallaxEffect;
.super Ljava/lang/Object;
.source "ParallaxEffect.java"


# instance fields
.field final mMarkerValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final mTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/leanback/widget/ParallaxTarget;",
            ">;"
        }
    .end annotation
.end field

.field final mTotalWeights:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final mWeights:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/leanback/widget/ParallaxEffect;->mMarkerValues:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/leanback/widget/ParallaxEffect;->mWeights:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/leanback/widget/ParallaxEffect;->mTotalWeights:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/leanback/widget/ParallaxEffect;->mTargets:Ljava/util/List;

    return-void
.end method


# virtual methods
.method abstract calculateDirectValue(Landroidx/leanback/widget/Parallax;)Ljava/lang/Number;
.end method

.method abstract calculateFraction(Landroidx/leanback/widget/Parallax;)F
.end method

.method public final performMapping(Landroidx/leanback/widget/Parallax;)V
    .registers 8

    .line 205
    iget-object v0, p0, Landroidx/leanback/widget/ParallaxEffect;->mMarkerValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_a

    return-void

    .line 211
    :cond_a
    invoke-virtual {p1}, Landroidx/leanback/widget/Parallax;->verifyFloatProperties()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    .line 216
    :goto_12
    iget-object v4, p0, Landroidx/leanback/widget/ParallaxEffect;->mTargets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3f

    .line 217
    iget-object v4, p0, Landroidx/leanback/widget/ParallaxEffect;->mTargets:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/leanback/widget/ParallaxTarget;

    .line 218
    invoke-virtual {v4}, Landroidx/leanback/widget/ParallaxTarget;->isDirectMapping()Z

    move-result v5

    if-eqz v5, :cond_32

    if-nez v1, :cond_2e

    .line 220
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/ParallaxEffect;->calculateDirectValue(Landroidx/leanback/widget/Parallax;)Ljava/lang/Number;

    move-result-object v1

    .line 222
    :cond_2e
    invoke-virtual {v4, v1}, Landroidx/leanback/widget/ParallaxTarget;->directUpdate(Ljava/lang/Number;)V

    goto :goto_3c

    :cond_32
    if-nez v0, :cond_39

    .line 226
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/ParallaxEffect;->calculateFraction(Landroidx/leanback/widget/Parallax;)F

    move-result v3

    const/4 v0, 0x1

    .line 228
    :cond_39
    invoke-virtual {v4, v3}, Landroidx/leanback/widget/ParallaxTarget;->update(F)V

    :goto_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_3f
    return-void
.end method
