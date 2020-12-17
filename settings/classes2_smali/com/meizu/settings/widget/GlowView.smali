.class public Lcom/meizu/settings/widget/GlowView;
.super Landroid/view/View;
.source "GlowView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/widget/GlowView$Callback;,
        Lcom/meizu/settings/widget/GlowView$GlowViewInfo;
    }
.end annotation


# static fields
.field private static GLOW_VIEW_START_SIZE:I = 0x0

.field private static GLOW_VIEW_SUBJOIN_SIZE:I = 0x0

.field private static cx:I = 0x0

.field private static cy:I = 0x0

.field private static mGlowViewColor:I = -0x1


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mCallback:Lcom/meizu/settings/widget/GlowView$Callback;

.field private mGlowViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/widget/GlowView$GlowViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field private mNewGlowViewDelay:J

.field private mPaint:Landroid/graphics/Paint;

.field private mRunningStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/widget/GlowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/settings/widget/GlowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p3, "stop"

    .line 34
    iput-object p3, p0, Lcom/meizu/settings/widget/GlowView;->mRunningStatus:Ljava/lang/String;

    const-wide/16 v0, 0x1c2

    .line 43
    iput-wide v0, p0, Lcom/meizu/settings/widget/GlowView;->mNewGlowViewDelay:J

    .line 54
    new-instance p3, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p3, p0, Lcom/meizu/settings/widget/GlowView;->mGlowViewList:Ljava/util/ArrayList;

    .line 105
    new-instance p3, Lcom/meizu/settings/widget/GlowView$1;

    invoke-direct {p3, p0}, Lcom/meizu/settings/widget/GlowView$1;-><init>(Lcom/meizu/settings/widget/GlowView;)V

    iput-object p3, p0, Lcom/meizu/settings/widget/GlowView;->mHandler:Landroid/os/Handler;

    const/4 p3, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_44

    .line 74
    sget-object v2, Lcom/android/settings/R$styleable;->GlowView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 75
    sget p2, Lcom/meizu/settings/widget/GlowView;->mGlowViewColor:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    sput p2, Lcom/meizu/settings/widget/GlowView;->mGlowViewColor:I

    .line 76
    sget p2, Lcom/meizu/settings/widget/GlowView;->GLOW_VIEW_START_SIZE:I

    int-to-float p2, p2

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    sput p2, Lcom/meizu/settings/widget/GlowView;->GLOW_VIEW_START_SIZE:I

    const/4 p2, 0x3

    .line 78
    sget v2, Lcom/meizu/settings/widget/GlowView;->GLOW_VIEW_SUBJOIN_SIZE:I

    int-to-float v2, v2

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    sput p2, Lcom/meizu/settings/widget/GlowView;->GLOW_VIEW_SUBJOIN_SIZE:I

    .line 80
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_44
    :goto_44
    if-ge p3, v0, :cond_53

    .line 84
    iget-object p1, p0, Lcom/meizu/settings/widget/GlowView;->mGlowViewList:Ljava/util/ArrayList;

    new-instance p2, Lcom/meizu/settings/widget/GlowView$GlowViewInfo;

    invoke-direct {p2, p0}, Lcom/meizu/settings/widget/GlowView$GlowViewInfo;-><init>(Lcom/meizu/settings/widget/GlowView;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_44

    .line 86
    :cond_53
    iget-object p1, p0, Lcom/meizu/settings/widget/GlowView;->mPaint:Landroid/graphics/Paint;

    if-nez p1, :cond_71

    .line 87
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/meizu/settings/widget/GlowView;->mPaint:Landroid/graphics/Paint;

    .line 88
    iget-object p1, p0, Lcom/meizu/settings/widget/GlowView;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 89
    iget-object p1, p0, Lcom/meizu/settings/widget/GlowView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 90
    iget-object p0, p0, Lcom/meizu/settings/widget/GlowView;->mPaint:Landroid/graphics/Paint;

    sget p1, Lcom/meizu/settings/widget/GlowView;->mGlowViewColor:I

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_71
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/widget/GlowView;)J
    .registers 3

    .line 28
    iget-wide v0, p0, Lcom/meizu/settings/widget/GlowView;->mNewGlowViewDelay:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/meizu/settings/widget/GlowView;J)J
    .registers 3

    .line 28
    iput-wide p1, p0, Lcom/meizu/settings/widget/GlowView;->mNewGlowViewDelay:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/meizu/settings/widget/GlowView;)Ljava/util/ArrayList;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/meizu/settings/widget/GlowView;->mGlowViewList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/widget/GlowView;Ljava/util/ArrayList;)V
    .registers 2

    .line 28
    invoke-direct {p0, p1}, Lcom/meizu/settings/widget/GlowView;->reliveGlowView(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/settings/widget/GlowView;Ljava/util/ArrayList;)Z
    .registers 2

    .line 28
    invoke-direct {p0, p1}, Lcom/meizu/settings/widget/GlowView;->isAllGlowViewDied(Ljava/util/ArrayList;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/widget/GlowView;)Landroid/animation/ValueAnimator;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/meizu/settings/widget/GlowView;->mAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$500(Lcom/meizu/settings/widget/GlowView;Ljava/util/ArrayList;J)V
    .registers 4

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/settings/widget/GlowView;->updateGlowView(Ljava/util/ArrayList;J)V

    return-void
