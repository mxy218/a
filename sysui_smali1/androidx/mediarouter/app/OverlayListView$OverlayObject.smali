.class public Landroidx/mediarouter/app/OverlayListView$OverlayObject;
.super Ljava/lang/Object;
.source "OverlayListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/app/OverlayListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OverlayObject"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/app/OverlayListView$OverlayObject$OnAnimationEndListener;
    }
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/drawable/BitmapDrawable;

.field private mCurrentAlpha:F

.field private mCurrentBounds:Landroid/graphics/Rect;

.field private mDeltaY:I

.field private mDuration:J

.field private mEndAlpha:F

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsAnimationEnded:Z

.field private mIsAnimationStarted:Z

.field private mListener:Landroidx/mediarouter/app/OverlayListView$OverlayObject$OnAnimationEndListener;

.field private mStartAlpha:F

.field private mStartRect:Landroid/graphics/Rect;

.field private mStartTime:J


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/Rect;)V
    .registers 4

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    .line 102
    iput v0, p0, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mCurrentAlpha:F

    .line 108
    iput v0, p0, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mStartAlpha:F

    .line 109
    iput v0, p0, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mEndAlpha:F

    .line 116
    iput-object p1, p0, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mBitmap:Landroid/graphics/drawable/BitmapDrawable;

    .line 117
    iput-object p2, p0, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mStartRect:Landroid/graphics/Rect;

    .line 118
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mCurrentBounds:Landroid/graphics/Rect;

    .line 119
    iget-object p1, p0, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mBitmap:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p1, :cond_2e

    iget-object p2, p0, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mCurrentBounds:Landroid/graphics/Rect;

    if-eqz p2, :cond_2e

    .line 120
    iget p2, p0, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mCurrentAlpha:F

    const/high16 v0, 0x437f0000  # 255.0f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 121
    iget-object p1, p0, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mBitmap:Landroid/graphics/drawable/BitmapDrawable;

    iget-object p0, p0, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_2e
    return-void
.end method


# virtual methods
.method public getBitmapDrawable()Landroid/graphics/drawable/BitmapDrawable;
    .registers 1

    .line 131
    iget-object p0, p0, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mBitmap:Landroid/graphics/drawable/BitmapDrawable;

    return-object p0
.end method

.method public isAnimationStarted()Z
    .registers 1

    .line 140
    iget-boolean p0, p0, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mIsAnimationStarted:Z

    return p0
.end method

.method public setAlphaAnimation(FF)Landroidx/mediarouter/app/OverlayListView$OverlayObject;
    .registers 3

    .line 152
    iput p1, p0, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mStartAlpha:F

    .line 153
    iput p2, p0, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mEndAlpha:F

    return-object p0
.end method

.method public setAnimationEndListener(Landroidx/mediarouter/app/OverlayListView$OverlayObject$OnAnimationEndListener;)Landroidx/mediarouter/app/OverlayListView$OverlayObject;
    .registers 2

    .line 197
    iput-object p1, p0, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mListener:Landroidx/mediarouter/app/OverlayListView$OverlayObject$OnAnimationEndListener;

    return-object p0
.end method

.method public setDuration(J)Landroidx/mediarouter/app/OverlayListView$OverlayObject;
    .registers 3

    .line 175
    iput-wide p1, p0, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mDuration:J

    return-object p0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/mediarouter/app/OverlayListView$OverlayObject;
    .registers 2

    .line 186
    iput-object p1, p0, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public setTranslateYAnimation(I)Landroidx/mediarouter/app/OverlayListView$OverlayObject;
    .registers 2

    .line 164
    iput p1, p0, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mDeltaY:I

    return-object p0
.end method

.method public startAnimation(J)V
    .registers 3

    .line 207
    iput-wide p1, p0, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mStartTime:J

    const/4 p1, 0x1

    .line 208
    iput-boolean p1, p0, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mIsAnimationStarted:Z

    return-void
.end method

.method public stopAnimation()V
    .registers 2

    const/4 v0, 0x1

    .line 215
    iput-boolean v0, p0, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mIsAnimationStarted:Z

    .line 216
    iput-boolean v0, p0, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mIsAnimationEnded:Z

    .line 217
    iget-object p0, p0, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mListener:Landroidx/mediarouter/app/OverlayListView$OverlayObject$OnAnimationEndListener;

    if-eqz p0, :cond_c

    .line 218
    invoke-interface {p0}, Landroidx/mediarouter/app/OverlayListView$OverlayObject$OnAnimationEndListener;->onAnimationEnd()V

    :cond_c
    return-void
.end method

.method public update(J)Z
    .registers 8

    .line 228
    iget-boolean v0, p0, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mIsAnimationEnded:Z

    if-eqz v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 231
    :cond_6
    iget-wide v0, p0, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mStartTime:J

    sub-long/2addr p1, v0

    long-to-float p1, p1

    iget-wide v0, p0, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mDuration:J

    long-to-float p2, v0

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000  # 1.0f

    .line 232
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 233
    iget-boolean v1, p0, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mIsAnimationStarted:Z

    if-nez v1, :cond_1e

    move p1, v0

    .line 236
    :cond_1e
    iget-object v0, p0, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_24

    move v0, p1

    goto :goto_28

    .line 237
    :cond_24
    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 238
    :goto_28
    iget v1, p0, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mDeltaY:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 239
    iget-object v2, p0, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mCurrentBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mStartRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 240
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 241
    iget v1, p0, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mStartAlpha:F

    iget v3, p0, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mEndAlpha:F

    sub-float/2addr v3, v1

    mul-float/2addr v3, v0

    add-float/2addr v1, v3

    iput v1, p0, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mCurrentAlpha:F

    .line 242
    iget-object v0, p0, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mBitmap:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_5a

    if-eqz v2, :cond_5a

    .line 243
    iget v1, p0, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mCurrentAlpha:F

    const/high16 v2, 0x437f0000  # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 244
    iget-object v0, p0, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mBitmap:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 246
    :cond_5a
    iget-boolean v0, p0, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mIsAnimationStarted:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6c

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_6c

    .line 247
    iput-boolean v1, p0, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mIsAnimationEnded:Z

    .line 248
    iget-object p1, p0, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mListener:Landroidx/mediarouter/app/OverlayListView$OverlayObject$OnAnimationEndListener;

    if-eqz p1, :cond_6c

    .line 249
    invoke-interface {p1}, Landroidx/mediarouter/app/OverlayListView$OverlayObject$OnAnimationEndListener;->onAnimationEnd()V

    .line 252
    :cond_6c
    iget-boolean p0, p0, Landroidx/mediarouter/app/OverlayListView$OverlayObject;->mIsAnimationEnded:Z

    xor-int/2addr p0, v1

    return p0
.end method
