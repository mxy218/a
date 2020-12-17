.class public Lcom/airbnb/lottie/LottieComposition;
.super Ljava/lang/Object;
.source "LottieComposition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/LottieComposition$Factory;
    }
.end annotation


# instance fields
.field private bounds:Landroid/graphics/Rect;

.field private characters:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Lcom/airbnb/lottie/model/FontCharacter;",
            ">;"
        }
    .end annotation
.end field

.field private endFrame:F

.field private fonts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/model/Font;",
            ">;"
        }
    .end annotation
.end field

.field private frameRate:F

.field private hasDashPattern:Z

.field private images:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/LottieImageAsset;",
            ">;"
        }
    .end annotation
.end field

.field private layerMap:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;"
        }
    .end annotation
.end field

.field private layers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;"
        }
    .end annotation
.end field

.field private markers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/Marker;",
            ">;"
        }
    .end annotation
.end field

.field private maskAndMatteCount:I

.field private final performanceTracker:Lcom/airbnb/lottie/PerformanceTracker;

.field private precomps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;>;"
        }
    .end annotation
.end field

.field private startFrame:F

.field private final warnings:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/airbnb/lottie/PerformanceTracker;

    invoke-direct {v0}, Lcom/airbnb/lottie/PerformanceTracker;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->performanceTracker:Lcom/airbnb/lottie/PerformanceTracker;

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->warnings:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/airbnb/lottie/LottieComposition;->maskAndMatteCount:I

    return-void
.end method


# virtual methods
.method public addWarning(Ljava/lang/String;)V
    .registers 3
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    const-string v0, "LOTTIE"

    .line 88
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object p0, p0, Lcom/airbnb/lottie/LottieComposition;->warnings:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getBounds()Landroid/graphics/Rect;
    .registers 1

    .line 136
    iget-object p0, p0, Lcom/airbnb/lottie/LottieComposition;->bounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getCharacters()Landroidx/collection/SparseArrayCompat;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/SparseArrayCompat<",
            "Lcom/airbnb/lottie/model/FontCharacter;",
            ">;"
        }
    .end annotation

    .line 168
    iget-object p0, p0, Lcom/airbnb/lottie/LottieComposition;->characters:Landroidx/collection/SparseArrayCompat;

    return-object p0
.end method

.method public getDuration()F
    .registers 3

    .line 140
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieComposition;->getDurationFrames()F

    move-result v0

    iget p0, p0, Lcom/airbnb/lottie/LottieComposition;->frameRate:F

    div-float/2addr v0, p0

    const/high16 p0, 0x447a0000  # 1000.0f

    mul-float/2addr v0, p0

    float-to-long v0, v0

    long-to-float p0, v0

    return p0
.end method

.method public getDurationFrames()F
    .registers 2

    .line 200
    iget v0, p0, Lcom/airbnb/lottie/LottieComposition;->endFrame:F

    iget p0, p0, Lcom/airbnb/lottie/LottieComposition;->startFrame:F

    sub-float/2addr v0, p0

    return v0
.end method

.method public getEndFrame()F
    .registers 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 150
    iget p0, p0, Lcom/airbnb/lottie/LottieComposition;->endFrame:F

    return p0
.end method

.method public getFonts()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/model/Font;",
            ">;"
        }
    .end annotation

    .line 172
    iget-object p0, p0, Lcom/airbnb/lottie/LottieComposition;->fonts:Ljava/util/Map;

    return-object p0
.end method

.method public getFrameRate()F
    .registers 1

    .line 154
    iget p0, p0, Lcom/airbnb/lottie/LottieComposition;->frameRate:F

    return p0
.end method

.method public getImages()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/LottieImageAsset;",
            ">;"
        }
    .end annotation

    .line 196
    iget-object p0, p0, Lcom/airbnb/lottie/LottieComposition;->images:Ljava/util/Map;

    return-object p0
.end method

.method public getLayers()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;"
        }
    .end annotation

    .line 158
    iget-object p0, p0, Lcom/airbnb/lottie/LottieComposition;->layers:Ljava/util/List;

    return-object p0
.end method

.method public getMarker(Ljava/lang/String;)Lcom/airbnb/lottie/model/Marker;
    .registers 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->markers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    const/4 v0, 0x0

    .line 182
    :goto_6
    iget-object v1, p0, Lcom/airbnb/lottie/LottieComposition;->markers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 183
    iget-object v1, p0, Lcom/airbnb/lottie/LottieComposition;->markers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/model/Marker;

    .line 184
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/model/Marker;->matchesName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    return-object v1

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMaskAndMatteCount()I
    .registers 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 115
    iget p0, p0, Lcom/airbnb/lottie/LottieComposition;->maskAndMatteCount:I

    return p0
