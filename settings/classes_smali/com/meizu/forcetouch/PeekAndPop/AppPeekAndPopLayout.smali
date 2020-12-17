.class public Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;
.super Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;
.source "AppPeekAndPopLayout.java"


# instance fields
.field private final MENU_MOVE_RATE:I

.field private final UP_DOWN_PRESSURE_DELTA:F

.field private mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private mCaptureBackground:Landroid/graphics/drawable/BitmapDrawable;

.field private mCaptureScale:F

.field private mChildScale:F

.field private mChoreographer:Landroid/view/Choreographer;

.field private mCurMotionY:F

.field private mCurrentPeekViewBottom:F

.field private mDefaultFormat:I

.field private mDefaultInterpolator:Landroid/animation/TimeInterpolator;

.field private mDistanceBetweenPeekViewAndMenu:I

.field private mDistanceToPullMark:I

.field private mEventHandler:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$EventHandler;

.field private mFingerID:I

.field private mHasMoved:Z

.field private mHasTouchUp:Z

.field private mIsMenuShow:Z

.field private mLastMotionY:F

.field private mLastMotionY2:F

.field private mLastPressure:F

.field private mMaxTransitionY:F

.field private mMoveMenuViewRunnable:Landroid/view/Choreographer$FrameCallback;

.field private mMoveScheduled:Z

.field private mNewActivityRequestedOrientation:I

.field private mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mPeekArrowView:Landroid/widget/ImageView;

.field private mPeekClipBgRect:Landroid/graphics/Rect;

.field private mPeekClipRect:Landroid/graphics/Rect;

.field private mPeekMenuHelper:Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;

.field private mPeekMotionY:F

.field private mPeekPaddingLeftAndRightMax:I

.field private mPeekPaddingLeftAndRightMin:I

.field private mPeekPullMark:Landroid/widget/FrameLayout;

.field private mPeekPullMarkCheckbox:Landroid/widget/CheckBox;

.field private mPeekPullRefreshTextView:Landroid/widget/TextView;

.field private mPeekToNormalRunnable:Ljava/lang/Runnable;

.field private mPeekTranslationY:F

.field private mPeekViewAlpha:F

