.class public Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;
.super Ljava/lang/Object;
.source "RegionSamplingHelper.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$SamplingCallback;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$SamplingCallback;

.field private mCurrentMedianLuma:F

.field private mFirstSamplingAfterStart:Z

.field private final mHandler:Landroid/os/Handler;

.field private mLastMedianLuma:F

.field private final mLuminanceChangeThreshold:F

.field private final mLuminanceThreshold:F

.field private final mRegisteredSamplingBounds:Landroid/graphics/Rect;

.field private mRegisteredStopLayer:Landroid/view/SurfaceControl;

.field private mRemoveDrawRunnable:Ljava/lang/Runnable;

.field private final mSampledView:Landroid/view/View;

.field private mSamplingEnabled:Z

.field private final mSamplingListener:Landroid/view/CompositionSamplingListener;

.field private mSamplingListenerRegistered:Z

.field private final mSamplingRequestBounds:Landroid/graphics/Rect;

.field private mUpdateOnDraw:Landroid/view/ViewTreeObserver$OnDrawListener;

.field private final mUpdateSamplingListener:Ljava/lang/Runnable;

.field private mWaitingOnDraw:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$SamplingCallback;)V
    .registers 5

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mHandler:Landroid/os/Handler;

    .line 45
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$RegionSamplingHelper$pSsfVRzQ1H9WUV0xYw9vQmpq4Cw;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$RegionSamplingHelper$pSsfVRzQ1H9WUV0xYw9vQmpq4Cw;-><init>(Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mUpdateSamplingListener:Ljava/lang/Runnable;

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingRequestBounds:Landroid/graphics/Rect;

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mRegisteredSamplingBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingEnabled:Z

    .line 58
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingListenerRegistered:Z

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mRegisteredStopLayer:Landroid/view/SurfaceControl;

    .line 69
    new-instance v0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$1;-><init>(Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mUpdateOnDraw:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 77
    new-instance v0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$2;-><init>(Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mRemoveDrawRunnable:Ljava/lang/Runnable;

    .line 85
    new-instance v0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$3;

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$3;-><init>(Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingListener:Landroid/view/CompositionSamplingListener;

    .line 94
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSampledView:Landroid/view/View;

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSampledView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSampledView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 99
    sget v0, Lcom/android/systemui/R$dimen;->navigation_luminance_threshold:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mLuminanceThreshold:F

    .line 100
    sget v0, Lcom/android/systemui/R$dimen;->navigation_luminance_change_threshold:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mLuminanceChangeThreshold:F

    .line 101
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mCallback:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$SamplingCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;)Ljava/lang/Runnable;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mRemoveDrawRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;)Landroid/os/Handler;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;)V
    .registers 1

    .line 38
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->onDraw()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;)Landroid/view/ViewTreeObserver$OnDrawListener;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mUpdateOnDraw:Landroid/view/ViewTreeObserver$OnDrawListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;)Landroid/view/View;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSampledView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;)Z
    .registers 1

    .line 38
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingEnabled:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;F)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->updateMediaLuma(F)V

    return-void
.end method

