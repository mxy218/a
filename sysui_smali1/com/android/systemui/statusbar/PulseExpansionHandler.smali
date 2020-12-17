.class public final Lcom/android/systemui/statusbar/PulseExpansionHandler;
.super Ljava/lang/Object;
.source "PulseExpansionHandler.kt"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/PulseExpansionHandler$ExpansionCallback;,
        Lcom/android/systemui/statusbar/PulseExpansionHandler$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPulseExpansionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PulseExpansionHandler.kt\ncom/android/systemui/statusbar/PulseExpansionHandler\n*L\n1#1,346:1\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0013\u0008\u0007\u0018\u0000 [2\u00020\u0001:\u0002[\\B7\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r¢\u0006\u0002\u0010\u000eJ\u0008\u0010A\u001a\u00020BH\u0002J\u0018\u0010C\u001a\u00020B2\u0006\u0010D\u001a\u00020!2\u0006\u0010E\u001a\u00020!H\u0002J\u001a\u0010F\u001a\u0004\u0018\u00010-2\u0006\u0010D\u001a\u00020!2\u0006\u0010E\u001a\u00020!H\u0002J\u0008\u0010G\u001a\u00020BH\u0002J\u0010\u0010H\u001a\u00020\u00102\u0006\u0010I\u001a\u00020JH\u0002J\u0010\u0010K\u001a\u00020\u00102\u0006\u0010I\u001a\u00020JH\u0016J\u0006\u0010L\u001a\u00020BJ\u0010\u0010M\u001a\u00020\u00102\u0006\u0010I\u001a\u00020JH\u0016J\u0008\u0010N\u001a\u00020BH\u0002J\u0010\u0010O\u001a\u00020B2\u0006\u0010P\u001a\u00020-H\u0002J\u0008\u0010Q\u001a\u00020BH\u0002J\u0010\u0010R\u001a\u00020B2\u0006\u0010S\u001a\u00020!H\u0002J\u000e\u0010T\u001a\u00020B2\u0006\u0010U\u001a\u00020\u0010J\u001e\u0010V\u001a\u00020B2\u0006\u0010=\u001a\u00020>2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010;\u001a\u00020<J\u0018\u0010W\u001a\u00020B2\u0006\u0010P\u001a\u00020-2\u0006\u0010X\u001a\u00020\u0010H\u0002J\u0010\u0010Y\u001a\u00020B2\u0006\u0010Z\u001a\u00020!H\u0002R\u001a\u0010\u000f\u001a\u00020\u0010X\u000e¢\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0006\u001a\u00020\u0007X\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X.¢\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0004¢\u0006\u0002\n\u0000R$\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u0010@BX\u000e¢\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0012\"\u0004\u0008\u0019\u0010\u0014R\u0014\u0010\u001a\u001a\u00020\u00108BX\u0004¢\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u0012R\u001e\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u0010@BX\u000e¢\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0012R\u001e\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u0010@BX\u000e¢\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u0012R\u000e\u0010\u001f\u001a\u00020\u0010X\u000e¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X\u0004¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020!X\u000e¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020!X\u000e¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\'X\u0004¢\u0006\u0002\n\u0000R\u0010\u0010(\u001a\u0004\u0018\u00010)X\u0004¢\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020\u0010X\u000e¢\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020\u0010X\u000e¢\u0006\u0002\n\u0000R\u0010\u0010,\u001a\u0004\u0018\u00010-X\u000e¢\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020/X\u0004¢\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020!X\u0004¢\u0006\u0002\n\u0000R\u000e\u00101\u001a\u00020!X\u000e¢\u0006\u0002\n\u0000R\u001c\u00102\u001a\u0004\u0018\u000103X\u000e¢\u0006\u000e\n\u0000\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107R\u001a\u00108\u001a\u00020\u0010X\u000e¢\u0006\u000e\n\u0000\u001a\u0004\u00089\u0010\u0012\"\u0004\u0008:\u0010\u0014R\u000e\u0010\n\u001a\u00020\u000bX\u0004¢\u0006\u0002\n\u0000R\u000e\u0010;\u001a\u00020<X.¢\u0006\u0002\n\u0000R\u000e\u0010=\u001a\u00020>X.¢\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0004¢\u0006\u0002\n\u0000R\u0010\u0010?\u001a\u0004\u0018\u00010@X\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0004¢\u0006\u0002\n\u0000¨\u0006]"
    }
    d2 = {
        "Lcom/android/systemui/statusbar/PulseExpansionHandler;",
        "Lcom/android/systemui/Gefingerpoken;",
        "context",
        "Landroid/content/Context;",
        "wakeUpCoordinator",
        "Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;",
        "bypassController",
        "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
        "headsUpManager",
        "Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;",
        "roundnessManager",
        "Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;",
        "statusBarStateController",
        "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
        "(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V",
        "bouncerShowing",
        "",
        "getBouncerShowing",
        "()Z",
        "setBouncerShowing",
        "(Z)V",
        "expansionCallback",
        "Lcom/android/systemui/statusbar/PulseExpansionHandler$ExpansionCallback;",
        "value",
        "isExpanding",
        "setExpanding",
        "isFalseTouch",
        "<set-?>",
        "isWakingToShadeLocked",
        "leavingLockscreen",
        "getLeavingLockscreen",
        "mDraggedFarEnough",
        "mEmptyDragAmount",
        "",
        "mFalsingManager",
        "Lcom/android/systemui/plugins/FalsingManager;",
        "mInitialTouchX",
        "mInitialTouchY",
        "mMinDragDistance",
        "",
        "mPowerManager",
        "Landroid/os/PowerManager;",
        "mPulsing",
        "mReachedWakeUpHeight",
        "mStartingChild",
        "Lcom/android/systemui/statusbar/notification/row/ExpandableView;",
        "mTemp2",
        "",
        "mTouchSlop",
        "mWakeUpHeight",
        "pulseExpandAbortListener",
        "Ljava/lang/Runnable;",
        "getPulseExpandAbortListener",
        "()Ljava/lang/Runnable;",
        "setPulseExpandAbortListener",
        "(Ljava/lang/Runnable;)V",
        "qsExpanded",
        "getQsExpanded",
        "setQsExpanded",
        "shadeController",
        "Lcom/android/systemui/statusbar/phone/ShadeController;",
        "stackScroller",
        "Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;",
        "velocityTracker",
        "Landroid/view/VelocityTracker;",
        "cancelExpansion",
        "",
        "captureStartingChild",
        "x",
        "y",
        "findView",
        "finishExpansion",
        "maybeStartExpansion",
        "event",
        "Landroid/view/MotionEvent;",
        "onInterceptTouchEvent",
        "onStartedWakingUp",
        "onTouchEvent",
        "recycleVelocityTracker",
        "reset",
        "child",
        "resetClock",
        "setEmptyDragAmount",
        "amount",
        "setPulsing",
        "pulsing",
        "setUp",
        "setUserLocked",
        "userLocked",
        "updateExpansionHeight",
        "height",
        "Companion",
        "ExpansionCallback",
        "name"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/statusbar/PulseExpansionHandler$Companion;

# The value of this static final field might be set in the static constructor
.field private static final RUBBERBAND_FACTOR_STATIC:F = 0.25f

# The value of this static final field might be set in the static constructor
.field private static final SPRING_BACK_ANIMATION_LENGTH_MS:I = 0x177


# instance fields
.field private bouncerShowing:Z

.field private final bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private expansionCallback:Lcom/android/systemui/statusbar/PulseExpansionHandler$ExpansionCallback;

.field private final headsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field private isExpanding:Z

.field private isWakingToShadeLocked:Z

.field private leavingLockscreen:Z

.field private mDraggedFarEnough:Z

.field private mEmptyDragAmount:F

.field private final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private final mMinDragDistance:I

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPulsing:Z

.field private mReachedWakeUpHeight:Z

.field private mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field private final mTemp2:[I

.field private final mTouchSlop:F

.field private mWakeUpHeight:F

.field private pulseExpandAbortListener:Ljava/lang/Runnable;

.field private qsExpanded:Z

.field private final roundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

.field private shadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field private stackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field private final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private final wakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/systemui/statusbar/PulseExpansionHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/PulseExpansionHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->Companion:Lcom/android/systemui/statusbar/PulseExpansionHandler$Companion;

    const/high16 v0, 0x3e800000  # 0.25f

    .line 64
    sput v0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->RUBBERBAND_FACTOR_STATIC:F

    const/16 v0, 0x177

    .line 65
    sput v0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->SPRING_BACK_ANIMATION_LENGTH_MS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V
    .registers 8
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "wakeUpCoordinator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bypassController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headsUpManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "roundnessManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "statusBarStateController"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->wakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    iput-object p3, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iput-object p4, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->headsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iput-object p5, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->roundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    iput-object p6, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 99
    iput-object p2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mTemp2:[I

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 119
    sget p3, Lcom/android/systemui/R$dimen;->keyguard_drag_down_min_distance:I

    .line 118
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mMinDragDistance:I

    .line 120
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    const-string p3, "ViewConfiguration.get(context)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mTouchSlop:F

    .line 121
    const-class p2, Lcom/android/systemui/plugins/FalsingManager;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    const-string p3, "Dependency.get(FalsingManager::class.java)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/android/systemui/plugins/FalsingManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 122
    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mPowerManager:Landroid/os/PowerManager;

    return-void
.end method

.method public static final synthetic access$setEmptyDragAmount(Lcom/android/systemui/statusbar/PulseExpansionHandler;F)V
    .registers 2

    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setEmptyDragAmount(F)V

    return-void
.end method

.method public static final synthetic access$setUserLocked(Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V
    .registers 3

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setUserLocked(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    return-void
.end method

.method private final cancelExpansion()V
    .registers 4

    const/4 v0, 0x0

    .line 299
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setExpanding(Z)V

    .line 300
    iget-object v1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v1}, Lcom/android/systemui/plugins/FalsingManager;->onExpansionFromPulseStopped()V

    .line 301
    iget-object v1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v1, :cond_1a

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    .line 302
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->reset(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    .line 303
    iput-object v2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    goto :goto_1d

    .line 302
    :cond_16
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 305
    :cond_1a
    invoke-direct {p0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->resetClock()V

    .line 307
    :goto_1d
    iget-object p0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->wakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setNotificationsVisibleForExpansion(ZZZ)V

    return-void
.end method

.method private final captureStartingChild(FF)V
    .registers 4

    .line 254
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-nez v0, :cond_22

    .line 255
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->findView(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 256
    iget-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz p1, :cond_22

    if-eqz p1, :cond_1d

    const/4 p2, 0x1

    .line 257
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setUserLocked(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    goto :goto_22

    :cond_1d
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p0, 0x0

    throw p0

    :cond_22
    :goto_22
    return-void
.end method

.method private final findView(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;
    .registers 7

    .line 315
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->stackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const-string/jumbo v1, "stackScroller"

    const/4 v2, 0x0

    if-eqz v0, :cond_30

    iget-object v3, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mTemp2:[I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 316
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mTemp2:[I

    const/4 v3, 0x0

    aget v3, v0, v3

    int-to-float v3, v3

    add-float/2addr p1, v3

    const/4 v3, 0x1

    .line 317
    aget v0, v0, v3

    int-to-float v0, v0

    add-float/2addr p2, v0

    .line 318
    iget-object p0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->stackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz p0, :cond_2c

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object p0

    if-eqz p0, :cond_2a

    .line 319
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isContentExpandable()Z

    move-result p1

    if-eqz p1, :cond_2a

    goto :goto_2b

    :cond_2a
    move-object p0, v2

    :goto_2b
    return-object p0

    .line 318
    :cond_2c
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 315
    :cond_30
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private final finishExpansion()V
    .registers 10

    .line 211
    invoke-direct {p0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->resetClock()V

    .line 212
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    if-eqz v0, :cond_11

    .line 213
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setUserLocked(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    .line 214
    iput-object v2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    goto :goto_15

    .line 213
    :cond_11
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 216
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->shadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    const-string/jumbo v3, "shadeController"

    if-eqz v0, :cond_62

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ShadeController;->isDozing()Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_3d

    .line 217
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isWakingToShadeLocked:Z

    .line 218
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->wakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setWillWakeUp(Z)V

    .line 219
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_39

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v7, 0x4

    const-string v8, "com.android.systemui:PULSEDRAG"

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    goto :goto_3d

    :cond_39
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 222
    :cond_3d
    :goto_3d
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->shadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    if-eqz v0, :cond_5e

    iget-object v3, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-interface {v0, v3}, Lcom/android/systemui/statusbar/phone/ShadeController;->goToLockedShade(Landroid/view/View;)V

    .line 223
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->leavingLockscreen:Z

    .line 224
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setExpanding(Z)V

    .line 225
    iget-object p0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    instance-of v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_5d

    .line 226
    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_59

    .line 227
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->onExpandedByGesture(Z)V

    goto :goto_5d

    :cond_59
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    :cond_5d
    :goto_5d
    return-void

    .line 222
    :cond_5e
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 216
    :cond_62
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private final isFalseTouch()Z
    .registers 1

    .line 112
    iget-object p0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch()Z

    move-result p0

    return p0
.end method

.method private final maybeStartExpansion(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->wakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->getCanShowPulsingHuns()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8b

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->qsExpanded:Z

    if-nez v0, :cond_8b

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->bouncerShowing:Z

    if-eqz v0, :cond_13

    goto/16 :goto_8b

    .line 134
    :cond_13
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1d

    .line 135
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->velocityTracker:Landroid/view/VelocityTracker;

    .line 137
    :cond_1d
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->velocityTracker:Landroid/view/VelocityTracker;

    const/4 v2, 0x0

    if-eqz v0, :cond_87

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 138
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 139
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 141
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_79

    const/4 v2, 0x1

    if-eq p1, v2, :cond_75

    const/4 v4, 0x2

    if-eq p1, v4, :cond_41

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3d

    goto :goto_86

    .line 170
    :cond_3d
    invoke-direct {p0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->recycleVelocityTracker()V

    goto :goto_86

    .line 152
    :cond_41
    iget p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mInitialTouchY:F

    sub-float p1, v3, p1

    .line 153
    iget v4, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mTouchSlop:F

    cmpl-float v4, p1, v4

    if-lez v4, :cond_86

    iget v4, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mInitialTouchX:F

    sub-float v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float p1, p1, v4

    if-lez p1, :cond_86

    .line 154
    iget-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager;->onStartExpandingFromPulse()V

    .line 155
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setExpanding(Z)V

    .line 156
    iget p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mInitialTouchX:F

    iget v4, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mInitialTouchY:F

    invoke-direct {p0, p1, v4}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->captureStartingChild(FF)V

    .line 157
    iput v3, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mInitialTouchY:F

    .line 158
    iput v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mInitialTouchX:F

    .line 159
    iget-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->wakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->getWakeUpHeight()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mWakeUpHeight:F

    .line 160
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mReachedWakeUpHeight:Z

    return v2

    .line 166
    :cond_75
    invoke-direct {p0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->recycleVelocityTracker()V

    goto :goto_86

    .line 143
    :cond_79
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mDraggedFarEnough:Z

    .line 144
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setExpanding(Z)V

    .line 145
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->leavingLockscreen:Z

    .line 146
    iput-object v2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 147
    iput v3, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mInitialTouchY:F

    .line 148
    iput v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mInitialTouchX:F

    :cond_86
    :goto_86
    return v1

    .line 137
    :cond_87
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    :cond_8b
    :goto_8b
    return v1
.end method

.method private final recycleVelocityTracker()V
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    :cond_7
    const/4 v0, 0x0

    .line 178
    iput-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->velocityTracker:Landroid/view/VelocityTracker;

    return-void
.end method

.method private final reset(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .registers 5

    .line 268
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getCollapsedHeight()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_f

    .line 269
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setUserLocked(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    return-void

    :cond_f
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 273
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v1

    aput v1, v0, v2

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getCollapsedHeight()I

    move-result v2

    aput v2, v0, v1

    const-string v1, "actualHeight"

    .line 272
    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string v1, "anim"

    .line 274
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 275
    sget v1, Lcom/android/systemui/statusbar/PulseExpansionHandler;->SPRING_BACK_ANIMATION_LENGTH_MS:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 276
    new-instance v1, Lcom/android/systemui/statusbar/PulseExpansionHandler$reset$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/PulseExpansionHandler$reset$1;-><init>(Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 281
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private final resetClock()V
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 291
    iget v1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mEmptyDragAmount:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-string v1, "anim"

    .line 292
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 293
    sget v1, Lcom/android/systemui/statusbar/PulseExpansionHandler;->SPRING_BACK_ANIMATION_LENGTH_MS:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 294
    new-instance v1, Lcom/android/systemui/statusbar/PulseExpansionHandler$resetClock$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/PulseExpansionHandler$resetClock$1;-><init>(Lcom/android/systemui/statusbar/PulseExpansionHandler;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 295
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private final setEmptyDragAmount(F)V
    .registers 2

    .line 263
    iput p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mEmptyDragAmount:F

    .line 264
    iget-object p0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->expansionCallback:Lcom/android/systemui/statusbar/PulseExpansionHandler$ExpansionCallback;

    if-eqz p0, :cond_a

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/PulseExpansionHandler$ExpansionCallback;->setEmptyDragAmount(F)V

    return-void

    :cond_a
    const-string p0, "expansionCallback"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final setExpanding(Z)V
    .registers 5

    .line 75
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isExpanding:Z

    const/4 v1, 0x1

    if-eq v0, p1, :cond_7

    move v0, v1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 76
    :goto_8
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isExpanding:Z

    .line 77
    iget-object v2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->setPulseExpanding(Z)V

    if-eqz v0, :cond_40

    if-eqz p1, :cond_25

    .line 80
    iget-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->headsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    if-eqz p1, :cond_3b

    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->roundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->setTrackingHeadsUp(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    goto :goto_3b

    .line 85
    :cond_25
    iget-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->roundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->setTrackingHeadsUp(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 86
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->leavingLockscreen:Z

    if-nez p1, :cond_3b

    .line 87
    iget-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->maybePerformPendingUnlock()V

    .line 88
    iget-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->pulseExpandAbortListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_3b

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 91
    :cond_3b
    :goto_3b
    iget-object p0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->headsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->unpinAll(Z)V

    :cond_40
    return-void
.end method

.method private final setUserLocked(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V
    .registers 3

    .line 285
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_9

    .line 286
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUserLocked(Z)V

    :cond_9
    return-void
.end method

.method private final updateExpansionHeight(F)V
    .registers 6

    const/4 v0, 0x0

    .line 232
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 233
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mReachedWakeUpHeight:Z

    const/4 v3, 0x1

    if-nez v2, :cond_12

    iget v2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mWakeUpHeight:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_12

    .line 234
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mReachedWakeUpHeight:Z

    .line 236
    :cond_12
    iget-object v2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v2, :cond_35

    if-eqz v2, :cond_30

    .line 238
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getCollapsedHeight()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v1

    float-to-int p1, p1

    .line 239
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMaxContentHeight()I

    move-result v0

    .line 238
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 240
    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setActualHeight(I)V

    int-to-float p1, p1

    .line 241
    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_4d

    .line 237
    :cond_30
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p0, 0x0

    throw p0

    .line 243
    :cond_35
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mReachedWakeUpHeight:Z

    if-eqz v2, :cond_3b

    iget v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mWakeUpHeight:F

    .line 244
    :cond_3b
    iget-object v2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->wakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    cmpl-float p1, p1, v0

    if-lez p1, :cond_43

    move p1, v3

    goto :goto_44

    :cond_43
    const/4 p1, 0x0

    :goto_44
    invoke-virtual {v2, p1, v3, v3}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setNotificationsVisibleForExpansion(ZZZ)V

    .line 247
    iget p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mWakeUpHeight:F

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 249
    :goto_4d
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->wakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setPulseHeight(F)F

    move-result p1

    .line 250
    sget v0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->RUBBERBAND_FACTOR_STATIC:F

    mul-float/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setEmptyDragAmount(F)V

    return-void
.end method


# virtual methods
.method public final isWakingToShadeLocked()Z
    .registers 1

    .line 104
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isWakingToShadeLocked:Z

    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->maybeStartExpansion(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onStartedWakingUp()V
    .registers 2

    const/4 v0, 0x0

    .line 339
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isWakingToShadeLocked:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isExpanding:Z

    if-nez v0, :cond_e

    .line 183
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->maybeStartExpansion(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 185
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->velocityTracker:Landroid/view/VelocityTracker;

    const/4 v1, 0x0

    if-eqz v0, :cond_83

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 186
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 188
    iget v2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mInitialTouchY:F

    sub-float/2addr v0, v2

    .line 189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_36

    const/4 v1, 0x2

    if-eq p1, v1, :cond_32

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2b

    goto :goto_7c

    .line 203
    :cond_2b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->cancelExpansion()V

    .line 204
    invoke-direct {p0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->recycleVelocityTracker()V

    goto :goto_7c

    .line 190
    :cond_32
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->updateExpansionHeight(F)V

    goto :goto_7c

    .line 192
    :cond_36
    iget-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_7f

    const/16 v3, 0x3e8

    invoke-virtual {p1, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    const/4 p1, 0x0

    int-to-float v3, p1

    cmpl-float v0, v0, v3

    if-lez v0, :cond_62

    .line 193
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_5e

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    const/16 v1, -0x3e8

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_62

    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    if-eqz v0, :cond_62

    move p1, v2

    goto :goto_62

    :cond_5e
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 195
    :cond_62
    :goto_62
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->isUnlockingDisabled()Z

    move-result v0

    if-nez v0, :cond_76

    invoke-direct {p0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isFalseTouch()Z

    move-result v0

    if-nez v0, :cond_76

    if-eqz p1, :cond_76

    .line 196
    invoke-direct {p0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->finishExpansion()V

    goto :goto_79

    .line 198
    :cond_76
    invoke-direct {p0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->cancelExpansion()V

    .line 200
    :goto_79
    invoke-direct {p0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->recycleVelocityTracker()V

    .line 207
    :goto_7c
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isExpanding:Z

    return p0

    .line 192
    :cond_7f
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 185
    :cond_83
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1
.end method

.method public final setBouncerShowing(Z)V
    .registers 2

    .line 115
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->bouncerShowing:Z

    return-void
.end method

.method public final setPulseExpandAbortListener(Ljava/lang/Runnable;)V
    .registers 2

    .line 114
    iput-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->pulseExpandAbortListener:Ljava/lang/Runnable;

    return-void
.end method

.method public final setPulsing(Z)V
    .registers 2

    .line 335
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mPulsing:Z

    return-void
.end method

.method public final setQsExpanded(Z)V
    .registers 2

    .line 113
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->qsExpanded:Z

    return-void
.end method

.method public final setUp(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/PulseExpansionHandler$ExpansionCallback;Lcom/android/systemui/statusbar/phone/ShadeController;)V
    .registers 5

    const-string/jumbo v0, "stackScroller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expansionCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "shadeController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    iput-object p2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->expansionCallback:Lcom/android/systemui/statusbar/PulseExpansionHandler$ExpansionCallback;

    .line 330
    iput-object p3, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->shadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 331
    iput-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->stackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    return-void
.end method
