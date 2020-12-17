.class public Lcom/meizu/settings/widget/LockDigitView;
.super Landroid/view/View;
.source "LockDigitView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/widget/LockDigitView$ShapeHolder;,
        Lcom/meizu/settings/widget/LockDigitView$CellInfo;,
        Lcom/meizu/settings/widget/LockDigitView$OnPatternListener;,
        Lcom/meizu/settings/widget/LockDigitView$Cell;
    }
.end annotation


# instance fields
.field private CircleRadio:I

.field private alphaPlay:Z

.field private iconHeight:I

.field private iconWidth:I

.field private isAlphaAnimating:Z

.field private isWhiteAnim:Z

.field private lastTouched:Lcom/meizu/settings/widget/LockDigitView$Cell;

.field private mAlphaAnim:Landroid/animation/AnimatorSet;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCellBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mCellInfoArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/meizu/settings/widget/LockDigitView$CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCellPaint:Landroid/graphics/Paint;

.field private mDebugPaint:Landroid/graphics/Paint;

.field private mDefIcons:[Landroid/graphics/drawable/Drawable;

.field private mEnableHapticFeedback:Z

.field private mFMI:Landroid/graphics/Paint$FontMetricsInt;

.field private mHitFactor:F

.field private mInProgressX:F

.field private mInProgressY:F

.field private mInStealthMode:Z

.field private mInputEnabled:Z

.field private mNumShapeHolder:Lcom/meizu/settings/widget/LockDigitView$ShapeHolder;

.field private mOnPatternListener:Lcom/meizu/settings/widget/LockDigitView$OnPatternListener;

.field private mPattern:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/widget/LockDigitView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mPatternDown:Z

.field private mPatternInProgress:Z

.field private mSquareHeight:F

.field private mSquareWidth:F

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSizeDefault:I

.field private touchOne:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 186
    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/widget/LockDigitView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 190
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/widget/LockDigitView;->mDebugPaint:Landroid/graphics/Paint;

    const/16 p1, 0x48

    .line 54
    iput p1, p0, Lcom/meizu/settings/widget/LockDigitView;->mTextSizeDefault:I

    .line 57
    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0xc

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/meizu/settings/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    const/high16 p1, -0x40800000  # -1.0f

    .line 64
    iput p1, p0, Lcom/meizu/settings/widget/LockDigitView;->mInProgressX:F

    .line 65
    iput p1, p0, Lcom/meizu/settings/widget/LockDigitView;->mInProgressY:F

    const/4 p1, 0x1

    .line 67
    iput-boolean p1, p0, Lcom/meizu/settings/widget/LockDigitView;->mInputEnabled:Z

    const/4 p2, 0x0

    .line 68
    iput-boolean p2, p0, Lcom/meizu/settings/widget/LockDigitView;->mInStealthMode:Z

    .line 69
    iput-boolean p2, p0, Lcom/meizu/settings/widget/LockDigitView;->mEnableHapticFeedback:Z

    .line 70
    iput-boolean p2, p0, Lcom/meizu/settings/widget/LockDigitView;->mPatternInProgress:Z

    .line 71
    iput-boolean p2, p0, Lcom/meizu/settings/widget/LockDigitView;->mPatternDown:Z

    const v0, 0x3f4ccccd  # 0.8f

    .line 73
    iput v0, p0, Lcom/meizu/settings/widget/LockDigitView;->mHitFactor:F

    .line 81
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/widget/LockDigitView;->mCellPaint:Landroid/graphics/Paint;

    .line 82
    iput-boolean p2, p0, Lcom/meizu/settings/widget/LockDigitView;->isAlphaAnimating:Z

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/meizu/settings/widget/LockDigitView;->lastTouched:Lcom/meizu/settings/widget/LockDigitView$Cell;

    .line 84
    iput-boolean p2, p0, Lcom/meizu/settings/widget/LockDigitView;->touchOne:Z

    .line 86
    iput-boolean p1, p0, Lcom/meizu/settings/widget/LockDigitView;->alphaPlay:Z

    .line 87
    iput-boolean p2, p0, Lcom/meizu/settings/widget/LockDigitView;->isWhiteAnim:Z

    const/16 p2, 0x51

    .line 88
    iput p2, p0, Lcom/meizu/settings/widget/LockDigitView;->CircleRadio:I

    const/16 p2, 0xaa

    .line 89
    iput p2, p0, Lcom/meizu/settings/widget/LockDigitView;->iconWidth:I

    .line 90
    iput p2, p0, Lcom/meizu/settings/widget/LockDigitView;->iconHeight:I

    .line 699
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/meizu/settings/widget/LockDigitView;->mCellInfoArray:Landroid/util/SparseArray;

    .line 192
    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 194
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lcom/meizu/settings/widget/LockDigitView;->mTextPaint:Landroid/graphics/Paint;

    .line 195
    iget-object p2, p0, Lcom/meizu/settings/widget/LockDigitView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 196
    iget-object p2, p0, Lcom/meizu/settings/widget/LockDigitView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x41c00000  # 24.0f

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 197
    iget-object p2, p0, Lcom/meizu/settings/widget/LockDigitView;->mTextPaint:Landroid/graphics/Paint;

    const v0, -0x4c000001

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 198
    iget-object p2, p0, Lcom/meizu/settings/widget/LockDigitView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 200
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080343

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/widget/LockDigitView;->mCellBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 201
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07043a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/meizu/settings/widget/LockDigitView;->CircleRadio:I

    .line 202
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070428

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/meizu/settings/widget/LockDigitView;->iconWidth:I

    .line 203
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070545

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/meizu/settings/widget/LockDigitView;->mTextSizeDefault:I

    .line 204
    iget p1, p0, Lcom/meizu/settings/widget/LockDigitView;->iconWidth:I

    iput p1, p0, Lcom/meizu/settings/widget/LockDigitView;->iconHeight:I

    .line 205
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/meizu/settings/widget/LockDigitView;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method private addCellFromKeyCode(I)Lcom/meizu/settings/widget/LockDigitView$Cell;
    .registers 4

    add-int/lit8 p1, p1, -0x7

    const/4 p0, 0x1

    const/4 v0, 0x3

    if-nez p1, :cond_b

    .line 465
    invoke-static {v0, p0}, Lcom/meizu/settings/widget/LockDigitView$Cell;->of(II)Lcom/meizu/settings/widget/LockDigitView$Cell;

    move-result-object p0

    return-object p0

    :cond_b
    if-lez p1, :cond_1a

    const/16 v1, 0xa

    if-ge p1, v1, :cond_1a

    sub-int/2addr p1, p0

    .line 468
    div-int/lit8 p0, p1, 0x3

    .line 469
    rem-int/2addr p1, v0

    .line 470
    invoke-static {p0, p1}, Lcom/meizu/settings/widget/LockDigitView$Cell;->of(II)Lcom/meizu/settings/widget/LockDigitView$Cell;

    move-result-object p0

    return-object p0

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method private addCellToPattern(Lcom/meizu/settings/widget/LockDigitView$Cell;)V
    .registers 4

    .line 403
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-le v0, v1, :cond_32

    invoke-direct {p0}, Lcom/meizu/settings/widget/LockDigitView;->shouldSpeakPasswordForAccessibility()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 404
    invoke-virtual {p1}, Lcom/meizu/settings/widget/LockDigitView$Cell;->getRow()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-virtual {p1}, Lcom/meizu/settings/widget/LockDigitView$Cell;->getColumn()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1e

    const/4 v0, 0x0

    .line 408
    :cond_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 410
    :cond_32
    iget-object v0, p0, Lcom/meizu/settings/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    invoke-direct {p0}, Lcom/meizu/settings/widget/LockDigitView;->notifyCellAdded()V

    return-void
.end method

.method private canAdd2Pattern(II)Z
    .registers 4

    .line 834
    invoke-static {p1, p2}, Lcom/meizu/settings/widget/LockDigitView$Cell;->indexOf(II)I

    move-result p1

    .line 835
    iget-object p2, p0, Lcom/meizu/settings/widget/LockDigitView;->mCellInfoArray:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/meizu/settings/widget/LockDigitView$CellInfo;

    const/4 v0, 0x0

    if-eqz p2, :cond_1f

    .line 837
    iget-object p0, p2, Lcom/meizu/settings/widget/LockDigitView$CellInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-nez p0, :cond_1c

    iget-object p0, p2, Lcom/meizu/settings/widget/LockDigitView$CellInfo;->label:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1c

    return v0

    .line 840
    :cond_1c
    iget-boolean p0, p2, Lcom/meizu/settings/widget/LockDigitView$CellInfo;->enabled:Z

    return p0

    .line 842
    :cond_1f
    invoke-direct {p0, p1}, Lcom/meizu/settings/widget/LockDigitView;->getDefaultIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_26

    return v0

    :cond_26
    const/4 p0, 0x1

    return p0
.end method

.method private checkForNewHit(FFZ)Lcom/meizu/settings/widget/LockDigitView$Cell;
    .registers 13

    .line 426
    iget v0, p0, Lcom/meizu/settings/widget/LockDigitView;->mSquareWidth:F

    .line 427
    iget v1, p0, Lcom/meizu/settings/widget/LockDigitView;->mHitFactor:F

    mul-float/2addr v1, v0

    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr v1, v0

    float-to-double v0, v1

    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    move v3, v1

    move v4, v2

    move v5, v4

    :goto_15
    const/4 v6, 0x3

    if-ge v3, v6, :cond_3b

    move v6, v5

    move v5, v4

    move v4, v1

    :goto_1b
    const/4 v7, 0x4

    if-ge v4, v7, :cond_36

    .line 434
    invoke-direct {p0, v3}, Lcom/meizu/settings/widget/LockDigitView;->getCenterXForColumn(I)F

    move-result v7

    sub-float v7, p1, v7

    .line 435
    invoke-direct {p0, v4}, Lcom/meizu/settings/widget/LockDigitView;->getCenterYForRow(I)F

    move-result v8

    sub-float v8, p2, v8

    mul-float/2addr v7, v7

    mul-float/2addr v8, v8

    add-float/2addr v7, v8

    cmpg-float v7, v7, v0

    if-gez v7, :cond_33

    move v6, v3

    move v5, v4

    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_36
    add-int/lit8 v3, v3, 0x1

    move v4, v5

    move v5, v6

    goto :goto_15

    :cond_3b
    const/4 p1, 0x0

    if-eq v4, v2, :cond_6d

    if-ne v5, v2, :cond_41

    goto :goto_6d

    :cond_41
    if-eqz p3, :cond_62

    .line 446
    iget-object p2, p0, Lcom/meizu/settings/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_62

    .line 447
    iget-object p2, p0, Lcom/meizu/settings/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/meizu/settings/widget/LockDigitView$Cell;

    .line 448
    iget p3, p2, Lcom/meizu/settings/widget/LockDigitView$Cell;->row:I

    if-ne p3, v4, :cond_62

    iget p2, p2, Lcom/meizu/settings/widget/LockDigitView$Cell;->column:I

    if-ne p2, v5, :cond_62

    return-object p1

    .line 453
    :cond_62
    invoke-direct {p0, v4, v5}, Lcom/meizu/settings/widget/LockDigitView;->canAdd2Pattern(II)Z

    move-result p0

    if-eqz p0, :cond_6d

    .line 456
    invoke-static {v4, v5}, Lcom/meizu/settings/widget/LockDigitView$Cell;->of(II)Lcom/meizu/settings/widget/LockDigitView$Cell;

    move-result-object p0

    return-object p0

    :cond_6d
    :goto_6d
    return-object p1
.end method

.method private createAlphaAnimation()V
    .registers 5

    .line 886
    new-instance v0, Lcom/meizu/settings/widget/LockDigitView$ShapeHolder;

    invoke-direct {v0, p0}, Lcom/meizu/settings/widget/LockDigitView$ShapeHolder;-><init>(Lcom/meizu/settings/widget/LockDigitView;)V

    iput-object v0, p0, Lcom/meizu/settings/widget/LockDigitView;->mNumShapeHolder:Lcom/meizu/settings/widget/LockDigitView$ShapeHolder;

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 887
    fill-array-data v0, :array_4a

    const-string v1, "alpha"

    invoke-static {v1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 889
    iget-object v1, p0, Lcom/meizu/settings/widget/LockDigitView;->mNumShapeHolder:Lcom/meizu/settings/widget/LockDigitView$ShapeHolder;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x15e

    .line 891
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 892
    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 894
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10c0006

    .line 893
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 895
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 897
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/meizu/settings/widget/LockDigitView;->mAlphaAnim:Landroid/animation/AnimatorSet;

    .line 898
    iget-object v1, p0, Lcom/meizu/settings/widget/LockDigitView;->mAlphaAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 899
    iget-object p0, p0, Lcom/meizu/settings/widget/LockDigitView;->mAlphaAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void

    :array_4a
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method private detectAndAddHit(FFZ)Lcom/meizu/settings/widget/LockDigitView$Cell;
    .registers 4

    .line 389
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/settings/widget/LockDigitView;->checkForNewHit(FFZ)Lcom/meizu/settings/widget/LockDigitView$Cell;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 391
    invoke-direct {p0, p1}, Lcom/meizu/settings/widget/LockDigitView;->addCellToPattern(Lcom/meizu/settings/widget/LockDigitView$Cell;)V

    .line 392
    iget-boolean p2, p0, Lcom/meizu/settings/widget/LockDigitView;->mEnableHapticFeedback:Z

    if-eqz p2, :cond_12

    const/4 p2, 0x1

    const/4 p3, 0x3

    .line 393
    invoke-virtual {p0, p2, p3}, Landroid/view/View;->performHapticFeedback(II)Z

    :cond_12
    return-object p1

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method private detectAndAddHitFromKeyCode(I)Lcom/meizu/settings/widget/LockDigitView$Cell;
    .registers 4

    .line 476
    invoke-direct {p0, p1}, Lcom/meizu/settings/widget/LockDigitView;->addCellFromKeyCode(I)Lcom/meizu/settings/widget/LockDigitView$Cell;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 478
    invoke-direct {p0, p1}, Lcom/meizu/settings/widget/LockDigitView;->addCellToPattern(Lcom/meizu/settings/widget/LockDigitView$Cell;)V

    .line 479
    iget-boolean v0, p0, Lcom/meizu/settings/widget/LockDigitView;->mEnableHapticFeedback:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 480
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z

    :cond_12
    return-object p1

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method private drawCell(Landroid/graphics/Canvas;IILcom/meizu/settings/widget/LockDigitView$Cell;)Z
    .registers 14

    .line 766
    invoke-direct {p0, p3}, Lcom/meizu/settings/widget/LockDigitView;->getCenterXForColumn(I)F

    move-result v0

    .line 767
    invoke-direct {p0, p2}, Lcom/meizu/settings/widget/LockDigitView;->getCenterYForRow(I)F

    move-result v1

    .line 778
    invoke-static {p2, p3}, Lcom/meizu/settings/widget/LockDigitView$Cell;->indexOf(II)I

    move-result v2

    .line 779
    iget-object v3, p0, Lcom/meizu/settings/widget/LockDigitView;->mCellInfoArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/settings/widget/LockDigitView$CellInfo;

    const/4 v4, 0x1

    if-eqz v3, :cond_1e

    .line 781
    iget-object v2, v3, Lcom/meizu/settings/widget/LockDigitView$CellInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 782
    iget-object v5, v3, Lcom/meizu/settings/widget/LockDigitView$CellInfo;->label:Ljava/lang/String;

    .line 783
    iget-boolean v6, v3, Lcom/meizu/settings/widget/LockDigitView$CellInfo;->enabled:Z

    goto :goto_24

    .line 785
    :cond_1e
    invoke-direct {p0, v2}, Lcom/meizu/settings/widget/LockDigitView;->getDefaultIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v5, 0x0

    move v6, v4

    :goto_24
    const/4 v7, 0x0

    if-nez v2, :cond_2d

    .line 788
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2f

    :cond_2d
    if-nez v6, :cond_30

    :cond_2f
    return v7

    :cond_30
    if-eqz p4, :cond_40

    .line 791
    invoke-virtual {p4}, Lcom/meizu/settings/widget/LockDigitView$Cell;->getRow()I

    move-result v6

    if-ne v6, p2, :cond_40

    invoke-virtual {p4}, Lcom/meizu/settings/widget/LockDigitView$Cell;->getColumn()I

    move-result p4

    if-ne p4, p3, :cond_40

    move p4, v4

    goto :goto_41

    :cond_40
    move p4, v7

    :goto_41
    if-eqz v3, :cond_57

    .line 792
    iget-object v3, v3, Lcom/meizu/settings/widget/LockDigitView$CellInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_48

    goto :goto_57

    .line 797
    :cond_48
    iget-boolean v6, p0, Lcom/meizu/settings/widget/LockDigitView;->alphaPlay:Z

    if-nez v6, :cond_6e

    if-eqz p4, :cond_51

    .line 798
    sget-object v6, Landroid/view/View;->PRESSED_STATE_SET:[I

    goto :goto_53

    :cond_51
    sget-object v6, Landroid/view/View;->EMPTY_STATE_SET:[I

    :goto_53
    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_6e

    .line 793
    :cond_57
    :goto_57
    iget-object v3, p0, Lcom/meizu/settings/widget/LockDigitView;->mCellBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_69

    iget-boolean v6, p0, Lcom/meizu/settings/widget/LockDigitView;->alphaPlay:Z

    if-nez v6, :cond_69

    if-eqz p4, :cond_64

    .line 794
    sget-object v6, Landroid/view/View;->PRESSED_STATE_SET:[I

    goto :goto_66

    :cond_64
    sget-object v6, Landroid/view/View;->EMPTY_STATE_SET:[I

    :goto_66
    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 795
    :cond_69
    iget-object v3, p0, Lcom/meizu/settings/widget/LockDigitView;->mCellBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, v3, p2, p3}, Lcom/meizu/settings/widget/LockDigitView;->drawIcon(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V

    :cond_6e
    :goto_6e
    if-eqz v2, :cond_74

    .line 802
    invoke-direct {p0, p1, v2, p2, p3}, Lcom/meizu/settings/widget/LockDigitView;->drawIcon(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V

    goto :goto_bd

    :cond_74
    const p4, -0x4c000001

    .line 805
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v4, :cond_80

    iget v2, p0, Lcom/meizu/settings/widget/LockDigitView;->mTextSizeDefault:I

    goto :goto_84

    :cond_80
    iget v2, p0, Lcom/meizu/settings/widget/LockDigitView;->mTextSizeDefault:I

    div-int/lit8 v2, v2, 0x2

    .line 806
    :goto_84
    iget-object v3, p0, Lcom/meizu/settings/widget/LockDigitView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 807
    iget-object p4, p0, Lcom/meizu/settings/widget/LockDigitView;->mTextPaint:Landroid/graphics/Paint;

    int-to-float v2, v2

    invoke-virtual {p4, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 808
    iget-object p4, p0, Lcom/meizu/settings/widget/LockDigitView;->mFMI:Landroid/graphics/Paint$FontMetricsInt;

    if-nez p4, :cond_9c

    .line 809
    iget-object p4, p0, Lcom/meizu/settings/widget/LockDigitView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p4

    iput-object p4, p0, Lcom/meizu/settings/widget/LockDigitView;->mFMI:Landroid/graphics/Paint$FontMetricsInt;

    goto :goto_a1

    .line 811
    :cond_9c
    iget-object v2, p0, Lcom/meizu/settings/widget/LockDigitView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p4}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 813
    :goto_a1
    iget-object p4, p0, Lcom/meizu/settings/widget/LockDigitView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p4

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr p4, v2

    sub-float p4, v0, p4

    .line 814
    iget-object v2, p0, Lcom/meizu/settings/widget/LockDigitView;->mFMI:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    int-to-float v2, v3

    sub-float v2, v1, v2

    .line 815
    iget-object v3, p0, Lcom/meizu/settings/widget/LockDigitView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, p4, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 818
    :goto_bd
    iget-boolean p4, p0, Lcom/meizu/settings/widget/LockDigitView;->touchOne:Z

    if-eqz p4, :cond_109

    iget-object p4, p0, Lcom/meizu/settings/widget/LockDigitView;->lastTouched:Lcom/meizu/settings/widget/LockDigitView$Cell;

    if-eqz p4, :cond_109

    invoke-virtual {p4}, Lcom/meizu/settings/widget/LockDigitView$Cell;->getColumn()I

    move-result p4

    if-ne p4, p3, :cond_109

    iget-object p3, p0, Lcom/meizu/settings/widget/LockDigitView;->lastTouched:Lcom/meizu/settings/widget/LockDigitView$Cell;

    .line 819
    invoke-virtual {p3}, Lcom/meizu/settings/widget/LockDigitView$Cell;->getRow()I

    move-result p3

    if-ne p3, p2, :cond_109

    iget-boolean p2, p0, Lcom/meizu/settings/widget/LockDigitView;->alphaPlay:Z

    if-eqz p2, :cond_109

    .line 820
    iget-boolean p2, p0, Lcom/meizu/settings/widget/LockDigitView;->isWhiteAnim:Z

    if-eqz p2, :cond_e9

    .line 821
    iget-object p2, p0, Lcom/meizu/settings/widget/LockDigitView;->mCellPaint:Landroid/graphics/Paint;

    const/4 p3, -0x1

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 822
    iget-object p2, p0, Lcom/meizu/settings/widget/LockDigitView;->mCellPaint:Landroid/graphics/Paint;

    const/16 p3, 0x99

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_ff

    .line 824
    :cond_e9
    iget-object p2, p0, Lcom/meizu/settings/widget/LockDigitView;->mCellPaint:Landroid/graphics/Paint;

    const/16 p3, 0xa6

    const/16 p4, 0xaa

    const/16 v2, 0xaf

    invoke-static {p3, p4, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 825
    iget-object p2, p0, Lcom/meizu/settings/widget/LockDigitView;->mCellPaint:Landroid/graphics/Paint;

    const/16 p3, 0x50

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 827
    :goto_ff
    iget p2, p0, Lcom/meizu/settings/widget/LockDigitView;->CircleRadio:I

    int-to-float p2, p2

    iget-object p3, p0, Lcom/meizu/settings/widget/LockDigitView;->mCellPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p2, p3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 828
    iput-boolean v7, p0, Lcom/meizu/settings/widget/LockDigitView;->touchOne:Z

    :cond_109
    return v4
.end method

.method private drawIcon(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V
    .registers 14

    .line 721
    invoke-direct {p0, p4}, Lcom/meizu/settings/widget/LockDigitView;->getCenterXForColumn(I)F

    move-result v0

    .line 722
    invoke-direct {p0, p3}, Lcom/meizu/settings/widget/LockDigitView;->getCenterYForRow(I)F

    move-result v1

    if-eqz p2, :cond_ad

    .line 728
    iget-boolean v2, p0, Lcom/meizu/settings/widget/LockDigitView;->isAlphaAnimating:Z

    const/16 v3, 0xcc

    if-eqz v2, :cond_8c

    iget-boolean v2, p0, Lcom/meizu/settings/widget/LockDigitView;->alphaPlay:Z

    if-eqz v2, :cond_8c

    .line 730
    iget-object v2, p0, Lcom/meizu/settings/widget/LockDigitView;->mNumShapeHolder:Lcom/meizu/settings/widget/LockDigitView$ShapeHolder;

    .line 731
    iget v4, p0, Lcom/meizu/settings/widget/LockDigitView;->iconWidth:I

    .line 732
    iget v5, p0, Lcom/meizu/settings/widget/LockDigitView;->iconHeight:I

    .line 733
    invoke-direct {p0, p4}, Lcom/meizu/settings/widget/LockDigitView;->getCenterXForColumn(I)F

    move-result v6

    div-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v6, v6

    .line 734
    invoke-direct {p0, p3}, Lcom/meizu/settings/widget/LockDigitView;->getCenterYForRow(I)F

    move-result v7

    div-int/lit8 v8, v5, 0x2

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    .line 735
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 736
    iget-object v3, p0, Lcom/meizu/settings/widget/LockDigitView;->lastTouched:Lcom/meizu/settings/widget/LockDigitView$Cell;

    if-eqz v3, :cond_83

    invoke-virtual {v3}, Lcom/meizu/settings/widget/LockDigitView$Cell;->getColumn()I

    move-result v3

    if-ne v3, p4, :cond_83

    iget-object p4, p0, Lcom/meizu/settings/widget/LockDigitView;->lastTouched:Lcom/meizu/settings/widget/LockDigitView$Cell;

    .line 737
    invoke-virtual {p4}, Lcom/meizu/settings/widget/LockDigitView$Cell;->getRow()I

    move-result p4

    if-ne p4, p3, :cond_83

    .line 738
    iget-boolean p3, p0, Lcom/meizu/settings/widget/LockDigitView;->isWhiteAnim:Z

    if-eqz p3, :cond_5c

    .line 739
    iget-object p3, p0, Lcom/meizu/settings/widget/LockDigitView;->mCellPaint:Landroid/graphics/Paint;

    const/4 p4, -0x1

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 740
    iget-object p3, p0, Lcom/meizu/settings/widget/LockDigitView;->mCellPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/meizu/settings/widget/LockDigitView$ShapeHolder;->getAlpha()F

    move-result p4

    const/high16 v2, 0x42960000  # 75.0f

    mul-float/2addr p4, v2

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_7b

    .line 742
    :cond_5c
    iget-object p3, p0, Lcom/meizu/settings/widget/LockDigitView;->mCellPaint:Landroid/graphics/Paint;

    const/16 p4, 0xa6

    const/16 v3, 0xaa

    const/16 v8, 0xaf

    invoke-static {p4, v3, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 743
    iget-object p3, p0, Lcom/meizu/settings/widget/LockDigitView;->mCellPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/meizu/settings/widget/LockDigitView$ShapeHolder;->getAlpha()F

    move-result p4

    const/high16 v2, 0x42200000  # 40.0f

    mul-float/2addr p4, v2

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 745
    :goto_7b
    iget p3, p0, Lcom/meizu/settings/widget/LockDigitView;->CircleRadio:I

    int-to-float p3, p3

    iget-object p0, p0, Lcom/meizu/settings/widget/LockDigitView;->mCellPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p3, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_83
    add-int/2addr v4, v6

    add-int/2addr v5, v7

    .line 747
    invoke-virtual {p2, v6, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 748
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_ad

    .line 750
    :cond_8c
    iget v0, p0, Lcom/meizu/settings/widget/LockDigitView;->iconWidth:I

    .line 751
    iget v1, p0, Lcom/meizu/settings/widget/LockDigitView;->iconHeight:I

    .line 752
    invoke-direct {p0, p4}, Lcom/meizu/settings/widget/LockDigitView;->getCenterXForColumn(I)F

    move-result p4

    div-int/lit8 v2, v0, 0x2

    int-to-float v2, v2

    sub-float/2addr p4, v2

    float-to-int p4, p4

    .line 753
    invoke-direct {p0, p3}, Lcom/meizu/settings/widget/LockDigitView;->getCenterYForRow(I)F

    move-result p0

    div-int/lit8 p3, v1, 0x2

    int-to-float p3, p3

    sub-float/2addr p0, p3

    float-to-int p0, p0

    add-int/2addr v0, p4

    add-int/2addr v1, p0

    .line 754
    invoke-virtual {p2, p4, p0, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 755
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 756
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_ad
    :goto_ad
    return-void
.end method

.method private getCenterXForColumn(I)F
    .registers 3

    .line 663
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    int-to-float p1, p1

    iget p0, p0, Lcom/meizu/settings/widget/LockDigitView;->mSquareWidth:F

    mul-float/2addr p1, p0

    add-float/2addr v0, p1

    const/high16 p1, 0x40000000  # 2.0f

    div-float/2addr p0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method private getCenterYForRow(I)F
    .registers 3

    .line 667
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    int-to-float p1, p1

    iget p0, p0, Lcom/meizu/settings/widget/LockDigitView;->mSquareHeight:F

    mul-float/2addr p1, p0

    add-float/2addr v0, p1

    const/high16 p1, 0x40000000  # 2.0f

    div-float/2addr p0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method private getDefaultIcon(I)Landroid/graphics/drawable/Drawable;
    .registers 7

    .line 209
    iget-object v0, p0, Lcom/meizu/settings/widget/LockDigitView;->mDefIcons:[Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_26

    const/16 v0, 0xc

    new-array v1, v0, [Landroid/graphics/drawable/Drawable;

    .line 211
    iput-object v1, p0, Lcom/meizu/settings/widget/LockDigitView;->mDefIcons:[Landroid/graphics/drawable/Drawable;

    .line 212
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0300b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v0, :cond_23

    .line 214
    iget-object v3, p0, Lcom/meizu/settings/widget/LockDigitView;->mDefIcons:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 216
    :cond_23
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 218
    :cond_26
    iget-object p0, p0, Lcom/meizu/settings/widget/LockDigitView;->mDefIcons:[Landroid/graphics/drawable/Drawable;

    aget-object p0, p0, p1

    return-object p0
.end method

.method private handleActionDown(Landroid/view/MotionEvent;)V
    .registers 6

    .line 642
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 643
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v1, 0x0

    .line 644
    invoke-direct {p0, v0, p1, v1}, Lcom/meizu/settings/widget/LockDigitView;->detectAndAddHit(FFZ)Lcom/meizu/settings/widget/LockDigitView$Cell;

    move-result-object v2

    if-eqz v2, :cond_26

    const/4 v1, 0x1

    .line 646
    iput-boolean v1, p0, Lcom/meizu/settings/widget/LockDigitView;->mPatternInProgress:Z

    .line 647
    invoke-direct {p0}, Lcom/meizu/settings/widget/LockDigitView;->notifyPatternStarted()V

    .line 648
    iget-boolean v3, p0, Lcom/meizu/settings/widget/LockDigitView;->isAlphaAnimating:Z

    if-eqz v3, :cond_1e

    .line 649
    iget-object v3, p0, Lcom/meizu/settings/widget/LockDigitView;->mAlphaAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    .line 651
    :cond_1e
    iput-object v2, p0, Lcom/meizu/settings/widget/LockDigitView;->lastTouched:Lcom/meizu/settings/widget/LockDigitView$Cell;

    .line 652
    iput-boolean v1, p0, Lcom/meizu/settings/widget/LockDigitView;->touchOne:Z

    .line 653
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_2b

    .line 655
    :cond_26
    iput-boolean v1, p0, Lcom/meizu/settings/widget/LockDigitView;->mPatternInProgress:Z

    .line 656
    invoke-direct {p0}, Lcom/meizu/settings/widget/LockDigitView;->notifyPatternCleared()V

    .line 658
    :goto_2b
    iput v0, p0, Lcom/meizu/settings/widget/LockDigitView;->mInProgressX:F

    .line 659
    iput p1, p0, Lcom/meizu/settings/widget/LockDigitView;->mInProgressY:F

    return-void
.end method

.method private handleActionKeyDown(I)V
    .registers 5

    .line 490
    invoke-direct {p0, p1}, Lcom/meizu/settings/widget/LockDigitView;->detectAndAddHitFromKeyCode(I)Lcom/meizu/settings/widget/LockDigitView$Cell;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_21

    const/4 v1, 0x1

    .line 492
    iput-boolean v1, p0, Lcom/meizu/settings/widget/LockDigitView;->mPatternInProgress:Z

    .line 493
    invoke-direct {p0}, Lcom/meizu/settings/widget/LockDigitView;->notifyPatternStarted()V

    .line 494
    iget-boolean v2, p0, Lcom/meizu/settings/widget/LockDigitView;->isAlphaAnimating:Z

    if-eqz v2, :cond_16

    .line 495
    iget-object v2, p0, Lcom/meizu/settings/widget/LockDigitView;->mAlphaAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->end()V

    .line 497
    :cond_16
    iput-object p1, p0, Lcom/meizu/settings/widget/LockDigitView;->lastTouched:Lcom/meizu/settings/widget/LockDigitView$Cell;

    .line 498
    iput-boolean v1, p0, Lcom/meizu/settings/widget/LockDigitView;->touchOne:Z

    .line 499
    invoke-virtual {p0, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 500
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_26

    .line 502
    :cond_21
    iput-boolean v0, p0, Lcom/meizu/settings/widget/LockDigitView;->mPatternInProgress:Z

    .line 503
    invoke-direct {p0}, Lcom/meizu/settings/widget/LockDigitView;->notifyPatternCleared()V

    :goto_26
    return-void
.end method

.method private handleActionMove(Landroid/view/MotionEvent;)V
    .registers 9

    .line 569
    iget-boolean v0, p0, Lcom/meizu/settings/widget/LockDigitView;->mPatternDown:Z

    if-nez v0, :cond_8

    .line 570
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 576
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    const/4 v1, 0x0

    :goto_d
    add-int/lit8 v2, v0, 0x1

    if-ge v1, v2, :cond_77

    .line 578
    iget-boolean v2, p0, Lcom/meizu/settings/widget/LockDigitView;->mPatternDown:Z

    if-nez v2, :cond_19

    .line 579
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_19
    if-ge v1, v0, :cond_20

    .line 582
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v2

    goto :goto_24

    :cond_20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    :goto_24
    if-ge v1, v0, :cond_2b

    .line 583
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v3

    goto :goto_2f

    :cond_2b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    :goto_2f
    const/4 v4, 0x1

    .line 584
    invoke-direct {p0, v2, v3, v4}, Lcom/meizu/settings/widget/LockDigitView;->detectAndAddHit(FFZ)Lcom/meizu/settings/widget/LockDigitView$Cell;

    move-result-object v5

    .line 585
    iget-object v6, p0, Lcom/meizu/settings/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v5, :cond_43

    if-ne v6, v4, :cond_43

    .line 587
    iput-boolean v4, p0, Lcom/meizu/settings/widget/LockDigitView;->mPatternInProgress:Z

    .line 588
    invoke-direct {p0}, Lcom/meizu/settings/widget/LockDigitView;->notifyPatternStarted()V

    :cond_43
    if-eqz v5, :cond_55

    .line 591
    iget-boolean v6, p0, Lcom/meizu/settings/widget/LockDigitView;->isAlphaAnimating:Z

    if-eqz v6, :cond_4e

    .line 592
    iget-object v6, p0, Lcom/meizu/settings/widget/LockDigitView;->mAlphaAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->end()V

    .line 594
    :cond_4e
    iput-object v5, p0, Lcom/meizu/settings/widget/LockDigitView;->lastTouched:Lcom/meizu/settings/widget/LockDigitView$Cell;

    .line 595
    iput-boolean v4, p0, Lcom/meizu/settings/widget/LockDigitView;->touchOne:Z

    .line 596
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 599
    :cond_55
    iget v4, p0, Lcom/meizu/settings/widget/LockDigitView;->mInProgressX:F

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 600
    iget v5, p0, Lcom/meizu/settings/widget/LockDigitView;->mInProgressY:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v4, v5

    .line 601
    iget v5, p0, Lcom/meizu/settings/widget/LockDigitView;->mSquareWidth:F

    const v6, 0x3c23d70a  # 0.01f

    mul-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_74

    .line 602
    iput v2, p0, Lcom/meizu/settings/widget/LockDigitView;->mInProgressX:F

    .line 603
    iput v3, p0, Lcom/meizu/settings/widget/LockDigitView;->mInProgressY:F

    :cond_74
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_77
    return-void
.end method

.method private handleActionUp(Landroid/view/MotionEvent;)V
    .registers 3

    const/4 p1, 0x0

    .line 622
    iput-boolean p1, p0, Lcom/meizu/settings/widget/LockDigitView;->mPatternDown:Z

    .line 623
    iput-boolean p1, p0, Lcom/meizu/settings/widget/LockDigitView;->touchOne:Z

    .line 624
    iget-object v0, p0, Lcom/meizu/settings/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 625
    iput-boolean p1, p0, Lcom/meizu/settings/widget/LockDigitView;->mPatternInProgress:Z

    .line 626
    invoke-direct {p0}, Lcom/meizu/settings/widget/LockDigitView;->notifyPatternDetected()V

    .line 628
    iget-boolean p1, p0, Lcom/meizu/settings/widget/LockDigitView;->isAlphaAnimating:Z

    if-eqz p1, :cond_1b

    .line 629
    iget-object p1, p0, Lcom/meizu/settings/widget/LockDigitView;->mAlphaAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->end()V

    .line 631
    :cond_1b
    iget-object p1, p0, Lcom/meizu/settings/widget/LockDigitView;->lastTouched:Lcom/meizu/settings/widget/LockDigitView$Cell;

    if-eqz p1, :cond_2c

    .line 632
    invoke-direct {p0}, Lcom/meizu/settings/widget/LockDigitView;->createAlphaAnimation()V

    .line 633
    iget-object p1, p0, Lcom/meizu/settings/widget/LockDigitView;->mAlphaAnim:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_2c

    const/4 v0, 0x1

    .line 634
    iput-boolean v0, p0, Lcom/meizu/settings/widget/LockDigitView;->isAlphaAnimating:Z

    .line 635
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_2c
    return-void
.end method

.method private notifyCellAdded()V
    .registers 3

    .line 278
    iget-object v0, p0, Lcom/meizu/settings/widget/LockDigitView;->mOnPatternListener:Lcom/meizu/settings/widget/LockDigitView$OnPatternListener;

    if-eqz v0, :cond_9

    .line 279
    iget-object v1, p0, Lcom/meizu/settings/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/meizu/settings/widget/LockDigitView$OnPatternListener;->onPatternCellAdded(Ljava/util/List;)V

    :cond_9
    const-string v0, "lockscreen_access_pattern_cell_added"

    .line 281
    invoke-direct {p0, v0}, Lcom/meizu/settings/widget/LockDigitView;->sendAccessEvent(Ljava/lang/String;)V

    return-void
.end method

.method private notifyPatternCleared()V
    .registers 2

    .line 299
    iget-object v0, p0, Lcom/meizu/settings/widget/LockDigitView;->mOnPatternListener:Lcom/meizu/settings/widget/LockDigitView$OnPatternListener;

    if-eqz v0, :cond_7

    .line 300
    invoke-interface {v0}, Lcom/meizu/settings/widget/LockDigitView$OnPatternListener;->onPatternCleared()V

    :cond_7
    const-string v0, "lockscreen_access_pattern_cleared"

    .line 302
    invoke-direct {p0, v0}, Lcom/meizu/settings/widget/LockDigitView;->sendAccessEvent(Ljava/lang/String;)V

    return-void
.end method

.method private notifyPatternDetected()V
    .registers 3

    .line 292
    iget-object v0, p0, Lcom/meizu/settings/widget/LockDigitView;->mOnPatternListener:Lcom/meizu/settings/widget/LockDigitView$OnPatternListener;

    if-eqz v0, :cond_9

    .line 293
    iget-object v1, p0, Lcom/meizu/settings/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/meizu/settings/widget/LockDigitView$OnPatternListener;->onPatternDetected(Ljava/util/List;)V

    :cond_9
    const-string v0, "lockscreen_access_pattern_detected"

    .line 295
    invoke-direct {p0, v0}, Lcom/meizu/settings/widget/LockDigitView;->sendAccessEvent(Ljava/lang/String;)V

    return-void
.end method

.method private notifyPatternStarted()V
    .registers 2

    .line 285
    iget-object v0, p0, Lcom/meizu/settings/widget/LockDigitView;->mOnPatternListener:Lcom/meizu/settings/widget/LockDigitView$OnPatternListener;

    if-eqz v0, :cond_7

    .line 286
    invoke-interface {v0}, Lcom/meizu/settings/widget/LockDigitView$OnPatternListener;->onPatternStart()V

    :cond_7
    const-string v0, "lockscreen_access_pattern_start"

    .line 288
    invoke-direct {p0, v0}, Lcom/meizu/settings/widget/LockDigitView;->sendAccessEvent(Ljava/lang/String;)V

    return-void
.end method

.method private resolveMeasured(II)I
    .registers 4

    .line 340
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    .line 341
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_10

    if-eqz p1, :cond_14

    move p2, p0

    goto :goto_14

    .line 346
    :cond_10
    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    :cond_14
    :goto_14
    return p2
.end method

.method private sendAccessEvent(Ljava/lang/String;)V
    .registers 5

    .line 611
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string v1, "string"

    const-string v2, "android"

    .line 613
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_10

    :cond_f
    const/4 p1, -0x1

    .line 615
    :goto_10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 p1, 0x4

    .line 616
    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    const/4 p1, 0x0

    .line 617
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private shouldSpeakPasswordForAccessibility()Z
    .registers 5

    .line 416
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "speak_password"

    .line 415
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_14

    move v0, v2

    goto :goto_15

    :cond_14
    move v0, v1

    .line 417
    :goto_15
    iget-object v3, p0, Lcom/meizu/settings/widget/LockDigitView;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v3, :cond_29

    .line 418
    invoke-virtual {v3}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v3

    if-nez v3, :cond_27

    iget-object p0, p0, Lcom/meizu/settings/widget/LockDigitView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result p0

    if-eqz p0, :cond_29

    :cond_27
    move p0, v2

    goto :goto_2a

    :cond_29
    move p0, v1

    :goto_2a
    if-nez v0, :cond_2e

    if-eqz p0, :cond_2f

    :cond_2e
    move v1, v2

    :cond_2f
    return v1
.end method


# virtual methods
.method public deleteLastCell()V
    .registers 2

    .line 855
    iget-object v0, p0, Lcom/meizu/settings/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 857
    iget-object p0, p0, Lcom/meizu/settings/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_f
    return-void
.end method

.method protected getSuggestedMinimumHeight()I
    .registers 1

    const/16 p0, 0x280

    return p0
.end method

.method protected getSuggestedMinimumWidth()I
    .registers 1

    const/16 p0, 0x1e0

    return p0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    const/4 p1, 0x0

    .line 913
    iput-boolean p1, p0, Lcom/meizu/settings/widget/LockDigitView;->isAlphaAnimating:Z

    const/4 p1, 0x0

    .line 915
    iput-object p1, p0, Lcom/meizu/settings/widget/LockDigitView;->lastTouched:Lcom/meizu/settings/widget/LockDigitView$Cell;

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 904
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 672
    iget-object v0, p0, Lcom/meizu/settings/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    .line 675
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_15

    .line 676
    iget-boolean v2, p0, Lcom/meizu/settings/widget/LockDigitView;->mPatternInProgress:Z

    if-eqz v2, :cond_15

    add-int/lit8 v1, v1, -0x1

    .line 677
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/widget/LockDigitView$Cell;

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    const/4 v1, 0x0

    move v2, v1

    :goto_18
    const/4 v3, 0x4

    if-ge v2, v3, :cond_28

    move v3, v1

    :goto_1c
    const/4 v4, 0x3

    if-ge v3, v4, :cond_25

    .line 682
    invoke-direct {p0, p1, v2, v3, v0}, Lcom/meizu/settings/widget/LockDigitView;->drawCell(Landroid/graphics/Canvas;IILcom/meizu/settings/widget/LockDigitView$Cell;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_28
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 521
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_38

    .line 522
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 523
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2e

    const/16 v1, 0x9

    if-eq v0, v1, :cond_29

    const/16 v1, 0xa

    if-eq v0, v1, :cond_24

    goto :goto_32

    :cond_24
    const/4 v1, 0x1

    .line 532
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_32

    :cond_29
    const/4 v1, 0x0

    .line 526
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_32

    :cond_2e
    const/4 v1, 0x2

    .line 529
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 535
    :goto_32
    invoke-virtual {p0, p1}, Lcom/meizu/settings/widget/LockDigitView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 536
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 538
    :cond_38
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 3

    .line 515
    invoke-direct {p0, p1}, Lcom/meizu/settings/widget/LockDigitView;->handleActionKeyDown(I)V

    .line 516
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x0

    .line 509
    invoke-direct {p0, v0}, Lcom/meizu/settings/widget/LockDigitView;->handleActionUp(Landroid/view/MotionEvent;)V

    .line 510
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onMeasure(II)V
    .registers 5

    .line 369
    invoke-virtual {p0}, Lcom/meizu/settings/widget/LockDigitView;->getSuggestedMinimumWidth()I

    move-result v0

    .line 370
    invoke-virtual {p0}, Lcom/meizu/settings/widget/LockDigitView;->getSuggestedMinimumHeight()I

    move-result v1

    .line 371
    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/widget/LockDigitView;->resolveMeasured(II)I

    move-result p1

    .line 372
    invoke-direct {p0, p2, v1}, Lcom/meizu/settings/widget/LockDigitView;->resolveMeasured(II)I

    move-result p2

    mul-int/lit8 p1, p1, 0x4

    .line 373
    div-int/lit8 p1, p1, 0x3

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    mul-int/lit8 p2, p1, 0x3

    .line 376
    div-int/lit8 p2, p2, 0x4

    .line 377
    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 331
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    int-to-float p1, p1

    const/high16 p3, 0x40400000  # 3.0f

    div-float/2addr p1, p3

    .line 332
    iput p1, p0, Lcom/meizu/settings/widget/LockDigitView;->mSquareWidth:F

    .line 334
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    sub-int/2addr p2, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p2, p1

    int-to-float p1, p2

    const/high16 p2, 0x40800000  # 4.0f

    div-float/2addr p1, p2

    .line 335
    iput p1, p0, Lcom/meizu/settings/widget/LockDigitView;->mSquareHeight:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 543
    iget-boolean v0, p0, Lcom/meizu/settings/widget/LockDigitView;->mInputEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_36

    .line 547
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_30

    if-eq v0, v2, :cond_2c

    const/4 v3, 0x2

    if-eq v0, v3, :cond_28

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1c

    return v1

    .line 559
    :cond_1c
    invoke-direct {p0, p1}, Lcom/meizu/settings/widget/LockDigitView;->handleActionUp(Landroid/view/MotionEvent;)V

    .line 560
    invoke-virtual {p0}, Lcom/meizu/settings/widget/LockDigitView;->resetPattern()V

    .line 561
    iput-boolean v1, p0, Lcom/meizu/settings/widget/LockDigitView;->mPatternInProgress:Z

    .line 562
    invoke-direct {p0}, Lcom/meizu/settings/widget/LockDigitView;->notifyPatternCleared()V

    return v2

    .line 556
    :cond_28
    invoke-direct {p0, p1}, Lcom/meizu/settings/widget/LockDigitView;->handleActionMove(Landroid/view/MotionEvent;)V

    return v2

    .line 553
    :cond_2c
    invoke-direct {p0, p1}, Lcom/meizu/settings/widget/LockDigitView;->handleActionUp(Landroid/view/MotionEvent;)V

    return v2

    .line 549
    :cond_30
    iput-boolean v2, p0, Lcom/meizu/settings/widget/LockDigitView;->mPatternDown:Z

    .line 550
    invoke-direct {p0, p1}, Lcom/meizu/settings/widget/LockDigitView;->handleActionDown(Landroid/view/MotionEvent;)V

    return v2

    :cond_36
    :goto_36
    return v1
.end method

.method public resetPattern()V
    .registers 2

    const/4 v0, 0x0

    .line 309
    iput-boolean v0, p0, Lcom/meizu/settings/widget/LockDigitView;->mPatternDown:Z

    .line 310
    iget-object v0, p0, Lcom/meizu/settings/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 311
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCellBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 864
    iput-object p1, p0, Lcom/meizu/settings/widget/LockDigitView;->mCellBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 865
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCellInfo(IILjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V
    .registers 9

    .line 709
    invoke-static {p1, p2}, Lcom/meizu/settings/widget/LockDigitView$Cell;->indexOf(II)I

    move-result v0

    if-nez p3, :cond_11

    if-nez p4, :cond_11

    const/4 v1, 0x1

    if-ne p5, v1, :cond_11

    .line 711
    iget-object p3, p0, Lcom/meizu/settings/widget/LockDigitView;->mCellInfoArray:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1b

    .line 713
    :cond_11
    iget-object v1, p0, Lcom/meizu/settings/widget/LockDigitView;->mCellInfoArray:Landroid/util/SparseArray;

    new-instance v2, Lcom/meizu/settings/widget/LockDigitView$CellInfo;

    invoke-direct {v2, p3, p4, p5}, Lcom/meizu/settings/widget/LockDigitView$CellInfo;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 715
    :goto_1b
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    int-to-float p3, p3

    int-to-float p2, p2

    iget p4, p0, Lcom/meizu/settings/widget/LockDigitView;->mSquareWidth:F

    mul-float/2addr p2, p4

    add-float/2addr p3, p2

    float-to-int p2, p3

    .line 716
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    int-to-float p3, p3

    int-to-float p1, p1

    iget p4, p0, Lcom/meizu/settings/widget/LockDigitView;->mSquareHeight:F

    mul-float/2addr p1, p4

    add-float/2addr p3, p1

    float-to-int p1, p3

    int-to-float p3, p2

    .line 717
    iget p5, p0, Lcom/meizu/settings/widget/LockDigitView;->mSquareWidth:F

    add-float/2addr p3, p5

    float-to-int p3, p3

    int-to-float p5, p1

    add-float/2addr p5, p4

    float-to-int p4, p5

    invoke-virtual {p0, p2, p1, p3, p4}, Landroid/view/View;->invalidate(IIII)V

    return-void
.end method

.method public setDefIcons([Landroid/graphics/drawable/Drawable;)V
    .registers 4

    if-eqz p1, :cond_9

    .line 875
    array-length v0, p1

    const/16 v1, 0xc

    if-ne v0, v1, :cond_9

    .line 876
    iput-object p1, p0, Lcom/meizu/settings/widget/LockDigitView;->mDefIcons:[Landroid/graphics/drawable/Drawable;

    .line 879
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setInStealthMode(Z)V
    .registers 2

    .line 242
    iput-boolean p1, p0, Lcom/meizu/settings/widget/LockDigitView;->mInStealthMode:Z

    return-void
.end method

.method public setOnPatternListener(Lcom/meizu/settings/widget/LockDigitView$OnPatternListener;)V
    .registers 2

    .line 262
    iput-object p1, p0, Lcom/meizu/settings/widget/LockDigitView;->mOnPatternListener:Lcom/meizu/settings/widget/LockDigitView$OnPatternListener;

    return-void
.end method

.method public setPattern(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meizu/settings/widget/LockDigitView$Cell;",
            ">;)V"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/meizu/settings/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 273
    iget-object v0, p0, Lcom/meizu/settings/widget/LockDigitView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 274
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPressedAnimation(Z)V
    .registers 2

    .line 953
    iput-boolean p1, p0, Lcom/meizu/settings/widget/LockDigitView;->alphaPlay:Z

    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .registers 2

    .line 252
    iput-boolean p1, p0, Lcom/meizu/settings/widget/LockDigitView;->mEnableHapticFeedback:Z

    return-void
.end method

.method public setTextSize(I)V
    .registers 2

    .line 958
    iput p1, p0, Lcom/meizu/settings/widget/LockDigitView;->mTextSizeDefault:I

    return-void
.end method
