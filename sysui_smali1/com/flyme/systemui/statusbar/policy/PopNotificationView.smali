.class public Lcom/flyme/systemui/statusbar/policy/PopNotificationView;
.super Landroid/widget/FrameLayout;
.source "PopNotificationView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/SwipeHelper$Callback;
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/policy/PopNotificationView$EdgeSwipeHelper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PopNotificationView"


# instance fields
.field private DEBUG:Z

.field private isPopShowing:Z

.field private isQuickOpen:Z

.field private isReleased:Z

.field private linearLayout:Landroid/widget/LinearLayout;

.field private mAllOut:Landroid/animation/ObjectAnimator;

.field private mAppIcon:Landroid/graphics/drawable/Drawable;

.field private mBackgroundX:F

.field private mBtnQuickReply:Landroid/widget/Button;

.field private mCenterX:I

.field private mCenterY:I

.field private mClickOutSet:Landroid/animation/AnimatorSet;

.field private mCollapseAnimator:Landroid/animation/ObjectAnimator;

.field private mDiameter:I

.field private mDisplay:Landroid/view/Display;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDraging:Z

.field private mEdgeSwipeHelper:Lcom/flyme/systemui/statusbar/policy/PopNotificationView$EdgeSwipeHelper;

.field private mExpandAnimator:Landroid/animation/ObjectAnimator;

.field private mFlipOutAnimator:Landroid/animation/ObjectAnimator;

.field private mFlymeHeadsupManager:Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

.field private mInSet:Landroid/animation/AnimatorSet;

.field private mIvAppIcon:Landroid/widget/ImageView;

.field private final mMaxAlpha:F

.field private mMessageContent:Ljava/lang/CharSequence;

.field private mMessageLayoutX:F

.field private mMessagePaddingEnd:I

.field private mMessageTitle:Ljava/lang/CharSequence;

.field private mOffset:F

.field private mOldWidth:F

.field private mPackage:Ljava/lang/String;

.field private mPaint:Landroid/graphics/Paint;

.field private mPopDividingLine:Landroid/view/View;

.field private mPopMessageLayout:Landroid/widget/LinearLayout;

.field mPopOffsetY:F

.field private mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field private mScale:F

.field private mSwipeHelper:Lcom/android/systemui/SwipeHelper;

.field private mTargetWidth:F

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTmpTwoArray:[I

.field private mTvContent:Landroid/widget/TextView;

.field private mTvTitle:Landroid/widget/TextView;

.field private mUpdateCollapseAnimator:Landroid/animation/ObjectAnimator;

.field private mUpdateExpandAnimator:Landroid/animation/ObjectAnimator;

.field private mZoomInAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, p1, v0}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 113
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    sget-object p1, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->TAG:Ljava/lang/String;

    const/4 p2, 0x3

    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->DEBUG:Z

    const/4 p1, 0x0

    .line 69
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->isPopShowing:Z

    .line 70
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->isQuickOpen:Z

    const/4 p2, 0x0

    .line 89
    iput p2, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mOffset:F

    iput p2, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mScale:F

    .line 91
    iput p2, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mOldWidth:F

    iput p2, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mTargetWidth:F

    const/high16 p2, 0x3f800000  # 1.0f

    .line 101
    iput p2, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mMaxAlpha:F

    const/4 p2, 0x1

    .line 105
    iput-boolean p2, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->isReleased:Z

    const/4 p2, 0x2

    new-array v0, p2, [I

    .line 106
    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mTmpTwoArray:[I

    .line 114
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 115
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 116
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mDisplay:Landroid/view/Display;

    .line 118
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 119
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mPaint:Landroid/graphics/Paint;

    .line 121
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->pop_view_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mDiameter:I

    .line 122
    sget-object p1, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[foree] setUpView: mDiameter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mDiameter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->pop_view_message_margin_end:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mMessagePaddingEnd:I

    .line 124
    iget p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mDiameter:I

    div-int/2addr p1, p2

    iput p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mCenterY:I

    .line 126
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->init()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 63
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;)Landroid/widget/LinearLayout;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mPopMessageLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;Z)Z
    .registers 2

    .line 63
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->isReleased:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;F)V
    .registers 2

    .line 63
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->setOffset(F)V

    return-void
.end method

.method static synthetic access$1300(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;)Lcom/flyme/systemui/headsup/FlymeHeadsupManager;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mFlymeHeadsupManager:Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;)Landroid/widget/Button;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mBtnQuickReply:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;)Landroid/view/View;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mPopDividingLine:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;)I
    .registers 1

    .line 63
    iget p0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mMessagePaddingEnd:I

    return p0
