.class public Lcom/android/systemui/qs/DataUsageGraph;
.super Landroid/view/View;
.source "DataUsageGraph.java"


# instance fields
.field private mLimitLevel:J

.field private final mMarkerWidth:I

.field private mMaxLevel:J

.field private final mOverlimitColor:I

.field private final mTmpPaint:Landroid/graphics/Paint;

.field private final mTmpRect:Landroid/graphics/RectF;

.field private final mTrackColor:I

.field private final mUsageColor:I

.field private mUsageLevel:J

.field private final mWarningColor:I

.field private mWarningLevel:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/DataUsageGraph;->mTmpRect:Landroid/graphics/RectF;

    .line 38
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/DataUsageGraph;->mTmpPaint:Landroid/graphics/Paint;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 48
    sget v0, Lcom/android/systemui/R$color;->data_usage_graph_track:I

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getColorStateListDefaultColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/DataUsageGraph;->mTrackColor:I

    .line 50
    sget v0, Lcom/android/systemui/R$color;->data_usage_graph_warning:I

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getColorStateListDefaultColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/DataUsageGraph;->mWarningColor:I

    .line 52
    invoke-static {p1}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/DataUsageGraph;->mUsageColor:I

    .line 53
    invoke-static {p1}, Lcom/android/settingslib/Utils;->getColorErrorDefaultColor(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/DataUsageGraph;->mOverlimitColor:I

    .line 54
    sget p1, Lcom/android/systemui/R$dimen;->data_usage_graph_marker_width:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMarkerWidth:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 14

    .line 67
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 69
    iget-object v0, p0, Lcom/android/systemui/qs/DataUsageGraph;->mTmpRect:Landroid/graphics/RectF;

    .line 70
    iget-object v1, p0, Lcom/android/systemui/qs/DataUsageGraph;->mTmpPaint:Landroid/graphics/Paint;

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 74
    iget-wide v4, p0, Lcom/android/systemui/qs/DataUsageGraph;->mLimitLevel:J

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_1f

    iget-wide v6, p0, Lcom/android/systemui/qs/DataUsageGraph;->mUsageLevel:J

    cmp-long v4, v6, v4

    if-lez v4, :cond_1f

    const/4 v4, 0x1

    goto :goto_20

    :cond_1f
    const/4 v4, 0x0

    :goto_20
    int-to-float v5, v2

    .line 75
    iget-wide v6, p0, Lcom/android/systemui/qs/DataUsageGraph;->mUsageLevel:J

    long-to-float v6, v6

    iget-wide v7, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMaxLevel:J

    long-to-float v9, v7

    div-float/2addr v6, v9

    mul-float/2addr v6, v5

    const/4 v9, 0x0

    if-eqz v4, :cond_59

    .line 78
    iget-wide v10, p0, Lcom/android/systemui/qs/DataUsageGraph;->mLimitLevel:J

    long-to-float v4, v10

    long-to-float v6, v7

    div-float/2addr v4, v6

    mul-float/2addr v4, v5

    iget v6, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMarkerWidth:I

    div-int/lit8 v7, v6, 0x2

    int-to-float v7, v7

    sub-float/2addr v4, v7

    int-to-float v6, v6

    .line 79
    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v6, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMarkerWidth:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v2, v6

    int-to-float v6, v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 82
    iget v4, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMarkerWidth:I

    int-to-float v4, v4

    add-float/2addr v4, v6

    int-to-float v7, v3

    invoke-virtual {v0, v4, v9, v5, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 83
    iget v4, p0, Lcom/android/systemui/qs/DataUsageGraph;->mOverlimitColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_65

    :cond_59
    int-to-float v4, v3

    .line 87
    invoke-virtual {v0, v9, v9, v5, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 88
    iget v4, p0, Lcom/android/systemui/qs/DataUsageGraph;->mTrackColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_65
    int-to-float v3, v3

    .line 93
    invoke-virtual {v0, v9, v9, v6, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 94
    iget v4, p0, Lcom/android/systemui/qs/DataUsageGraph;->mUsageColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 98
    iget-wide v6, p0, Lcom/android/systemui/qs/DataUsageGraph;->mWarningLevel:J

    long-to-float v4, v6

    iget-wide v6, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMaxLevel:J

    long-to-float v6, v6

    div-float/2addr v4, v6

    mul-float/2addr v5, v4

    iget v4, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMarkerWidth:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v5, v4

    .line 99
    invoke-static {v5, v9}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v5, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMarkerWidth:I

    sub-int/2addr v2, v5

    int-to-float v2, v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 100
    iget v4, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMarkerWidth:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    invoke-virtual {v0, v2, v9, v4, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 101
    iget p0, p0, Lcom/android/systemui/qs/DataUsageGraph;->mWarningColor:I

    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public setLevels(JJJ)V
    .registers 9

    const-wide/16 v0, 0x0

    .line 58
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/systemui/qs/DataUsageGraph;->mLimitLevel:J

    .line 59
    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/systemui/qs/DataUsageGraph;->mWarningLevel:J

    .line 60
    invoke-static {v0, v1, p5, p6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/systemui/qs/DataUsageGraph;->mUsageLevel:J

    .line 61
    iget-wide p1, p0, Lcom/android/systemui/qs/DataUsageGraph;->mLimitLevel:J

    iget-wide p3, p0, Lcom/android/systemui/qs/DataUsageGraph;->mWarningLevel:J

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iget-wide p3, p0, Lcom/android/systemui/qs/DataUsageGraph;->mUsageLevel:J

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    const-wide/16 p3, 0x1

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMaxLevel:J

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
