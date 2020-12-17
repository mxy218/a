.class public Lcom/meizu/common/widget/AuraSeekBar;
.super Lcom/meizu/common/widget/SkipPosSeekBar;
.source "AuraSeekBar.java"


# instance fields
.field private isAuraShow:Z

.field private isDrag:Z

.field private mAuraBorderDistance:I

.field private mAuraDrawble:Landroid/graphics/drawable/Drawable;

.field private mAuraHeight:I

.field private mAuraHideAnimator:Landroid/animation/ValueAnimator;

.field private mAuraHideInterpolator:Landroid/view/animation/Interpolator;

.field private mAuraRadius:I

.field private mAuraShowAnimator:Landroid/animation/ValueAnimator;

.field private mAuraShowInterpolator:Landroid/view/animation/Interpolator;

.field private mAuraWidth:I

.field private mInitialTouchX:F

.field private mScaledTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/AuraSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 78
    sget v0, Lcom/meizu/common/R$attr;->MeizuCommon_AuraSeekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/AuraSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/SkipPosSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->isDrag:Z

    .line 62
    iput v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraBorderDistance:I

    .line 70
    iput-boolean v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->isAuraShow:Z

    .line 83
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/AuraSeekBar;->mScaledTouchSlop:I

    .line 84
    sget-object v1, Lcom/meizu/common/R$styleable;->AuraSeekBar:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 85
    sget p2, Lcom/meizu/common/R$styleable;->AuraSeekBar_mcAuraThumbDrawble:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraDrawble:Landroid/graphics/drawable/Drawable;

    .line 87
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    invoke-direct {p0}, Lcom/meizu/common/widget/AuraSeekBar;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/AuraSeekBar;)I
    .registers 1

    .line 50
    iget p0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraRadius:I

    return p0
.end method

.method static synthetic access$002(Lcom/meizu/common/widget/AuraSeekBar;I)I
    .registers 2

    .line 50
    iput p1, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraRadius:I

    return p1
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/AuraSeekBar;)I
    .registers 1

    .line 50
    iget p0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraHeight:I

    return p0
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/AuraSeekBar;)I
    .registers 1

    .line 50
    iget p0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraBorderDistance:I

    return p0
.end method

.method static synthetic access$202(Lcom/meizu/common/widget/AuraSeekBar;I)I
    .registers 2

    .line 50
    iput p1, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraBorderDistance:I

    return p1
.end method

.method static synthetic access$302(Lcom/meizu/common/widget/AuraSeekBar;Z)Z
    .registers 2

    .line 50
    iput-boolean p1, p0, Lcom/meizu/common/widget/AuraSeekBar;->isDrag:Z

    return p1
.end method

