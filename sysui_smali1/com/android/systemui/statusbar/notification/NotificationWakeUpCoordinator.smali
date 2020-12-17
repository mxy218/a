.class public final Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;
.super Ljava/lang/Object;
.source "NotificationWakeUpCoordinator.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/statusbar/phone/PanelExpansionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationWakeUpCoordinator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationWakeUpCoordinator.kt\ncom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,394:1\n1574#2,2:395\n*E\n*S KotlinDebug\n*F\n+ 1 NotificationWakeUpCoordinator.kt\ncom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator\n*L\n322#1,2:395\n*E\n"
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
        "\u0000\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\'*\u0001\'\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0001oB\'\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\u000cJ\u000e\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u00020@J\u0006\u0010K\u001a\u00020\u001eJ\u0008\u0010L\u001a\u00020IH\u0002J\u0006\u0010M\u001a\u00020\u000eJ\u0010\u0010N\u001a\u00020I2\u0006\u0010O\u001a\u00020\u000eH\u0002J\u0018\u0010P\u001a\u00020I2\u0006\u0010Q\u001a\u00020\u001e2\u0006\u0010R\u001a\u00020\u001eH\u0016J\u0010\u0010S\u001a\u00020I2\u0006\u0010T\u001a\u00020\u000eH\u0016J\u0018\u0010U\u001a\u00020I2\u0006\u0010V\u001a\u00020#2\u0006\u0010W\u001a\u00020\u000eH\u0016J\u0018\u0010X\u001a\u00020I2\u0006\u0010Y\u001a\u00020\u001e2\u0006\u0010Z\u001a\u00020\u000eH\u0016J\u0010\u0010[\u001a\u00020I2\u0006\u0010\\\u001a\u00020=H\u0016J\u000e\u0010]\u001a\u00020I2\u0006\u0010J\u001a\u00020@J\u0016\u0010^\u001a\u00020I2\u0006\u0010Q\u001a\u00020\u001e2\u0006\u0010R\u001a\u00020\u001eJ \u0010_\u001a\u00020I2\u0006\u0010`\u001a\u00020\u000e2\u0006\u0010a\u001a\u00020\u000e2\u0006\u0010b\u001a\u00020\u000eH\u0002J\u001e\u0010c\u001a\u00020I2\u0006\u0010`\u001a\u00020\u000e2\u0006\u0010a\u001a\u00020\u000e2\u0006\u0010b\u001a\u00020\u000eJ\u000e\u0010d\u001a\u00020\u001e2\u0006\u0010e\u001a\u00020\u001eJ\u000e\u0010f\u001a\u00020I2\u0006\u0010g\u001a\u00020-J\u0010\u0010h\u001a\u00020I2\u0006\u0010i\u001a\u00020\u001eH\u0002J\u0008\u0010j\u001a\u00020\u000eH\u0002J\u0010\u0010k\u001a\u00020I2\u0006\u0010b\u001a\u00020\u000eH\u0002J\u0008\u0010l\u001a\u00020\u000eH\u0002J\u0008\u0010m\u001a\u00020IH\u0002J\u0018\u0010n\u001a\u00020I2\u0006\u0010a\u001a\u00020\u000e2\u0006\u0010b\u001a\u00020\u000eH\u0002R\u000e\u0010\n\u001a\u00020\u000bX\u0004¢\u0006\u0002\n\u0000R \u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000e8F@BX\u000e¢\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u000eX\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0013\u001a\u00020\u000eX\u000e¢\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0011\"\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u0018X.¢\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u000e\u0010\u0004\u001a\u00020\u0005X\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0004¢\u0006\u0002\n\u0000R\u0014\u0010!\u001a\u0008\u0012\u0004\u0012\u00020#0\"X\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0004¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u001eX\u000e¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u001eX\u000e¢\u0006\u0002\n\u0000R\u0010\u0010&\u001a\u00020\'X\u0004¢\u0006\u0004\n\u0002\u0010(R\u000e\u0010)\u001a\u00020\u001eX\u000e¢\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020\u000eX\u000e¢\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020\u000eX\u000e¢\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020-X.¢\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020\u001eX\u000e¢\u0006\u0002\n\u0000R\u0010\u0010/\u001a\u0004\u0018\u000100X\u000e¢\u0006\u0002\n\u0000R\u0016\u00101\u001a\n 3*\u0004\u0018\u00010202X\u000e¢\u0006\u0002\n\u0000R$\u00105\u001a\u00020\u000e2\u0006\u00104\u001a\u00020\u000e@BX\u000e¢\u0006\u000e\n\u0000\u001a\u0004\u00086\u0010\u0011\"\u0004\u00087\u0010\u0016R\u000e\u00108\u001a\u00020\u000eX\u000e¢\u0006\u0002\n\u0000R$\u00109\u001a\u00020\u000e2\u0006\u00104\u001a\u00020\u000e@FX\u000e¢\u0006\u000e\n\u0000\u001a\u0004\u0008:\u0010\u0011\"\u0004\u0008;\u0010\u0016R\u000e\u0010<\u001a\u00020=X\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0004¢\u0006\u0002\n\u0000R\u001e\u0010>\u001a\u0012\u0012\u0004\u0012\u00020@0?j\u0008\u0012\u0004\u0012\u00020@`AX\u0004¢\u0006\u0002\n\u0000R$\u0010B\u001a\u00020\u000e2\u0006\u00104\u001a\u00020\u000e@FX\u000e¢\u0006\u000e\n\u0000\u001a\u0004\u0008C\u0010\u0011\"\u0004\u0008D\u0010\u0016R$\u0010E\u001a\u00020\u000e2\u0006\u00104\u001a\u00020\u000e@FX\u000e¢\u0006\u000e\n\u0000\u001a\u0004\u0008F\u0010\u0011\"\u0004\u0008G\u0010\u0016\u0002\u0007\n\u0005\u0008(0\u0001¨\u0006p"
    }
    d2 = {
        "Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;",
        "Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;",
        "Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;",
        "Lcom/android/systemui/statusbar/phone/PanelExpansionListener;",
        "mContext",
        "Landroid/content/Context;",
        "mHeadsUpManagerPhone",
        "Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;",
        "statusBarStateController",
        "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
        "bypassController",
        "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
        "(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V",
        "<set-?>",
        "",
        "canShowPulsingHuns",
        "getCanShowPulsingHuns",
        "()Z",
        "collapsedEnoughToHide",
        "fullyAwake",
        "getFullyAwake",
        "setFullyAwake",
        "(Z)V",
        "iconAreaController",
        "Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;",
        "getIconAreaController",
        "()Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;",
        "setIconAreaController",
        "(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V",
        "mDozeAmount",
        "",
        "mDozeParameters",
        "Lcom/android/systemui/statusbar/phone/DozeParameters;",
        "mEntrySetToClearWhenFinished",
        "",
        "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
        "mLinearDozeAmount",
        "mLinearVisibilityAmount",
        "mNotificationVisibility",
        "com/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$mNotificationVisibility$1",
        "Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$mNotificationVisibility$1;",
        "mNotificationVisibleAmount",
        "mNotificationsVisible",
        "mNotificationsVisibleForExpansion",
        "mStackScroller",
        "Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;",
        "mVisibilityAmount",
        "mVisibilityAnimator",
        "Landroid/animation/ObjectAnimator;",
        "mVisibilityInterpolator",
        "Landroid/view/animation/Interpolator;",
        "kotlin.jvm.PlatformType",
        "value",
        "notificationsFullyHidden",
        "getNotificationsFullyHidden",
        "setNotificationsFullyHidden",
        "pulseExpanding",
        "pulsing",
        "getPulsing",
        "setPulsing",
        "state",
        "",
        "wakeUpListeners",
        "Ljava/util/ArrayList;",
        "Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;",
        "Lkotlin/collections/ArrayList;",
        "wakingUp",
        "getWakingUp",
        "setWakingUp",
        "willWakeUp",
        "getWillWakeUp",
        "setWillWakeUp",
        "addListener",
        "",
        "listener",
        "getWakeUpHeight",
        "handleAnimationFinished",
        "isPulseExpanding",
        "notifyAnimationStart",
        "awake",
        "onDozeAmountChanged",
        "linear",
        "eased",
        "onDozingChanged",
        "isDozing",
        "onHeadsUpStateChanged",
        "entry",
        "isHeadsUp",
        "onPanelExpansionChanged",
        "expansion",
        "tracking",
        "onStateChanged",
        "newState",
        "removeListener",
        "setDozeAmount",
        "setNotificationsVisible",
        "visible",
        "animate",
        "increaseSpeed",
        "setNotificationsVisibleForExpansion",
        "setPulseHeight",
        "height",
        "setStackScroller",
        "stackScroller",
        "setVisibilityAmount",
        "visibilityAmount",
        "shouldAnimateVisibility",
        "startVisibilityAnimation",
        "updateDozeAmountIfBypass",
        "updateHideAmount",
        "updateNotificationVisibility",
        "WakeUpListener",
        "name"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field private final bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private collapsedEnoughToHide:Z

.field private fullyAwake:Z

.field public iconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field private final mContext:Landroid/content/Context;

.field private mDozeAmount:F

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private final mEntrySetToClearWhenFinished:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mHeadsUpManagerPhone:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field private mLinearDozeAmount:F

.field private mLinearVisibilityAmount:F

.field private final mNotificationVisibility:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$mNotificationVisibility$1;

.field private mNotificationVisibleAmount:F

.field private mNotificationsVisible:Z

.field private mNotificationsVisibleForExpansion:Z

.field private mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field private mVisibilityAmount:F

.field private mVisibilityAnimator:Landroid/animation/ObjectAnimator;

.field private mVisibilityInterpolator:Landroid/view/animation/Interpolator;

.field private notificationsFullyHidden:Z

.field private pulseExpanding:Z

.field private pulsing:Z

.field private state:I

.field private final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private final wakeUpListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;",
            ">;"
        }
    .end annotation
