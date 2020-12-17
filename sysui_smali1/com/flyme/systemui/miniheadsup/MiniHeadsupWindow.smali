.class public Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;
.super Landroid/view/ViewGroup;
.source "MiniHeadsupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;,
        Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$Callback;,
        Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;
    }
.end annotation


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mAutoSnooze:Z

.field private mAutoSnoozeRunnable:Ljava/lang/Runnable;

.field private mCallback:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$Callback;

.field private mContext:Landroid/content/Context;

.field mDownX:F

.field mDownY:F

.field private mDuringChange:Z

.field private mFinalRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

.field private mFirstGroup:Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;

.field private mFirstGroupRect:Landroid/graphics/Rect;

.field private mFirstIcon:Landroid/widget/ImageView;

.field private mFirstText:Landroid/widget/TextView;

.field private mLayoutConfig:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;

.field private mLeftAction:Landroid/app/PendingIntent;

.field private mLevel:F

.field private mMainAction:Landroid/app/PendingIntent;

.field mMaximumVelocity:I

.field private mOriginRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

.field private mRightAction:Landroid/app/PendingIntent;

.field mScroll:Z

.field private mSecondGroup1:Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

.field mSecondGroup1Visible:Z

.field private mSecondGroup2:Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

.field mSecondGroup2Visible:Z

.field private mSecondGroupRect1:Landroid/graphics/Rect;

.field private mSecondGroupRect2:Landroid/graphics/Rect;

.field private mSecondIcon1:Landroid/widget/ImageView;

.field private mSecondIcon2:Landroid/widget/ImageView;

.field private mSecondText1:Landroid/widget/TextView;

.field private mSecondText2:Landroid/widget/TextView;

.field private mSnoozeAction:Landroid/app/PendingIntent;

.field private mStartClickTime:J

.field private mThirdChronometer:Landroid/widget/Chronometer;

.field private mThirdGroup:Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;

.field private mThirdGroupRect:Landroid/graphics/Rect;

.field private mThirdIcon:Landroid/widget/ImageView;

.field private mThirdText:Landroid/widget/TextView;

.field private mThridGroupEnable:Z

.field private mUser:Landroid/os/UserHandle;

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVideo:Ljava/lang/Boolean;

.field private mWindowRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mWindowRect:Landroid/graphics/Rect;

    .line 38
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFirstGroupRect:Landroid/graphics/Rect;

    .line 39
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroupRect1:Landroid/graphics/Rect;

    .line 40
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroupRect2:Landroid/graphics/Rect;

    .line 41
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdGroupRect:Landroid/graphics/Rect;

    const/4 p2, 0x0

    .line 44
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mVideo:Ljava/lang/Boolean;

    .line 52
    iput-boolean p2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThridGroupEnable:Z

    .line 60
    new-instance p2, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$1;

    invoke-direct {p2, p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$1;-><init>(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;)V

    iput-object p2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAutoSnoozeRunnable:Ljava/lang/Runnable;

    .line 694
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p2

    iput-object p2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 69
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p2

    iput p2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mMaximumVelocity:I

    .line 70
    iput-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;)Landroid/app/PendingIntent;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mMainAction:Landroid/app/PendingIntent;

    return-object p0
.end method

.method static synthetic access$100(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;)Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFirstGroup:Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;

    return-object p0
.end method

.method static synthetic access$202(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;Z)Z
    .registers 2

    .line 34
    iput-boolean p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mDuringChange:Z

    return p1
.end method

.method static synthetic access$300(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;)Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup1:Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    return-object p0
.end method

.method static synthetic access$400(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;)Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup2:Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    return-object p0
.end method

.method static synthetic access$500(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;)Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mLayoutConfig:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;

    return-object p0
.end method

.method static synthetic access$600(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;)Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$Callback;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mCallback:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$Callback;

    return-object p0
.end method