.method private init()V
    .registers 6

    .line 92
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_21

    .line 93
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3edc28f6  # 0.43f

    const/high16 v2, 0x3f800000  # 1.0f

    const v3, 0x3e4ccccd  # 0.2f

    invoke-direct {v0, v3, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraShowInterpolator:Landroid/view/animation/Interpolator;

    .line 94
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e2e147b  # 0.17f

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraHideInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_2f

    .line 96
    :cond_21
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraShowInterpolator:Landroid/view/animation/Interpolator;

    .line 97
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraHideInterpolator:Landroid/view/animation/Interpolator;

    :goto_2f
    return-void
.end method

.method private onProgressChanged()V
    .registers 2

    const/4 v0, 0x1

    .line 195
    iput-boolean v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->isDrag:Z

    .line 196
    iget-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraDrawble:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_17

    .line 197
    iget-boolean v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->isAuraShow:Z

    if-nez v0, :cond_e

    .line 198
    invoke-direct {p0}, Lcom/meizu/common/widget/AuraSeekBar;->startAuraShowAnim()V

    .line 200
    :cond_e
    iget-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->invalidate(Landroid/graphics/Rect;)V

    :cond_17
    return-void
.end method

.method private onStopTrackTouch()V
    .registers 2

    const/4 v0, 0x0

    .line 206
    iput-boolean v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->isAuraShow:Z

    .line 207
    iget-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraDrawble:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_13

    .line 208
    invoke-direct {p0}, Lcom/meizu/common/widget/AuraSeekBar;->startAuraHideAnim()V

    .line 209
    iget-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->invalidate(Landroid/graphics/Rect;)V

    :cond_13
    return-void
.end method

.method private startAuraHideAnim()V
    .registers 4

    .line 246
    iget-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraHideAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_32

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 247
    fill-array-data v0, :array_38

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraHideAnimator:Landroid/animation/ValueAnimator;

    .line 248
    iget-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraHideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 249
    iget-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraHideAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraHideInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 251
    iget-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/AuraSeekBar$2;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/AuraSeekBar$2;-><init>(Lcom/meizu/common/widget/AuraSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 262
    iget-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/AuraSeekBar$3;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/AuraSeekBar$3;-><init>(Lcom/meizu/common/widget/AuraSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 271
    :cond_32
    iget-object p0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_38
    .array-data 4
        0x3f800000  # 1.0f
        0x3f000000  # 0.5f
    .end array-data
.end method

.method private startAuraShowAnim()V
    .registers 4

    const/4 v0, 0x1

    .line 217
    iput-boolean v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->isAuraShow:Z

    .line 218
    iget-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraShowAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_2b

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 219
    fill-array-data v0, :array_32

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraShowAnimator:Landroid/animation/ValueAnimator;

    .line 220
    iget-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraShowAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 221
    iget-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraShowAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraShowInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 223
    iget-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraShowAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/AuraSeekBar$1;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/AuraSeekBar$1;-><init>(Lcom/meizu/common/widget/AuraSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 236
    :cond_2b
    iget-object p0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_32
    .array-data 4
        0x3f000000  # 0.5f
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private stopAuraHideAnim()V
    .registers 1

    .line 275
    iget-object p0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraHideAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_7

    .line 276
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_7
    return-void
.end method

.method private stopAuraShowAnim()V
    .registers 1

    .line 240
    iget-object p0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraShowAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_7

    .line 241
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_7
    return-void
.end method


# virtual methods
.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    monitor-enter p0

    .line 127
    :try_start_1
    iget-boolean v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->isDrag:Z

    if-eqz v0, :cond_d8

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_d8

    iget-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraDrawble:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d8

    .line 128
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 129
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 130
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 132
    iget v2, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraHeight:I

    const/4 v3, 0x0

    if-le v1, v2, :cond_33

    .line 133
    iget v2, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraHeight:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    goto :goto_34

    :cond_33
    move v1, v3

    .line 135
    :goto_34
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 136
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v2, v4, :cond_48

    const/4 v2, 0x0

    .line 138
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, v1

    int-to-float v1, v4

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_61

    .line 140
    :cond_48
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, v1

    int-to-float v1, v4

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 144
    :goto_61
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    .line 145
    iget v4, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraWidth:I

    int-to-float v4, v4

    div-float/2addr v4, v2

    sub-float/2addr v4, v1

    float-to-int v1, v4

    .line 146
    new-instance v2, Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v1

    iget v5, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraBorderDistance:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraBorderDistance:I

    add-int/2addr v5, v3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraBorderDistance:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraHeight:I

    iget v3, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraBorderDistance:I

    sub-int/2addr v1, v3

    invoke-direct {v2, v4, v5, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v0, "AuraSeekBar"

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "auraBounds y:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " x:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AuraSeekBar"

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "auraBounds "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 150
    iget-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 151
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 153
    :cond_d8
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_db
    .catchall {:try_start_1 .. :try_end_db} :catchall_dd

    .line 154
    monitor-exit p0

    return-void

    :catchall_dd
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 2

    .line 282
    invoke-super {p0, p1}, Lcom/meizu/common/widget/SkipPosSeekBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 283
    const-class p0, Lcom/meizu/common/widget/AuraSeekBar;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .registers 8

    monitor-enter p0

    .line 103
    :try_start_1
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraDrawble:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    .line 105
    iget-object v1, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraHeight:I

    .line 106
    iget-object v1, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraWidth:I

    goto :goto_1f

    .line 108
    :cond_1b
    iput v2, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraHeight:I

    .line 109
    iput v2, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraWidth:I

    :goto_1f
    if-eqz v0, :cond_3b

    .line 114
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/4 v3, 0x7

    const/16 v4, 0x30

    .line 115
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 116
    iget v3, p0, Lcom/meizu/common/widget/AuraSeekBar;->mAuraHeight:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_3d

    :cond_3b
    move v0, v2

    move v1, v0

    .line 118
    :goto_3d
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 119
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 120
    invoke-static {v1, p1, v2}, Landroid/widget/SeekBar;->resolveSizeAndState(III)I

    move-result p1

    .line 121
    invoke-static {v0, p2, v2}, Landroid/widget/SeekBar;->resolveSizeAndState(III)I

    move-result p2

    .line 120
    invoke-virtual {p0, p1, p2}, Landroid/widget/SeekBar;->setMeasuredDimension(II)V
    :try_end_5c
    .catchall {:try_start_1 .. :try_end_5c} :catchall_5e

    .line 122
    monitor-exit p0

    return-void

    :catchall_5e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 158
    invoke-super {p0, p1}, Lcom/meizu/common/widget/SkipPosSeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 159
    invoke-virtual {p0}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    return v1

    .line 162
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 163
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_47

    if-eq v2, v3, :cond_3f

    const/4 v0, 0x2

    if-eq v2, v0, :cond_27

    const/4 p1, 0x3

    if-eq v2, p1, :cond_1f

    goto :goto_51

    .line 185
    :cond_1f
    iget-boolean p1, p0, Lcom/meizu/common/widget/AuraSeekBar;->isDrag:Z

    if-eqz p1, :cond_51

    .line 186
    invoke-direct {p0}, Lcom/meizu/common/widget/AuraSeekBar;->onStopTrackTouch()V

    goto :goto_51

    .line 172
    :cond_27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mInitialTouchX:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mScaledTouchSlop:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_51

    .line 173
    iput-boolean v3, p0, Lcom/meizu/common/widget/AuraSeekBar;->isDrag:Z

    .line 174
    invoke-direct {p0}, Lcom/meizu/common/widget/AuraSeekBar;->onProgressChanged()V

    goto :goto_51

    .line 179
    :cond_3f
    iget-boolean p1, p0, Lcom/meizu/common/widget/AuraSeekBar;->isDrag:Z

    if-eqz p1, :cond_51

    .line 180
    invoke-direct {p0}, Lcom/meizu/common/widget/AuraSeekBar;->onStopTrackTouch()V

    goto :goto_51

    .line 165
    :cond_47
    iput v0, p0, Lcom/meizu/common/widget/AuraSeekBar;->mInitialTouchX:F

    .line 166
    iput-boolean v1, p0, Lcom/meizu/common/widget/AuraSeekBar;->isDrag:Z

    .line 167
    invoke-direct {p0}, Lcom/meizu/common/widget/AuraSeekBar;->stopAuraShowAnim()V

    .line 168
    invoke-direct {p0}, Lcom/meizu/common/widget/AuraSeekBar;->stopAuraHideAnim()V

    :cond_51
    :goto_51
    return v3
.end method
