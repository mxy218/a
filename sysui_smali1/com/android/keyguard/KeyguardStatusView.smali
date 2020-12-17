.class public Lcom/android/keyguard/KeyguardStatusView;
.super Landroid/widget/GridLayout;
.source "KeyguardStatusView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardStatusView$Patterns;
    }
.end annotation


# instance fields
.field private mClockView:Lcom/android/keyguard/KeyguardClockSwitch;

.field private mDarkAmount:F

.field private mFilterColor:I

.field private mFilterControl:Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;

.field private mFilterRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private final mIActivityManager:Landroid/app/IActivityManager;

.field private mIconTopMargin:I

.field private mIconTopMarginWithHeader:I

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mKeyguardSlice:Lcom/android/keyguard/KeyguardSliceView;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLogoutView:Landroid/widget/TextView;

.field private mNotificationIcons:Landroid/view/View;

.field private mOwnerInfo:Landroid/widget/TextView;

.field private mPendingMarqueeStart:Ljava/lang/Runnable;

.field private mPulsing:Z

.field private mShowingHeader:Z

.field private mStatusViewContainer:Landroid/widget/LinearLayout;

.field private mTextColor:I

.field private mWithAnim:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 128
    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 132
    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 136
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 71
    iput p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mDarkAmount:F

    .line 82
    new-instance p1, Lcom/android/keyguard/KeyguardStatusView$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardStatusView$1;-><init>(Lcom/android/keyguard/KeyguardStatusView;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    const/4 p1, -0x1

    .line 501
    iput p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mFilterColor:I

    const/4 p1, 0x0

    .line 502
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mWithAnim:Z

    .line 137
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mIActivityManager:Landroid/app/IActivityManager;

    .line 138
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 139
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mHandler:Landroid/os/Handler;

    .line 140
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->onDensityOrFontScaleChanged()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardStatusView;)V
    .registers 1

    .line 52
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->refreshTime()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardStatusView;Ljava/util/TimeZone;)V
    .registers 2

    .line 52
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardStatusView;->updateTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardStatusView;)V
    .registers 1

    .line 52
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateOwnerInfo()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardStatusView;)V
    .registers 1

    .line 52
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateLogoutView()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardStatusView;Z)V
    .registers 2

    .line 52
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardStatusView;->setEnableMarquee(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardStatusView;)V
    .registers 1

    .line 52
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->refreshFormat()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardStatusView;)I
    .registers 1

    .line 52
    iget p0, p0, Lcom/android/keyguard/KeyguardStatusView;->mFilterColor:I

    return p0
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardStatusView;)Z
    .registers 1

    .line 52
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardStatusView;->mWithAnim:Z

    return p0
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardStatusView;)Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView;->mFilterControl:Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;

    return-object p0
.end method