.field private mPeekViewLocation:[I

.field private mPeekViewMaxScale:F

.field private mPeekViewMinScale:F

.field private mPeekViewRadius:I

.field private mPeekViewScale:F

.field private mPeelClipPath:Landroid/graphics/Path;

.field private mReactForceTouch:Z

.field private mSmartTouchIsShow:Z

.field private mTempPaint:Landroid/graphics/Paint;

.field private mTempPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 203
    invoke-direct {p0, p1}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 72
    iput-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekViewLocation:[I

    const/16 v0, 0x28

    .line 73
    iput v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mDistanceBetweenPeekViewAndMenu:I

    .line 75
    iput v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->MENU_MOVE_RATE:I

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mMoveScheduled:Z

    .line 87
    iput-boolean v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mIsMenuShow:Z

    const v1, 0x3f733333  # 0.95f

    .line 99
    iput v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mChildScale:F

    .line 103
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekClipRect:Landroid/graphics/Rect;

    .line 104
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekClipBgRect:Landroid/graphics/Rect;

    .line 106
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mDefaultInterpolator:Landroid/animation/TimeInterpolator;

    const/4 v1, 0x0

    .line 111
    iput-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mChoreographer:Landroid/view/Choreographer;

    .line 112
    iput-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mMoveMenuViewRunnable:Landroid/view/Choreographer$FrameCallback;

    const/4 v1, 0x1

    .line 124
    iput-boolean v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mSmartTouchIsShow:Z

    .line 127
    iput-boolean v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mHasTouchUp:Z

    const v2, 0x3dcccccd  # 0.1f

    .line 130
    iput v2, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->UP_DOWN_PRESSURE_DELTA:F

    const/4 v2, 0x0

    .line 137
    iput v2, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mLastPressure:F

    .line 139
    iput v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mFingerID:I

    .line 143
    new-instance v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$1;

    invoke-direct {v0, p0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$1;-><init>(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;)V

    iput-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mEventHandler:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$EventHandler;

    .line 951
    new-instance v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$15;

    invoke-direct {v0, p0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$15;-><init>(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;)V

    iput-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekToNormalRunnable:Ljava/lang/Runnable;

    .line 1675
    new-instance v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$31;

    invoke-direct {v0, p0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$31;-><init>(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;)V

    iput-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 204
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mChoreographer:Landroid/view/Choreographer;

    .line 205
    new-instance v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$2;

    invoke-direct {v0, p0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$2;-><init>(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;)V

    iput-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mMoveMenuViewRunnable:Landroid/view/Choreographer$FrameCallback;

    .line 214
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mTempPaint:Landroid/graphics/Paint;

    .line 215
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mTempPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 216
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mTempPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 217
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mTempPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41a00000  # 20.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v0, 0x40800000  # 4.0f

    .line 218
    invoke-static {p1, v0}, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekViewRadius:I

    const/high16 v0, 0x42f00000  # 120.0f

    .line 219
    invoke-static {p1, v0}, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mDistanceToPullMark:I

    const/high16 v0, 0x41800000  # 16.0f

    .line 220
    invoke-static {p1, v0}, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekPaddingLeftAndRightMax:I

    const/high16 v0, 0x41200000  # 10.0f

    .line 221
    invoke-static {p1, v0}, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekPaddingLeftAndRightMin:I

    const/high16 v0, 0x438c0000  # 280.0f

    .line 222
    invoke-static {p1, v0}, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->dip2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mMaxTransitionY:F

    return-void
.end method

.method private ActivityConvertFromTranslucent(Landroid/app/Activity;)V
    .registers 2

    .line 1670
    invoke-static {p1}, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->convertFromTranslucent(Landroid/app/Activity;)Z

    .line 1671
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mDefaultFormat:I

    invoke-virtual {p1, p0}, Landroid/view/Window;->setFormat(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;)I
    .registers 1

    .line 56
    iget p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mFingerID:I

    return p0
.end method

.method static synthetic access$100(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;)Z
    .registers 1

    .line 56
    iget-boolean p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mHasTouchUp:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;F)F
    .registers 2

    .line 56
    iput p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekViewAlpha:F

    return p1
.end method

.method static synthetic access$1100(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    .line 56
    invoke-direct/range {p0 .. p5}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->animToClickPeekMenu(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;)Landroid/widget/ImageView;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekArrowView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;)F
    .registers 1

    .line 56
    iget p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekTranslationY:F

    return p0
.end method

.method static synthetic access$1302(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;F)F
    .registers 2

    .line 56
    iput p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekTranslationY:F

    return p1
.end method

.method static synthetic access$1400(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;)Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mTempPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;)I
    .registers 1

    .line 56
    iget p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mDistanceBetweenPeekViewAndMenu:I

    return p0
.end method

.method static synthetic access$1600(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;)Landroid/graphics/Rect;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekClipBgRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;FFI)Landroid/animation/ValueAnimator;
    .registers 4

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->animTranslatePeekView(FFI)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;)Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;Landroid/app/Activity;)V
    .registers 2

    .line 56
    invoke-direct {p0, p1}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->unregisterActivityLifeCallback(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;Landroid/app/Activity;)V
    .registers 2

    .line 56
    invoke-direct {p0, p1}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->ActivityConvertFromTranslucent(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;)I
    .registers 1

    .line 56
    iget p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mNewActivityRequestedOrientation:I

    return p0
.end method

.method static synthetic access$2102(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;Landroid/app/Application$ActivityLifecycleCallbacks;)Landroid/app/Application$ActivityLifecycleCallbacks;
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mCaptureBackground:Landroid/graphics/drawable/BitmapDrawable;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mCaptureBackground:Landroid/graphics/drawable/BitmapDrawable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;)Z
    .registers 1

    .line 56
    invoke-direct {p0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->moveMenuViewRunnable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$402(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;F)F
    .registers 2

    .line 56
    iput p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mCaptureScale:F

    return p1
.end method

.method static synthetic access$500(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;)Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekMenuHelper:Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;

    return-object p0
.end method

.method static synthetic access$502(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;)Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekMenuHelper:Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;

    return-object p1
.end method

.method static synthetic access$600(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;Landroid/widget/ListAdapter;)V
    .registers 2

    .line 56
    invoke-direct {p0, p1}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->replacePeekMenu(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method static synthetic access$702(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;F)F
    .registers 2

    .line 56
    iput p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekViewScale:F

    return p1
.end method

.method static synthetic access$800(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;)V
    .registers 1

    .line 56
    invoke-direct {p0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->animPeekToNormal()V

    return-void
.end method

.method static synthetic access$900(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;)Landroid/graphics/Rect;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekClipRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method private animBackground(F)Landroid/animation/AnimatorSet;
    .registers 7

    const/4 v0, 0x1

    .line 1185
    iput-boolean v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mIsAnimation:Z

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x0

    aput p1, v1, v0

    .line 1186
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v3, 0xf9

    .line 1187
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1188
    iget-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mGLBlurDrawable:Lcom/meizu/common/renderer/drawable/GLBlurDrawable;

    if-eqz v1, :cond_1c

    .line 1189
    invoke-virtual {v1, v2}, Lcom/meizu/common/renderer/drawable/GLBlurDrawable;->setStatic(Z)V

    .line 1191
    :cond_1c
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3c23d70a  # 0.01f

    const v3, 0x3df5c28f  # 0.12f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v1, v2, p1, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 1192
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1193
    new-instance p1, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$22;

    invoke-direct {p1, p0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$22;-><init>(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1211
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1212
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object p0
.end method

.method private animPeekToNormal()V
    .registers 7

    .line 1278
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekArrowView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    if-eqz v0, :cond_8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1279
    :cond_8
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3de147ae  # 0.11f

    const v3, 0x3df5c28f  # 0.12f

    const/high16 v4, 0x3f800000  # 1.0f

    const/4 v5, 0x0

    invoke-direct {v0, v2, v5, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/4 v2, 0x0

    const/16 v3, 0xf9

    .line 1280
    invoke-direct {p0, v2, v0, v3}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->createPeekViewAnim(ZLandroid/animation/TimeInterpolator;I)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 1281
    iput v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mState:I

    .line 1282
    invoke-direct {p0, v4}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->animBackground(F)Landroid/animation/AnimatorSet;

    move-result-object v1

    .line 1284
    new-instance v2, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$25;

    invoke-direct {v2, p0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$25;-><init>(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v2, 0x1

    .line 1296
    iput-boolean v2, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mIsAnimation:Z

    .line 1297
    iget v2, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekTranslationY:F

    cmpl-float v3, v2, v5

    if-eqz v3, :cond_46

    const/16 v3, 0x96

    .line 1298
    invoke-direct {p0, v2, v5, v3}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->animTranslatePeekView(FFI)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 1300
    new-instance v3, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$26;

    invoke-direct {v3, p0, v0, v1}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$26;-><init>(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1307
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_4c

    .line 1309
    :cond_46
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1310
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 1314
    :goto_4c
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1315
    iget-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPackageName:Ljava/lang/String;

    const-string/jumbo v2, "package_name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "close_peek"

    const-string v2, "exit_peek"

    .line 1316
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "force_touch_peek"

    .line 1317
    invoke-virtual {p0, v1, v0}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->buildUsageStats(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private animToClickPeekMenu(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    move-object v1, p0

    .line 1246
    iget v0, v1, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekTranslationY:F

    iget-object v2, v1, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekClipBgRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    neg-int v2, v2

    int-to-float v2, v2

    const/16 v3, 0xc8

    invoke-direct {p0, v0, v2, v3}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->animTranslatePeekView(FFI)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1247
    iget-object v2, v1, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v5, v4, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const/4 v8, 0x1

    aput v7, v5, v8

    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v3, 0x4

    .line 1249
    iput v3, v1, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mState:I

    const/high16 v3, 0x3f800000  # 1.0f

    .line 1250
    invoke-direct {p0, v3}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->animBackground(F)Landroid/animation/AnimatorSet;

    move-result-object v3

    .line 1252
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v9, 0xf0

    .line 1253
    invoke-virtual {v7, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v0, v5, v6

    aput-object v2, v5, v8

    aput-object v3, v5, v4

    .line 1254
    invoke-virtual {v7, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1255
    iput-boolean v8, v1, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mIsAnimation:Z

    .line 1257
    new-instance v8, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$24;

    move-object v0, v8

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$24;-><init>(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1271
    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private animToPeek()V
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1325
    fill-array-data v0, :array_24

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xf9

    .line 1326
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1327
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 1328
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1329
    new-instance v1, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$27;

    invoke-direct {v1, p0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$27;-><init>(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1335
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_24
    .array-data 4
        0x3e4ccccd  # 0.2f
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private animToPop()V
    .registers 4

    .line 1219
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mListener:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopListener;

    if-eqz v0, :cond_2a

    iget-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekView:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2a

    .line 1220
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopListener;->pop(Landroid/view/View;)Z

    .line 1222
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1223
    iget-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPackageName:Ljava/lang/String;

    const-string/jumbo v2, "package_name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "close_peek"

    const-string v2, "enter_pop"

    .line 1224
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "force_touch_peek"

    .line 1225
    invoke-virtual {p0, v1, v0}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->buildUsageStats(Ljava/lang/String;Ljava/util/Map;)V

    .line 1227
    :cond_2a
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isHapticFeedbackEnabled()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1228
    iget v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mHapticFeedback_B:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    .line 1231
    :cond_35
    new-instance v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$23;

    invoke-direct {v0, p0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$23;-><init>(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1239
    invoke-virtual {p0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->reset()V

    return-void
.end method

.method private animTranslatePeekView(FFI)Landroid/animation/ValueAnimator;
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 1358
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    int-to-long p2, p3

    .line 1359
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1360
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1361
    new-instance p2, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$28;

    invoke-direct {p2, p0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$28;-><init>(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method private createBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_3c

    .line 1013
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1014
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1015
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 1016
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    invoke-virtual {v2, v3, v4, v5, p0}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1017
    invoke-virtual {p1, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1018
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 1019
    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v1

    :cond_3c
    return-object v0
.end method

.method private createPeekViewAnim(ZLandroid/animation/TimeInterpolator;I)Landroid/animation/AnimatorSet;
    .registers 12

    .line 968
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 969
    iget-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekViewLocation:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    neg-int v3, v3

    const/4 v4, 0x1

    aget v1, v1, v4

    neg-int v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 970
    new-instance v1, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekClipRect:Landroid/graphics/Rect;

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v3, 0x2

    if-eqz p1, :cond_2e

    .line 973
    new-instance v5, Landroid/animation/RectEvaluator;

    invoke-direct {v5}, Landroid/animation/RectEvaluator;-><init>()V

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v0, v6, v2

    aput-object v1, v6, v4

    invoke-static {v5, v6}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_3d

    .line 975
    :cond_2e
    new-instance v5, Landroid/animation/RectEvaluator;

    invoke-direct {v5}, Landroid/animation/RectEvaluator;-><init>()V

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v1, v6, v2

    aput-object v0, v6, v4

    invoke-static {v5, v6}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 977
    :goto_3d
    new-instance v1, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$16;

    invoke-direct {v1, p0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$16;-><init>(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v1, 0x0

    const/high16 v5, 0x3f800000  # 1.0f

    if-eqz p1, :cond_4b

    goto :goto_4e

    :cond_4b
    move v7, v5

    move v5, v1

    move v1, v7

    :goto_4e
    new-array p1, v3, [F

    aput v1, p1, v2

    aput v5, p1, v4

    .line 993
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 994
    new-instance v1, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$17;

    invoke-direct {v1, p0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$17;-><init>(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1001
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    if-eqz p2, :cond_6a

    .line 1003
    invoke-virtual {p0, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_6a
    new-array p2, v3, [Landroid/animation/Animator;

    aput-object v0, p2, v2

    aput-object p1, p2, v4

    .line 1005
    invoke-virtual {p0, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    int-to-long p1, p3

    .line 1006
    invoke-virtual {p0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method private getTargetPosition()F
    .registers 6

    .line 1554
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekClipBgRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekTranslationY:F

    add-float/2addr v2, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekViewScale:F

    const/high16 v4, 0x3f800000  # 1.0f

    sub-float/2addr v4, v3

    mul-float/2addr v1, v4

    const/high16 v3, 0x3f000000  # 0.5f

    mul-float/2addr v1, v3

    sub-float/2addr v2, v1

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mCurrentPeekViewBottom:F

    .line 1555
    iget-boolean v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mIsMenuShow:Z

    if-eqz v0, :cond_37

    .line 1556
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mCurrentPeekViewBottom:F

    sub-float/2addr v0, v1

    iget p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mDistanceBetweenPeekViewAndMenu:I

    int-to-float p0, p0

    add-float/2addr v0, p0

    const/4 p0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    .line 1558
    :cond_37
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method private initAnim()V
    .registers 6

    .line 409
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 410
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000  # 1.0f

    const v2, 0x3c23d70a  # 0.01f

    const/4 v3, 0x0

    const v4, 0x3eae147b  # 0.34f

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    .line 412
    iget v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mChildScale:F

    const/4 v4, 0x1

    aput v1, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 413
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 414
    new-instance v2, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$6;

    invoke-direct {v2, p0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$6;-><init>(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 421
    iget-object v2, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mAnimations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    iget v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mStartBlurLevel:F

    iget v2, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mEndBlurLevel:F

    const/16 v4, 0xc8

    invoke-virtual {p0, v1, v2, v0, v4}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->createBlurAnim(FFLandroid/animation/TimeInterpolator;I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 427
    iget-object v2, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mAnimations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    iget v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mGLBlurDrawableColor:I

    invoke-virtual {p0, v3, v1, v0, v4}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->createColorFilterAnim(IILandroid/animation/TimeInterpolator;I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 430
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mAnimations:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initPeekArrowView(I)V
    .registers 6

    .line 1109
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekArrowView:Landroid/widget/ImageView;

    .line 1110
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x31

    .line 1111
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1112
    iget-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekArrowView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/forcetouch/R$drawable;->peek_arrow:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1113
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41700000  # 15.0f

    invoke-static {v1, v2}, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1114
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekArrowView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1115
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekArrowView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1116
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekArrowView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$20;

    invoke-direct {v0, p0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$20;-><init>(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private initPeekMenu()Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;
    .registers 5

    .line 1026
    new-instance v0, Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;-><init>(Landroid/content/Context;)V

    .line 1027
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x51

    .line 1028
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v2, 0x0

    .line 1029
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1030
    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x4

    .line 1031
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1032
    new-instance v1, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$18;

    invoke-direct {v1, p0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$18;-><init>(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object v0
.end method

.method private initPeekPullMark()Landroid/widget/FrameLayout;
    .registers 4

    .line 1065
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1066
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x31

    .line 1067
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v2, 0x0

    .line 1068
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1069
    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x4

    .line 1070
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1071
    new-instance v1, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$19;

    invoke-direct {v1, p0, v0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$19;-><init>(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;Landroid/widget/FrameLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method private moveMenuViewRunnable()Z
    .registers 6

    const/4 v0, 0x0

    .line 1568
    iput-boolean v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mMoveScheduled:Z

    .line 1570
    iget-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    if-nez v1, :cond_b

    .line 1571
    invoke-virtual {p0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->unScheduleMoveMenuView()V

    return v0

    .line 1575
    :cond_b
    invoke-direct {p0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->getTargetPosition()F

    move-result v1

    .line 1576
    iget-boolean v2, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mIsMenuShow:Z

    const/4 v3, 0x1

    const/high16 v4, 0x42200000  # 40.0f

    if-eqz v2, :cond_3c

    .line 1577
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getTranslationY()F

    move-result v0

    sub-float/2addr v0, v4

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2c

    .line 1578
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    invoke-virtual {p0}, Landroid/widget/ListView;->getTranslationY()F

    move-result v0

    sub-float/2addr v0, v4

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setTranslationY(F)V

    return v3

    .line 1580
    :cond_2c
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3b

    .line 1581
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setTranslationY(F)V

    :cond_3b
    return v3

    .line 1586
    :cond_3c
    iget-object v2, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getTranslationY()F

    move-result v2

    add-float/2addr v2, v4

    cmpg-float v1, v2, v1

    if-gez v1, :cond_66

    .line 1587
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mCurrentPeekViewBottom:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mDistanceBetweenPeekViewAndMenu:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getTranslationY()F

    move-result v1

    add-float/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1588
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setTranslationY(F)V

    return v3

    .line 1593
    :cond_66
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setTranslationY(F)V

    return v0
.end method

.method private registerActivityLifeCallback(Landroid/app/Activity;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 333
    :cond_3
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v0, :cond_a

    .line 334
    invoke-direct {p0, p1}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->unregisterActivityLifeCallback(Landroid/app/Activity;)V

    .line 336
    :cond_a
    new-instance v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$4;

    invoke-direct {v0, p0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$4;-><init>(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;)V

    iput-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 381
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method private replacePeekMenu(Landroid/widget/ListAdapter;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 1380
    :cond_3
    invoke-direct {p0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->initPeekMenu()Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mTempPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    .line 1381
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mTempPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1382
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mTempPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1383
    invoke-virtual {p0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->unScheduleMoveMenuView()V

    .line 1384
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mTempPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$29;

    invoke-direct {v0, p0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$29;-><init>(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private startPeekArrowViewAnim(FFI)V
    .registers 7

    .line 1163
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekArrowView:Landroid/widget/ImageView;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    const-string p2, "alpha"

    invoke-static {v0, p2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    int-to-long v0, p3

    .line 1164
    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1165
    new-instance p3, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$21;

    invoke-direct {p3, p0, p1}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$21;-><init>(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;F)V

    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1175
    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private unregisterActivityLifeCallback(Landroid/app/Activity;)V
    .registers 3

    if-eqz p1, :cond_13

    .line 386
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-nez v0, :cond_7

    goto :goto_13

    .line 387
    :cond_7
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 p1, 0x0

    .line 388
    iput-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    :cond_13
    :goto_13
    return-void
.end method

.method private updatePeekArrowView(F)V
    .registers 6

    .line 1143
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekArrowView:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    return-void

    .line 1144
    :cond_5
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1145
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41f00000  # 30.0f

    invoke-static {v0, v1}, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    const/16 v0, 0xa0

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v2, 0x0

    if-ltz p1, :cond_2c

    .line 1146
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekArrowView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_38

    .line 1147
    invoke-direct {p0, v1, v2, v0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->startPeekArrowViewAnim(FFI)V

    goto :goto_38

    .line 1149
    :cond_2c
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekArrowView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    const/4 v3, 0x4

    if-ne p1, v3, :cond_38

    .line 1150
    invoke-direct {p0, v2, v1, v0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->startPeekArrowViewAnim(FFI)V

    :cond_38
    :goto_38
    return-void
.end method

.method private updatePeekPullMark(F)V
    .registers 4

    .line 1081
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekPullMark:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p1, v0

    .line 1082
    iget-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekPullMark:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1083
    iget v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mDistanceToPullMark:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_31

    .line 1084
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekPullMarkCheckbox:Landroid/widget/CheckBox;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1085
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfig:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;

    iget-boolean p1, p1, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mMarkToRead:Z

    if-eqz p1, :cond_29

    .line 1086
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekPullRefreshTextView:Landroid/widget/TextView;

    sget v0, Lcom/meizu/forcetouch/R$string;->has_mark_read:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4c

    .line 1088
    :cond_29
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekPullRefreshTextView:Landroid/widget/TextView;

    sget v0, Lcom/meizu/forcetouch/R$string;->has_mark_unread:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4c

    .line 1091
    :cond_31
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekPullMarkCheckbox:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1092
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfig:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;

    iget-boolean p1, p1, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mMarkToRead:Z

    if-eqz p1, :cond_45

    .line 1093
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekPullRefreshTextView:Landroid/widget/TextView;

    sget v0, Lcom/meizu/forcetouch/R$string;->pull_to_mark_read:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4c

    .line 1095
    :cond_45
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekPullRefreshTextView:Landroid/widget/TextView;

    sget v0, Lcom/meizu/forcetouch/R$string;->pull_to_mark_unread:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1098
    :goto_4c
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekPullMark:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p1

    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekPullMark:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_64

    .line 1099
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekPullMark:Landroid/widget/FrameLayout;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_64
    return-void
.end method


# virtual methods
.method protected animToNormal()V
    .registers 7

    .line 1340
    iget v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_51

    .line 1341
    invoke-direct {p0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->animPeekToNormal()V

    .line 1342
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    const/4 v1, 0x1

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Landroid/widget/ListView;->getTranslationY()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_33

    .line 1343
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v2, v4, v5

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    aput v2, v4, v1

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    .line 1344
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1345
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1347
    :cond_33
    invoke-virtual {p0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->unScheduleMoveMenuView()V

    .line 1349
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1350
    iget-object v2, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPackageName:Ljava/lang/String;

    const-string/jumbo v3, "package_name"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "close_peek"

    const-string v3, "exit_peek"

    .line 1351
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "force_touch_peek"

    .line 1352
    invoke-virtual {p0, v2, v0}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->buildUsageStats(Ljava/lang/String;Ljava/util/Map;)V

    .line 1353
    iput-boolean v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mHasTouchUp:Z

    :cond_51
    return-void
.end method

.method public cancelForActivityPeek()V
    .registers 3

    .line 1647
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfig:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;

    if-eqz v0, :cond_1a

    iget v0, v0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mPeekType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1a

    .line 1649
    invoke-direct {p0, v0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->unregisterActivityLifeCallback(Landroid/app/Activity;)V

    .line 1650
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const/4 v1, 0x0

    .line 1651
    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    const/4 v0, 0x0

    .line 1652
    iput-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mActivity:Landroid/app/Activity;

    :cond_1a
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 12

    .line 886
    iget v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2e

    .line 887
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mCaptureBackground:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_27

    .line 888
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 889
    iget v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mCaptureScale:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v0, v0, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 890
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mCaptureBackground:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 891
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 894
    :cond_27
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mGLBlurDrawable:Lcom/meizu/common/renderer/drawable/GLBlurDrawable;

    if-eqz v0, :cond_2e

    .line 895
    invoke-virtual {v0, p1}, Lcom/meizu/common/renderer/drawable/GLDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 899
    :cond_2e
    iget v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mState:I

    if-eq v0, v1, :cond_e6

    if-eqz v0, :cond_b4

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_47

    const/4 v3, 0x3

    if-eq v0, v3, :cond_47

    if-eq v0, v1, :cond_47

    const/4 v1, 0x5

    if-eq v0, v1, :cond_42

    goto/16 :goto_e9

    .line 943
    :cond_42
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_e9

    .line 926
    :cond_47
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 928
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_e9

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e9

    .line 929
    iget v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mState:I

    if-eq v0, v2, :cond_5f

    if-ne v0, v1, :cond_5b

    goto :goto_5f

    .line 932
    :cond_5b
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    goto :goto_77

    :cond_5f
    :goto_5f
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 930
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v6, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v7, v0

    iget v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekViewAlpha:F

    const/high16 v1, 0x437f0000  # 255.0f

    mul-float/2addr v0, v1

    float-to-int v8, v0

    const/16 v9, 0x1f

    move-object v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 935
    :goto_77
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekViewLocation:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    aget v0, v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekTranslationY:F

    add-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 936
    iget v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekViewScale:F

    iget-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekClipRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 937
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekClipRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekViewRadius:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->getPathFromRoundRect(Landroid/graphics/Rect;F)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 938
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 939
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_e9

    .line 901
    :cond_b4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 903
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 904
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_e2

    .line 905
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 906
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmBackground:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 907
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 908
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 909
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 910
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 912
    :cond_e2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_e9

    .line 946
    :cond_e6
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    :cond_e9
    :goto_e9
    return-void
.end method

.method public bridge synthetic dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 2

    .line 56
    invoke-super {p0, p1}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 56
    invoke-super {p0, p1}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getForceTouchState()V
    .registers 2

    .line 227
    invoke-super {p0}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->getForceTouchState()V

    .line 228
    iget v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmPressure:F

    iput v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekPressure:F

    return-void
.end method

.method getPathFromRoundRect(Landroid/graphics/Rect;F)Landroid/graphics/Path;
    .registers 11

    .line 1536
    new-instance p0, Landroid/graphics/Path;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    .line 1537
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, p1

    sget-object v7, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move-object v0, p0

    move v5, p2

    move v6, p2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    return-object p0
.end method

.method public hasOverlappingRendering()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 56
    invoke-super {p0, p1}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onKeyBack(Landroid/view/KeyEvent;)V
    .registers 2

    .line 1658
    invoke-virtual {p0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->animToNormal()V

    return-void
.end method

.method protected onTouchCancel(Landroid/view/MotionEvent;)V
    .registers 2

    .line 757
    invoke-super {p0, p1}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->onTouchCancel(Landroid/view/MotionEvent;)V

    return-void
.end method

.method protected onTouchDown(Landroid/view/MotionEvent;)V
    .registers 2

    .line 450
    invoke-super {p0, p1}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->onTouchDown(Landroid/view/MotionEvent;)V

    .line 451
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mLastMotionY2:F

    iput p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mLastMotionY:F

    const/4 p1, 0x0

    .line 452
    iput-boolean p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mHasMoved:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 435
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 436
    iget-boolean v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mIsAnimation:Z

    if-eqz v1, :cond_f

    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    return v1

    .line 439
    :cond_f
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekToNormalRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 440
    invoke-super {p0, p1}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onTouchMove(Landroid/view/MotionEvent;)V
    .registers 18

    move-object/from16 v0, p0

    .line 457
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mFingerID:I

    .line 458
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mCurMotionY:F

    const/4 v1, 0x0

    .line 459
    iput-boolean v1, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mHasTouchUp:Z

    .line 460
    iget v3, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mState:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000  # 1.0f

    const/4 v7, 0x1

    if-eqz v3, :cond_1b5

    if-eq v3, v7, :cond_39e

    const/4 v2, 0x3

    if-eq v3, v2, :cond_27

    goto/16 :goto_39e

    .line 636
    :cond_27
    iget-object v2, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekView:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_39e

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_33

    goto/16 :goto_39e

    .line 639
    :cond_33
    iget v2, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mCurMotionY:F

    iget v3, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mLastMotionY:F

    sub-float/2addr v2, v3

    .line 640
    iget-object v3, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    if-nez v3, :cond_45

    iget-object v3, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfig:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;

    iget-object v3, v3, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mPullReresh:Landroid/view/View;

    if-nez v3, :cond_45

    .line 641
    iput v5, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekTranslationY:F

    goto :goto_5b

    .line 643
    :cond_45
    iget v3, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekTranslationY:F

    add-float/2addr v3, v2

    iput v3, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekTranslationY:F

    .line 645
    iget v2, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekTranslationY:F

    iget v3, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mMaxTransitionY:F

    add-float/2addr v2, v3

    cmpg-float v2, v2, v5

    if-gez v2, :cond_56

    neg-float v2, v3

    .line 646
    iput v2, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekTranslationY:F

    .line 648
    :cond_56
    iget v2, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekTranslationY:F

    invoke-direct {v0, v2}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->updatePeekArrowView(F)V

    .line 650
    :goto_5b
    iget v2, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekTranslationY:F

    const/high16 v3, -0x3d900000  # -60.0f

    cmpg-float v3, v2, v3

    const-wide v8, 0x3fa47ae147ae147bL  # 0.04

    const/4 v10, 0x4

    const-wide v11, 0x3fa999999999999aL  # 0.05

    const-wide/16 v13, 0x64

    if-gez v3, :cond_b3

    .line 651
    iget-boolean v2, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mReactForceTouch:Z

    if-eqz v2, :cond_92

    new-array v2, v4, [F

    .line 652
    iget v3, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekViewScale:F

    aput v3, v2, v1

    iget v3, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekViewMinScale:F

    aput v3, v2, v7

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 653
    invoke-virtual {v2, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 654
    new-instance v3, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$9;

    invoke-direct {v3, v0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$9;-><init>(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 661
    iput-boolean v1, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mReactForceTouch:Z

    .line 662
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 665
    :cond_92
    iget v2, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mCurMotionY:F

    iget v3, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mLastMotionY2:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_9d

    .line 666
    iput-boolean v7, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mIsMenuShow:Z

    goto :goto_9f

    .line 668
    :cond_9d
    iput-boolean v1, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mIsMenuShow:Z

    .line 671
    :goto_9f
    iget-object v2, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    if-eqz v2, :cond_16b

    .line 672
    invoke-virtual {v2}, Landroid/widget/ListView;->getVisibility()I

    move-result v2

    if-ne v2, v10, :cond_ae

    .line 673
    iget-object v2, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 675
    :cond_ae
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->scheduleMoveMenuView()V

    goto/16 :goto_16b

    :cond_b3
    const/high16 v3, 0x41200000  # 10.0f

    cmpl-float v15, v2, v3

    if-ltz v15, :cond_102

    .line 678
    iget-boolean v2, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mReactForceTouch:Z

    if-eqz v2, :cond_db

    new-array v2, v4, [F

    .line 679
    iget v4, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekViewScale:F

    aput v4, v2, v1

    iget v4, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekViewMinScale:F

    aput v4, v2, v7

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 680
    invoke-virtual {v2, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 681
    new-instance v4, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$10;

    invoke-direct {v4, v0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$10;-><init>(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 688
    iput-boolean v1, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mReactForceTouch:Z

    .line 689
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 692
    :cond_db
    iget v2, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mCurMotionY:F

    iget v4, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mLastMotionY2:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_ec

    iget-boolean v2, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mIsMenuShow:Z

    if-eqz v2, :cond_ec

    .line 693
    iput-boolean v1, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mIsMenuShow:Z

    .line 694
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->scheduleMoveMenuView()V

    .line 697
    :cond_ec
    iget-object v2, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekPullMark:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_16b

    .line 698
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-ne v2, v10, :cond_fb

    .line 699
    iget-object v2, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekPullMark:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 701
    :cond_fb
    iget v1, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekTranslationY:F

    sub-float/2addr v1, v3

    .line 702
    invoke-direct {v0, v1}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->updatePeekPullMark(F)V

    goto :goto_16b

    .line 705
    :cond_102
    iget v3, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekViewScale:F

    .line 706
    iget v10, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mCurPressure:F

    iget v15, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekViewMaxScale:F

    iget v5, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekViewMinScale:F

    sub-float/2addr v15, v5

    mul-float/2addr v10, v15

    add-float/2addr v10, v5

    iput v10, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekViewScale:F

    .line 708
    iget-object v10, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekArrowView:Landroid/widget/ImageView;

    if-eqz v10, :cond_120

    .line 709
    iget v10, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekViewScale:F

    sub-float/2addr v10, v5

    iget-object v5, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekClipBgRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    mul-float/2addr v10, v5

    sub-float/2addr v2, v10

    invoke-direct {v0, v2}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->updatePeekArrowView(F)V

    .line 710
    :cond_120
    iget-boolean v2, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mReactForceTouch:Z

    if-nez v2, :cond_140

    new-array v2, v4, [F

    aput v3, v2, v1

    .line 711
    iget v1, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekViewScale:F

    aput v1, v2, v7

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 712
    invoke-virtual {v1, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 713
    new-instance v2, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$11;

    invoke-direct {v2, v0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$11;-><init>(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 720
    iput-boolean v7, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mReactForceTouch:Z

    .line 721
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 725
    :cond_140
    iget-object v1, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfig:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;

    iget-boolean v1, v1, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mDisablePop:Z

    if-nez v1, :cond_163

    iget v1, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mLastPressure:F

    cmpl-float v2, v1, v6

    if-nez v2, :cond_150

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_160

    :cond_150
    iget v1, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mLastPressure:F

    float-to-double v2, v1

    cmpl-double v2, v2, v11

    if-lez v2, :cond_163

    iget v2, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mCurPressure:F

    float-to-double v2, v2

    float-to-double v4, v1

    add-double/2addr v4, v8

    cmpl-double v1, v2, v4

    if-lez v1, :cond_163

    .line 727
    :cond_160
    invoke-direct/range {p0 .. p0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->animToPop()V

    .line 729
    :cond_163
    iget-object v1, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekPullMark:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_16b

    const/4 v1, 0x0

    .line 730
    invoke-direct {v0, v1}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->updatePeekPullMark(F)V

    .line 734
    :cond_16b
    :goto_16b
    iget-object v1, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfig:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;

    iget-boolean v1, v1, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mDisablePop:Z

    if-nez v1, :cond_192

    iget v1, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mLastPressure:F

    cmpl-float v2, v1, v6

    if-nez v2, :cond_17e

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_17c

    goto :goto_17e

    :cond_17c
    :goto_17c
    const/4 v1, 0x0

    goto :goto_18f

    :cond_17e
    :goto_17e
    iget v1, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mLastPressure:F

    float-to-double v2, v1

    cmpl-double v2, v2, v11

    if-lez v2, :cond_192

    iget v2, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mCurPressure:F

    float-to-double v2, v2

    float-to-double v4, v1

    add-double/2addr v4, v8

    cmpl-double v1, v2, v4

    if-lez v1, :cond_192

    goto :goto_17c

    .line 737
    :goto_18f
    iput v1, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mLastPressure:F

    goto :goto_1b0

    .line 738
    :cond_192
    iget v1, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mLastPressure:F

    float-to-double v2, v1

    cmpg-double v2, v2, v11

    if-gez v2, :cond_1ac

    iget v2, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mCurPressure:F

    float-to-double v2, v2

    const-wide v4, 0x3feeb851eb851eb8L  # 0.96

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1ac

    const v2, 0x3c23d70a  # 0.01f

    add-float/2addr v1, v2

    .line 740
    iput v1, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mLastPressure:F

    goto :goto_1b0

    .line 742
    :cond_1ac
    iget v1, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mCurPressure:F

    iput v1, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mLastPressure:F

    .line 744
    :goto_1b0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->postInvalidate()V

    goto/16 :goto_39e

    .line 469
    :cond_1b5
    iget v3, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mCurPressure:F

    iget v5, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekPressure:F

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_39e

    .line 470
    iget-object v3, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekView:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_373

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1c9

    goto/16 :goto_373

    .line 474
    :cond_1c9
    invoke-static {}, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->boostPerformance()V

    .line 475
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->initGLBlurDrawable()V

    .line 476
    invoke-direct/range {p0 .. p0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->animToPeek()V

    .line 478
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->hideSmartTouch(Landroid/content/Context;Z)Z

    move-result v3

    if-eqz v3, :cond_1de

    .line 479
    iput-boolean v1, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mSmartTouchIsShow:Z

    .line 494
    :cond_1de
    iget-object v3, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 495
    iget-object v5, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekClipRect:Landroid/graphics/Rect;

    if-eqz v5, :cond_1f0

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_204

    .line 496
    :cond_1f0
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekClipRect:Landroid/graphics/Rect;

    .line 497
    iget-object v5, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekClipRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual {v5, v1, v1, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 500
    :cond_204
    iget-object v5, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfig:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;

    iget-object v5, v5, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mMenuBuilder:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v8, 0x0

    if-eqz v5, :cond_24a

    .line 502
    new-instance v9, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10, v5}, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V

    iput-object v9, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekMenuHelper:Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;

    .line 503
    iget-object v5, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekMenuHelper:Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;

    new-instance v9, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$7;

    invoke-direct {v9, v0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$7;-><init>(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;)V

    invoke-virtual {v5, v9}, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;->setPeekMenuCallback(Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper$PeekMenuCallback;)V

    .line 525
    iget-object v5, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekMenuHelper:Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;

    invoke-virtual {v5}, Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    .line 526
    iget-object v9, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    if-nez v9, :cond_230

    .line 527
    invoke-direct/range {p0 .. p0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->initPeekMenu()Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    move-result-object v9

    iput-object v9, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    .line 529
    :cond_230
    iget-object v9, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    invoke-virtual {v9, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 531
    iget-object v9, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    invoke-virtual {v9, v1, v1}, Landroid/widget/ListView;->measure(II)V

    .line 532
    iget-object v9, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v10

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    mul-int/2addr v10, v5

    int-to-float v5, v10

    invoke-virtual {v9, v5}, Landroid/widget/ListView;->setTranslationY(F)V

    goto :goto_255

    .line 534
    :cond_24a
    iget-object v5, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    if-eqz v5, :cond_251

    .line 535
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 537
    :cond_251
    iput-object v8, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    .line 538
    iput-object v8, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekMenuHelper:Lcom/meizu/forcetouch/PeekAndPop/PeekMenuHelper;

    .line 541
    :goto_255
    iget-object v5, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfig:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;

    iget-object v5, v5, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mPullReresh:Landroid/view/View;

    if-eqz v5, :cond_296

    .line 543
    iget-object v8, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekPullMark:Landroid/widget/FrameLayout;

    if-nez v8, :cond_265

    .line 544
    invoke-direct/range {p0 .. p0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->initPeekPullMark()Landroid/widget/FrameLayout;

    move-result-object v8

    iput-object v8, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekPullMark:Landroid/widget/FrameLayout;

    .line 546
    :cond_265
    iget-object v8, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekPullMark:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const v8, 0x1020001

    .line 547
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekPullMarkCheckbox:Landroid/widget/CheckBox;

    const v8, 0x1020014

    .line 548
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekPullRefreshTextView:Landroid/widget/TextView;

    .line 549
    iget-object v5, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfig:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;

    iget-boolean v5, v5, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mMarkToRead:Z

    if-eqz v5, :cond_28e

    .line 550
    iget-object v5, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekPullMarkCheckbox:Landroid/widget/CheckBox;

    sget v8, Lcom/meizu/forcetouch/R$drawable;->peek_pull_to_mark_read:I

    invoke-virtual {v5, v8}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    goto :goto_29f

    .line 552
    :cond_28e
    iget-object v5, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekPullMarkCheckbox:Landroid/widget/CheckBox;

    sget v8, Lcom/meizu/forcetouch/R$drawable;->peek_pull_to_mark_unread:I

    invoke-virtual {v5, v8}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    goto :goto_29f

    .line 555
    :cond_296
    iget-object v5, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekPullMark:Landroid/widget/FrameLayout;

    if-eqz v5, :cond_29d

    .line 556
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 558
    :cond_29d
    iput-object v8, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekPullMark:Landroid/widget/FrameLayout;

    .line 562
    :goto_29f
    iget-object v5, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfig:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;

    iget v5, v5, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mPeekType:I

    if-eq v5, v4, :cond_2b0

    .line 563
    iget-object v8, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2b0

    .line 564
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 568
    :cond_2b0
    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v8

    iget-object v9, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v8, v9}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 569
    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v8

    iget-object v9, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v8, v9}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 571
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Landroid/app/Activity;

    if-ne v5, v4, :cond_2d4

    .line 572
    iget-object v5, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mActivity:Landroid/app/Activity;

    if-eqz v5, :cond_2d4

    if-eqz v5, :cond_2d5

    .line 577
    invoke-virtual {v5, v7}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_2d5

    :cond_2d4
    move-object v5, v8

    .line 581
    :cond_2d5
    :goto_2d5
    invoke-direct {v0, v5}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->registerActivityLifeCallback(Landroid/app/Activity;)V

    .line 583
    iget-object v5, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekViewLocation:[I

    invoke-virtual {v3, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 585
    new-instance v3, Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekClipRect:Landroid/graphics/Rect;

    invoke-direct {v3, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v3, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekClipBgRect:Landroid/graphics/Rect;

    .line 586
    iget-object v3, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekClipBgRect:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekViewLocation:[I

    aget v1, v5, v1

    aget v5, v5, v7

    invoke-virtual {v3, v1, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 589
    iget-object v1, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfig:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;

    iget-boolean v1, v1, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mHasVerticalScrollArrow:Z

    if-eqz v1, :cond_2fe

    .line 590
    iget-object v1, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekClipBgRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-direct {v0, v1}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->initPeekArrowView(I)V

    .line 592
    :cond_2fe
    iget-object v1, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekClipRect:Landroid/graphics/Rect;

    const/high16 v3, 0x42480000  # 50.0f

    invoke-virtual {v0, v1, v3}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->getPathFromRoundRect(Landroid/graphics/Rect;F)Landroid/graphics/Path;

    move-result-object v1

    iput-object v1, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeelClipPath:Landroid/graphics/Path;

    .line 595
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iget v3, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekPaddingLeftAndRightMax:I

    mul-int/2addr v3, v4

    sub-int/2addr v1, v3

    int-to-float v1, v1

    mul-float/2addr v1, v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    mul-float/2addr v1, v6

    iput v1, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekViewMinScale:F

    .line 596
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iget v3, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekPaddingLeftAndRightMin:I

    mul-int/2addr v3, v4

    sub-int/2addr v1, v3

    int-to-float v1, v1

    mul-float/2addr v1, v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    mul-float/2addr v1, v6

    iput v1, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekViewMaxScale:F

    .line 597
    iget v1, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mCurPressure:F

    iget v3, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekViewMaxScale:F

    iget v4, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekViewMinScale:F

    sub-float/2addr v3, v4

    mul-float/2addr v1, v3

    add-float/2addr v1, v4

    iput v1, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekViewScale:F

    .line 602
    iput v7, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mState:I

    .line 603
    invoke-virtual {v0, v7}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->setStatusBarTranslucent(Z)V

    .line 605
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e23d70a  # 0.16f

    const/4 v4, 0x0

    invoke-direct {v1, v4, v3, v4, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/16 v3, 0xd2

    .line 606
    invoke-direct {v0, v7, v1, v3}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->createPeekViewAnim(ZLandroid/animation/TimeInterpolator;I)Landroid/animation/AnimatorSet;

    move-result-object v1

    .line 607
    iput-boolean v7, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mIsAnimation:Z

    .line 608
    new-instance v3, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$8;

    invoke-direct {v3, v0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$8;-><init>(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;)V

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 621
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 623
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->isHapticFeedbackEnabled()Z

    move-result v1

    if-eqz v1, :cond_365

    .line 624
    iget v1, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mHapticFeedback_A:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    .line 627
    :cond_365
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekMotionY:F

    iput v1, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mLastMotionY:F

    const/4 v1, 0x0

    .line 628
    iput v1, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekTranslationY:F

    .line 629
    iput-boolean v7, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mReactForceTouch:Z

    goto :goto_39e

    .line 471
    :cond_373
    :goto_373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not peek!!!  mPeekView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mPeekView.get() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekView:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_390

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    goto :goto_392

    :cond_390
    const-string v2, "null"

    :goto_392
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AbsPeekAndPopLayout"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :cond_39e
    :goto_39e
    iget v1, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mCurMotionY:F

    iget v2, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mLastMotionY2:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, v0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3b4

    .line 749
    iget v1, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mCurMotionY:F

    iput v1, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mLastMotionY2:F

    .line 750
    iput-boolean v7, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mHasMoved:Z

    .line 752
    :cond_3b4
    iget v1, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mCurMotionY:F

    iput v1, v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mLastMotionY:F

    return-void
.end method

.method protected onTouchUp(Landroid/view/MotionEvent;)V
    .registers 12

    const/4 p1, 0x0

    .line 763
    iput p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mLastPressure:F

    const/4 v0, 0x1

    .line 765
    iput-boolean v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mHasTouchUp:Z

    .line 766
    iget v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mState:I

    if-eqz v1, :cond_181

    if-eq v1, v0, :cond_179

    const/4 v2, 0x3

    if-eq v1, v2, :cond_11

    goto/16 :goto_192

    .line 786
    :cond_11
    iget v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekTranslationY:F

    const/high16 v2, -0x3d900000  # -60.0f

    cmpg-float v2, v1, v2

    const/4 v3, 0x2

    if-gez v2, :cond_8c

    .line 787
    iget-boolean p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mIsMenuShow:Z

    if-eqz p1, :cond_175

    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    if-eqz p1, :cond_175

    .line 789
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mDistanceBetweenPeekViewAndMenu:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    .line 790
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekClipBgRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000  # 2.0f

    div-float v2, p1, v1

    cmpl-float v2, v0, v2

    if-lez v2, :cond_48

    .line 792
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekClipBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    :goto_44
    int-to-float v0, v0

    sub-float/2addr v0, p1

    neg-float p1, v0

    goto :goto_72

    .line 795
    :cond_48
    iget-object v2, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekClipBgRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    div-int/2addr v4, v3

    sub-int/2addr v2, v4

    neg-int v2, v2

    int-to-float v2, v2

    .line 797
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    div-int/2addr v4, v3

    int-to-float v3, v4

    div-float/2addr v0, v1

    add-float/2addr v3, v0

    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getTop()I

    move-result v0

    iget v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mDistanceBetweenPeekViewAndMenu:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, v3, v0

    if-lez v0, :cond_71

    .line 798
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekClipBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_44

    :cond_71
    move p1, v2

    .line 801
    :goto_72
    iget v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekTranslationY:F

    cmpl-float v1, v0, p1

    if-eqz v1, :cond_83

    const/16 v1, 0x120

    .line 802
    invoke-direct {p0, v0, p1, v1}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->animTranslatePeekView(FFI)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 803
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_192

    .line 804
    :cond_83
    iget-boolean p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mHasMoved:Z

    if-nez p1, :cond_192

    .line 805
    invoke-virtual {p0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->animToNormal()V

    goto/16 :goto_192

    :cond_8c
    const/high16 v2, 0x41200000  # 10.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_175

    .line 810
    iget-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekPullMark:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_175

    .line 811
    iget-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekPullMarkCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_138

    .line 812
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    iget-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekClipBgRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    .line 813
    iget v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekTranslationY:F

    const/16 v4, 0xf0

    invoke-direct {p0, v1, p1, v4}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->animTranslatePeekView(FFI)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 814
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    div-int/2addr v1, v3

    iget-object v4, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekPullMark:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    div-int/2addr v4, v3

    sub-int/2addr v1, v4

    int-to-float v1, v1

    .line 815
    iget-object v4, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekPullMark:Landroid/widget/FrameLayout;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v0, [F

    aput v1, v6, v2

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v4, 0xf0

    .line 816
    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v4, 0x4

    .line 818
    iput v4, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mState:I

    const/high16 v4, 0x3f800000  # 1.0f

    .line 819
    invoke-direct {p0, v4}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->animBackground(F)Landroid/animation/AnimatorSet;

    move-result-object v4

    const-wide/16 v5, 0x96

    .line 820
    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 822
    new-instance v7, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$12;

    invoke-direct {v7, p0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$12;-><init>(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;)V

    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 834
    iget-object v7, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekPullMark:Landroid/widget/FrameLayout;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v3, [F

    fill-array-data v9, :array_194

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 835
    invoke-virtual {v7, v5, v6}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v5, 0x64

    .line 836
    invoke-virtual {v7, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 837
    iput-boolean v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mIsAnimation:Z

    .line 838
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object p1, v3, v2

    aput-object v1, v3, v0

    .line 839
    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 840
    new-instance p1, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$13;

    invoke-direct {p1, p0, v4, v7}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$13;-><init>(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;Landroid/animation/AnimatorSet;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v5, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 847
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 848
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mListener:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopListener;

    if-eqz p1, :cond_11d

    .line 849
    invoke-interface {p1}, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopListener;->onPulldownViewChanged()V

    .line 852
    :cond_11d
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 853
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPackageName:Ljava/lang/String;

    const-string/jumbo v1, "package_name"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "close_peek"

    const-string/jumbo v1, "pull_mark"

    .line 854
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "force_touch_peek"

    .line 855
    invoke-virtual {p0, v0, p1}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->buildUsageStats(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_192

    .line 858
    :cond_138
    iget v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekTranslationY:F

    const/16 v4, 0xc8

    invoke-direct {p0, v1, p1, v4}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->animTranslatePeekView(FFI)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 859
    iget-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekPullMark:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    .line 860
    iget-object v4, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekPullMark:Landroid/widget/FrameLayout;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v0, [F

    aput v1, v6, v2

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v4, 0xc8

    .line 861
    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 863
    iput-boolean v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mIsAnimation:Z

    .line 864
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object p1, v3, v2

    aput-object v1, v3, v0

    .line 865
    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 866
    new-instance p1, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$14;

    invoke-direct {p1, p0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$14;-><init>(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;)V

    invoke-virtual {v4, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 872
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_192

    .line 877
    :cond_175
    invoke-direct {p0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->animPeekToNormal()V

    goto :goto_192

    .line 783
    :cond_179
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekToNormalRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x104

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_192

    .line 773
    :cond_181
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mListener:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopListener;

    if-eqz p1, :cond_188

    .line 774
    invoke-interface {p1}, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopListener;->cancel()V

    .line 777
    :cond_188
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_18f

    .line 778
    invoke-direct {p0, p1}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->ActivityConvertFromTranslucent(Landroid/app/Activity;)V

    .line 779
    :cond_18f
    invoke-virtual {p0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->reset()V

    :cond_192
    :goto_192
    return-void

    nop

    :array_194
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    .line 393
    invoke-super {p0, p1}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_1f

    .line 395
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfig:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;

    if-eqz p1, :cond_1f

    iget p1, p1, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mPeekType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1f

    iget p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mState:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1f

    iget-boolean p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mHasTouchUp:Z

    if-nez p1, :cond_1f

    .line 396
    new-instance p1, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$5;

    invoke-direct {p1, p0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$5;-><init>(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_1f
    return-void
.end method

.method protected reset()V
    .registers 5

    .line 1435
    invoke-super {p0}, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->reset()V

    .line 1436
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmDrawable:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 1437
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1438
    iput-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 1441
    :cond_11
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1442
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    if-eqz v0, :cond_1f

    .line 1443
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1444
    iput-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekMenu:Lcom/meizu/forcetouch/PeekAndPop/SlideSelectListView;

    .line 1446
    :cond_1f
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekPullMark:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_28

    .line 1447
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1448
    iput-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekPullMark:Landroid/widget/FrameLayout;

    .line 1450
    :cond_28
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekArrowView:Landroid/widget/ImageView;

    if-eqz v0, :cond_31

    .line 1451
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1452
    iput-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekArrowView:Landroid/widget/ImageView;

    .line 1456
    :cond_31
    iget-boolean v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mSmartTouchIsShow:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3d

    .line 1457
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->hideSmartTouch(Landroid/content/Context;Z)Z

    .line 1458
    :cond_3d
    iput-boolean v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mInterceptTouchEvent:Z

    .line 1460
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->unBindSmartTouchService(Landroid/content/Context;)V

    .line 1462
    new-instance v0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$30;

    invoke-direct {v0, p0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$30;-><init>(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;)V

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1526
    invoke-virtual {p0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->unScheduleMoveMenuView()V

    .line 1527
    iput-boolean v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mIsAnimation:Z

    .line 1528
    iput-boolean v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mHasMoved:Z

    .line 1529
    iput-boolean v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mHasTouchUp:Z

    .line 1530
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1532
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method scheduleMoveMenuView()V
    .registers 2

    .line 1542
    iget-boolean v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mMoveScheduled:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    .line 1543
    iput-boolean v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mMoveScheduled:Z

    .line 1544
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mChoreographer:Landroid/view/Choreographer;

    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mMoveMenuViewRunnable:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_e
    return-void
.end method

.method public startPeekAndPop(Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;)Z
    .registers 8

    .line 237
    iget-boolean v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mEnablePeekAndPop:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_16e

    if-nez p1, :cond_9

    goto/16 :goto_16e

    .line 241
    :cond_9
    iget-boolean v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfigChanged:Z

    if-nez v0, :cond_16e

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->isMoveWin(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_16e

    .line 242
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->isSplitmode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_16e

    .line 243
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopUtil;->isLandscapeMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2f

    goto/16 :goto_16e

    .line 247
    :cond_2f
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfig:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;

    const-string v2, "AbsPeekAndPopLayout"

    if-eq p1, v0, :cond_47

    .line 248
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 249
    iput-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfig:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;

    goto :goto_47

    :cond_40
    const-string/jumbo p0, "该config 不能被找到，请传入一个之前已经创建过的config"

    .line 251
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 255
    :cond_47
    :goto_47
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mListenerMap:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfig:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopListener;

    iput-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mListener:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopListener;

    .line 257
    iget-object v0, p1, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mConfirmRect:Landroid/graphics/Rect;

    .line 258
    iget-object p1, p1, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mConfirmBitmap:Landroid/graphics/Bitmap;

    const/4 v3, -0x1

    if-eqz p1, :cond_14a

    if-eqz v0, :cond_14a

    .line 259
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_14a

    iget v4, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mState:I

    if-ne v4, v3, :cond_14a

    .line 260
    iput v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mState:I

    .line 261
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mChild:Landroid/view/View;

    .line 262
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v2, v4, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 263
    iput-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmRect:Landroid/graphics/Rect;

    .line 264
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmViewLocation:[I

    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    aput v2, p1, v1

    .line 265
    iget v2, v0, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x1

    aput v2, p1, v4

    .line 266
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmWidth:I

    .line 267
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmHeight:I

    .line 272
    invoke-direct {p0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->initAnim()V

    .line 274
    iget p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mCurPressure:F

    iput p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mInitPressure:F

    .line 275
    iput-boolean v4, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mInterceptTouchEvent:Z

    .line 277
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfig:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;

    iget-object p1, p1, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mPeekView:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekView:Ljava/lang/ref/WeakReference;

    .line 278
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekView:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x4

    if-eqz p1, :cond_bc

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_bc

    .line 279
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mPeekView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c4

    .line 281
    :cond_bc
    new-instance p1, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$3;

    invoke-direct {p1, p0}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout$3;-><init>(Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 291
    :goto_c4
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfig:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;

    iget-object p1, p1, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mPeekRect:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mPeekClipRect:Landroid/graphics/Rect;

    .line 293
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mCaptureBackground:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p1, :cond_d5

    .line 294
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 297
    :cond_d5
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v5, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mChild:Landroid/view/View;

    invoke-direct {p0, v5}, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->createBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {p1, v2, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mCaptureBackground:Landroid/graphics/drawable/BitmapDrawable;

    const/high16 p1, 0x3f800000  # 1.0f

    .line 298
    iput p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mCaptureScale:F

    .line 299
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mCaptureBackground:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    invoke-virtual {p1, v1, v1, v2, v5}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 300
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mChild:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 302
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfig:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;

    iget p1, p1, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mConfirmBgResId:I

    if-eq p1, v3, :cond_111

    .line 303
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfig:Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;

    iget v0, v0, Lcom/meizu/forcetouch/PeekAndPop/PeekAndPopHelper$PeekAndPopConfig;->mConfirmBgResId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_11d

    .line 305
    :cond_111
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/meizu/forcetouch/R$drawable;->confirm_bg:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmBackground:Landroid/graphics/drawable/Drawable;

    .line 308
    :goto_11d
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result p1

    iput p1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mOriginRequestedOrientation:I

    .line 311
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 312
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_149

    .line 313
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 314
    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_149

    .line 315
    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p1

    if-nez p1, :cond_149

    const p1, -0x50506

    .line 316
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    :cond_149
    return v4

    .line 323
    :cond_14a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mConfirmDrawable 或者 mConfirmRect 为空！！ mConfirmDrawable = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " mConfirmRect = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mConfirmRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iput-boolean v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mInterceptTouchEvent:Z

    .line 326
    iput v3, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mState:I

    :cond_16e
    :goto_16e
    return v1
.end method

.method unScheduleMoveMenuView()V
    .registers 3

    .line 1549
    iget-object v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mMoveMenuViewRunnable:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    const/4 v0, 0x0

    .line 1550
    iput-boolean v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AppPeekAndPopLayout;->mMoveScheduled:Z

    return-void
.end method
