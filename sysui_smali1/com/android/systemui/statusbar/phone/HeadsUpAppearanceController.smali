.class public Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;
.super Ljava/lang/Object;
.source "HeadsUpAppearanceController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;


# instance fields
.field private mAnimationsEnabled:Z

.field mAppearFraction:F
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private final mCenteredIconView:Landroid/view/View;

.field private final mClockView:Landroid/view/View;

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private final mDarkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

.field mExpandedHeight:F
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field private final mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

.field mIsExpanded:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private final mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field private final mOperatorNameView:Landroid/view/View;

.field private final mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private final mParentClippingParams:Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;

.field mPoint:Landroid/graphics/Point;

.field private final mSetExpandedHeight:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mSetTrackingHeadsUp:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            ">;"
        }
    .end annotation
.end field

.field private mShown:Z

.field private final mStackScrollLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private final mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private mTrackedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field private final mUpdatePanelTranslation:Ljava/lang/Runnable;

.field private final mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Landroid/view/View;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;)V
    .registers 21

    move-object/from16 v0, p3

    .line 102
    sget v1, Lcom/android/systemui/R$id;->heads_up_status_bar_view:I

    .line 104
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    sget v1, Lcom/android/systemui/R$id;->notification_stack_scroller:I

    .line 105
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    sget v1, Lcom/android/systemui/R$id;->notification_panel:I

    .line 106
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget v1, Lcom/android/systemui/R$id;->clock:I

    .line 107
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    sget v1, Lcom/android/systemui/R$id;->operator_name_frame:I

    .line 108
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    sget v1, Lcom/android/systemui/R$id;->centered_icon_area:I

    .line 109
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    .line 102
    invoke-direct/range {v2 .. v13}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/HeadsUpStatusBarView;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/HeadsUpStatusBarView;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .registers 13
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$u27UVgFXO2Fq-gY8QI0m_qAQyl8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$u27UVgFXO2Fq-gY8QI0m_qAQyl8;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mSetTrackingHeadsUp:Ljava/util/function/Consumer;

    .line 66
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$22QZFjoGlQJQoKOrFe-bHbZltB4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$22QZFjoGlQJQoKOrFe-bHbZltB4;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mUpdatePanelTranslation:Ljava/lang/Runnable;

    .line 67
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$bcWIlLYHGuPtIh99P0bExeXSsMQ;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$bcWIlLYHGuPtIh99P0bExeXSsMQ;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mSetExpandedHeight:Ljava/util/function/BiConsumer;

    .line 80
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$hwNOwOgXItDjQM7QwL00pigpnrk;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$hwNOwOgXItDjQM7QwL00pigpnrk;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScrollLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 83
    new-instance v0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController$1;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mParentClippingParams:Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;

    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mAnimationsEnabled:Z

    .line 125
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    .line 126
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 127
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 128
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    .line 129
    iput-object p11, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mCenteredIconView:Landroid/view/View;

    .line 130
    new-instance p1, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$1d3l5klDiH8maZOdHwrJBKgigPE;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$1d3l5klDiH8maZOdHwrJBKgigPE;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    invoke-virtual {p6, p1}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->setOnDrawingRectChangedListener(Ljava/lang/Runnable;)V

    .line 132
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 133
    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 134
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mSetTrackingHeadsUp:Ljava/util/function/Consumer;

    invoke-virtual {p8, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->addTrackingHeadsUpListener(Ljava/util/function/Consumer;)V

    .line 135
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mUpdatePanelTranslation:Ljava/lang/Runnable;

    invoke-virtual {p8, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->addVerticalTranslationListener(Ljava/lang/Runnable;)V

    .line 136
    invoke-virtual {p8, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setHeadsUpAppearanceController(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    .line 137
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mSetExpandedHeight:Ljava/util/function/BiConsumer;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->addOnExpandedHeightChangedListener(Ljava/util/function/BiConsumer;)V

    .line 138
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScrollLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 139
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setHeadsUpAppearanceController(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    .line 140
    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mClockView:Landroid/view/View;

    .line 141
    iput-object p10, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mOperatorNameView:Landroid/view/View;

    .line 142
    const-class p1, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/DarkIconDispatcher;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mDarkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 143
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mDarkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    .line 145
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    new-instance p2, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController$2;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 158
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 159
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 160
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    .line 161
    invoke-virtual {p5, p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->addListener(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;)V

    .line 162
    invoke-virtual {p6}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1, p2}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 163
    const-class p1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V
    .registers 1

    .line 51
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateTopEntry()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)Lcom/android/systemui/statusbar/HeadsUpStatusBarView;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    return-object p0
.end method

.method private getRtlTranslation()I
    .registers 7

    .line 214
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mPoint:Landroid/graphics/Point;

    if-nez v0, :cond_b

    .line 215
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mPoint:Landroid/graphics/Point;

    .line 219
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getDisplay()Landroid/view/Display;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    .line 220
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mPoint:Landroid/graphics/Point;

    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 221
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    goto :goto_25

    :cond_24
    move v0, v1

    .line 224
    :goto_25
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 225
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v3

    goto :goto_33

    :cond_32
    const/4 v3, 0x0

    :goto_33
    if-eqz v2, :cond_3a

    .line 226
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v4

    goto :goto_3b

    :cond_3a
    move v4, v1

    :goto_3b
    if-eqz v2, :cond_42

    .line 227
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v2

    goto :goto_43

    :cond_42
    move v2, v1

    :goto_43
    if-eqz v3, :cond_4a

    .line 228
    invoke-virtual {v3}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v5

    goto :goto_4b

    :cond_4a
    move v5, v1

    :goto_4b
    if-eqz v3, :cond_51

    .line 229
    invoke-virtual {v3}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v1

    .line 230
    :cond_51
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 231
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 233
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result p0

    add-int/2addr v3, p0

    add-int/2addr v3, v1

    sub-int/2addr v3, v0

    return v3
.end method

.method private hide(Landroid/view/View;I)V
    .registers 4

    const/4 v0, 0x0

    .line 322
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->hide(Landroid/view/View;ILjava/lang/Runnable;)V

    return-void
.end method

.method private hide(Landroid/view/View;ILjava/lang/Runnable;)V
    .registers 7

    .line 335
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mAnimationsEnabled:Z

    if-eqz p0, :cond_10

    const-wide/16 v0, 0x6e

    const/4 p0, 0x0

    .line 336
    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$6jWM7O8t5p3KhJ2lcC8glbZxW9w;

    invoke-direct {v2, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$6jWM7O8t5p3KhJ2lcC8glbZxW9w;-><init>(Landroid/view/View;ILjava/lang/Runnable;)V

    invoke-static {p1, v0, v1, p0, v2}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;JILjava/lang/Runnable;)V

    goto :goto_18

    .line 344
    :cond_10
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p3, :cond_18

    .line 346
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_18
    :goto_18
    return-void
.end method

.method static synthetic lambda$hide$3(Landroid/view/View;ILjava/lang/Runnable;)V
    .registers 3

    .line 338
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_8

    .line 340
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_8
    return-void
.end method

.method private setShown(Z)V
    .registers 5

    .line 274
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mShown:Z

    if-eq v0, p1, :cond_6d

    .line 275
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mShown:Z

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_33

    .line 277
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateParentClipping(Z)V

    .line 278
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 279
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->show(Landroid/view/View;)V

    .line 280
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mClockView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->hide(Landroid/view/View;I)V

    .line 281
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mCenteredIconView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eq p1, v1, :cond_2b

    .line 282
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mCenteredIconView:Landroid/view/View;

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->hide(Landroid/view/View;I)V

    .line 284
    :cond_2b
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mOperatorNameView:Landroid/view/View;

    if-eqz p1, :cond_56

    .line 285
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->hide(Landroid/view/View;I)V

    goto :goto_56

    .line 288
    :cond_33
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mClockView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->show(Landroid/view/View;)V

    .line 289
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mCenteredIconView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eq p1, v1, :cond_45

    .line 290
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mCenteredIconView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->show(Landroid/view/View;)V

    .line 292
    :cond_45
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mOperatorNameView:Landroid/view/View;

    if-eqz p1, :cond_4c

    .line 293
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->show(Landroid/view/View;)V

    .line 295
    :cond_4c
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$iMPD_c-MpkAUOLIdQAujzNCdyYQ;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$iMPD_c-MpkAUOLIdQAujzNCdyYQ;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->hide(Landroid/view/View;ILjava/lang/Runnable;)V

    .line 300
    :cond_56
    :goto_56
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p1

    if-eqz p1, :cond_6d

    .line 301
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    .line 302
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    .line 301
    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    :cond_6d
    return-void
.end method

.method private show(Landroid/view/View;)V
    .registers 4

    .line 352
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mAnimationsEnabled:Z

    if-eqz p0, :cond_c

    const-wide/16 v0, 0x6e

    const/16 p0, 0x64

    .line 353
    invoke-static {p1, v0, v1, p0}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;JI)V

    goto :goto_10

    :cond_c
    const/4 p0, 0x0

    .line 356
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_10
    return-void
.end method

.method private updateHeadsUpHeaders()V
    .registers 3

    .line 428
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->getAllEntries()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$r_oAtsVltL-EqS4w4SiU08R_o1A;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$r_oAtsVltL-EqS4w4SiU08R_o1A;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception p0

    .line 432
    invoke-virtual {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    :goto_13
    return-void
.end method

.method private updateIsolatedIconLocation(Z)V
    .registers 3

    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    .line 181
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->getIconDrawingRect()Landroid/graphics/Rect;

    move-result-object p0

    .line 180
    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setIsolatedIconLocation(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method private updateParentClipping(Z)V
    .registers 3

    .line 308
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    xor-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mParentClippingParams:Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;

    invoke-static {v0, p1, p0}, Lcom/android/internal/widget/ViewClippingUtil;->setClippingDeactivated(Landroid/view/View;ZLcom/android/internal/widget/ViewClippingUtil$ClippingParameters;)V

    return-void
.end method

.method private updateTopEntry()V
    .registers 6

    .line 249
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->shouldBeVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 250
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    goto :goto_f

    :cond_e
    move-object v0, v1

    .line 252
    :goto_f
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->getShowingEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v2

    .line 253
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->setEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    if-eq v0, v2, :cond_3d

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_27

    .line 259
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->setShown(Z)V

    .line 260
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mIsExpanded:Z

    :goto_25
    xor-int/2addr v2, v3

    goto :goto_30

    :cond_27
    if-nez v2, :cond_2f

    .line 264
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->setShown(Z)V

    .line 265
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mIsExpanded:Z

    goto :goto_25

    :cond_2f
    move v2, v4

    .line 267
    :goto_30
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateIsolatedIconLocation(Z)V

    .line 268
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    if-nez v0, :cond_38

    goto :goto_3a

    .line 269
    :cond_38
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 268
    :goto_3a
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->showIconIsolated(Lcom/android/systemui/statusbar/StatusBarIconView;Z)V

    :cond_3d
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 4

    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->removeListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->setOnDrawingRectChangedListener(Ljava/lang/Runnable;)V

    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->removeListener(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;)V

    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mSetTrackingHeadsUp:Ljava/util/function/Consumer;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->removeTrackingHeadsUpListener(Ljava/util/function/Consumer;)V

    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mUpdatePanelTranslation:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->removeVerticalTranslationListener(Ljava/lang/Runnable;)V

    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setHeadsUpAppearanceController(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mSetExpandedHeight:Ljava/util/function/BiConsumer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->removeOnExpandedHeightChangedListener(Ljava/util/function/BiConsumer;)V

    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScrollLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 176
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mDarkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    return-void
.end method

.method public isShown()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 367
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mShown:Z

    return p0
.end method

.method public synthetic lambda$new$0$HeadsUpAppearanceController(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updatePanelTranslation()V

    return-void
.end method

.method public synthetic lambda$new$1$HeadsUpAppearanceController()V
    .registers 2

    const/4 v0, 0x1

    .line 131
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateIsolatedIconLocation(Z)V

    return-void
.end method

.method public synthetic lambda$setShown$2$HeadsUpAppearanceController()V
    .registers 2

    const/4 v0, 0x1

    .line 296
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateParentClipping(Z)V

    return-void
.end method

.method public synthetic lambda$updateHeadsUpHeaders$4$HeadsUpAppearanceController(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 2

    .line 429
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateHeader(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .registers 4

    .line 448
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->onDarkChanged(Landroid/graphics/Rect;FI)V

    return-void
.end method

.method public onFullyHiddenChanged(Z)V
    .registers 2

    .line 466
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateTopEntry()V

    return-void
.end method

.method public onHeadsUpPinned(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 2

    .line 186
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateTopEntry()V

    .line 187
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateHeader(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public onHeadsUpUnPinned(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 2

    .line 390
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateTopEntry()V

    .line 391
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateHeader(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public onStateChanged()V
    .registers 1

    .line 452
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateTopEntry()V

    return-void
.end method

.method readFrom(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V
    .registers 3

    if-eqz p1, :cond_12

    .line 457
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mTrackedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mTrackedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 458
    iget v0, p1, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mExpandedHeight:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mExpandedHeight:F

    .line 459
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mIsExpanded:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mIsExpanded:Z

    .line 460
    iget p1, p1, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mAppearFraction:F

    iput p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mAppearFraction:F

    :cond_12
    return-void
.end method

.method setAnimationsEnabled(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 362
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mAnimationsEnabled:Z

    return-void
.end method

.method public setAppearFraction(FF)V
    .registers 6

    .line 395
    iget v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mExpandedHeight:F

    cmpl-float v0, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    .line 396
    :goto_b
    iput p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mExpandedHeight:F

    .line 397
    iput p2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mAppearFraction:F

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_15

    goto :goto_16

    :cond_15
    move v1, v2

    :goto_16
    if-eqz v0, :cond_1b

    .line 403
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateHeadsUpHeaders()V

    .line 405
    :cond_1b
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mIsExpanded:Z

    if-eq v1, p1, :cond_24

    .line 406
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mIsExpanded:Z

    .line 407
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateTopEntry()V

    :cond_24
    return-void
.end method

.method public setTrackingHeadsUp(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .registers 3

    .line 419
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mTrackedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 420
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mTrackedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_d

    .line 422
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateHeader(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_d
    return-void
.end method

.method public shouldBeVisible()Z
    .registers 6

    .line 377
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->getNotificationsFullyHidden()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 378
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mIsExpanded:Z

    const/4 v3, 0x0

    if-nez v2, :cond_11

    if-eqz v0, :cond_11

    move v2, v1

    goto :goto_12

    :cond_11
    move v2, v3

    .line 379
    :goto_12
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v4

    if-eqz v4, :cond_2d

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 380
    invoke-interface {v4}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v4

    if-eq v4, v1, :cond_2a

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 381
    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isKeyguardGoingAway()Z

    move-result v4

    if-eqz v4, :cond_2d

    :cond_2a
    if-eqz v0, :cond_2d

    move v2, v1

    :cond_2d
    if-eqz v2, :cond_38

    .line 385
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result p0

    if-eqz p0, :cond_38

    goto :goto_39

    :cond_38
    move v1, v3

    :goto_39
    return v1
.end method

.method public updateHeader(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 3

    .line 437
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    .line 439
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isPinned()Z

    move-result v0

    if-nez v0, :cond_14

    .line 440
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->showingPulsing()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_14

    :cond_11
    const/high16 p0, 0x3f800000  # 1.0f

    goto :goto_16

    .line 441
    :cond_14
    :goto_14
    iget p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mAppearFraction:F

    .line 443
    :goto_16
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setHeaderVisibleAmount(F)V

    return-void
.end method

.method public updatePanelTranslation()V
    .registers 3

    .line 238
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 239
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->getRtlTranslation()I

    move-result v0

    goto :goto_13

    .line 241
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    :goto_13
    int-to-float v0, v0

    .line 243
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v1

    add-float/2addr v0, v1

    .line 244
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->setPanelTranslation(F)V

    return-void
.end method