.method public static synthetic lambda$pSsfVRzQ1H9WUV0xYw9vQmpq4Cw(Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->updateSamplingListener()V

    return-void
.end method

.method private onDraw()V
    .registers 2

    .line 105
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mWaitingOnDraw:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mWaitingOnDraw:Z

    .line 107
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->updateSamplingListener()V

    :cond_a
    return-void
.end method

.method private postUpdateSamplingListener()V
    .registers 3

    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mUpdateSamplingListener:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mUpdateSamplingListener:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private unregisterSamplingListener()V
    .registers 2

    .line 196
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingListenerRegistered:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    .line 197
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingListenerRegistered:Z

    const/4 v0, 0x0

    .line 198
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mRegisteredStopLayer:Landroid/view/SurfaceControl;

    .line 199
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mRegisteredSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 200
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingListener:Landroid/view/CompositionSamplingListener;

    invoke-static {p0}, Landroid/view/CompositionSamplingListener;->unregister(Landroid/view/CompositionSamplingListener;)V

    :cond_14
    return-void
.end method

.method private updateMediaLuma(F)V
    .registers 4

    .line 205
    iput p1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mCurrentMedianLuma:F

    .line 209
    iget v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mCurrentMedianLuma:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mLastMedianLuma:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mLuminanceChangeThreshold:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_21

    .line 210
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mCallback:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$SamplingCallback;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mLuminanceThreshold:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1b

    const/4 v1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$SamplingCallback;->onRegionDarknessChanged(Z)V

    .line 211
    iput p1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mLastMedianLuma:F

    :cond_21
    return-void
.end method

.method private updateSamplingListener()V
    .registers 7

    .line 154
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingEnabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingRequestBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSampledView:Landroid/view/View;

    .line 155
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mFirstSamplingAfterStart:Z

    if-eqz v0, :cond_1c

    :cond_1a
    move v0, v1

    goto :goto_1d

    :cond_1c
    move v0, v2

    :goto_1d
    if-eqz v0, :cond_86

    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSampledView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2d

    .line 160
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    goto :goto_2e

    :cond_2d
    move-object v0, v3

    :goto_2e
    if-eqz v0, :cond_36

    .line 162
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v4

    if-nez v4, :cond_5a

    .line 163
    :cond_36
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mWaitingOnDraw:Z

    if-nez v0, :cond_59

    .line 164
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mWaitingOnDraw:Z

    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mRemoveDrawRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mRemoveDrawRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_59

    .line 171
    :cond_4e
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSampledView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mUpdateOnDraw:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v4}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :cond_59
    :goto_59
    move-object v0, v3

    .line 178
    :cond_5a
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingRequestBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mRegisteredSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_68

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mRegisteredStopLayer:Landroid/view/SurfaceControl;

    if-eq v4, v0, :cond_83

    .line 181
    :cond_68
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->unregisterSamplingListener()V

    .line 182
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingListenerRegistered:Z

    .line 183
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingListener:Landroid/view/CompositionSamplingListener;

    if-eqz v0, :cond_75

    .line 184
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getHandle()Landroid/os/IBinder;

    move-result-object v3

    :cond_75
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingRequestBounds:Landroid/graphics/Rect;

    .line 183
    invoke-static {v1, v2, v3, v4}, Landroid/view/CompositionSamplingListener;->register(Landroid/view/CompositionSamplingListener;ILandroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 186
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mRegisteredSamplingBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingRequestBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 187
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mRegisteredStopLayer:Landroid/view/SurfaceControl;

    .line 189
    :cond_83
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mFirstSamplingAfterStart:Z

    goto :goto_89

    .line 191
    :cond_86
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->unregisterSamplingListener()V

    :goto_89
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 145
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->updateSamplingRect()V

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    .line 132
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->updateSamplingListener()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    .line 139
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->postUpdateSamplingListener()V

    return-void
.end method

.method start(Landroid/graphics/Rect;)V
    .registers 3

    .line 112
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mCallback:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$SamplingCallback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$SamplingCallback;->isSamplingEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    if-eqz p1, :cond_10

    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingRequestBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_10
    const/4 p1, 0x1

    .line 118
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingEnabled:Z

    const/high16 v0, -0x40800000  # -1.0f

    .line 120
    iput v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mLastMedianLuma:F

    .line 121
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mFirstSamplingAfterStart:Z

    .line 122
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->updateSamplingListener()V

    return-void
.end method

.method stop()V
    .registers 2

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingEnabled:Z

    .line 127
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->updateSamplingListener()V

    return-void
.end method

.method public updateSamplingRect()V
    .registers 3

    .line 216
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mCallback:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$SamplingCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSampledView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$SamplingCallback;->getSampledRegion(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingRequestBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 218
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingRequestBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 219
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->updateSamplingListener()V

    :cond_18
    return-void
.end method
