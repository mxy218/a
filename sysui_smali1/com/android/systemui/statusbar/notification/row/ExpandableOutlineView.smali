.class public abstract Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;
.super Lcom/android/systemui/statusbar/notification/row/ExpandableView;
.source "ExpandableOutlineView.java"


# static fields
.field private static final BOTTOM_ROUNDNESS:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

.field private static final EMPTY_PATH:Landroid/graphics/Path;

.field private static final ROUNDNESS_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field private static final TOP_ROUNDNESS:Lcom/android/systemui/statusbar/notification/AnimatableProperty;


# instance fields
.field private mAlwaysRoundBothCorners:Z

.field private mBackgroundTop:I

.field private mBottomRoundness:F

.field private final mClipPath:Landroid/graphics/Path;

.field private mCurrentBottomRoundness:F

.field private mCurrentTopRoundness:F

.field private mCustomOutline:Z

.field private mDistanceToTopRoundness:F

.field private mOutlineAlpha:F

.field protected mOutlineRadius:F

.field private final mOutlineRect:Landroid/graphics/Rect;

.field private final mProvider:Landroid/view/ViewOutlineProvider;

.field protected mShouldTranslateContents:Z

.field private mTmpPath:Landroid/graphics/Path;

.field private mTopAmountRounded:Z

.field private mTopRoundness:F


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 42
    sget-object v1, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ExpandableOutlineView$lgIjKBD4iaJhFeEZ5izPzOddhds;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ExpandableOutlineView$lgIjKBD4iaJhFeEZ5izPzOddhds;

    sget-object v2, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$iDWyu_PNFZfGQr9kcCLSWoFYxpI;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/-$$Lambda$iDWyu_PNFZfGQr9kcCLSWoFYxpI;

    sget v3, Lcom/android/systemui/R$id;->top_roundess_animator_tag:I

    sget v4, Lcom/android/systemui/R$id;->top_roundess_animator_end_tag:I

    sget v5, Lcom/android/systemui/R$id;->top_roundess_animator_start_tag:I

    const-string/jumbo v0, "topRoundness"

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->from(Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/util/function/Function;III)Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->TOP_ROUNDNESS:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    .line 49
    sget-object v2, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ExpandableOutlineView$ZLqiUGCQzNj3P4m8kfbTwbzfyaI;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ExpandableOutlineView$ZLqiUGCQzNj3P4m8kfbTwbzfyaI;

    sget-object v3, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$RLFq7_ULx7AWbuaAJNsAxNrN1PI;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/-$$Lambda$RLFq7_ULx7AWbuaAJNsAxNrN1PI;

    sget v4, Lcom/android/systemui/R$id;->bottom_roundess_animator_tag:I

    sget v5, Lcom/android/systemui/R$id;->bottom_roundess_animator_end_tag:I

    sget v6, Lcom/android/systemui/R$id;->bottom_roundess_animator_start_tag:I

    const-string v1, "bottomRoundness"

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->from(Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/util/function/Function;III)Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->BOTTOM_ROUNDNESS:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    .line 56
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    const-wide/16 v1, 0x168

    .line 57
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->ROUNDNESS_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 58
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->EMPTY_PATH:Landroid/graphics/Path;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 178
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    .line 61
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mClipPath:Landroid/graphics/Path;

    const/high16 p1, -0x40800000  # -1.0f

    .line 63
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineAlpha:F

    .line 66
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mTmpPath:Landroid/graphics/Path;

    .line 79
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mDistanceToTopRoundness:F

    .line 81
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mProvider:Landroid/view/ViewOutlineProvider;

    .line 179
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 180
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->initDimens()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;)Z
    .registers 1

    .line 40
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCustomOutline:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;)F
    .registers 1

    .line 40
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCurrentTopRoundness:F

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;)F
    .registers 1

    .line 40
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCurrentBottomRoundness:F

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;)Z
    .registers 1

    .line 40
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mAlwaysRoundBothCorners:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;)Z
    .registers 1

    .line 40
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mTopAmountRounded:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;)I
    .registers 1

    .line 40
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mBackgroundTop:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;)F
    .registers 1

    .line 40
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineAlpha:F

    return p0
.end method

