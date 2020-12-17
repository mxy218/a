.class public Lcom/meizu/settings/widget/RefreshRotateDrawable;
.super Landroid/graphics/drawable/RotateDrawable;
.source "RefreshRotateDrawable.java"


# instance fields
.field private mAngle:I

.field private mContext:Landroid/content/Context;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mInterpolator:Lcom/meizu/common/interpolator/PathInterpolatorCompat;

.field private rotateAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 21
    invoke-direct {p0}, Landroid/graphics/drawable/RotateDrawable;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/meizu/settings/widget/RefreshRotateDrawable;->mInterpolator:Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    const/4 v1, 0x0

    .line 19
    iput v1, p0, Lcom/meizu/settings/widget/RefreshRotateDrawable;->mAngle:I

    .line 22
    iput-object p1, p0, Lcom/meizu/settings/widget/RefreshRotateDrawable;->mContext:Landroid/content/Context;

    .line 23
    new-instance p1, Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    const/4 v1, 0x0

    const/high16 v2, 0x3f000000  # 0.5f

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-direct {p1, v2, v1, v1, v3}, Lcom/meizu/common/interpolator/PathInterpolatorCompat;-><init>(FFFF)V

    iput-object p1, p0, Lcom/meizu/settings/widget/RefreshRotateDrawable;->mInterpolator:Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 25
    fill-array-data p1, :array_5c

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/widget/RefreshRotateDrawable;->rotateAnimator:Landroid/animation/ValueAnimator;

    .line 26
    iget-object p1, p0, Lcom/meizu/settings/widget/RefreshRotateDrawable;->rotateAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 27
    iget-object p1, p0, Lcom/meizu/settings/widget/RefreshRotateDrawable;->rotateAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 28
    iget-object p1, p0, Lcom/meizu/settings/widget/RefreshRotateDrawable;->rotateAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 29
    iget-object p1, p0, Lcom/meizu/settings/widget/RefreshRotateDrawable;->rotateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/meizu/settings/widget/RefreshRotateDrawable;->mInterpolator:Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 30
    iget-object p1, p0, Lcom/meizu/settings/widget/RefreshRotateDrawable;->rotateAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/settings/widget/RefreshRotateDrawable$1;

    invoke-direct {v1, p0}, Lcom/meizu/settings/widget/RefreshRotateDrawable$1;-><init>(Lcom/meizu/settings/widget/RefreshRotateDrawable;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 38
    iget-object p1, p0, Lcom/meizu/settings/widget/RefreshRotateDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f080383

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/widget/RefreshRotateDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 39
    iget-object p1, p0, Lcom/meizu/settings/widget/RefreshRotateDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/RotateDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :array_5c
    .array-data 4
        0x0
        0x168
    .end array-data
.end method

.method static synthetic access$000(Lcom/meizu/settings/widget/RefreshRotateDrawable;)I
    .registers 1

    .line 14
    iget p0, p0, Lcom/meizu/settings/widget/RefreshRotateDrawable;->mAngle:I

    return p0
.end method

.method static synthetic access$002(Lcom/meizu/settings/widget/RefreshRotateDrawable;I)I
    .registers 2

    .line 14
    iput p1, p0, Lcom/meizu/settings/widget/RefreshRotateDrawable;->mAngle:I

    return p1
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/meizu/settings/widget/RefreshRotateDrawable;->rotateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/meizu/settings/widget/RefreshRotateDrawable;->rotateAnimator:Landroid/animation/ValueAnimator;

    .line 55
    iput-object v0, p0, Lcom/meizu/settings/widget/RefreshRotateDrawable;->mContext:Landroid/content/Context;

    .line 56
    iput-object v0, p0, Lcom/meizu/settings/widget/RefreshRotateDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public endRotate()V
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/meizu/settings/widget/RefreshRotateDrawable;->rotateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    return-void
.end method

.method public startRotate()V
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/meizu/settings/widget/RefreshRotateDrawable;->rotateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_d

    .line 44
    iget-object p0, p0, Lcom/meizu/settings/widget/RefreshRotateDrawable;->rotateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_d
    return-void
.end method
