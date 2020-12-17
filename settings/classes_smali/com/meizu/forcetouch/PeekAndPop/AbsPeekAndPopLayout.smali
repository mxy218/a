.class abstract Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;
.super Landroid/widget/FrameLayout;
.source "AbsPeekAndPopLayout.java"


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field protected mChild:Landroid/view/View;

.field protected mConfig:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;

.field protected mConfigChanged:Z

.field protected mConfigMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;",
            ">;"
        }
    .end annotation
.end field

.field protected mConfirmBackground:Landroid/graphics/drawable/Drawable;

.field protected mConfirmDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field protected mConfirmHeight:I

.field protected mConfirmPaint:Landroid/graphics/Paint;

.field protected mConfirmPressure:F

.field protected mConfirmRect:Landroid/graphics/Rect;

.field protected mConfirmViewLocation:[I

.field protected mConfirmWidth:I

.field protected mCurPressure:F

.field protected mDispatchTouchEventToMenu:Z

.field protected mEnablePeekAndPop:Z

.field protected mEndBlurLevel:F

.field private mForceTouchLevelUri:Landroid/net/Uri;

.field private mForceTouchLevels:[Ljava/lang/String;

.field protected mGLBlurDrawable:Lcom/meizu/common/renderer/drawable/GLBlurDrawable;

.field protected mGLBlurDrawableColor:I

.field protected mHapticFeedback_A:I

.field protected mHapticFeedback_B:I

.field protected mHapticFeedback_D:I

.field protected mHasForceTouched:Z

.field private mInitMotionX:F

.field private mInitMotionY:F

.field protected mInitPressure:F

.field protected mInterceptTouchEvent:Z

.field protected mIsAnimation:Z

.field protected mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mKeyForceTouchLevelIndexInSettingsProvider:Ljava/lang/String;

.field private mKeySwitchInSettingsProvider:Ljava/lang/String;

.field protected mListener:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopListener;

.field protected mListenerMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;",
            "Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mMidBlurLevel:F

.field private mObserver:Landroid/database/ContentObserver;

.field protected mOriginRequestedOrientation:I

.field private mOriginWinParamsFlags:I

.field protected mPackageName:Ljava/lang/String;

.field protected mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

.field protected mPeekPressure:F

.field protected mPeekView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected mPopPeekMenu:Z

.field protected mPopPressure:F

.field private mResolver:Landroid/content/ContentResolver;

.field protected mStartBlurLevel:F

.field private mStartForcePress:Z

.field protected mState:I

.field protected mStatusBarHeight:I

.field private mSwitchUri:Landroid/net/Uri;

.field protected mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 182
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 66
    iput v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mState:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 69
    iput-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmViewLocation:[I

    .line 74
    iput v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mOriginWinParamsFlags:I

    const/4 v0, 0x4

    .line 76
    iput v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mHapticFeedback_A:I

    .line 77
    iput v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mHapticFeedback_B:I

    .line 78
    iput v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mHapticFeedback_D:I

    const v1, 0x3e99999a  # 0.3f

    .line 81
    iput v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmPressure:F

    const/high16 v1, 0x3f000000  # 0.5f

    .line 83
    iput v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekPressure:F

    const v2, 0x3f333333  # 0.7f

    .line 84
    iput v2, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPopPressure:F

    const/4 v2, 0x0

    .line 101
    iput-boolean v2, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mInterceptTouchEvent:Z

    .line 111
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mAnimations:Ljava/util/List;

    .line 118
    iput-boolean v2, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mIsAnimation:Z

    const/high16 v2, 0x26000000

    .line 131
    iput v2, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mGLBlurDrawableColor:I

    const/4 v2, 0x0

    .line 133
    iput v2, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mStartBlurLevel:F

    const/high16 v2, 0x3e800000  # 0.25f

    .line 134
    iput v2, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mMidBlurLevel:F

    .line 135
    iput v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mEndBlurLevel:F

    .line 140
    new-instance v1, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout$1;-><init>(Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mObserver:Landroid/database/ContentObserver;

    .line 167
    new-instance v1, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout$2;

    invoke-direct {v1, p0}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout$2;-><init>(Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;)V

    iput-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 183
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmPaint:Landroid/graphics/Paint;

    .line 184
    iget-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 185
    iget-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 186
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 187
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mTouchSlop:I

    .line 189
    iget-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_7a

    .line 190
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/forcetouch/R$drawable;->confirm_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmBackground:Landroid/graphics/drawable/Drawable;

    .line 192
    :cond_7a
    invoke-virtual {p0}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->getForceTouchState()V

    .line 193
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mStatusBarHeight:I

    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPackageName:Ljava/lang/String;

    .line 196
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/common/renderer/effect/GLRenderer;->initialize(Landroid/content/Context;)V

    .line 199
    :try_start_94
    const-class p1, Landroid/view/HapticFeedbackConstants;

    const-string v1, "FLYME_UTIL_GENERAL_A"

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v1, 0x0

    .line 200
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mHapticFeedback_A:I

    .line 202
    const-class p1, Landroid/view/HapticFeedbackConstants;

    const-string v2, "FLYME_UTIL_GENERAL_B"

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 203
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mHapticFeedback_B:I

    .line 205
    const-class p1, Landroid/view/HapticFeedbackConstants;

    const-string v2, "FLYME_UTIL_GENERAL_D"

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 206
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mHapticFeedback_D:I
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_d1} :catch_d2

    goto :goto_e0

    :catch_d2
    move-exception p1

    const-string v1, "AbsPeekAndPopLayout"

    const-string v2, "get HapticFeedbackConstants fail"

    .line 209
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    iput v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mHapticFeedback_D:I

    iput v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mHapticFeedback_B:I

    iput v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mHapticFeedback_A:I

    :goto_e0
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;)Landroid/net/Uri;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mSwitchUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;)Landroid/content/ContentResolver;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;)Ljava/lang/String;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mKeySwitchInSettingsProvider:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;)Landroid/net/Uri;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mForceTouchLevelUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$400(Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;)Ljava/lang/String;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mKeyForceTouchLevelIndexInSettingsProvider:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;)[Ljava/lang/String;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mForceTouchLevels:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;Z)Z
    .registers 2

    .line 50
    iput-boolean p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mStartForcePress:Z

    return p1
