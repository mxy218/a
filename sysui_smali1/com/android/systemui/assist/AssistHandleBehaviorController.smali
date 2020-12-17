.class public final Lcom/android/systemui/assist/AssistHandleBehaviorController;
.super Ljava/lang/Object;
.source "AssistHandleBehaviorController.java"

# interfaces
.implements Lcom/android/systemui/assist/AssistHandleCallbacks;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final DEFAULT_BEHAVIOR:Lcom/android/systemui/assist/AssistHandleBehavior;

.field private static final DEFAULT_SHOW_AND_GO_DURATION_MS:J


# instance fields
.field private final mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field private final mBehaviorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/systemui/assist/AssistHandleBehavior;",
            "Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentBehavior:Lcom/android/systemui/assist/AssistHandleBehavior;

.field private final mHandler:Landroid/os/Handler;

.field private mHandlesLastHiddenAt:J

.field private mHandlesShowing:Z

.field private final mHideHandles:Ljava/lang/Runnable;

.field private mInGesturalMode:Z

.field private final mPhenotypeHelper:Lcom/android/systemui/assist/PhenotypeHelper;

.field private final mScreenDecorations:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/ScreenDecorations;",
            ">;"
        }
    .end annotation
.end field

.field private final mShowAndGo:Ljava/lang/Runnable;