.method private computeRectsDependOnState(II)V
    .registers 10

    .line 279
    iget v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mLevel:F

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7c

    .line 280
    iget v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mLevel:F

    sub-float/2addr v1, v0

    .line 282
    iget-object v2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFirstGroupRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mOriginRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget v4, v3, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mFirtGroupMargeLeft:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    iget-object v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFinalRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget v6, v5, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mFirtGroupMargeLeft:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    add-float/2addr v4, v6

    float-to-int v4, v4

    iget-object v6, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mWindowRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v3, v3, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mFirtGroupMargeRight:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    iget v5, v5, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mFirtGroupMargeRight:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    sub-int v3, p1, v3

    invoke-virtual {v2, v4, v6, v3, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 287
    iget-object v2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroupRect1:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mOriginRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget v4, v3, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup1MargeLeft:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    iget-object v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFinalRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget v6, v5, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup1MargeLeft:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    add-float/2addr v4, v6

    float-to-int v4, v4

    iget-object v6, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mWindowRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v3, v3, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup1MargeRight:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    iget v5, v5, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup1MargeRight:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    sub-int v3, p1, v3

    invoke-virtual {v2, v4, v6, v3, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 292
    iget-object v2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroupRect2:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mOriginRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget v4, v3, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup2MargeLeft:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    iget-object v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFinalRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget v6, v5, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup2MargeLeft:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    add-float/2addr v4, v6

    float-to-int v4, v4

    iget-object v6, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mWindowRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v3, v3, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup2MargeRight:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    iget v1, v5, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup2MargeRight:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v3, v1

    float-to-int v0, v3

    sub-int/2addr p1, v0

    invoke-virtual {v2, v4, v6, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 297
    iget-object p0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdGroupRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_e8

    .line 299
    :cond_7c
    iget v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mLevel:F

    sub-float/2addr v0, v1

    sub-float/2addr v1, v0

    .line 302
    iget-object v2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroupRect1:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mOriginRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget v4, v3, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup1MargeLeftEx:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    iget-object v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFinalRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget v6, v5, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup1MargeLeftEx:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    add-float/2addr v4, v6

    float-to-int v4, v4

    iget-object v6, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mWindowRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v3, v3, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup1MargeRightEx:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    iget v5, v5, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup1MargeRightEx:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    sub-int v3, p1, v3

    invoke-virtual {v2, v4, v6, v3, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 307
    iget-object v2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroupRect2:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mOriginRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget v4, v3, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup2MargeLeftEx:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    iget-object v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFinalRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget v6, v5, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup2MargeLeftEx:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    add-float/2addr v4, v6

    float-to-int v4, v4

    iget-object v6, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mWindowRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v3, v3, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup2MargeRightEx:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    iget v5, v5, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup2MargeRightEx:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    sub-int v3, p1, v3

    invoke-virtual {v2, v4, v6, v3, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 312
    iget-object v2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdGroupRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mOriginRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget v4, v3, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mThirdGroupMargeLeft:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    iget-object v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFinalRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget v6, v5, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mThirdGroupMargeLeft:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    add-float/2addr v4, v6

    float-to-int v4, v4

    iget-object p0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mWindowRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    iget v3, v3, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mThirdGroupMargeRight:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    iget v1, v5, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mThirdGroupMargeRight:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v3, v1

    float-to-int v0, v3

    sub-int/2addr p1, v0

    invoke-virtual {v2, v4, p0, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_e8
    return-void
.end method

.method private layoutChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 5

    .line 267
    iget p0, p2, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p0, v0, v1, p2}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private measureChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 4

    .line 254
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p0

    const/high16 v0, 0x40000000  # 2.0f

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    .line 255
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 253
    invoke-virtual {p1, p0, p2}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private refreshVisible()V
    .registers 4

    .line 180
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFirstGroup:Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 181
    iget-boolean v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup1Visible:Z

    const/4 v2, 0x4

    if-eqz v0, :cond_11

    .line 182
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup1:Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_16

    .line 184
    :cond_11
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup1:Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 186
    :goto_16
    iget-boolean v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup2Visible:Z

    if-eqz v0, :cond_20

    .line 187
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup2:Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_25

    .line 189
    :cond_20
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup2:Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 191
    :goto_25
    iget-object p0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdGroup:Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private setAutoSnooze(J)V
    .registers 4

    const/4 v0, 0x1

    .line 174
    iput-boolean v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAutoSnooze:Z

    .line 175
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAutoSnoozeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 176
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAutoSnoozeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setSecondGroupValue(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 7

    .line 196
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondIcon1:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x1

    .line 197
    iput-boolean v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup1Visible:Z

    const/4 v2, 0x4

    if-eqz p2, :cond_14

    .line 199
    iget-object v3, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondIcon2:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    iput-boolean v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup2Visible:Z

    goto :goto_1b

    .line 202
    :cond_14
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondIcon2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 203
    iput-boolean v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup2Visible:Z

    .line 205
    :goto_1b
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondText1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondText2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondIcon1:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 209
    iget-object p0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondIcon2:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private setSecondGroupValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 213
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondText1:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x1

    .line 214
    iput-boolean v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup1Visible:Z

    .line 215
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x4

    if-nez v2, :cond_18

    .line 216
    iget-object v2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondText2:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    iput-boolean v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup2Visible:Z

    goto :goto_1f

    .line 219
    :cond_18
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondText2:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    iput-boolean v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup2Visible:Z

    .line 222
    :goto_1f
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondIcon1:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondIcon2:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondText1:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object p0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondText2:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method animateChageState2()V
    .registers 4

    .line 445
    iget-boolean v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mDuringChange:Z

    if-nez v0, :cond_4e

    const/4 v0, 0x1

    .line 446
    iput-boolean v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mDuringChange:Z

    .line 447
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_e

    .line 448
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 450
    :cond_e
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdGroup:Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 451
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdChronometer:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Chronometer;->setBase(J)V

    .line 452
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->start()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 453
    fill-array-data v0, :array_50

    invoke-static {v0}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    .line 454
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$4;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$4;-><init>(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 465
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$5;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$5;-><init>(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 475
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 476
    iget-object p0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_4e
    return-void

    nop

    :array_50
    .array-data 4
        0x3f800000  # 1.0f
        0x40000000  # 2.0f
    .end array-data
.end method

.method animateChangeState()V
    .registers 4

    .line 413
    iget-boolean v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mDuringChange:Z

    if-nez v0, :cond_3a

    const/4 v0, 0x1

    .line 414
    iput-boolean v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mDuringChange:Z

    .line 415
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_e

    .line 416
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_e
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 418
    fill-array-data v0, :array_3c

    invoke-static {v0}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    .line 419
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$2;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$2;-><init>(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 431
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$3;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$3;-><init>(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 439
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 440
    iget-object p0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_3a
    return-void

    nop

    :array_3c
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public animateHide(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;)V
    .registers 4

    .line 564
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_7

    .line 565
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 567
    :cond_7
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 568
    fill-array-data v0, :array_3a

    invoke-static {v0}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    .line 569
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$11;

    invoke-direct {v1, p0, p1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$11;-><init>(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 587
    iget-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$12;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$12;-><init>(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 596
    iget-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 597
    iget-object p0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_3a
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public animateShow(Z)V
    .registers 6

    .line 481
    invoke-direct {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->refreshVisible()V

    .line 482
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mStartClickTime:J

    .line 483
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_13

    .line 484
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_13
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 486
    fill-array-data v0, :array_64

    invoke-static {v0}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_26

    .line 488
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result p1

    goto :goto_2c

    :cond_26
    iget-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mLayoutConfig:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;

    iget p1, p1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->WINDOW_HEIGHT:I

    neg-int p1, p1

    int-to-float p1, p1

    .line 489
    :goto_2c
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$6;

    invoke-direct {v1, p0, p1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$6;-><init>(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 498
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$7;

    invoke-direct {v1, p0, p1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$7;-><init>(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 507
    iget-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 508
    iget-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 510
    iget-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mMainAction:Landroid/app/PendingIntent;

    if-eqz p1, :cond_62

    .line 511
    iget-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mVideo:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_62

    .line 512
    new-instance p1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$8;

    invoke-direct {p1, p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$8;-><init>(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;)V

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_62
    return-void

    nop

    :array_64
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public animateSnap()V
    .registers 4

    .line 523
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_7

    .line 524
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_7
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 526
    fill-array-data v0, :array_38

    invoke-static {v0}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    .line 528
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v0

    .line 529
    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$9;

    invoke-direct {v2, p0, v0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$9;-><init>(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;F)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 538
    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$10;

    invoke-direct {v2, p0, v0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$10;-><init>(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;F)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 544
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 545
    iget-object p0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_38
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method cancelAnimationWithoutCallback()V
    .registers 2

    .line 379
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_f

    .line 380
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 381
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 382
    iput-boolean v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mDuringChange:Z

    :cond_f
    return-void
.end method

.method public changeLevel(F)V
    .registers 5

    .line 271
    iput p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mLevel:F

    .line 272
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup1:Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->setLevel(F)V

    .line 273
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup2:Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->setLevel(F)V

    .line 274
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdGroup:Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;->setLevel(F)V

    .line 275
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 698
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_19

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    goto :goto_22

    .line 706
    :cond_d
    iget-boolean v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAutoSnooze:Z

    if-eqz v0, :cond_22

    .line 707
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAutoSnoozeRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_22

    .line 700
    :cond_19
    iget-boolean v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAutoSnooze:Z

    if-eqz v0, :cond_22

    .line 701
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAutoSnoozeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 711
    :cond_22
    :goto_22
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 10

    .line 602
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mStartClickTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_b

    return-void

    .line 606
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/systemui/R$id;->first_group:I

    if-ne v0, v1, :cond_7d

    .line 607
    iget-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mMainAction:Landroid/app/PendingIntent;

    if-eqz p1, :cond_79

    .line 608
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const/high16 p1, 0x10000000

    .line 609
    invoke-virtual {v3, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 610
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 611
    invoke-static {}, Lcom/meizu/common/alphame/AlphaMe;->getInstance()Lcom/meizu/common/alphame/AlphaMe;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getScene"

    invoke-virtual {v0, v2, v1}, Lcom/meizu/common/alphame/AlphaMe;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "game"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_41

    const-string/jumbo v0, "start_windowmode"

    .line 612
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 615
    :cond_41
    :try_start_41
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mVideo:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_56

    const-string v0, "mz_window_mode_video"

    .line 616
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 617
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v3, p1, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_73

    .line 619
    :cond_56
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mMainAction:Landroid/app/PendingIntent;
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_58} :catch_6f

    if-eqz v0, :cond_73

    .line 621
    :try_start_5a
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v3, p1, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_61} :catch_62

    goto :goto_73

    .line 624
    :catch_62
    :try_start_62
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mMainAction:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_6e
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_62 .. :try_end_6e} :catch_73
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_6e} :catch_6f

    goto :goto_73

    :catch_6f
    move-exception p1

    .line 631
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 633
    :catch_73
    :cond_73
    :goto_73
    sget-object p1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;->Click:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->animateHide(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;)V

    goto :goto_c1

    .line 635
    :cond_79
    invoke-virtual {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->animateChangeState()V

    goto :goto_c1

    .line 637
    :cond_7d
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/systemui/R$id;->second_group_1:I

    if-ne v0, v1, :cond_92

    .line 638
    iget-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mLeftAction:Landroid/app/PendingIntent;

    if-eqz p1, :cond_8c

    .line 640
    :try_start_89
    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V
    :try_end_8c
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_89 .. :try_end_8c} :catch_8c

    .line 644
    :catch_8c
    :cond_8c
    sget-object p1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;->Click:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->animateHide(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;)V

    goto :goto_c1

    .line 645
    :cond_92
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/systemui/R$id;->second_group_2:I

    if-ne v0, v1, :cond_b4

    .line 646
    iget-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mRightAction:Landroid/app/PendingIntent;

    if-eqz p1, :cond_a1

    .line 648
    :try_start_9e
    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V
    :try_end_a1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_9e .. :try_end_a1} :catch_a1

    .line 652
    :catch_a1
    :cond_a1
    iget-boolean p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThridGroupEnable:Z

    if-eqz p1, :cond_ae

    .line 653
    invoke-virtual {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->animateChageState2()V

    const-wide/16 v0, 0xbb8

    .line 654
    invoke-direct {p0, v0, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->setAutoSnooze(J)V

    goto :goto_c1

    .line 656
    :cond_ae
    sget-object p1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;->Click:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->animateHide(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;)V

    goto :goto_c1

    .line 658
    :cond_b4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/android/systemui/R$id;->third_group:I

    if-ne p1, v0, :cond_c1

    .line 659
    sget-object p1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;->Cancel:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->animateHide(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;)V

    :cond_c1
    :goto_c1
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .line 75
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 76
    sget v0, Lcom/android/systemui/R$id;->first_group:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFirstGroup:Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;

    .line 77
    sget v0, Lcom/android/systemui/R$id;->second_group_1:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup1:Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    .line 78
    sget v0, Lcom/android/systemui/R$id;->second_group_2:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup2:Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    .line 79
    sget v0, Lcom/android/systemui/R$id;->third_group:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdGroup:Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;

    .line 81
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFirstGroup:Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup1:Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup2:Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdGroup:Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    sget v0, Lcom/android/systemui/R$id;->first_icon:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFirstIcon:Landroid/widget/ImageView;

    .line 87
    sget v0, Lcom/android/systemui/R$id;->first_text:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFirstText:Landroid/widget/TextView;

    .line 89
    sget v0, Lcom/android/systemui/R$id;->second_icon_1:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondIcon1:Landroid/widget/ImageView;

    .line 90
    sget v0, Lcom/android/systemui/R$id;->second_text_1:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondText1:Landroid/widget/TextView;

    .line 92
    sget v0, Lcom/android/systemui/R$id;->second_icon_2:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondIcon2:Landroid/widget/ImageView;

    .line 93
    sget v0, Lcom/android/systemui/R$id;->second_text_2:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondText2:Landroid/widget/TextView;

    .line 95
    sget v0, Lcom/android/systemui/R$id;->third_icon:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdIcon:Landroid/widget/ImageView;

    .line 96
    sget v0, Lcom/android/systemui/R$id;->third_clock:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdChronometer:Landroid/widget/Chronometer;

    .line 98
    sget v0, Lcom/android/systemui/R$id;->third_text:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdText:Landroid/widget/TextView;

    return-void
.end method

.method public onFirstLayout()V
    .registers 7

    .line 320
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFirstText:Landroid/widget/TextView;

    const/4 v1, -0x2

    invoke-virtual {v0, v1, v1}, Landroid/widget/TextView;->measure(II)V

    .line 321
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFirstText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    .line 322
    iget-object v2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mLayoutConfig:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;

    iget v3, v2, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->FIRSTWINDOW_WIDTH_WITHOUT_TEXT:I

    add-int/2addr v0, v3

    iget v3, v2, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->FIRSTWINDOW_MIN_WIDTH:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v3, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mLayoutConfig:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;

    iget v3, v3, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->FIRSTWINDOW_MAX_WIDTH:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v2, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->firstWindowWidth:I

    .line 325
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondText1:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_47

    .line 326
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondText1:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/TextView;->measure(II)V

    .line 327
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondText1:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    .line 328
    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mLayoutConfig:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;

    iget v2, v1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->SECONDWINDOW_ICON_MIN_WIDTH:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mLayoutConfig:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;

    iget v2, v2, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->SECONDWINDOW_ICON_MAX_WIDTH:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->secondWindowWidth:I

    goto :goto_4d

    .line 331
    :cond_47
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mLayoutConfig:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;

    iget v1, v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->SECONDWINDOW_ICON_MIN_WIDTH:I

    iput v1, v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->secondWindowWidth:I

    .line 333
    :goto_4d
    iget-boolean v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup2Visible:Z

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-nez v0, :cond_55

    move v0, v1

    goto :goto_56

    :cond_55
    move v0, v2

    .line 337
    :goto_56
    iget-object v3, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mLayoutConfig:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;

    iget v4, v3, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->WINDOW_WIDTH:I

    iget v5, v3, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->firstWindowWidth:I

    sub-int/2addr v4, v5

    div-int/2addr v4, v2

    .line 339
    iget v3, v3, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->secondWindowWidth:I

    .line 341
    new-instance v5, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    invoke-direct {v5}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;-><init>()V

    iput-object v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mOriginRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    .line 342
    iget-object v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mOriginRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iput v4, v5, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mFirtGroupMargeLeft:I

    .line 343
    iput v4, v5, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mFirtGroupMargeRight:I

    .line 344
    iput v4, v5, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup1MargeLeft:I

    .line 345
    iput v4, v5, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup1MargeRight:I

    .line 346
    iput v4, v5, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup2MargeLeft:I

    .line 347
    iput v4, v5, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup2MargeRight:I

    .line 349
    new-instance v4, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    invoke-direct {v4}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;-><init>()V

    iput-object v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFinalRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    .line 350
    iget-object v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFinalRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    const/4 v5, 0x0

    iput v5, v4, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mFirtGroupMargeLeft:I

    .line 351
    iput v5, v4, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mFirtGroupMargeRight:I

    if-ne v0, v1, :cond_92

    .line 353
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mLayoutConfig:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;

    iget v0, v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->WINDOW_WIDTH:I

    sub-int/2addr v0, v3

    div-int/2addr v0, v2

    iput v0, v4, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup1MargeLeft:I

    .line 354
    iget v0, v4, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup1MargeLeft:I

    iput v0, v4, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup1MargeRight:I

    goto :goto_a2

    .line 356
    :cond_92
    iput v5, v4, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup1MargeLeft:I

    .line 357
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mLayoutConfig:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;

    iget v0, v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->WINDOW_WIDTH:I

    add-int/2addr v3, v5

    sub-int v1, v0, v3

    iput v1, v4, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup1MargeRight:I

    sub-int/2addr v0, v3

    .line 358
    iput v0, v4, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup2MargeLeft:I

    .line 359
    iput v5, v4, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup2MargeRight:I

    .line 363
    :goto_a2
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mOriginRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFinalRectHolder:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;

    iget v2, v1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup1MargeLeft:I

    iput v2, v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup1MargeLeftEx:I

    .line 364
    iget v3, v1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup1MargeRight:I

    iput v3, v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup1MargeRightEx:I

    .line 365
    iget v3, v1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup2MargeLeft:I

    iput v3, v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup2MargeLeftEx:I

    .line 366
    iget v3, v1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup2MargeRight:I

    iput v3, v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup2MargeRightEx:I

    .line 367
    iget v3, v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup2MargeLeftEx:I

    iput v3, v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mThirdGroupMargeLeft:I

    .line 368
    iget v3, v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup2MargeRightEx:I

    iput v3, v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mThirdGroupMargeRight:I

    .line 370
    iput v2, v1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup1MargeLeftEx:I

    .line 371
    iget-object p0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mLayoutConfig:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;

    iget p0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->WINDOW_WIDTH:I

    iget v0, v1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup1MargeLeftEx:I

    sub-int/2addr p0, v0

    iput p0, v1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup1MargeRightEx:I

    .line 372
    iput v5, v1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mThirdGroupMargeLeft:I

    .line 373
    iput v5, v1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mThirdGroupMargeRight:I

    .line 374
    iget p0, v1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mThirdGroupMargeLeft:I

    iput p0, v1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup2MargeLeftEx:I

    .line 375
    iget p0, v1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mThirdGroupMargeRight:I

    iput p0, v1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$GroupRectHolder;->mSecondGroup2MargeRightEx:I

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 716
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4a

    if-eq v0, v2, :cond_44

    const/4 v3, 0x2

    if-eq v0, v3, :cond_11

    const/4 v3, 0x3

    if-eq v0, v3, :cond_44

    goto :goto_67

    .line 726
    :cond_11
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 727
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 728
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 729
    iget v4, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mDownY:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 730
    iget v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mDownX:F

    sub-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mDownY:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v0, v0, v5

    if-gez v0, :cond_67

    const/high16 v0, 0x41c00000  # 24.0f

    cmpl-float v0, v4, v0

    if-lez v0, :cond_67

    .line 731
    iput-boolean v2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mScroll:Z

    .line 732
    iput v3, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mDownY:F

    goto :goto_67

    .line 737
    :cond_44
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_67

    .line 718
    :cond_4a
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAutoSnoozeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 719
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mDownX:F

    .line 720
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mDownY:F

    .line 721
    iput-boolean v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mScroll:Z

    .line 722
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 723
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 740
    :cond_67
    :goto_67
    iget-boolean v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mScroll:Z

    if-nez v0, :cond_71

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_72

    :cond_71
    move v1, v2

    :cond_72
    return v1
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 260
    iget-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup1:Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    iget-object p2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroupRect1:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->layoutChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 261
    iget-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup2:Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    iget-object p2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroupRect2:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->layoutChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 262
    iget-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFirstGroup:Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;

    iget-object p2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFirstGroupRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->layoutChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 263
    iget-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdGroup:Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;

    iget-object p2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdGroupRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->layoutChild(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 6

    .line 239
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 240
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 241
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mWindowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mLayoutConfig:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;

    iget v1, v1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->MINIWINDOW_OFFSET_TOP:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 242
    invoke-direct {p0, p1, p2}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->computeRectsDependOnState(II)V

    .line 244
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFirstGroup:Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;

    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFirstGroupRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->measureChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 245
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup1:Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroupRect1:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->measureChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 246
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup2:Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroupRect2:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->measureChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 247
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdGroup:Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;

    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdGroupRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->measureChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 249
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 745
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_59

    if-eq v0, v1, :cond_26

    const/4 v2, 0x2

    if-eq v0, v2, :cond_d

    goto :goto_5e

    .line 750
    :cond_d
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 751
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 752
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 753
    iget v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mDownY:F

    sub-float/2addr v0, p1

    const/4 p1, 0x0

    cmpl-float p1, v0, p1

    if-lez p1, :cond_5e

    neg-float p1, v0

    .line 755
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    goto :goto_5e

    .line 760
    :cond_26
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 761
    iget-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    iget v2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mMaximumVelocity:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 762
    iget-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    float-to-int p1, p1

    .line 763
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    if-gez p1, :cond_55

    .line 765
    sget-object p1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;->Snooze:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->animateHide(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;)V

    .line 766
    iget-object p0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSnoozeAction:Landroid/app/PendingIntent;

    if-eqz p0, :cond_5e

    .line 768
    :try_start_4c
    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_4f
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_5e

    :catch_50
    move-exception p0

    .line 770
    invoke-virtual {p0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_5e

    .line 774
    :cond_55
    invoke-virtual {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->animateSnap()V

    goto :goto_5e

    .line 747
    :cond_59
    iget-object p0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_5e
    :goto_5e
    return v1
.end method

.method public setAction(Landroid/app/PendingIntent;Ljava/lang/Boolean;Landroid/os/UserHandle;)V
    .registers 4

    .line 151
    iput-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mMainAction:Landroid/app/PendingIntent;

    .line 152
    iput-object p2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mVideo:Ljava/lang/Boolean;

    .line 153
    iput-object p3, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mUser:Landroid/os/UserHandle;

    return-void
.end method

.method public setAutoSnooze(Z)V
    .registers 4

    .line 166
    iput-boolean p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAutoSnooze:Z

    .line 167
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAutoSnoozeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    if-eqz p1, :cond_10

    .line 169
    iget-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAutoSnoozeRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_10
    return-void
.end method

.method public setCallback(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$Callback;)V
    .registers 2

    .line 664
    iput-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mCallback:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$Callback;

    return-void
.end method

.method public setChildAction(Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 3

    .line 157
    iput-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mLeftAction:Landroid/app/PendingIntent;

    .line 158
    iput-object p2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mRightAction:Landroid/app/PendingIntent;

    return-void
.end method

.method public setFirstGroupColor(I)V
    .registers 2

    .line 106
    iget-object p0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFirstGroup:Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;->setButtonColor(I)V

    return-void
.end method

.method public setFirstGroupValue(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 4

    .line 119
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFirstIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 120
    iget-object p0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFirstText:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLayoutConfig(Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;)V
    .registers 3

    .line 230
    iput-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mLayoutConfig:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;

    .line 231
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup1:Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->updateLayoutConfig(Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;)V

    .line 232
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup2:Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->updateLayoutConfig(Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;)V

    .line 233
    iget-object p0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdGroup:Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;->updateLayoutConfig(Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;)V

    return-void
.end method

.method public setSecondGroupColor(II)V
    .registers 4

    .line 110
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup1:Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->setButtonColor(I)V

    .line 111
    iget-object p0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup2:Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    invoke-virtual {p0, p2}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->setButtonColor(I)V

    return-void
.end method

.method public setSecondGroupValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 124
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 125
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->setSecondGroupValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 126
    :cond_c
    instance-of v0, p1, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_17

    .line 127
    check-cast p1, Landroid/graphics/Bitmap;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, p2}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->setSecondGroupValue(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    :cond_17
    :goto_17
    return-void
.end method

.method public setSnoozeAction(Landroid/app/PendingIntent;)V
    .registers 2

    .line 162
    iput-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSnoozeAction:Landroid/app/PendingIntent;

    return-void
.end method

.method public setThirdGroupColor(I)V
    .registers 2

    .line 115
    iget-object p0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdGroup:Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;->setButtonColor(I)V

    return-void
.end method

.method public setThridGroupEnable(Z)V
    .registers 2

    .line 102
    iput-boolean p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThridGroupEnable:Z

    return-void
.end method

.method public setThridGroupValue(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 6

    .line 132
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-nez v0, :cond_30

    const-string v0, "clock"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_30

    .line 140
    :cond_11
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 141
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 143
    iget-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    iget-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdChronometer:Landroid/widget/Chronometer;

    invoke-virtual {p1, v1}, Landroid/widget/Chronometer;->setVisibility(I)V

    .line 145
    iget-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdText:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object p0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdText:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4a

    .line 133
    :cond_30
    :goto_30
    iget-object p2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 135
    iget-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    iget-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdChronometer:Landroid/widget/Chronometer;

    invoke-virtual {p1, v2}, Landroid/widget/Chronometer;->setVisibility(I)V

    .line 137
    iget-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdText:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object p0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4a
    return-void
.end method

.method public skipToThrid()V
    .registers 6

    const/high16 v0, 0x3f800000  # 1.0f

    .line 387
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 388
    iget v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mLevel:F

    const/high16 v2, 0x40000000  # 2.0f

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_15

    .line 389
    iget-object p0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdChronometer:Landroid/widget/Chronometer;

    invoke-virtual {p0}, Landroid/widget/Chronometer;->start()V

    return-void

    .line 391
    :cond_15
    iget v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mLevel:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-ltz v1, :cond_21

    .line 392
    invoke-virtual {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->animateChageState2()V

    goto :goto_63

    .line 394
    :cond_21
    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_28

    .line 395
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 397
    :cond_28
    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdGroup:Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 398
    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdChronometer:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/widget/Chronometer;->setBase(J)V

    .line 399
    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->start()V

    .line 400
    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mThirdGroup:Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 402
    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFirstGroup:Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 403
    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup1:Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 404
    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup2:Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 405
    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mFirstGroup:Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 406
    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup1:Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 407
    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->mSecondGroup2:Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 408
    invoke-virtual {p0, v2}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->changeLevel(F)V

    :goto_63
    return-void
.end method