.method public static synthetic lambda$Pryio69yVoRI9F153p5QiMZe-bw(Lcom/android/keyguard/KeyguardStatusView;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardStatusView;->onLogoutClicked(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$Xo7rGDTjuOiD9nJpe80IUZ1ddFw(Lcom/android/keyguard/KeyguardStatusView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->onSliceContentChanged()V

    return-void
.end method

.method private layoutOwnerInfo()V
    .registers 5

    .line 428
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_46

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_46

    .line 430
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000  # 1.0f

    iget v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mDarkAmount:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 432
    iget v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mDarkAmount:F

    .line 434
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 435
    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getBottom()I

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v1

    int-to-float v1, v2

    mul-float/2addr v1, v0

    float-to-int v0, v1

    .line 437
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->setBottom(I)V

    .line 438
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView;->mNotificationIcons:Landroid/view/View;

    if-eqz p0, :cond_4e

    .line 441
    invoke-virtual {p0, v0}, Landroid/view/View;->setScrollY(I)V

    goto :goto_4e

    .line 443
    :cond_46
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView;->mNotificationIcons:Landroid/view/View;

    if-eqz p0, :cond_4e

    const/4 v0, 0x0

    .line 444
    invoke-virtual {p0, v0}, Landroid/view/View;->setScrollY(I)V

    :cond_4e
    :goto_4e
    return-void
.end method

.method private loadBottomMargin()V
    .registers 3

    .line 364
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->widget_vertical_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mIconTopMargin:I

    .line 365
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->widget_vertical_padding_with_header:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mIconTopMarginWithHeader:I

    return-void
.end method

.method private onLogoutClicked(Landroid/view/View;)V
    .registers 4

    .line 461
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    .line 463
    :try_start_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mIActivityManager:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 464
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView;->mIActivityManager:Landroid/app/IActivityManager;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p0, p1, v0, v1}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    goto :goto_1a

    :catch_12
    move-exception p0

    const-string p1, "KeyguardStatusView"

    const-string v0, "Failed to logout user"

    .line 466
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1a
    return-void
.end method

.method private onSliceContentChanged()V
    .registers 6

    .line 225
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mKeyguardSlice:Lcom/android/keyguard/KeyguardSliceView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSliceView;->hasHeader()Z

    move-result v0

    .line 226
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardClockSwitch;->setKeyguardShowingHeader(Z)V

    .line 227
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mShowingHeader:Z

    if-ne v1, v0, :cond_10

    return-void

    .line 230
    :cond_10
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mShowingHeader:Z

    .line 231
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mNotificationIcons:Landroid/view/View;

    if-eqz v1, :cond_31

    .line 233
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 234
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-eqz v0, :cond_23

    .line 235
    iget v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mIconTopMarginWithHeader:I

    goto :goto_25

    :cond_23
    iget v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mIconTopMargin:I

    :goto_25
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 234
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 238
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView;->mNotificationIcons:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_31
    return-void
.end method

.method private refreshFormat()V
    .registers 3

    .line 275
    iget-object v0, p0, Landroid/widget/GridLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardStatusView$Patterns;->update(Landroid/content/Context;)V

    .line 276
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/KeyguardClockSwitch;

    sget-object v1, Lcom/android/keyguard/KeyguardStatusView$Patterns;->clockView12:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardClockSwitch;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 277
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/KeyguardClockSwitch;

    sget-object v0, Lcom/android/keyguard/KeyguardStatusView$Patterns;->clockView24:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardClockSwitch;->setFormat24Hour(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private refreshTime()V
    .registers 1

    .line 267
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->refresh()V

    return-void
.end method

.method private setEnableMarquee(Z)V
    .registers 4

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Schedule setEnableMarquee: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_f

    const-string v1, "Enable"

    goto :goto_11

    :cond_f
    const-string v1, "Disable"

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardStatusView"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_34

    .line 160
    iget-object p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mPendingMarqueeStart:Ljava/lang/Runnable;

    if-nez p1, :cond_44

    .line 161
    new-instance p1, Lcom/android/keyguard/-$$Lambda$KeyguardStatusView$ps9yj97ShIVR2u2hJB8SKuKk-kQ;

    invoke-direct {p1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardStatusView$ps9yj97ShIVR2u2hJB8SKuKk-kQ;-><init>(Lcom/android/keyguard/KeyguardStatusView;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mPendingMarqueeStart:Ljava/lang/Runnable;

    .line 165
    iget-object p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView;->mPendingMarqueeStart:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_44

    .line 168
    :cond_34
    iget-object p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mPendingMarqueeStart:Ljava/lang/Runnable;

    if-eqz p1, :cond_40

    .line 169
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 170
    iput-object p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mPendingMarqueeStart:Ljava/lang/Runnable;

    :cond_40
    const/4 p1, 0x0

    .line 172
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardStatusView;->setEnableMarqueeImpl(Z)V

    :cond_44
    :goto_44
    return-void
.end method

.method private setEnableMarqueeImpl(Z)V
    .registers 4

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_a

    const-string v1, "Enable"

    goto :goto_c

    :cond_a
    const-string v1, "Disable"

    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " transport text marquee"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardStatusView"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz p0, :cond_24

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_24
    return-void
.end method

.method private shouldShowLogout()Z
    .registers 1

    .line 456
    iget-object p0, p0, Landroid/widget/GridLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isLogoutEnabled()Z

    move-result p0

    if-eqz p0, :cond_14

    .line 457
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method private updateDark()V
    .registers 6

    .line 411
    iget v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mDarkAmount:F

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    move v0, v3

    .line 412
    :goto_d
    iget-object v4, p0, Lcom/android/keyguard/KeyguardStatusView;->mLogoutView:Landroid/widget/TextView;

    if-eqz v4, :cond_17

    if-eqz v0, :cond_14

    const/4 v1, 0x0

    .line 413
    :cond_14
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 416
    :cond_17
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_31

    .line 417
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v2

    .line 418
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_29

    goto :goto_2b

    :cond_29
    const/16 v3, 0x8

    :goto_2b
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 419
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->layoutOwnerInfo()V

    .line 422
    :cond_31
    iget v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mTextColor:I

    const/4 v1, -0x1

    iget v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mDarkAmount:F

    invoke-static {v0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    .line 423
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mKeyguardSlice:Lcom/android/keyguard/KeyguardSliceView;

    iget v2, p0, Lcom/android/keyguard/KeyguardStatusView;->mDarkAmount:F

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardSliceView;->setDarkAmount(F)V

    .line 424
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardClockSwitch;->setTextColor(I)V

    return-void
.end method

.method private updateLogoutView()V
    .registers 3

    .line 302
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mLogoutView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    return-void

    .line 305
    :cond_5
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->shouldShowLogout()Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x0

    goto :goto_f

    :cond_d
    const/16 v1, 0x8

    :goto_f
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mLogoutView:Landroid/widget/TextView;

    iget-object p0, p0, Landroid/widget/GridLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x10402ba

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateOwnerInfo()V
    .registers 4

    .line 312
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    if-nez v0, :cond_5

    return-void

    .line 313
    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_23

    .line 316
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 317
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    .line 316
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 319
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    .line 322
    :cond_23
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateDark()V

    return-void
.end method

.method private updateTimeZone(Ljava/util/TimeZone;)V
    .registers 2

    .line 271
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardClockSwitch;->onTimeZoneChanged(Ljava/util/TimeZone;)V

    return-void
.end method


# virtual methods
.method public dozeTimeTick()V
    .registers 1

    .line 262
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->refreshTime()V

    .line 263
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView;->mKeyguardSlice:Lcom/android/keyguard/KeyguardSliceView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSliceView;->refresh()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    const-string v0, "KeyguardStatusView:"

    .line 346
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mOwnerInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_18

    const-string v1, "null"

    goto :goto_25

    .line 348
    :cond_18
    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_20

    move v1, v2

    goto :goto_21

    :cond_20
    move v1, v3

    :goto_21
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 347
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPulsing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mPulsing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDarkAmount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mDarkAmount:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTextColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mTextColor:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mLogoutView:Landroid/widget/TextView;

    if-eqz v0, :cond_97

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  logout visible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mLogoutView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_8c

    goto :goto_8d

    :cond_8c
    move v2, v3

    :goto_8d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 355
    :cond_97
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/KeyguardClockSwitch;

    if-eqz v0, :cond_9e

    .line 356
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/keyguard/KeyguardClockSwitch;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 358
    :cond_9e
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView;->mKeyguardSlice:Lcom/android/keyguard/KeyguardSliceView;

    if-eqz p0, :cond_a5

    .line 359
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardSliceView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_a5
    return-void
.end method

.method public getClockPreferredY(I)I
    .registers 2

    .line 298
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardClockSwitch;->getPreferredY(I)I

    move-result p0

    return p0
.end method

.method public getClockTextSize()F
    .registers 1

    .line 288
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->getTextSize()F

    move-result p0

    return p0
.end method

.method public getLogoutButtonHeight()I
    .registers 3

    .line 281
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mLogoutView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 284
    :cond_6
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_12

    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView;->mLogoutView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    :cond_12
    return v1
.end method

.method public hasCustomClock()Z
    .registers 1

    .line 147
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->hasCustomClock()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$setEnableMarquee$0$KeyguardStatusView()V
    .registers 2

    const/4 v0, 0x1

    .line 162
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardStatusView;->setEnableMarqueeImpl(Z)V

    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mPendingMarqueeStart:Ljava/lang/Runnable;

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .line 328
    invoke-super {p0}, Landroid/widget/GridLayout;->onAttachedToWindow()V

    .line 329
    iget-object v0, p0, Landroid/widget/GridLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 330
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .registers 5

    .line 250
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/KeyguardClockSwitch;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 252
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->widget_big_font_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 251
    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardClockSwitch;->setTextSize(IF)V

    .line 254
    :cond_13
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_25

    .line 256
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->widget_label_font_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 255
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 258
    :cond_25
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->loadBottomMargin()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 335
    invoke-super {p0}, Landroid/widget/GridLayout;->onDetachedFromWindow()V

    .line 336
    iget-object v0, p0, Landroid/widget/GridLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 337
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    .line 183
    invoke-super {p0}, Landroid/widget/GridLayout;->onFinishInflate()V

    .line 184
    sget v0, Lcom/android/systemui/R$id;->status_view_container:I

    invoke-virtual {p0, v0}, Landroid/widget/GridLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mStatusViewContainer:Landroid/widget/LinearLayout;

    .line 185
    sget v0, Lcom/android/systemui/R$id;->logout:I

    invoke-virtual {p0, v0}, Landroid/widget/GridLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mLogoutView:Landroid/widget/TextView;

    .line 186
    sget v0, Lcom/android/systemui/R$id;->clock_notification_icon_container:I

    invoke-virtual {p0, v0}, Landroid/widget/GridLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mNotificationIcons:Landroid/view/View;

    .line 187
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mLogoutView:Landroid/widget/TextView;

    if-eqz v0, :cond_2b

    .line 188
    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardStatusView$Pryio69yVoRI9F153p5QiMZe-bw;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardStatusView$Pryio69yVoRI9F153p5QiMZe-bw;-><init>(Lcom/android/keyguard/KeyguardStatusView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    :cond_2b
    sget v0, Lcom/android/systemui/R$id;->keyguard_clock_container:I

    invoke-virtual {p0, v0}, Landroid/widget/GridLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardClockSwitch;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/KeyguardClockSwitch;

    .line 192
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/KeyguardClockSwitch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardClockSwitch;->setShowCurrentUserTime(Z)V

    .line 193
    iget-object v0, p0, Landroid/widget/GridLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardClockAccessibilityDelegate;->isNeeded(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 194
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/KeyguardClockSwitch;

    new-instance v1, Lcom/android/keyguard/KeyguardClockAccessibilityDelegate;

    iget-object v2, p0, Landroid/widget/GridLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/keyguard/KeyguardClockAccessibilityDelegate;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 196
    :cond_4f
    sget v0, Lcom/android/systemui/R$id;->owner_info:I

    invoke-virtual {p0, v0}, Landroid/widget/GridLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mOwnerInfo:Landroid/widget/TextView;

    .line 197
    sget v0, Lcom/android/systemui/R$id;->keyguard_status_area:I

    invoke-virtual {p0, v0}, Landroid/widget/GridLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSliceView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mKeyguardSlice:Lcom/android/keyguard/KeyguardSliceView;

    .line 198
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardClockSwitch;->getCurrentTextColor()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mTextColor:I

    .line 200
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mKeyguardSlice:Lcom/android/keyguard/KeyguardSliceView;

    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardStatusView$Xo7rGDTjuOiD9nJpe80IUZ1ddFw;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardStatusView$Xo7rGDTjuOiD9nJpe80IUZ1ddFw;-><init>(Lcom/android/keyguard/KeyguardStatusView;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSliceView;->setContentChangeListener(Ljava/lang/Runnable;)V

    .line 201
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->onSliceContentChanged()V

    .line 203
    iget-object v0, p0, Landroid/widget/GridLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    .line 204
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardStatusView;->setEnableMarquee(Z)V

    .line 205
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->refreshFormat()V

    .line 206
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateOwnerInfo()V

    .line 207
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateLogoutView()V

    .line 208
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateDark()V

    .line 211
    new-instance v0, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mFilterControl:Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;

    .line 212
    new-instance v0, Lcom/android/keyguard/KeyguardStatusView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardStatusView$2;-><init>(Lcom/android/keyguard/KeyguardStatusView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mFilterRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 244
    invoke-super/range {p0 .. p5}, Landroid/widget/GridLayout;->onLayout(ZIIII)V

    .line 245
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->layoutOwnerInfo()V

    return-void
.end method

.method public onLocaleListChanged()V
    .registers 1

    .line 342
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->refreshFormat()V

    return-void
.end method

.method public setDarkAmount(F)V
    .registers 3

    .line 402
    iget v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mDarkAmount:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_7

    return-void

    .line 405
    :cond_7
    iput p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mDarkAmount:F

    .line 406
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardClockSwitch;->setDarkAmount(F)V

    .line 407
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateDark()V

    return-void
.end method

.method public setFilterColor(I)V
    .registers 3

    const/4 v0, 0x0

    .line 482
    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardStatusView;->setFilterColor(IZ)V

    return-void
.end method

.method public setFilterColor(IZ)V
    .registers 3

    .line 486
    iput p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mFilterColor:I

    .line 487
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    if-nez p1, :cond_b

    const/4 p1, -0x1

    .line 488
    iput p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mFilterColor:I

    .line 490
    :cond_b
    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardStatusView;->mWithAnim:Z

    .line 491
    iget-object p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView;->mFilterRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setHasVisibleNotifications(Z)V
    .registers 2

    .line 154
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView;->mClockView:Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardClockSwitch;->setHasVisibleNotifications(Z)V

    return-void
.end method

.method public setPulsing(Z)V
    .registers 3

    .line 449
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardStatusView;->mPulsing:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 452
    :cond_5
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardStatusView;->mPulsing:Z

    return-void
.end method