.end method

.method public getPerformanceTracker()Lcom/airbnb/lottie/PerformanceTracker;
    .registers 1

    .line 127
    iget-object p0, p0, Lcom/airbnb/lottie/LottieComposition;->performanceTracker:Lcom/airbnb/lottie/PerformanceTracker;

    return-object p0
.end method

.method public getPrecomps(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;"
        }
    .end annotation

    .line 164
    iget-object p0, p0, Lcom/airbnb/lottie/LottieComposition;->precomps:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getStartFrame()F
    .registers 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 145
    iget p0, p0, Lcom/airbnb/lottie/LottieComposition;->startFrame:F

    return p0
.end method

.method public hasDashPattern()Z
    .registers 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 107
    iget-boolean p0, p0, Lcom/airbnb/lottie/LottieComposition;->hasDashPattern:Z

    return p0
.end method

.method public incrementMatteOrMaskCount(I)V
    .registers 3
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 99
    iget v0, p0, Lcom/airbnb/lottie/LottieComposition;->maskAndMatteCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/airbnb/lottie/LottieComposition;->maskAndMatteCount:I

    return-void
.end method

.method public init(Landroid/graphics/Rect;FFFLjava/util/List;Landroidx/collection/LongSparseArray;Ljava/util/Map;Ljava/util/Map;Landroidx/collection/SparseArrayCompat;Ljava/util/Map;Ljava/util/List;)V
    .registers 12
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "FFF",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;",
            "Landroidx/collection/LongSparseArray<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/LottieImageAsset;",
            ">;",
            "Landroidx/collection/SparseArrayCompat<",
            "Lcom/airbnb/lottie/model/FontCharacter;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/model/Font;",
            ">;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/Marker;",
            ">;)V"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/airbnb/lottie/LottieComposition;->bounds:Landroid/graphics/Rect;

    .line 74
    iput p2, p0, Lcom/airbnb/lottie/LottieComposition;->startFrame:F

    .line 75
    iput p3, p0, Lcom/airbnb/lottie/LottieComposition;->endFrame:F

    .line 76
    iput p4, p0, Lcom/airbnb/lottie/LottieComposition;->frameRate:F

    .line 77
    iput-object p5, p0, Lcom/airbnb/lottie/LottieComposition;->layers:Ljava/util/List;

    .line 78
    iput-object p6, p0, Lcom/airbnb/lottie/LottieComposition;->layerMap:Landroidx/collection/LongSparseArray;

    .line 79
    iput-object p7, p0, Lcom/airbnb/lottie/LottieComposition;->precomps:Ljava/util/Map;

    .line 80
    iput-object p8, p0, Lcom/airbnb/lottie/LottieComposition;->images:Ljava/util/Map;

    .line 81
    iput-object p9, p0, Lcom/airbnb/lottie/LottieComposition;->characters:Landroidx/collection/SparseArrayCompat;

    .line 82
    iput-object p10, p0, Lcom/airbnb/lottie/LottieComposition;->fonts:Ljava/util/Map;

    .line 83
    iput-object p11, p0, Lcom/airbnb/lottie/LottieComposition;->markers:Ljava/util/List;

    return-void
.end method

.method public layerModelForId(J)Lcom/airbnb/lottie/model/layer/Layer;
    .registers 3
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 132
    iget-object p0, p0, Lcom/airbnb/lottie/LottieComposition;->layerMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {p0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/model/layer/Layer;

    return-object p0
.end method

.method public setHasDashPattern(Z)V
    .registers 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 94
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieComposition;->hasDashPattern:Z

    return-void
.end method

.method public setPerformanceTrackingEnabled(Z)V
    .registers 2

    .line 123
    iget-object p0, p0, Lcom/airbnb/lottie/LottieComposition;->performanceTracker:Lcom/airbnb/lottie/PerformanceTracker;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/PerformanceTracker;->setEnabled(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LottieComposition:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    iget-object p0, p0, Lcom/airbnb/lottie/LottieComposition;->layers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/model/layer/Layer;

    const-string v2, "\t"

    .line 207
    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/model/layer/Layer;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 209
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