.end method

.method static synthetic access$1602(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;I)I
    .registers 2

    .line 63
    iput p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mMessagePaddingEnd:I

    return p1
.end method

.method static synthetic access$1700(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;)Ljava/lang/String;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mPackage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mAppIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;)Landroid/widget/ImageView;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mIvAppIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;)Ljava/lang/CharSequence;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mMessageTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$500(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;)Landroid/widget/TextView;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mTvTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;)Ljava/lang/CharSequence;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mMessageContent:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$700(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;)Landroid/widget/TextView;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mTvContent:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;)Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    return-object p0
.end method

.method static synthetic access$900(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;)Landroid/content/Context;
    .registers 1

    .line 63
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private init()V
    .registers 5

    .line 131
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->pop_notification_offset_y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mPopOffsetY:F

    .line 133
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->setUpView()V

    .line 135
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->setUpAnimator()V

    .line 137
    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mCenterY:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setPivotY(F)V

    const/4 v0, 0x0

    .line 141
    invoke-direct {p0, v0}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->setOffset(F)V

    .line 142
    invoke-direct {p0, v0}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->setScale(F)V

    .line 143
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 145
    new-instance v0, Lcom/android/systemui/SwipeHelper;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/systemui/plugins/FalsingManager;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/FalsingManager;

    const/4 v3, 0x0

    invoke-direct {v0, v3, p0, v1, v2}, Lcom/android/systemui/SwipeHelper;-><init>(ILcom/android/systemui/SwipeHelper$Callback;Landroid/content/Context;Lcom/android/systemui/plugins/FalsingManager;)V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    .line 146
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/SwipeHelper;->setMaxSwipeProgress(F)V

    .line 148
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    .line 150
    new-instance v1, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$EdgeSwipeHelper;

    invoke-direct {v1, p0, v0}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$EdgeSwipeHelper;-><init>(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;F)V

    iput-object v1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mEdgeSwipeHelper:Lcom/flyme/systemui/statusbar/policy/PopNotificationView$EdgeSwipeHelper;

    return-void
.end method

.method private setOffset(F)V
    .registers 5
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 282
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOffset() called with: offset = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_20
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mZoomInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 p1, 0x0

    .line 286
    :cond_29
    iput p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mOffset:F

    .line 287
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->linearLayout:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mMessageLayoutX:F

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 288
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private setScale(F)V
    .registers 5
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 294
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScale() called with: scale = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_20
    iput p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mScale:F

    .line 296
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 297
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    return-void
.end method