.method public static getRoundedRectPath(IIIIFFLandroid/graphics/Path;)V
    .registers 12

    .line 150
    invoke-virtual {p6}, Landroid/graphics/Path;->reset()V

    sub-int v0, p2, p0

    .line 154
    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-static {v0, p4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 155
    invoke-static {v0, p5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v3, p4, v2

    if-lez v3, :cond_2a

    int-to-float v3, p0

    int-to-float p1, p1

    add-float/2addr p4, p1

    .line 157
    invoke-virtual {p6, v3, p4}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v4, v3, v1

    .line 158
    invoke-virtual {p6, v3, p1, v4, p1}, Landroid/graphics/Path;->quadTo(FFFF)V

    int-to-float v3, p2

    sub-float v1, v3, v1

    .line 159
    invoke-virtual {p6, v1, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 160
    invoke-virtual {p6, v3, p1, v3, p4}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_33

    :cond_2a
    int-to-float p4, p0

    int-to-float p1, p1

    .line 162
    invoke-virtual {p6, p4, p1}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float p4, p2

    .line 163
    invoke-virtual {p6, p4, p1}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_33
    cmpl-float p1, p5, v2

    if-lez p1, :cond_4c

    int-to-float p1, p2

    int-to-float p2, p3

    sub-float p3, p2, p5

    .line 166
    invoke-virtual {p6, p1, p3}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float p4, p1, v0

    .line 167
    invoke-virtual {p6, p1, p2, p4, p2}, Landroid/graphics/Path;->quadTo(FFFF)V

    int-to-float p0, p0

    add-float/2addr v0, p0

    .line 168
    invoke-virtual {p6, v0, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 169
    invoke-virtual {p6, p0, p2, p0, p3}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_55

    :cond_4c
    int-to-float p1, p2

    int-to-float p2, p3

    .line 171
    invoke-virtual {p6, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float p0, p0

    .line 172
    invoke-virtual {p6, p0, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 174
    :goto_55
    invoke-virtual {p6}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private initDimens()V
    .registers 4

    .line 259
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 260
    sget v1, Lcom/android/systemui/R$bool;->config_translateNotificationContentsOnSwipe:I

    .line 261
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mShouldTranslateContents:Z

    .line 262
    sget v1, Lcom/android/systemui/R$dimen;->notification_shadow_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRadius:F

    .line 263
    sget v1, Lcom/android/systemui/R$bool;->config_clipNotificationsToOutline:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mAlwaysRoundBothCorners:Z

    .line 264
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mAlwaysRoundBothCorners:Z

    if-nez v1, :cond_30

    .line 265
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const v2, 0x1010571

    .line 266
    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v1

    .line 265
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRadius:F

    .line 268
    :cond_30
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mAlwaysRoundBothCorners:Z

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    return-void
.end method

.method public static synthetic lambda$ZLqiUGCQzNj3P4m8kfbTwbzfyaI(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setBottomRoundnessInternal(F)V

    return-void
.end method

.method public static synthetic lambda$lgIjKBD4iaJhFeEZ5izPzOddhds(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setTopRoundnessInternal(F)V

    return-void
.end method

.method private setBottomRoundnessInternal(F)V
    .registers 2

    .line 338
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCurrentBottomRoundness:F

    .line 339
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->applyRoundness()V

    return-void
.end method

.method private setTopRoundnessInternal(F)V
    .registers 2

    .line 333
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCurrentTopRoundness:F

    .line 334
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->applyRoundness()V

    return-void
.end method


# virtual methods
.method protected applyRoundness()V
    .registers 1

    .line 286
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    .line 287
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method protected childNeedsClipping(Landroid/view/View;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 13

    .line 185
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isPinned()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 186
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    return p0

    .line 189
    :cond_b
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v0, 0x0

    .line 191
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mTopAmountRounded:Z

    if-eqz v1, :cond_53

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->topAmountNeedsClipping()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 192
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mExtraWidthForClipping:F

    neg-float v0, v0

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    float-to-int v1, v0

    .line 193
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipTopAmount:I

    int-to-float v0, v0

    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mDistanceToTopRoundness:F

    sub-float/2addr v0, v2

    float-to-int v2, v0

    .line 194
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mExtraWidthForClipping:F

    int-to-float v4, v1

    add-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v3, v0

    .line 195
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mMinimumHeightForClipping:I

    int-to-float v0, v0

    .line 196
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipBottomAmount:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v5, v2

    iget v6, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRadius:F

    add-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 195
    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v4, v0

    .line 197
    iget v5, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRadius:F

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mClipPath:Landroid/graphics/Path;

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getRoundedRectPath(IIIIFFLandroid/graphics/Path;)V

    .line 200
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mClipPath:Landroid/graphics/Path;

    .line 203
    :cond_53
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->childNeedsClipping(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_71

    .line 204
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getCustomClipPath(Landroid/view/View;)Landroid/graphics/Path;

    move-result-object v1

    if-nez v1, :cond_64

    .line 206
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getClipPath(Z)Landroid/graphics/Path;

    move-result-object v1

    :cond_64
    if-eqz v1, :cond_71

    if-eqz v0, :cond_6d

    .line 210
    sget-object v2, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 212
    :cond_6d
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    const/4 v2, 0x1

    :cond_71
    if-nez v2, :cond_78

    if-eqz v0, :cond_78

    .line 217
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 219
    :cond_78
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    .line 220
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p0
.end method

.method protected getClipPath(Z)Landroid/graphics/Path;
    .registers 15

    .line 111
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mAlwaysRoundBothCorners:Z

    if-eqz v0, :cond_7

    .line 112
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRadius:F

    goto :goto_b

    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getCurrentBackgroundRadiusTop()F

    move-result v0

    .line 113
    :goto_b
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCustomOutline:Z

    if-nez v1, :cond_4c

    .line 114
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mShouldTranslateContents:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    if-nez p1, :cond_1c

    .line 115
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTranslation()F

    move-result p1

    float-to-int p1, p1

    goto :goto_1d

    :cond_1c
    move p1, v2

    .line 116
    :goto_1d
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mExtraWidthForClipping:F

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v1, v3

    float-to-int v1, v1

    .line 117
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr v3, v1

    .line 118
    iget v4, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipTopAmount:I

    iget v5, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mBackgroundTop:I

    add-int/2addr v4, v5

    .line 119
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    add-int/2addr v5, v1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    add-int/2addr v5, p1

    .line 122
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mMinimumHeightForClipping:I

    .line 123
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipBottomAmount:I

    sub-int/2addr v1, v2

    int-to-float v2, v4

    add-float/2addr v2, v0

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 122
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_56

    .line 125
    :cond_4c
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    .line 126
    iget v4, p1, Landroid/graphics/Rect;->top:I

    .line 127
    iget v5, p1, Landroid/graphics/Rect;->right:I

    .line 128
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    :goto_56
    move v9, p1

    move v6, v3

    move v7, v4

    move v8, v5

    sub-int p1, v9, v7

    if-nez p1, :cond_61

    .line 132
    sget-object p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->EMPTY_PATH:Landroid/graphics/Path;

    return-object p0

    .line 134
    :cond_61
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mAlwaysRoundBothCorners:Z

    if-eqz v1, :cond_68

    .line 135
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRadius:F

    goto :goto_6c

    :cond_68
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getCurrentBackgroundRadiusBottom()F

    move-result v1

    :goto_6c
    add-float v2, v0, v1

    int-to-float p1, p1

    cmpl-float v3, v2, p1

    if-lez v3, :cond_82

    sub-float/2addr v2, p1

    .line 138
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCurrentTopRoundness:F

    mul-float v3, v2, p1

    iget v4, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCurrentBottomRoundness:F

    add-float v5, p1, v4

    div-float/2addr v3, v5

    sub-float/2addr v0, v3

    mul-float/2addr v2, v4

    add-float/2addr p1, v4

    div-float/2addr v2, p1

    sub-float/2addr v1, v2

    :cond_82
    move v10, v0

    move v11, v1

    .line 143
    iget-object v12, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mTmpPath:Landroid/graphics/Path;

    invoke-static/range {v6 .. v12}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getRoundedRectPath(IIIIFFLandroid/graphics/Path;)V

    .line 145
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mTmpPath:Landroid/graphics/Path;

    return-object p0
.end method

.method protected getCurrentBackgroundRadiusBottom()F
    .registers 2

    .line 308
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCurrentBottomRoundness:F

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRadius:F

    mul-float/2addr v0, p0

    return v0
.end method

.method public getCurrentBackgroundRadiusTop()F
    .registers 2

    .line 293
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mTopAmountRounded:Z

    if-eqz v0, :cond_7

    .line 294
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRadius:F

    return p0

    .line 296
    :cond_7
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCurrentTopRoundness:F

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRadius:F

    mul-float/2addr v0, p0

    return v0
.end method

.method public getCurrentBottomRoundness()F
    .registers 1

    .line 304
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCurrentBottomRoundness:F

    return p0
.end method

.method public getCurrentTopRoundness()F
    .registers 1

    .line 300
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCurrentTopRoundness:F

    return p0
.end method

.method public getCustomClipPath(Landroid/view/View;)Landroid/graphics/Path;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOutlineAlpha()F
    .registers 1

    .line 383
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineAlpha:F

    return p0
.end method

.method public getOutlineTranslation()I
    .registers 2

    .line 397
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCustomOutline:Z

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    goto :goto_e

    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTranslation()F

    move-result p0

    float-to-int p0, p0

    :goto_e
    return p0
.end method

.method protected isClippingNeeded()Z
    .registers 2

    .line 255
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mAlwaysRoundBothCorners:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCustomOutline:Z

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTranslation()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_12

    goto :goto_14

    :cond_12
    const/4 p0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 p0, 0x1

    :goto_15
    return p0
.end method

.method protected needsOutline()Z
    .registers 4

    .line 413
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isChildInGroup()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    .line 414
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isGroupExpanded()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isGroupExpansionChanging()Z

    move-result p0

    if-nez p0, :cond_15

    move v1, v2

    :cond_15
    return v1

    .line 415
    :cond_16
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isSummaryWithChildren()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 416
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isGroupExpanded()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isGroupExpansionChanging()Z

    move-result p0

    if-eqz p0, :cond_29

    :cond_28
    move v1, v2

    :cond_29
    return v1

    :cond_2a
    return v2
.end method

.method public onDensityOrFontScaleChanged()V
    .registers 1

    .line 343
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->initDimens()V

    .line 344
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->applyRoundness()V

    return-void
.end method

.method public setActualHeight(IZ)V
    .registers 4

    .line 349
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v0

    .line 350
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setActualHeight(IZ)V

    if-eq v0, p1, :cond_c

    .line 352
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->applyRoundness()V

    :cond_c
    return-void
.end method

.method public setBottomRoundness(FZ)Z
    .registers 5

    .line 316
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mBottomRoundness:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_11

    .line 317
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mBottomRoundness:F

    .line 318
    sget-object v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->BOTTOM_ROUNDNESS:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    sget-object v1, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->ROUNDNESS_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-static {p0, v0, p1, v1, p2}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public setClipBottomAmount(I)V
    .registers 3

    .line 367
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipBottomAmount()I

    move-result v0

    .line 368
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setClipBottomAmount(I)V

    if-eq v0, p1, :cond_c

    .line 370
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->applyRoundness()V

    :cond_c
    return-void
.end method

.method public setClipTopAmount(I)V
    .registers 3

    .line 358
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    move-result v0

    .line 359
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setClipTopAmount(I)V

    if-eq v0, p1, :cond_c

    .line 361
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->applyRoundness()V

    :cond_c
    return-void
.end method

.method public setDistanceToTopRoundness(F)V
    .registers 3

    .line 238
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setDistanceToTopRoundness(F)V

    .line 239
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mDistanceToTopRoundness:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 240
    :goto_11
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mTopAmountRounded:Z

    .line 241
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mDistanceToTopRoundness:F

    .line 242
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->applyRoundness()V

    :cond_18
    return-void
.end method

.method public setExtraWidthForClipping(F)V
    .registers 2

    .line 226
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setExtraWidthForClipping(F)V

    .line 227
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setMinimumHeightForClipping(I)V
    .registers 2

    .line 232
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setMinimumHeightForClipping(I)V

    .line 233
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method protected setOutlineAlpha(F)V
    .registers 3

    .line 375
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineAlpha:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    .line 376
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineAlpha:F

    .line 377
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->applyRoundness()V

    :cond_b
    return-void
.end method

.method protected setOutlineRect(FFFF)V
    .registers 8

    const/4 v0, 0x1

    .line 427
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCustomOutline:Z

    .line 429
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    float-to-int v1, p1

    float-to-int v2, p2

    float-to-int p3, p3

    float-to-int p4, p4

    invoke-virtual {v0, v1, v2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 432
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget p4, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float p4, p4

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p3, Landroid/graphics/Rect;->bottom:I

    .line 433
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->right:I

    int-to-float p3, p3

    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p2, Landroid/graphics/Rect;->right:I

    .line 434
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->applyRoundness()V

    return-void
.end method

.method protected setOutlineRect(Landroid/graphics/RectF;)V
    .registers 5

    if-eqz p1, :cond_e

    .line 388
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setOutlineRect(FFFF)V

    goto :goto_14

    :cond_e
    const/4 p1, 0x0

    .line 390
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCustomOutline:Z

    .line 391
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->applyRoundness()V

    :goto_14
    return-void
.end method

.method public setTopRoundness(FZ)Z
    .registers 5

    .line 276
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mTopRoundness:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_11

    .line 277
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mTopRoundness:F

    .line 278
    sget-object v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->TOP_ROUNDNESS:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    sget-object v1, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->ROUNDNESS_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-static {p0, v0, p1, v1, p2}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public topAmountNeedsClipping()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public updateOutline()V
    .registers 2

    .line 401
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCustomOutline:Z

    if-eqz v0, :cond_5

    return-void

    .line 404
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->needsOutline()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 405
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mProvider:Landroid/view/ViewOutlineProvider;

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method