.end method


# virtual methods
.method protected buildUsageStats(Ljava/lang/String;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 164
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/forcetouch/PeekAndPop/UsageStatsUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/forcetouch/PeekAndPop/UsageStatsUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/meizu/forcetouch/PeekAndPop/UsageStatsUtils;->onLog(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method protected createBlurAnim(FFLandroid/animation/TimeInterpolator;I)Landroid/animation/ValueAnimator;
    .registers 7

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 481
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 482
    new-instance p2, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout$5;

    invoke-direct {p2, p0}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout$5;-><init>(Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p3, :cond_1a

    .line 492
    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_1a
    int-to-long p2, p4

    .line 494
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method protected createColorFilterAnim(IILandroid/animation/TimeInterpolator;I)Landroid/animation/ValueAnimator;
    .registers 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 499
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 500
    new-instance p2, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout$6;

    invoke-direct {p2, p0}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout$6;-><init>(Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p3, :cond_1a

    .line 510
    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_1a
    int-to-long p2, p4

    .line 512
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method protected createConfirmDrawableScaleAnim(FFLandroid/animation/TimeInterpolator;I)Landroid/animation/ValueAnimator;
    .registers 10

    .line 461
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 462
    iget-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000  # 1.0f

    sub-float p1, v2, p1

    mul-float/2addr v1, p1

    const/high16 v3, 0x3f000000  # 0.5f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget-object v4, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    mul-float/2addr v4, v3

    float-to-int p1, v4

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->inset(II)V

    .line 463
    new-instance p1, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmRect:Landroid/graphics/Rect;

    invoke-direct {p1, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 464
    iget-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v2, p2

    mul-float/2addr v1, v2

    mul-float/2addr v1, v3

    float-to-int p2, v1

    iget-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 465
    new-instance p2, Landroid/animation/RectEvaluator;

    invoke-direct {p2}, Landroid/animation/RectEvaluator;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    invoke-static {p2, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 466
    new-instance p2, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout$4;

    invoke-direct {p2, p0}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout$4;-><init>(Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p3, :cond_62

    .line 474
    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_62
    int-to-long p2, p4

    .line 476
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    .line 399
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 400
    iget v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_11

    const/4 v1, 0x4

    if-ne v0, v1, :cond_11

    .line 401
    invoke-virtual {p0, p1}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->onKeyBack(Landroid/view/KeyEvent;)V

    const/4 p0, 0x1

    return p0

    .line 404
    :cond_11
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 288
    iget-boolean v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mEnablePeekAndPop:Z

    if-nez v0, :cond_9

    .line 289
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 291
    :cond_9
    iget-boolean v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfigChanged:Z

    if-nez v0, :cond_82

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->isMoveWin(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_82

    .line 294
    :cond_18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v0

    iput v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mCurPressure:F

    .line 295
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 296
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 297
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    if-eqz v0, :cond_37

    const/4 v1, 0x2

    if-eq v0, v1, :cond_30

    goto :goto_5f

    .line 316
    :cond_30
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfig:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;

    if-eqz v0, :cond_5f

    iget v0, v0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mPeekType:I

    goto :goto_5f

    .line 300
    :cond_37
    iput v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mInitMotionX:F

    .line 301
    iput v2, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mInitMotionY:F

    const/4 v0, 0x0

    .line 302
    iput-boolean v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mStartForcePress:Z

    .line 303
    iput-boolean v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mInterceptTouchEvent:Z

    .line 304
    iput-boolean v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mDispatchTouchEventToMenu:Z

    .line 305
    iget-boolean v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPopPeekMenu:Z

    if-eqz v0, :cond_5f

    const/4 v0, 0x1

    .line 306
    iput-boolean v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mStartForcePress:Z

    .line 307
    iput-boolean v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mInterceptTouchEvent:Z

    .line 308
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 309
    iget-object v4, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->getHitRect(Landroid/graphics/Rect;)V

    float-to-int v1, v1

    float-to-int v2, v2

    .line 310
    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 311
    iput-boolean v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mDispatchTouchEventToMenu:Z

    .line 348
    :cond_5f
    :goto_5f
    iget-boolean v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mDispatchTouchEventToMenu:Z

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    if-eqz v0, :cond_7d

    .line 349
    invoke-virtual {v0}, Landroid/widget/ListView;->getLeft()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    .line 350
    iget-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getTop()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    .line 351
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 352
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 355
    :cond_7d
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 292
    :cond_82
    :goto_82
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getForceTouchState()V
    .registers 7

    const-string v0, "  "

    const-string v1, "AbsPeekAndPopLayout"

    const/4 v2, 0x0

    :try_start_5
    const-string v3, "android.provider.MzSettings$Secure"

    .line 519
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "MZ_FORCE_TOUCH_SWITCH"

    .line 520
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    .line 521
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mKeySwitchInSettingsProvider:Ljava/lang/String;

    const-string v4, "MZ_FORCE_TOUCH_LEVEL_INDEX"

    .line 522
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 523
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mKeyForceTouchLevelIndexInSettingsProvider:Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_28} :catch_ad
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_28} :catch_93
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_28} :catch_79

    .line 538
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mKeySwitchInSettingsProvider:Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mSwitchUri:Landroid/net/Uri;

    .line 539
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mKeyForceTouchLevelIndexInSettingsProvider:Ljava/lang/String;

    .line 540
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mForceTouchLevelUri:Landroid/net/Uri;

    .line 542
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mResolver:Landroid/content/ContentResolver;

    .line 544
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config_force_touch_levels"

    const-string v3, "array"

    const-string v4, "flyme"

    .line 545
    invoke-virtual {v0, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_58

    .line 548
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mForceTouchLevels:[Ljava/lang/String;

    .line 551
    :cond_58
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mKeySwitchInSettingsProvider:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_64

    move v2, v1

    :cond_64
    iput-boolean v2, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mEnablePeekAndPop:Z

    .line 552
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mKeyForceTouchLevelIndexInSettingsProvider:Ljava/lang/String;

    .line 553
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 555
    iget-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mForceTouchLevels:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmPressure:F

    return-void

    :catch_79
    move-exception v3

    .line 533
    iput-boolean v2, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mEnablePeekAndPop:Z

    .line 534
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_93
    move-exception v3

    .line 529
    iput-boolean v2, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mEnablePeekAndPop:Z

    .line 530
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/NoSuchFieldException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_ad
    move-exception v3

    .line 525
    iput-boolean v2, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mEnablePeekAndPop:Z

    .line 526
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected initGLBlurDrawable()V
    .registers 4

    .line 595
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mGLBlurDrawable:Lcom/meizu/common/renderer/drawable/GLBlurDrawable;

    if-eqz v0, :cond_5

    return-void

    .line 598
    :cond_5
    new-instance v0, Lcom/meizu/common/renderer/drawable/GLBlurDrawable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/meizu/common/renderer/drawable/GLBlurDrawable;-><init>(Z)V

    iput-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mGLBlurDrawable:Lcom/meizu/common/renderer/drawable/GLBlurDrawable;

    .line 599
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mGLBlurDrawable:Lcom/meizu/common/renderer/drawable/GLBlurDrawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/meizu/common/renderer/drawable/GLBlurDrawable;->setColorFilter(I)V

    .line 600
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mGLBlurDrawable:Lcom/meizu/common/renderer/drawable/GLBlurDrawable;

    invoke-virtual {v0, v1}, Lcom/meizu/common/renderer/drawable/GLBlurDrawable;->setStatic(Z)V

    .line 601
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mGLBlurDrawable:Lcom/meizu/common/renderer/drawable/GLBlurDrawable;

    const v1, 0x3ecccccd  # 0.4f

    invoke-virtual {v0, v1}, Lcom/meizu/common/renderer/drawable/GLBlurDrawable;->setScale(F)V

    .line 602
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mGLBlurDrawable:Lcom/meizu/common/renderer/drawable/GLBlurDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    invoke-virtual {v0, v2, v2, v1, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 5

    .line 561
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 562
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_1a

    iget-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_1a

    .line 563
    iget-object v2, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mSwitchUri:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 564
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mForceTouchLevelUri:Landroid/net/Uri;

    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1a
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7

    .line 607
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 609
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 610
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const/4 v2, 0x1

    if-eqz v0, :cond_46

    const/4 v3, 0x2

    if-ne v0, v3, :cond_12

    goto :goto_46

    .line 619
    :cond_12
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 620
    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 621
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 622
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 623
    iget v4, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v4, v4

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v0

    int-to-float v1, v1

    cmpl-float v1, v4, v1

    if-nez v1, :cond_43

    iget p1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float p1, p1

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mStatusBarHeight:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    int-to-float v0, v3

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_3f

    goto :goto_43

    :cond_3f
    const/4 p1, 0x0

    .line 627
    iput-boolean p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfigChanged:Z

    goto :goto_50

    .line 625
    :cond_43
    :goto_43
    iput-boolean v2, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfigChanged:Z

    goto :goto_50

    .line 613
    :cond_46
    :goto_46
    iput-boolean v2, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfigChanged:Z

    .line 614
    iget p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mState:I

    const/4 p1, -0x1

    if-eq p0, p1, :cond_50

    .line 616
    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_50
    :goto_50
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 571
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 572
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_c

    .line 573
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_c
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 360
    iget-boolean v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mInterceptTouchEvent:Z

    if-eqz v0, :cond_35

    iget-boolean v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mEnablePeekAndPop:Z

    if-eqz v0, :cond_35

    iget-boolean v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfigChanged:Z

    if-nez v0, :cond_35

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->isMoveWin(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 361
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v0

    iput v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mCurPressure:F

    .line 362
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_34

    .line 363
    :cond_2a
    invoke-virtual {p0}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->reset()V

    .line 364
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mListener:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopListener;

    if-eqz p0, :cond_34

    .line 365
    invoke-interface {p0}, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopListener;->cancel()V

    :cond_34
    return v2

    .line 370
    :cond_35
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onKeyBack(Landroid/view/KeyEvent;)V
    .registers 2

    return-void
.end method

.method protected onTouchCancel(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method protected onTouchDown(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 375
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v0

    iput v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mCurPressure:F

    .line 376
    iget-boolean v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mDispatchTouchEventToMenu:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    return v1

    .line 379
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_27

    if-eq v0, v1, :cond_23

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1f

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1b

    goto :goto_2a

    .line 388
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->onTouchCancel(Landroid/view/MotionEvent;)V

    goto :goto_2a

    .line 385
    :cond_1f
    invoke-virtual {p0, p1}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->onTouchMove(Landroid/view/MotionEvent;)V

    goto :goto_2a

    .line 391
    :cond_23
    invoke-virtual {p0, p1}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->onTouchUp(Landroid/view/MotionEvent;)V

    goto :goto_2a

    .line 382
    :cond_27
    invoke-virtual {p0, p1}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->onTouchDown(Landroid/view/MotionEvent;)V

    :goto_2a
    return v1
.end method

.method protected onTouchMove(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method protected onTouchUp(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4

    .line 579
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 580
    iget v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_13

    if-eqz p1, :cond_f

    const/4 p1, 0x1

    .line 582
    invoke-virtual {p0, p1}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->setStatusBarTranslucent(Z)V

    goto :goto_13

    :cond_f
    const/4 p1, 0x0

    .line 584
    invoke-virtual {p0, p1}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->setStatusBarTranslucent(Z)V

    :cond_13
    :goto_13
    return-void
.end method

.method protected reset()V
    .registers 1

    return-void
.end method

.method protected seekAnimations(F)V
    .registers 4

    .line 422
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 423
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 424
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    goto :goto_6

    .line 425
    :cond_16
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method setPeekAndPopListener(Landroid/view/View;Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopListener;)V
    .registers 6

    if-eqz p1, :cond_64

    if-eqz p2, :cond_64

    if-nez p3, :cond_7

    goto :goto_64

    .line 221
    :cond_7
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfigMap:Landroid/util/ArrayMap;

    if-nez v0, :cond_12

    .line 222
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfigMap:Landroid/util/ArrayMap;

    .line 224
    :cond_12
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfigMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 225
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfigMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 226
    iget-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfigMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0, p2}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    .line 228
    :cond_26
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfigMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    :goto_2b
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mListenerMap:Landroid/util/ArrayMap;

    if-nez v0, :cond_36

    .line 232
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mListenerMap:Landroid/util/ArrayMap;

    .line 234
    :cond_36
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 235
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 236
    iget-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0, p3}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4f

    .line 238
    :cond_4a
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :goto_4f
    iget v0, p2, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mPeekType:I

    if-nez v0, :cond_58

    .line 243
    iput-object p2, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfig:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;

    .line 244
    iput-object p3, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mListener:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopListener;

    return-void

    :cond_58
    const/4 p2, 0x1

    .line 248
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 249
    new-instance p2, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout$3;

    invoke-direct {p2, p0, p1}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout$3;-><init>(Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_64
    :goto_64
    return-void
.end method

.method protected setStatusBarTranslucent(Z)V
    .registers 2

    return-void
.end method

.method public abstract startPeekAndPop(Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;)Z
.end method