.end method

.method private isAllGlowViewDied(Ljava/util/ArrayList;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/widget/GlowView$GlowViewInfo;",
            ">;)Z"
        }
    .end annotation

    .line 194
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/widget/GlowView$GlowViewInfo;

    .line 195
    iget-boolean p1, p1, Lcom/meizu/settings/widget/GlowView$GlowViewInfo;->isAlive:Z

    if-eqz p1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_16
    const/4 p0, 0x1

    return p0
.end method

.method private reliveGlowView(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/widget/GlowView$GlowViewInfo;",
            ">;)V"
        }
    .end annotation

    .line 237
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/widget/GlowView$GlowViewInfo;

    .line 238
    iget-boolean v0, p1, Lcom/meizu/settings/widget/GlowView$GlowViewInfo;->isAlive:Z

    if-nez v0, :cond_4

    const/4 p0, 0x1

    .line 239
    iput-boolean p0, p1, Lcom/meizu/settings/widget/GlowView$GlowViewInfo;->isAlive:Z

    .line 240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/meizu/settings/widget/GlowView$GlowViewInfo;->mBornTime:J

    :cond_1d
    return-void
.end method

.method private updateGlowView(Ljava/util/ArrayList;J)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/widget/GlowView$GlowViewInfo;",
            ">;J)V"
        }
    .end annotation

    .line 209
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/widget/GlowView$GlowViewInfo;

    .line 210
    iget-boolean v1, v0, Lcom/meizu/settings/widget/GlowView$GlowViewInfo;->isAlive:Z

    if-eqz v1, :cond_4

    .line 211
    iget-wide v1, v0, Lcom/meizu/settings/widget/GlowView$GlowViewInfo;->mBornTime:J

    sub-long v1, p2, v1

    const-wide/16 v3, 0x535

    cmp-long v5, v1, v3

    if-gez v5, :cond_20

    const/4 v5, 0x1

    goto :goto_21

    :cond_20
    const/4 v5, 0x0

    .line 212
    :goto_21
    iput-boolean v5, v0, Lcom/meizu/settings/widget/GlowView$GlowViewInfo;->isAlive:Z

    .line 216
    iget-boolean v5, v0, Lcom/meizu/settings/widget/GlowView$GlowViewInfo;->isAlive:Z

    if-eqz v5, :cond_4

    .line 217
    sget v5, Lcom/meizu/settings/widget/GlowView;->GLOW_VIEW_START_SIZE:I

    int-to-long v5, v5

    sget v7, Lcom/meizu/settings/widget/GlowView;->GLOW_VIEW_SUBJOIN_SIZE:I

    int-to-long v7, v7

    mul-long/2addr v7, v1

    div-long/2addr v7, v3

    add-long/2addr v5, v7

    long-to-int v5, v5

    iput v5, v0, Lcom/meizu/settings/widget/GlowView$GlowViewInfo;->mRadius:I

    const-wide/16 v5, 0x85

    cmp-long v7, v1, v5

    const-wide/16 v8, 0x30

    if-gez v7, :cond_3e

    mul-long/2addr v1, v8

    .line 221
    div-long/2addr v1, v5

    goto :goto_44

    :cond_3e
    sub-long/2addr v3, v1

    mul-long/2addr v3, v8

    const-wide/16 v1, 0x4b0

    .line 223
    div-long v1, v3, v1

    :goto_44
    long-to-int v1, v1

    iput v1, v0, Lcom/meizu/settings/widget/GlowView$GlowViewInfo;->mAlpha:I

    goto :goto_4

    .line 228
    :cond_48
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .registers 3

    .line 274
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 275
    iget-object v0, p0, Lcom/meizu/settings/widget/GlowView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 276
    iget-object v0, p0, Lcom/meizu/settings/widget/GlowView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 277
    :cond_12
    iget-object v0, p0, Lcom/meizu/settings/widget/GlowView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_20

    const/4 v1, 0x0

    .line 278
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 279
    iget-object p0, p0, Lcom/meizu/settings/widget/GlowView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_20
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 248
    iget-object v0, p0, Lcom/meizu/settings/widget/GlowView;->mGlowViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/widget/GlowView$GlowViewInfo;

    .line 249
    iget-boolean v2, v1, Lcom/meizu/settings/widget/GlowView$GlowViewInfo;->isAlive:Z

    if-eqz v2, :cond_6

    .line 250
    iget-object v2, p0, Lcom/meizu/settings/widget/GlowView;->mPaint:Landroid/graphics/Paint;

    iget v3, v1, Lcom/meizu/settings/widget/GlowView$GlowViewInfo;->mAlpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 251
    sget v2, Lcom/meizu/settings/widget/GlowView;->cx:I

    int-to-float v2, v2

    sget v3, Lcom/meizu/settings/widget/GlowView;->cy:I

    int-to-float v3, v3

    iget v1, v1, Lcom/meizu/settings/widget/GlowView$GlowViewInfo;->mRadius:I

    int-to-float v1, v1

    iget-object v4, p0, Lcom/meizu/settings/widget/GlowView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_6

    :cond_2c
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    sub-int/2addr p4, p2

    .line 260
    div-int/lit8 p4, p4, 0x2

    sput p4, Lcom/meizu/settings/widget/GlowView;->cx:I

    sub-int/2addr p5, p3

    .line 261
    div-int/lit8 p5, p5, 0x2

    sput p5, Lcom/meizu/settings/widget/GlowView;->cy:I

    return-void