.field private mShowAndGoEndsAt:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 61
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->DEFAULT_SHOW_AND_GO_DURATION_MS:J

    .line 67
    sget-object v0, Lcom/android/systemui/assist/AssistHandleBehavior;->REMINDER_EXP:Lcom/android/systemui/assist/AssistHandleBehavior;

    sput-object v0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->DEFAULT_BEHAVIOR:Lcom/android/systemui/assist/AssistHandleBehavior;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/app/AssistUtils;Landroid/os/Handler;Ljavax/inject/Provider;Lcom/android/systemui/assist/PhenotypeHelper;Ljava/util/Map;Lcom/android/systemui/statusbar/phone/NavigationModeController;Lcom/android/systemui/DumpController;)V
    .registers 10
    .param p3  # Landroid/os/Handler;
        .annotation runtime Ljavax/inject/Named;
            value = "assist_handle_thread"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/internal/app/AssistUtils;",
            "Landroid/os/Handler;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/ScreenDecorations;",
            ">;",
            "Lcom/android/systemui/assist/PhenotypeHelper;",
            "Ljava/util/Map<",
            "Lcom/android/systemui/assist/AssistHandleBehavior;",
            "Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/NavigationModeController;",
            "Lcom/android/systemui/DumpController;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lcom/android/systemui/assist/-$$Lambda$AssistHandleBehaviorController$XubZVLOT9vWCBnL-QqZRgbOELVA;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/-$$Lambda$AssistHandleBehaviorController$XubZVLOT9vWCBnL-QqZRgbOELVA;-><init>(Lcom/android/systemui/assist/AssistHandleBehaviorController;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHideHandles:Ljava/lang/Runnable;

    .line 73
    new-instance v0, Lcom/android/systemui/assist/-$$Lambda$AssistHandleBehaviorController$oeveMWAQo5jd5bG1H5Ci7Dy4X74;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/-$$Lambda$AssistHandleBehaviorController$oeveMWAQo5jd5bG1H5Ci7Dy4X74;-><init>(Lcom/android/systemui/assist/AssistHandleBehaviorController;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mShowAndGo:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandlesShowing:Z

    .line 85
    sget-object v0, Lcom/android/systemui/assist/AssistHandleBehavior;->OFF:Lcom/android/systemui/assist/AssistHandleBehavior;

    iput-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mCurrentBehavior:Lcom/android/systemui/assist/AssistHandleBehavior;

    .line 98
    iput-object p1, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mContext:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 100
    iput-object p3, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandler:Landroid/os/Handler;

    .line 101
    iput-object p4, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mScreenDecorations:Ljavax/inject/Provider;

    .line 102
    iput-object p5, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mPhenotypeHelper:Lcom/android/systemui/assist/PhenotypeHelper;

    .line 103
    iput-object p6, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mBehaviorMap:Ljava/util/Map;

    .line 105
    new-instance p1, Lcom/android/systemui/assist/-$$Lambda$AssistHandleBehaviorController$UX7PPcltnlTgxyL7MxmLbVmQRcI;

    invoke-direct {p1, p0}, Lcom/android/systemui/assist/-$$Lambda$AssistHandleBehaviorController$UX7PPcltnlTgxyL7MxmLbVmQRcI;-><init>(Lcom/android/systemui/assist/AssistHandleBehaviorController;)V

    .line 106
    invoke-virtual {p7, p1}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->addListener(Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;)I

    move-result p1

    .line 105
    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mInGesturalMode:Z

    .line 108
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->getBehaviorMode()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->setBehavior(Ljava/lang/String;)V

    .line 109
    iget-object p1, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mPhenotypeHelper:Lcom/android/systemui/assist/PhenotypeHelper;

    iget-object p2, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandler:Landroid/os/Handler;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lcom/android/systemui/assist/-$$Lambda$LfzJt661qZfn2w-6SYHFbD3aMy0;

    invoke-direct {p3, p2}, Lcom/android/systemui/assist/-$$Lambda$LfzJt661qZfn2w-6SYHFbD3aMy0;-><init>(Landroid/os/Handler;)V

    new-instance p2, Lcom/android/systemui/assist/-$$Lambda$AssistHandleBehaviorController$q1QjkwrdHAyLNN1tG8mZqypuW-0;

    invoke-direct {p2, p0}, Lcom/android/systemui/assist/-$$Lambda$AssistHandleBehaviorController$q1QjkwrdHAyLNN1tG8mZqypuW-0;-><init>(Lcom/android/systemui/assist/AssistHandleBehaviorController;)V

    invoke-virtual {p1, p3, p2}, Lcom/android/systemui/assist/PhenotypeHelper;->addOnPropertiesChangedListener(Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 119
    invoke-virtual {p8, p0}, Lcom/android/systemui/DumpController;->addListener(Lcom/android/systemui/Dumpable;)V

    return-void
.end method

.method private clearPendingCommands()V
    .registers 3

    .line 273
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHideHandles:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 274
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mShowAndGo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x0

    .line 275
    iput-wide v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mShowAndGoEndsAt:J

    return-void
.end method

.method private getBehaviorMode()Ljava/lang/String;
    .registers 3

    .line 221
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mPhenotypeHelper:Lcom/android/systemui/assist/PhenotypeHelper;

    sget-object v0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->DEFAULT_BEHAVIOR:Lcom/android/systemui/assist/AssistHandleBehavior;

    .line 223
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "assist_handles_behavior_mode"

    .line 221
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/assist/PhenotypeHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getShowAndGoDuration()J
    .registers 4

    .line 215
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mPhenotypeHelper:Lcom/android/systemui/assist/PhenotypeHelper;

    sget-wide v0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->DEFAULT_SHOW_AND_GO_DURATION_MS:J

    const-string v2, "assist_handles_show_and_go_duration_ms"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/assist/PhenotypeHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getShownFrequencyThreshold()J
    .registers 4

    .line 209
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mPhenotypeHelper:Lcom/android/systemui/assist/PhenotypeHelper;

    const-string v0, "assist_handles_shown_frequency_threshold_ms"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/assist/PhenotypeHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private handleNavigationModeChange(I)V
    .registers 3

    .line 258
    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    .line 259
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mInGesturalMode:Z

    if-ne v0, p1, :cond_9

    return-void

    .line 263
    :cond_9
    iput-boolean p1, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mInGesturalMode:Z

    .line 264
    iget-boolean p1, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mInGesturalMode:Z

    if-eqz p1, :cond_1f

    .line 265
    iget-object p1, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mBehaviorMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mCurrentBehavior:Lcom/android/systemui/assist/AssistHandleBehavior;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;

    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0, p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;->onModeActivated(Landroid/content/Context;Lcom/android/systemui/assist/AssistHandleCallbacks;)V

    goto :goto_2f

    .line 267
    :cond_1f
    iget-object p1, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mBehaviorMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mCurrentBehavior:Lcom/android/systemui/assist/AssistHandleBehavior;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;

    invoke-interface {p1}, Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;->onModeDeactivated()V

    .line 268
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->hide()V

    :goto_2f
    return-void
.end method

.method private handlesUnblocked(Z)Z
    .registers 8

    .line 201
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandlesLastHiddenAt:J

    sub-long/2addr v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_16

    .line 202
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->getShownFrequencyThreshold()J

    move-result-wide v4

    cmp-long p1, v0, v4

    if-ltz p1, :cond_14

    goto :goto_16

    :cond_14
    move p1, v2

    goto :goto_17

    :cond_16
    :goto_16
    move p1, v3

    .line 203
    :goto_17
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 204
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p1, :cond_26

    if-eqz p0, :cond_26

    move v2, v3

    :cond_26
    return v2
.end method

.method private hideHandles()V
    .registers 5

    .line 243
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandlesShowing:Z

    if-nez v0, :cond_5

    return-void

    .line 247
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mScreenDecorations:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/ScreenDecorations;

    if-nez v0, :cond_17

    const-string p0, "AssistHandleBehavior"

    const-string v0, "Couldn\'t hide handles, ScreenDecorations unavailable"

    .line 249
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    :cond_17
    const/4 v1, 0x0

    .line 251
    iput-boolean v1, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandlesShowing:Z

    .line 252
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandlesLastHiddenAt:J

    .line 253
    invoke-virtual {v0, v1}, Lcom/android/systemui/ScreenDecorations;->setAssistHintVisible(Z)V

    :goto_23
    return-void
.end method

.method public static synthetic lambda$UX7PPcltnlTgxyL7MxmLbVmQRcI(Lcom/android/systemui/assist/AssistHandleBehaviorController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->handleNavigationModeChange(I)V

    return-void
.end method

.method public static synthetic lambda$XubZVLOT9vWCBnL-QqZRgbOELVA(Lcom/android/systemui/assist/AssistHandleBehaviorController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->hideHandles()V

    return-void
.end method

.method public static synthetic lambda$oeveMWAQo5jd5bG1H5Ci7Dy4X74(Lcom/android/systemui/assist/AssistHandleBehaviorController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->showAndGoInternal()V

    return-void
.end method

.method private maybeShowHandles(Z)V
    .registers 3

    .line 227
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandlesShowing:Z

    if-eqz v0, :cond_5

    return-void

    .line 231
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->handlesUnblocked(Z)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 232
    iget-object p1, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mScreenDecorations:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/ScreenDecorations;

    if-nez p1, :cond_1d

    const-string p0, "AssistHandleBehavior"

    const-string p1, "Couldn\'t show handles, ScreenDecorations unavailable"

    .line 234
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    :cond_1d
    const/4 v0, 0x1

    .line 236
    iput-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandlesShowing:Z

    .line 237
    invoke-virtual {p1, v0}, Lcom/android/systemui/ScreenDecorations;->setAssistHintVisible(Z)V

    :cond_23
    :goto_23
    return-void
.end method

.method private setBehavior(Ljava/lang/String;)V
    .registers 4
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 194
    :try_start_0
    invoke-static {p1}, Lcom/android/systemui/assist/AssistHandleBehavior;->valueOf(Ljava/lang/String;)Lcom/android/systemui/assist/AssistHandleBehavior;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->setBehavior(Lcom/android/systemui/assist/AssistHandleBehavior;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_1f

    :catch_8
    move-exception p0

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid behavior: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AssistHandleBehavior"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    return-void
.end method

.method private showAndGoInternal()V
    .registers 5

    const/4 v0, 0x0

    .line 135
    invoke-direct {p0, v0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->maybeShowHandles(Z)V

    .line 136
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->getShowAndGoDuration()J

    move-result-wide v0

    .line 137
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mShowAndGoEndsAt:J

    .line 138
    iget-object v2, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHideHandles:Ljava/lang/Runnable;

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method areHandlesShowing()Z
    .registers 1

    .line 161
    iget-boolean p0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandlesShowing:Z

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    const-string p1, "Current AssistHandleBehaviorController State:"

    .line 285
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 287
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "   mHandlesShowing="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandlesShowing:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 288
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "   mHandlesLastHiddenAt="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandlesLastHiddenAt:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 289
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "   mInGesturalMode="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mInGesturalMode:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "   Phenotype Flags:"

    .line 291
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 292
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "      assist_handles_show_and_go_duration_ms="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->getShowAndGoDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 292
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 296
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "      assist_handles_shown_frequency_threshold_ms="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->getShownFrequencyThreshold()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 296
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 300
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "      assist_handles_behavior_mode="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->getBehaviorMode()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 300
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 305
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "   mCurrentBehavior="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mCurrentBehavior:Lcom/android/systemui/assist/AssistHandleBehavior;

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 306
    iget-object p1, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mBehaviorMap:Ljava/util/Map;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mCurrentBehavior:Lcom/android/systemui/assist/AssistHandleBehavior;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;

    const-string p1, "   "

    invoke-interface {p0, p2, p1}, Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public getShowAndGoRemainingTimeMs()J
    .registers 5

    .line 157
    iget-wide v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mShowAndGoEndsAt:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public hide()V
    .registers 2

    .line 124
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->clearPendingCommands()V

    .line 125
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHideHandles:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$new$0$AssistHandleBehaviorController(Landroid/provider/DeviceConfig$Properties;)V
    .registers 4

    .line 112
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string v1, "assist_handles_behavior_mode"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    .line 114
    invoke-virtual {p1, v1, v0}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->setBehavior(Ljava/lang/String;)V

    :cond_14
    return-void
.end method

.method public synthetic lambda$showAndStay$1$AssistHandleBehaviorController()V
    .registers 2

    const/4 v0, 0x1

    .line 153
    invoke-direct {p0, v0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->maybeShowHandles(Z)V

    return-void
.end method

.method onAssistHandlesRequested()V
    .registers 2

    .line 169
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mInGesturalMode:Z

    if-eqz v0, :cond_11

    .line 170
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mBehaviorMap:Ljava/util/Map;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mCurrentBehavior:Lcom/android/systemui/assist/AssistHandleBehavior;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;

    invoke-interface {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;->onAssistHandlesRequested()V

    :cond_11
    return-void
.end method

.method onAssistantGesturePerformed()V
    .registers 2

    .line 165
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mBehaviorMap:Ljava/util/Map;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mCurrentBehavior:Lcom/android/systemui/assist/AssistHandleBehavior;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;

    invoke-interface {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;->onAssistantGesturePerformed()V

    return-void
.end method

.method setBehavior(Lcom/android/systemui/assist/AssistHandleBehavior;)V
    .registers 4

    .line 175
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mCurrentBehavior:Lcom/android/systemui/assist/AssistHandleBehavior;

    if-ne v0, p1, :cond_5

    return-void

    .line 179
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mBehaviorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 180
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported behavior requested: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AssistHandleBehavior"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 184
    :cond_28
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mInGesturalMode:Z

    if-eqz v0, :cond_46

    .line 185
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mBehaviorMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mCurrentBehavior:Lcom/android/systemui/assist/AssistHandleBehavior;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;

    invoke-interface {v0}, Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;->onModeDeactivated()V

    .line 186
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mBehaviorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;->onModeActivated(Landroid/content/Context;Lcom/android/systemui/assist/AssistHandleCallbacks;)V

    .line 189
    :cond_46
    iput-object p1, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mCurrentBehavior:Lcom/android/systemui/assist/AssistHandleBehavior;

    return-void
.end method

.method setInGesturalModeForTest(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 280
    iput-boolean p1, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mInGesturalMode:Z

    return-void
.end method

.method public showAndGo()V
    .registers 2

    .line 130
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->clearPendingCommands()V

    .line 131
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mShowAndGo:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showAndGoDelayed(JZ)V
    .registers 5

    .line 143
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->clearPendingCommands()V

    if-eqz p3, :cond_c

    .line 145
    iget-object p3, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHideHandles:Ljava/lang/Runnable;

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 147
    :cond_c
    iget-object p3, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mShowAndGo:Ljava/lang/Runnable;

    invoke-virtual {p3, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showAndStay()V
    .registers 3

    .line 152
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->clearPendingCommands()V

    .line 153
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/assist/-$$Lambda$AssistHandleBehaviorController$jLNVwoO6t8_VWqmD__-vvvJFYqA;

    invoke-direct {v1, p0}, Lcom/android/systemui/assist/-$$Lambda$AssistHandleBehaviorController$jLNVwoO6t8_VWqmD__-vvvJFYqA;-><init>(Lcom/android/systemui/assist/AssistHandleBehaviorController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