.method private setUpAnimator()V
    .registers 17

    move-object/from16 v0, p0

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 179
    fill-array-data v2, :array_184

    const-string v3, "scale"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, v0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mZoomInAnimator:Landroid/animation/ObjectAnimator;

    .line 180
    iget-object v2, v0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mZoomInAnimator:Landroid/animation/ObjectAnimator;

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3f2b851f  # 0.67f

    const/high16 v6, 0x3f800000  # 1.0f

    const/4 v7, 0x0

    const v8, 0x3ea8f5c3  # 0.33f

    invoke-direct {v4, v8, v7, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 181
    iget-object v2, v0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mZoomInAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v8, 0x96

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v2, v1, [F

    const/4 v4, 0x0

    aput v7, v2, v4

    .line 183
    iget v8, v0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mTargetWidth:F

    const/4 v9, 0x1

    aput v8, v2, v9

    const-string v8, "offset"

    invoke-static {v0, v8, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, v0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mExpandAnimator:Landroid/animation/ObjectAnimator;

    .line 184
    iget-object v2, v0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mExpandAnimator:Landroid/animation/ObjectAnimator;

    new-instance v10, Landroid/view/animation/PathInterpolator;

    const v11, 0x3e4ccccd  # 0.2f

    const v12, 0x3e99999a  # 0.3f

    const v13, 0x3f07ae14  # 0.53f

    invoke-direct {v10, v12, v13, v11, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 185
    iget-object v2, v0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mExpandAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v13, 0x14a

    invoke-virtual {v2, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 187
    iget-object v2, v0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mPopMessageLayout:Landroid/widget/LinearLayout;

    new-array v10, v1, [F

    fill-array-data v10, :array_18c

    const-string v13, "alpha"

    invoke-static {v2, v13, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 188
    new-instance v10, Landroid/view/animation/PathInterpolator;

    invoke-direct {v10, v12, v7, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v14, 0xc8

    .line 189
    invoke-virtual {v2, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v14, 0x118

    .line 190
    invoke-virtual {v2, v14, v15}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 192
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v10, v0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mInSet:Landroid/animation/AnimatorSet;

    .line 193
    iget-object v10, v0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mInSet:Landroid/animation/AnimatorSet;

    iget-object v14, v0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mZoomInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v10, v14}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v10

    iget-object v14, v0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mExpandAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v10, v14}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 194
    iget-object v2, v0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mInSet:Landroid/animation/AnimatorSet;

    new-instance v10, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$1;

    invoke-direct {v10, v0}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$1;-><init>(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;)V

    invoke-virtual {v2, v10}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 209
    iget-object v2, v0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mPopMessageLayout:Landroid/widget/LinearLayout;

    new-array v10, v1, [F

    fill-array-data v10, :array_194

    invoke-static {v2, v13, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 210
    new-instance v10, Landroid/view/animation/PathInterpolator;

    const v14, 0x3e23d70a  # 0.16f

    invoke-direct {v10, v12, v14, v11, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v14, 0x46

    .line 211
    invoke-virtual {v2, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v10, v1, [F

    .line 213
    iget v14, v0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mTargetWidth:F

    aput v14, v10, v4

    aput v7, v10, v9

    invoke-static {v0, v8, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    iput-object v10, v0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mCollapseAnimator:Landroid/animation/ObjectAnimator;

    .line 214
    iget-object v10, v0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mCollapseAnimator:Landroid/animation/ObjectAnimator;

    new-instance v14, Landroid/view/animation/PathInterpolator;

    const v15, 0x3f266666  # 0.65f

    invoke-direct {v14, v12, v15, v11, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v10, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 215
    iget-object v10, v0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mCollapseAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v14, 0xfa

    invoke-virtual {v10, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v10, v1, [F

    .line 217
    fill-array-data v10, :array_19c

    invoke-static {v0, v3, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 218
    new-instance v10, Landroid/view/animation/PathInterpolator;

    invoke-direct {v10, v12, v7, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v10, 0x82

    .line 219
    invoke-virtual {v3, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v10, 0xb7

    .line 220
    invoke-virtual {v3, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    new-array v10, v1, [F

    .line 222
    fill-array-data v10, :array_1a4

    invoke-static {v0, v13, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    iput-object v10, v0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mAllOut:Landroid/animation/ObjectAnimator;

    .line 223
    iget-object v10, v0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mAllOut:Landroid/animation/ObjectAnimator;

    new-instance v11, Landroid/view/animation/PathInterpolator;

    invoke-direct {v11, v12, v7, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v10, v11}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 224
    iget-object v10, v0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mAllOut:Landroid/animation/ObjectAnimator;

    const-wide/16 v14, 0xc8

    invoke-virtual {v10, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v10, v1, [F

    .line 226
    fill-array-data v10, :array_1ac

    invoke-static {v0, v13, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 227
    new-instance v11, Landroid/view/animation/PathInterpolator;

    invoke-direct {v11, v12, v7, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v10, v11}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 228
    invoke-virtual {v10, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v5, 0x75

    .line 229
    invoke-virtual {v10, v5, v6}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 232
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, v0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mClickOutSet:Landroid/animation/AnimatorSet;

    .line 233
    iget-object v5, v0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mClickOutSet:Landroid/animation/AnimatorSet;

    const/4 v6, 0x4

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v2, v6, v4

    iget-object v2, v0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mCollapseAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v6, v9

    aput-object v3, v6, v1

    const/4 v2, 0x3

    aput-object v10, v6, v2

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 234
    iget-object v2, v0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mClickOutSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$2;

    invoke-direct {v3, v0}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$2;-><init>(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v2, v9, [F

    .line 248
    iget v3, v0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mTargetWidth:F

    aput v3, v2, v4

    invoke-static {v0, v8, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, v0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mUpdateExpandAnimator:Landroid/animation/ObjectAnimator;

    .line 249
    iget-object v2, v0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mUpdateExpandAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v5, 0x14

    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v2, v1, [F

    .line 251
    iget v3, v0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mTargetWidth:F

    aput v3, v2, v4

    aput v7, v2, v9

    invoke-static {v0, v8, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, v0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mUpdateCollapseAnimator:Landroid/animation/ObjectAnimator;

    .line 252
    iget-object v2, v0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mUpdateCollapseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v1, v1, [F

    .line 254
    fill-array-data v1, :array_1b4

    const-string/jumbo v2, "translationY"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mFlipOutAnimator:Landroid/animation/ObjectAnimator;

    .line 255
    iget-object v0, v0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mFlipOutAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-void

    :array_184
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_18c
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_194
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data

    :array_19c
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data

    :array_1a4
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data

    :array_1ac
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data

    :array_1b4
    .array-data 4
        0x0
        -0x3e600000  # -20.0f
    .end array-data
.end method

.method private setUpView()V
    .registers 4

    .line 154
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->pop_notification_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->linearLayout:Landroid/widget/LinearLayout;

    .line 157
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->linearLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/android/systemui/R$id;->icon:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mIvAppIcon:Landroid/widget/ImageView;

    .line 159
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->linearLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/android/systemui/R$id;->pop_message:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mPopMessageLayout:Landroid/widget/LinearLayout;

    .line 160
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mPopMessageLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 162
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mPopMessageLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/android/systemui/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mTvTitle:Landroid/widget/TextView;

    .line 163
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mPopMessageLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/android/systemui/R$id;->content:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mTvContent:Landroid/widget/TextView;

    .line 165
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mPopMessageLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/android/systemui/R$id;->pop_quick_open:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mBtnQuickReply:Landroid/widget/Button;

    .line 166
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mBtnQuickReply:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mPopMessageLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/android/systemui/R$id;->pop_dividing_line:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mPopDividingLine:Landroid/view/View;

    .line 170
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mTextPaint:Landroid/text/TextPaint;

    .line 172
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mDiameter:I

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 173
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public canChildBeDismissed(Landroid/view/View;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public canChildBeDismissedInDirection(Landroid/view/View;Z)Z
    .registers 3

    .line 499
    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->canChildBeDismissed(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public canChildBeDragged(Landroid/view/View;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .registers 2

    return-object p0
.end method

.method public getConstrainSwipeStartPosition()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getFalsingThresholdFactor()F
    .registers 1

    const/high16 p0, 0x3f800000  # 1.0f

    return p0
.end method

.method public isAntiFalsingNeeded()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isQuickOpen()Z
    .registers 1

    .line 381
    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->isQuickOpen:Z

    return p0
.end method

.method public isShowing()Z
    .registers 2

    .line 454
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mFlymeHeadsupManager:Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

    invoke-virtual {v0}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->isShowPopNotification()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->isPopShowing:Z

    if-eqz v0, :cond_12

    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->isReleased:Z

    if-nez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 365
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 366
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mFlymeHeadsupManager:Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

    .line 367
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->updateLayoutOffset()V

    .line 368
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    return-void
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .registers 3

    .line 509
    sget-object p1, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->TAG:Ljava/lang/String;

    const-string v0, "onBeginDrag"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 510
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mDraging:Z

    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .registers 3

    .line 515
    sget-object p1, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->TAG:Ljava/lang/String;

    const-string v0, "onChildDismissed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 516
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mDraging:Z

    .line 518
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p1, :cond_20

    .line 519
    const-class p1, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 520
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->performRemoveNotification(Landroid/service/notification/StatusBarNotification;I)V

    :cond_20
    return-void
.end method

.method public onChildSnappedBack(Landroid/view/View;F)V
    .registers 3

    .line 531
    sget-object p1, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->TAG:Ljava/lang/String;

    const-string p2, "onChildSnappedBack"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 532
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mDraging:Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 373
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/android/systemui/R$id;->pop_quick_open:I

    if-ne p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->isQuickOpen:Z

    .line 374
    sget-object p1, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[foree] onClick: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->isQuickOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mClickOutSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 377
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getOrigPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->collectPopClick(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .registers 8

    const/4 v0, 0x3

    .line 587
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    const/4 v0, 0x0

    .line 589
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 590
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mTmpTwoArray:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 591
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 592
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 594
    iget-object p1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mTmpTwoArray:[I

    aget v3, p0, v0

    const/4 v4, 0x1

    aget v5, p0, v4

    aget v0, p0, v0

    add-int/2addr v0, v1

    aget p0, p0, v4

    add-int/2addr p0, v2

    invoke-virtual {p1, v3, v5, v0, p0}, Landroid/graphics/Region;->set(IIII)Z

    :cond_36
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 602
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 603
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->updateLayoutOffset()V

    return-void
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .registers 2

    .line 526
    sget-object p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->TAG:Ljava/lang/String;

    const-string p1, "onDragCancelled"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 12

    .line 302
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 303
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 304
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mPaint:Landroid/graphics/Paint;

    const-string v1, "#CCFFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 305
    iget v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mBackgroundX:F

    iget v1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mOffset:F

    sub-float v3, v0, v1

    iget v4, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mPopOffsetY:F

    iget v2, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mDiameter:I

    int-to-float v5, v2

    add-float/2addr v0, v5

    add-float v5, v0, v1

    int-to-float v0, v2

    add-float v6, v0, v4

    div-int/lit8 v0, v2, 0x2

    int-to-float v7, v0

    div-int/lit8 v2, v2, 0x2

    int-to-float v8, v2

    iget-object v9, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 558
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mEdgeSwipeHelper:Lcom/flyme/systemui/statusbar/policy/PopNotificationView$EdgeSwipeHelper;

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$EdgeSwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    .line 559
    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 560
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 p0, 0x1

    .line 561
    :goto_1a
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInterceptTouchEvent ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 567
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mEdgeSwipeHelper:Lcom/flyme/systemui/statusbar/policy/PopNotificationView$EdgeSwipeHelper;

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$EdgeSwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    .line 570
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_16

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1c

    .line 571
    :cond_16
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mEdgeSwipeHelper:Lcom/flyme/systemui/statusbar/policy/PopNotificationView$EdgeSwipeHelper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$EdgeSwipeHelper;->access$1202(Lcom/flyme/systemui/statusbar/policy/PopNotificationView$EdgeSwipeHelper;Z)Z

    :cond_1c
    return v1

    .line 576
    :cond_1d
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 578
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mDraging:Z

    if-eqz v0, :cond_2a

    return v1

    .line 582
    :cond_2a
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    if-nez p2, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    .line 450
    :goto_5
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->isPopShowing:Z

    return-void
.end method

.method public releasePopWithAnimation(ZLandroid/animation/Animator$AnimatorListener;)V
    .registers 6

    .line 385
    sget-object v0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releasePopWithAnimation() called with: show = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", listener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isReleased = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->isReleased:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", in running = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mInSet:Landroid/animation/AnimatorSet;

    .line 386
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", outRunning = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mAllOut:Landroid/animation/ObjectAnimator;

    .line 387
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", getAlpha = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 385
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_74

    .line 390
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    const/high16 p2, 0x3f800000  # 1.0f

    invoke-virtual {p1, p0, v0, p2}, Lcom/android/systemui/SwipeHelper;->snapChild(Landroid/view/View;FF)V

    .line 391
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 393
    iget-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->isReleased:Z

    if-nez p1, :cond_62

    return-void

    .line 396
    :cond_62
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mInSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_6b

    goto :goto_c0

    .line 399
    :cond_6b
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mInSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    const/4 p1, 0x0

    .line 400
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->isReleased:Z

    goto :goto_c0

    .line 405
    :cond_74
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p1

    cmpl-float p1, p1, v0

    if-nez p1, :cond_8c

    if-eqz p2, :cond_8c

    .line 406
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mAllOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 407
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mAllOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->end()V

    .line 408
    invoke-direct {p0, v0}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->setOffset(F)V

    return-void

    .line 412
    :cond_8c
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mAllOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_a5

    .line 413
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mAllOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 414
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mAllOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->end()V

    .line 415
    invoke-direct {p0, v0}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->setOffset(F)V

    const/4 p1, 0x1

    .line 416
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->isReleased:Z

    goto :goto_c0

    :cond_a5
    if-eqz p2, :cond_c0

    .line 418
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mAllOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 419
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mAllOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 420
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mAllOut:Landroid/animation/ObjectAnimator;

    new-instance p2, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$4;

    invoke-direct {p2, p0}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$4;-><init>(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 429
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mAllOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_c0
    :goto_c0
    return-void
.end method

.method public startFlipOutAnimation(Landroid/animation/Animator$AnimatorListener;)V
    .registers 3

    .line 260
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mFlipOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 261
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mFlipOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 262
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mFlipOutAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$3;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$3;-><init>(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 277
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mFlipOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public updateLayoutOffset()V
    .registers 5

    .line 463
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 464
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->headsup_notification_margin_start_portrait:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_22

    .line 467
    :cond_18
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->headsup_notification_margin_start_landscape:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 471
    :goto_22
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mDisplay:Landroid/view/Display;

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 472
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mCenterX:I

    .line 474
    iget v1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mCenterX:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    .line 475
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 477
    iget v1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mCenterX:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->pop_icon_diameter:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    int-to-float v2, v0

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mMessageLayoutX:F

    .line 479
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->linearLayout:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mMessageLayoutX:F

    iget v3, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mOffset:F

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 480
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->linearLayout:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mPopOffsetY:F

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 482
    iget v1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mCenterX:I

    iget v2, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mDiameter:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    int-to-float v0, v1

    iput v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mBackgroundX:F

    .line 484
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->updateQuickOpenVisibility()V

    return-void
.end method

.method public updateNotificationRow(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .registers 13

    .line 310
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 311
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getOrigPackageName()Ljava/lang/String;

    move-result-object v1

    .line 312
    sget-object v2, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[foree] updateNotificationRow: pkg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mFlymeHeadsupManager:Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

    invoke-virtual {v2, v1}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->isWhitePkg(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mFlymeHeadsupManager:Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

    invoke-virtual {v2, v1}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->getWhitePkgIconId(Ljava/lang/String;)I

    move-result v2

    goto :goto_37

    :cond_36
    move v2, v3

    :goto_37
    if-eqz v2, :cond_12a

    .line 315
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 316
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v4

    const/16 v5, 0x3e7

    if-ne v4, v5, :cond_51

    .line 317
    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeHelper;->addMutilLaunchAppMarkToIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 319
    :cond_51
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.title"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 320
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v5, "android.text"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    iget-object v5, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mTextPaint:Landroid/text/TextPaint;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    iget-object v6, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mTextPaint:Landroid/text/TextPaint;

    .line 323
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 322
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 324
    iget-object v6, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mTvContent:Landroid/widget/TextView;

    .line 325
    invoke-virtual {v6}, Landroid/widget/TextView;->getMaxWidth()I

    move-result v6

    int-to-float v6, v6

    .line 324
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget v6, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mMessagePaddingEnd:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000  # 2.0f

    div-float/2addr v5, v6

    iput v5, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mTargetWidth:F

    .line 327
    iget-object v5, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mExpandAnimator:Landroid/animation/ObjectAnimator;

    const/4 v6, 0x2

    new-array v7, v6, [F

    const/4 v8, 0x0

    aput v8, v7, v3

    iget v9, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mTargetWidth:F

    const/4 v10, 0x1

    aput v9, v7, v10

    invoke-virtual {v5, v7}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 328
    iget-object v5, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mCollapseAnimator:Landroid/animation/ObjectAnimator;

    new-array v7, v6, [F

    iget v9, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mTargetWidth:F

    aput v9, v7, v3

    aput v8, v7, v10

    invoke-virtual {v5, v7}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 330
    iput-object v2, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 331
    iput-object v4, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mMessageTitle:Ljava/lang/CharSequence;

    .line 332
    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mMessageContent:Ljava/lang/CharSequence;

    .line 334
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_114

    .line 336
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mIvAppIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 337
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mTvTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mMessageTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mTvContent:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mMessageContent:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    iget v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mOldWidth:F

    iget v2, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mTargetWidth:F

    cmpl-float v4, v0, v2

    if-lez v4, :cond_104

    .line 340
    iget-object v4, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mUpdateCollapseAnimator:Landroid/animation/ObjectAnimator;

    new-array v5, v6, [F

    aput v0, v5, v3

    aput v2, v5, v10

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 341
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mUpdateCollapseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_114

    .line 343
    :cond_104
    iget-object v4, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mUpdateExpandAnimator:Landroid/animation/ObjectAnimator;

    new-array v5, v6, [F

    aput v0, v5, v3

    aput v2, v5, v10

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 344
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mUpdateExpandAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 348
    :cond_114
    :goto_114
    iget v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mTargetWidth:F

    iput v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mOldWidth:F

    .line 351
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 353
    iput-object v1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mPackage:Ljava/lang/String;

    .line 356
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getOrigPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->collectPopShow(Landroid/content/Context;Ljava/lang/String;)V

    return v10

    :cond_12a
    return v3
.end method

.method public updateQuickOpenVisibility()V
    .registers 3

    .line 607
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->pop_view_message_margin_end:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mMessagePaddingEnd:I

    .line 608
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->mPopMessageLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$6;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$6;-><init>(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateSwipeProgress(Landroid/view/View;ZF)Z
    .registers 4

    const/4 p0, 0x0

    return p0
.end method