.end method

.method public setCallback(Lcom/meizu/settings/widget/GlowView$Callback;)V
    .registers 2

    .line 269
    iput-object p1, p0, Lcom/meizu/settings/widget/GlowView;->mCallback:Lcom/meizu/settings/widget/GlowView$Callback;

    return-void
.end method

.method public startAnim()V
    .registers 5

    .line 133
    iget-object v0, p0, Lcom/meizu/settings/widget/GlowView;->mRunningStatus:Ljava/lang/String;

    monitor-enter v0

    .line 134
    :try_start_3
    iget-object v1, p0, Lcom/meizu/settings/widget/GlowView;->mRunningStatus:Ljava/lang/String;

    const-string v2, "running"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 135
    monitor-exit v0

    return-void

    :cond_f
    const-string v1, "running"

    .line 136
    iput-object v1, p0, Lcom/meizu/settings/widget/GlowView;->mRunningStatus:Ljava/lang/String;

    .line 137
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_76

    .line 138
    iget-object v0, p0, Lcom/meizu/settings/widget/GlowView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 139
    iget-object v0, p0, Lcom/meizu/settings/widget/GlowView;->mGlowViewList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/meizu/settings/widget/GlowView;->reliveGlowView(Ljava/util/ArrayList;)V

    .line 140
    iget-object v0, p0, Lcom/meizu/settings/widget/GlowView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/meizu/settings/widget/GlowView;->mNewGlowViewDelay:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 141
    iget-object v0, p0, Lcom/meizu/settings/widget/GlowView;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_51

    .line 142
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/widget/GlowView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 143
    iget-object v0, p0, Lcom/meizu/settings/widget/GlowView;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 144
    iget-object v0, p0, Lcom/meizu/settings/widget/GlowView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    .line 145
    iget-object v0, p0, Lcom/meizu/settings/widget/GlowView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 146
    iget-object v0, p0, Lcom/meizu/settings/widget/GlowView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/settings/widget/GlowView$2;

    invoke-direct {v1, p0}, Lcom/meizu/settings/widget/GlowView$2;-><init>(Lcom/meizu/settings/widget/GlowView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 153
    :cond_51
    iget-object v0, p0, Lcom/meizu/settings/widget/GlowView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 154
    iget-object v0, p0, Lcom/meizu/settings/widget/GlowView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 156
    :cond_5e
    iget-object v0, p0, Lcom/meizu/settings/widget/GlowView;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_7a

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 157
    iget-object v0, p0, Lcom/meizu/settings/widget/GlowView;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x9c4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 158
    iget-object p0, p0, Lcom/meizu/settings/widget/GlowView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :catchall_76
    move-exception p0

    .line 137
    :try_start_77
    monitor-exit v0
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    throw p0

    nop

    :array_7a
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method public stopAnim(Z)V
    .registers 4

    const-wide/16 v0, 0x1c2

    .line 167
    iput-wide v0, p0, Lcom/meizu/settings/widget/GlowView;->mNewGlowViewDelay:J

    if-eqz p1, :cond_18

    .line 169
    iget-object p1, p0, Lcom/meizu/settings/widget/GlowView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 170
    iget-object p1, p0, Lcom/meizu/settings/widget/GlowView;->mRunningStatus:Ljava/lang/String;

    monitor-enter p1

    :try_start_f
    const-string v0, "dying"

    .line 171
    iput-object v0, p0, Lcom/meizu/settings/widget/GlowView;->mRunningStatus:Ljava/lang/String;

    .line 172
    monitor-exit p1

    goto :goto_4a

    :catchall_15
    move-exception p0

    monitor-exit p1
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_15

    throw p0

    .line 174
    :cond_18
    iget-object p1, p0, Lcom/meizu/settings/widget/GlowView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_27

    .line 175
    iget-object p1, p0, Lcom/meizu/settings/widget/GlowView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 176
    :cond_27
    iget-object p1, p0, Lcom/meizu/settings/widget/GlowView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 177
    iget-object p1, p0, Lcom/meizu/settings/widget/GlowView;->mGlowViewList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_33
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/widget/GlowView$GlowViewInfo;

    .line 178
    iput-boolean v0, v1, Lcom/meizu/settings/widget/GlowView$GlowViewInfo;->isAlive:Z

    goto :goto_33

    .line 180
    :cond_42
    iget-object p1, p0, Lcom/meizu/settings/widget/GlowView;->mRunningStatus:Ljava/lang/String;

    monitor-enter p1

    :try_start_45
    const-string v0, "stop"

    .line 181
    iput-object v0, p0, Lcom/meizu/settings/widget/GlowView;->mRunningStatus:Ljava/lang/String;

    .line 182
    monitor-exit p1

    :goto_4a
    return-void

    :catchall_4b
    move-exception p0

    monitor-exit p1
    :try_end_4d
    .catchall {:try_start_45 .. :try_end_4d} :catchall_4b

    throw p0
.end method
