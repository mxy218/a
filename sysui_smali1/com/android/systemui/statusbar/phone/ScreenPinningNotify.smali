.class public Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;
.super Ljava/lang/Object;
.source "ScreenPinningNotify.java"


# instance fields
.field private final IS_CTS:Z

.field private final mContext:Landroid/content/Context;

.field private mLastShowToastTime:J

.field private mLastToast:Landroid/widget/Toast;

.field private mNavBarMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "persist.sys_cts_state"

    const/4 v1, 0x0

    .line 113
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->IS_CTS:Z

    .line 43
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->mContext:Landroid/content/Context;

    .line 45
    const-class p1, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    new-instance v0, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify$1;-><init>(Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->addListener(Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->mNavBarMode:I

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;I)I
    .registers 2

    .line 34
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->mNavBarMode:I

    return p1
.end method

.method private getToastTextId()I
    .registers 2

    .line 115
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->mNavBarMode:I

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 116
    sget p0, Lcom/android/systemui/R$string;->toast_screen_pinning_description_gestural:I

    return p0

    .line 117
    :cond_b
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->mNavBarMode:I

    invoke-static {p0}, Lcom/android/systemui/shared/system/QuickStepContract;->isSwipeUpMode(I)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 118
    sget p0, Lcom/android/systemui/R$string;->toast_screen_pinning_description_mback:I

    return p0

    .line 120
    :cond_16
    sget p0, Lcom/android/systemui/R$string;->toast_screen_pinning_description_navigation_bar:I

    return p0
.end method

.method private makeAllUserToastAndShow(I)Landroid/widget/Toast;
    .registers 3

    .line 106
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 107
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-object p0
.end method


# virtual methods
.method public showEscapeToast(ZZ)V
    .registers 9

    .line 75
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 76
    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->mLastShowToastTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_16

    const-string p0, "ScreenPinningNotify"

    const-string p1, "Ignore toast since it is requested in very short interval."

    .line 77
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 80
    :cond_16
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->mLastToast:Landroid/widget/Toast;

    if-eqz v2, :cond_1d

    .line 81
    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 90
    :cond_1d
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->IS_CTS:Z

    if-eqz v2, :cond_34

    if-eqz p1, :cond_26

    .line 92
    sget p1, Lcom/android/systemui/R$string;->screen_pinning_toast_gesture_nav:I

    goto :goto_2d

    :cond_26
    if-eqz p2, :cond_2b

    .line 94
    sget p1, Lcom/android/systemui/R$string;->screen_pinning_toast:I

    goto :goto_2d

    .line 95
    :cond_2b
    sget p1, Lcom/android/systemui/R$string;->screen_pinning_toast_recents_invisible:I

    .line 91
    :goto_2d
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->makeAllUserToastAndShow(I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->mLastToast:Landroid/widget/Toast;

    goto :goto_3e

    .line 97
    :cond_34
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->getToastTextId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->makeAllUserToastAndShow(I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->mLastToast:Landroid/widget/Toast;

    .line 102
    :goto_3e
    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->mLastShowToastTime:J

    return-void
.end method

.method public showPinningExitToast()V
    .registers 2

    .line 70
    sget v0, Lcom/android/systemui/R$string;->screen_pinning_exit:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->makeAllUserToastAndShow(I)Landroid/widget/Toast;

    return-void
.end method

.method public showPinningStartToast()V
    .registers 2

    .line 59
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->IS_CTS:Z

    if-eqz v0, :cond_a

    .line 60
    sget v0, Lcom/android/systemui/R$string;->screen_pinning_start:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->makeAllUserToastAndShow(I)Landroid/widget/Toast;

    goto :goto_11

    .line 62
    :cond_a
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->getToastTextId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->makeAllUserToastAndShow(I)Landroid/widget/Toast;

    :goto_11
    return-void
.end method