.end field

.field private wakingUp:Z

.field private willWakeUp:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V
    .registers 6
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mHeadsUpManagerPhone"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "statusBarStateController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bypassController"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mHeadsUpManagerPhone:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 48
    new-instance p1, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$mNotificationVisibility$1;

    const-string p2, "notificationVisibility"

    invoke-direct {p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$mNotificationVisibility$1;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationVisibility:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$mNotificationVisibility$1;

    .line 59
    sget-object p1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN_REVERSE:Landroid/view/animation/Interpolator;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mVisibilityInterpolator:Landroid/view/animation/Interpolator;

    .line 69
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mEntrySetToClearWhenFinished:Ljava/util/Set;

    .line 72
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->wakeUpListeners:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 73
    iput p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->state:I

    .line 147
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mHeadsUpManagerPhone:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 148
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 149
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object p1

    const-string p2, "DozeParameters.getInstance(mContext)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 150
    new-instance p1, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->addListener(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;)V

    return-void
.end method

.method public static final synthetic access$getMLinearVisibilityAmount$p(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;)F
    .registers 1

    .line 39
    iget p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mLinearVisibilityAmount:F

    return p0
.end method

.method public static final synthetic access$getMNotificationsVisibleForExpansion$p(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;)Z
    .registers 1

    .line 39
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisibleForExpansion:Z

    return p0
.end method

.method public static final synthetic access$getPulseExpanding$p(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;)Z
    .registers 1

    .line 39
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->pulseExpanding:Z

    return p0
.end method

.method public static final synthetic access$getWakeUpListeners$p(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;)Ljava/util/ArrayList;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->wakeUpListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$setPulseExpanding$p(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Z)V
    .registers 2

    .line 39
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->pulseExpanding:Z

    return-void
.end method

.method public static final synthetic access$setVisibilityAmount(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;F)V
    .registers 2

    .line 39
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setVisibilityAmount(F)V

    return-void
.end method

.method private final handleAnimationFinished()V
    .registers 4

    .line 321
    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mLinearDozeAmount:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mLinearVisibilityAmount:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_29

    .line 322
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mEntrySetToClearWhenFinished:Ljava/util/Set;

    .line 395
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const/4 v2, 0x0

    .line 322
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setHeadsUpAnimatingAway(Z)V

    goto :goto_13

    .line 323
    :cond_24
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mEntrySetToClearWhenFinished:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    :cond_29
    return-void
.end method

.method private final notifyAnimationStart(Z)V
    .registers 2

    .line 339
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz p0, :cond_a

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->notifyHideAnimationStart(Z)V

    return-void

    :cond_a
    const-string p0, "mStackScroller"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final setNotificationsFullyHidden(Z)V
    .registers 3

    .line 120
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->notificationsFullyHidden:Z

    if-eq v0, p1, :cond_1c

    .line 121
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->notificationsFullyHidden:Z

    .line 122
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->wakeUpListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;

    .line 123
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;->onFullyHiddenChanged(Z)V

    goto :goto_c

    :cond_1c
    return-void
.end method

.method private final setNotificationsVisible(ZZZ)V
    .registers 5

    .line 218
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisible:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 221
    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisible:Z

    .line 222
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mVisibilityAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_e
    if-eqz p2, :cond_17

    .line 224
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->notifyAnimationStart(Z)V

    .line 225
    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->startVisibilityAnimation(Z)V

    goto :goto_20

    :cond_17
    if-eqz p1, :cond_1c

    const/high16 p1, 0x3f800000  # 1.0f

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    .line 227
    :goto_1d
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setVisibilityAmount(F)V

    :goto_20
    return-void
.end method

.method private final setVisibilityAmount(F)V
    .registers 3

    .line 313
    iput p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mLinearVisibilityAmount:F

    .line 314
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mVisibilityInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mVisibilityAmount:F

    .line 316
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->handleAnimationFinished()V

    .line 317
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->updateHideAmount()V

    return-void
.end method

.method private final shouldAnimateVisibility()Z
    .registers 2

    .line 380
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method private final startVisibilityAnimation(Z)V
    .registers 6

    .line 294
    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationVisibleAmount:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    const/high16 v3, 0x3f800000  # 1.0f

    if-eqz v2, :cond_d

    cmpg-float v0, v0, v3

    if-nez v0, :cond_18

    .line 295
    :cond_d
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisible:Z

    if-eqz v0, :cond_14

    .line 296
    sget-object v0, Lcom/android/systemui/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    goto :goto_16

    .line 298
    :cond_14
    sget-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN_REVERSE:Landroid/view/animation/Interpolator;

    .line 295
    :goto_16
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mVisibilityInterpolator:Landroid/view/animation/Interpolator;

    .line 300
    :cond_18
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisible:Z

    if-eqz v0, :cond_1d

    move v1, v3

    .line 301
    :cond_1d
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationVisibility:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$mNotificationVisibility$1;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 302
    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/16 v1, 0x1f4

    int-to-long v1, v1

    if-eqz p1, :cond_38

    long-to-float p1, v1

    const/high16 v1, 0x3fc00000  # 1.5f

    div-float/2addr p1, v1

    float-to-long v1, p1

    .line 307
    :cond_38
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 308
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 309
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mVisibilityAnimator:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method private final updateDozeAmountIfBypass()Z
    .registers 4

    .line 281
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-eqz v0, :cond_21

    const/high16 v0, 0x3f800000  # 1.0f

    .line 284
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1c

    :cond_1b
    const/4 v0, 0x0

    .line 287
    :cond_1c
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setDozeAmount(FF)V

    const/4 p0, 0x1

    return p0

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method private final updateHideAmount()V
    .registers 5

    .line 332
    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mLinearVisibilityAmount:F

    const/high16 v1, 0x3f800000  # 1.0f

    sub-float v0, v1, v0

    iget v2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mLinearDozeAmount:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 333
    iget v2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mVisibilityAmount:F

    sub-float v2, v1, v2

    iget v3, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mDozeAmount:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 334
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz v3, :cond_28

    invoke-virtual {v3, v0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setHideAmount(FF)V

    cmpg-float v0, v0, v1

    if-nez v0, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    .line 335
    :goto_24
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setNotificationsFullyHidden(Z)V

    return-void

    :cond_28
    const-string p0, "mStackScroller"

    .line 334
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final updateNotificationVisibility(ZZ)V
    .registers 6

    .line 205
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisibleForExpansion:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mHeadsUpManagerPhone:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->hasNotifications()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    move v0, v1

    goto :goto_12

    :cond_11
    :goto_11
    move v0, v2

    :goto_12
    if-eqz v0, :cond_1b

    .line 206
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->getCanShowPulsingHuns()Z

    move-result v0

    if-eqz v0, :cond_1b

    move v1, v2

    :cond_1b
    if-nez v1, :cond_31

    .line 208
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisible:Z

    if-eqz v0, :cond_31

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->wakingUp:Z

    if-nez v0, :cond_29

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->willWakeUp:Z

    if-eqz v0, :cond_31

    :cond_29
    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mDozeAmount:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-eqz v0, :cond_31

    return-void

    .line 213
    :cond_31
    invoke-direct {p0, v1, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setNotificationsVisible(ZZZ)V

    return-void
.end method


# virtual methods
.method public final addListener(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->wakeUpListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getCanShowPulsingHuns()Z
    .registers 4

    .line 133
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->pulsing:Z

    .line 134
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    const/4 v1, 0x1

    if-nez v0, :cond_25

    .line 137
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->wakingUp:Z

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->willWakeUp:Z

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->fullyAwake:Z

    if-eqz v0, :cond_23

    :cond_1a
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    if-ne v0, v1, :cond_23

    goto :goto_25

    :cond_23
    move v0, v2

    goto :goto_26

    :cond_25
    :goto_25
    move v0, v1

    .line 139
    :goto_26
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->collapsedEnoughToHide:Z

    if-eqz p0, :cond_2b

    move v0, v2

    :cond_2b
    return v0
.end method

.method public final getNotificationsFullyHidden()Z
    .registers 1

    .line 118
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->notificationsFullyHidden:Z

    return p0
.end method

.method public final getWakeUpHeight()F
    .registers 1

    .line 328
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getWakeUpHeight()F

    move-result p0

    return p0

    :cond_9
    const-string p0, "mStackScroller"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final isPulseExpanding()Z
    .registers 1

    .line 176
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isPulseExpanding()Z

    move-result p0

    return p0

    :cond_9
    const-string p0, "mStackScroller"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onDozeAmountChanged(FF)V
    .registers 6

    .line 232
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->updateDozeAmountIfBypass()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/high16 v0, 0x3f800000  # 1.0f

    cmpg-float v1, p1, v0

    if-eqz v1, :cond_28

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-eqz v2, :cond_28

    .line 236
    iget v2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mLinearDozeAmount:F

    cmpg-float v1, v2, v1

    if-eqz v1, :cond_1c

    cmpg-float v1, v2, v0

    if-nez v1, :cond_28

    .line 238
    :cond_1c
    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mLinearDozeAmount:F

    cmpg-float v0, v1, v0

    if-nez v0, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->notifyAnimationStart(Z)V

    .line 240
    :cond_28
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setDozeAmount(FF)V

    return-void
.end method

.method public onDozingChanged(Z)V
    .registers 2

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    .line 344
    invoke-direct {p0, p1, p1, p1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setNotificationsVisible(ZZZ)V

    :cond_6
    return-void
.end method

.method public onHeadsUpStateChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .registers 6

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->shouldAnimateVisibility()Z

    move-result v0

    const/4 v1, 0x0

    if-nez p2, :cond_33

    .line 361
    iget p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mLinearDozeAmount:F

    const/4 v2, 0x0

    cmpg-float p2, p2, v2

    if-eqz p2, :cond_43

    iget p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mLinearVisibilityAmount:F

    cmpg-float p2, p2, v2

    if-eqz p2, :cond_43

    .line 362
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowDismissed()Z

    move-result p2

    if-eqz p2, :cond_21

    move v0, v1

    goto :goto_43

    .line 366
    :cond_21
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->wakingUp:Z

    if-nez p2, :cond_43

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->willWakeUp:Z

    if-nez p2, :cond_43

    const/4 p2, 0x1

    .line 368
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setHeadsUpAnimatingAway(Z)V

    .line 369
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mEntrySetToClearWhenFinished:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_43

    .line 372
    :cond_33
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mEntrySetToClearWhenFinished:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_43

    .line 373
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mEntrySetToClearWhenFinished:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 374
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setHeadsUpAnimatingAway(Z)V

    .line 376
    :cond_43
    :goto_43
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->updateNotificationVisibility(ZZ)V

    return-void
.end method

.method public onPanelExpansionChanged(FZ)V
    .registers 4

    const p2, 0x3f666666  # 0.9f

    cmpg-float p1, p1, p2

    const/4 p2, 0x1

    if-gtz p1, :cond_a

    move p1, p2

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    .line 270
    :goto_b
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->collapsedEnoughToHide:Z

    if-eq p1, v0, :cond_25

    .line 271
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->getCanShowPulsingHuns()Z

    move-result v0

    .line 272
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->collapsedEnoughToHide:Z

    if-eqz v0, :cond_25

    .line 273
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->getCanShowPulsingHuns()Z

    move-result p1

    if-nez p1, :cond_25

    .line 274
    invoke-direct {p0, p2, p2}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->updateNotificationVisibility(ZZ)V

    .line 275
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mHeadsUpManagerPhone:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->releaseAllImmediately()V

    :cond_25
    return-void
.end method

.method public onStateChanged(I)V
    .registers 5

    .line 257
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->updateDozeAmountIfBypass()Z

    .line 260
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    if-ne p1, v0, :cond_28

    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_28

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->shouldAnimateVisibility()Z

    move-result v1

    if-eqz v1, :cond_28

    :cond_21
    const/4 v1, 0x0

    .line 262
    invoke-direct {p0, v0, v1, v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setNotificationsVisible(ZZZ)V

    .line 263
    invoke-direct {p0, v1, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setNotificationsVisible(ZZZ)V

    .line 265
    :cond_28
    iput p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->state:I

    return-void
.end method

.method public final removeListener(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->wakeUpListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setDozeAmount(FF)V
    .registers 6

    .line 244
    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mLinearDozeAmount:F

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    move v0, v1

    .line 245
    :goto_a
    iput p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mLinearDozeAmount:F

    .line 246
    iput p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mDozeAmount:F

    .line 247
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz p2, :cond_28

    iget v2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mDozeAmount:F

    invoke-virtual {p2, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setDozeAmount(F)V

    .line 248
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->updateHideAmount()V

    if-eqz v0, :cond_27

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-nez p1, :cond_27

    .line 250
    invoke-direct {p0, v1, v1, v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setNotificationsVisible(ZZZ)V

    .line 251
    invoke-virtual {p0, v1, v1, v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setNotificationsVisibleForExpansion(ZZZ)V

    :cond_27
    return-void

    :cond_28
    const-string p0, "mStackScroller"

    .line 247
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final setFullyAwake(Z)V
    .registers 2

    .line 75
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->fullyAwake:Z

    return-void
.end method

.method public final setIconAreaController(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->iconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    return-void
.end method

.method public final setNotificationsVisibleForExpansion(ZZZ)V
    .registers 4

    .line 185
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisibleForExpansion:Z

    .line 186
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->updateNotificationVisibility(ZZ)V

    if-nez p1, :cond_10

    .line 187
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisible:Z

    if-eqz p1, :cond_10

    .line 191
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mHeadsUpManagerPhone:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->releaseAllImmediately()V

    :cond_10
    return-void
.end method

.method public final setPulseHeight(F)F
    .registers 3

    .line 353
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz v0, :cond_12

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setPulseHeight(F)F

    move-result p1

    .line 355
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p0

    if-eqz p0, :cond_11

    const/4 p1, 0x0

    :cond_11
    return p1

    :cond_12
    const-string p0, "mStackScroller"

    .line 353
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final setPulsing(Z)V
    .registers 3

    .line 108
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->pulsing:Z

    if-eqz p1, :cond_c

    .line 113
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->shouldAnimateVisibility()Z

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->updateNotificationVisibility(ZZ)V

    :cond_c
    return-void
.end method

.method public final setStackScroller(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .registers 3

    const-string/jumbo v0, "stackScroller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 165
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isPulseExpanding()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->pulseExpanding:Z

    .line 166
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$setStackScroller$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$setStackScroller$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOnPulseHeightChangedListener(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setWakingUp(Z)V
    .registers 3

    .line 79
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->wakingUp:Z

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setWillWakeUp(Z)V

    if-eqz p1, :cond_3a

    .line 83
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisible:Z

    if-eqz p1, :cond_27

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisibleForExpansion:Z

    if-nez p1, :cond_27

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p1

    if-nez p1, :cond_27

    .line 85
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->wakeUpFromPulse()V

    goto :goto_27

    :cond_20
    const-string p0, "mStackScroller"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    .line 87
    :cond_27
    :goto_27
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p1

    if-eqz p1, :cond_3a

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisible:Z

    if-nez p1, :cond_3a

    .line 90
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->shouldAnimateVisibility()Z

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->updateNotificationVisibility(ZZ)V

    :cond_3a
    return-void
.end method

.method public final setWillWakeUp(Z)V
    .registers 4

    if-eqz p1, :cond_9

    .line 98
    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mDozeAmount:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-eqz v0, :cond_b

    .line 99
    :cond_9
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->willWakeUp:Z

    :cond_b
    return-void
.end method
