.class public Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;
.super Landroid/widget/SeekBar;
.source "MzBreakerSeekbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/coloradjust/MzBreakerSeekbar$ProgressHook;
    }
.end annotation


# instance fields
.field private mDefaultValue:I

.field private mHook:Lcom/meizu/settings/coloradjust/MzBreakerSeekbar$ProgressHook;

.field private mPaint:Landroid/graphics/Paint;

.field private mPreviousProgress:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 17
    iput p1, p0, Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;->mDefaultValue:I

    .line 25
    new-instance p1, Lcom/meizu/settings/coloradjust/MzBreakerSeekbar$ProgressHook;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/meizu/settings/coloradjust/MzBreakerSeekbar$ProgressHook;-><init>(Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;Lcom/meizu/settings/coloradjust/MzBreakerSeekbar$1;)V

    iput-object p1, p0, Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;->mHook:Lcom/meizu/settings/coloradjust/MzBreakerSeekbar$ProgressHook;

    .line 26
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;->mPaint:Landroid/graphics/Paint;

    .line 27
    iget-object p1, p0, Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060234

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    iget-object p1, p0, Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;->mPaint:Landroid/graphics/Paint;

    const/high16 p2, 0x40c00000  # 6.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 29
    iget-object p1, p0, Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 30
    iget-object p1, p0, Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;->mHook:Lcom/meizu/settings/coloradjust/MzBreakerSeekbar$ProgressHook;

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;)I
    .registers 1

    .line 12
    iget p0, p0, Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;->mDefaultValue:I

    return p0
.end method

.method static synthetic access$300(Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;)I
    .registers 1

    .line 12
    iget p0, p0, Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;->mPreviousProgress:I

    return p0
.end method

.method static synthetic access$302(Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;I)I
    .registers 2

    .line 12
    iput p1, p0, Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;->mPreviousProgress:I

    return p1
.end method


# virtual methods
.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .registers 12

    monitor-enter p0

    .line 36
    :try_start_1
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v0

    .line 37
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 38
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 39
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v5, v0

    int-to-float v6, v1

    int-to-float v7, v2

    int-to-float v8, v3

    .line 40
    iget-object v9, p0, Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 42
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 43
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 44
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 45
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_5a
    .catchall {:try_start_1 .. :try_end_5a} :catchall_5c

    .line 46
    monitor-exit p0

    return-void

    :catchall_5c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setBreaker(I)V
    .registers 4

    if-ltz p1, :cond_b

    .line 49
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    if-gt p1, v0, :cond_b

    .line 52
    iput p1, p0, Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;->mDefaultValue:I

    return-void

    .line 50
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Defaulter value must in (0, max), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not OK"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .registers 2

    .line 57
    iget-object p0, p0, Lcom/meizu/settings/coloradjust/MzBreakerSeekbar;->mHook:Lcom/meizu/settings/coloradjust/MzBreakerSeekbar$ProgressHook;

    invoke-static {p0, p1}, Lcom/meizu/settings/coloradjust/MzBreakerSeekbar$ProgressHook;->access$100(Lcom/meizu/settings/coloradjust/MzBreakerSeekbar$ProgressHook;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method
