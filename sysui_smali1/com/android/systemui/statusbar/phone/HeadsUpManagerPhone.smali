.class public Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;
.super Lcom/android/systemui/statusbar/policy/HeadsUpManager;
.source "HeadsUpManagerPhone.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$AnimationStateHandler;,
        Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private mAnimationStateHandler:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$AnimationStateHandler;

.field private final mAutoHeadsUpNotificationDecay:I

.field private final mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private mDisplayCutoutTouchableRegionSize:I

.field private mEntriesToRemoveAfterExpand:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mEntriesToRemoveWhenReorderingAllowed:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mEntryPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool<",
            "Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;",
            ">;"
        }
    .end annotation
.end field

.field final mExtensionTime:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mHeadsUpGoingAway:Z

.field private mHeadsUpInset:I

.field private mIsExpanded:Z

.field private mKeysToRemoveWhenLeavingKeyguard:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReleaseOnExpandFinish:Z

.field private mStatusBarHeight:I

.field private mStatusBarState:I

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

.field private mStatusBarWindowView:Landroid/view/View;

.field private mSwipedOutKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpTwoArray:[I

.field private mTouchableRegion:Landroid/graphics/Region;

.field private mTrackingHeadsUp:Z

.field private mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V
    .registers 5
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 119
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;-><init>(Landroid/content/Context;)V

    .line 81
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mSwipedOutKeys:Ljava/util/HashSet;

    .line 82
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mEntriesToRemoveAfterExpand:Ljava/util/HashSet;

    .line 83
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mKeysToRemoveWhenLeavingKeyguard:Ljava/util/HashSet;

    .line 84
    new-instance p1, Landroidx/collection/ArraySet;

    invoke-direct {p1}, Landroidx/collection/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mEntriesToRemoveWhenReorderingAllowed:Landroidx/collection/ArraySet;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 87
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mTmpTwoArray:[I

    .line 90
    new-instance p1, Landroid/graphics/Region;

    invoke-direct {p1}, Landroid/graphics/Region;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mTouchableRegion:Landroid/graphics/Region;

    .line 94
    new-instance p1, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$1;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mEntryPool:Landroid/util/Pools$Pool;

    .line 120
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 121
    sget v0, Lcom/android/systemui/R$integer;->ambient_notification_extension_time:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mExtensionTime:I

    .line 122
    sget v0, Lcom/android/systemui/R$integer;->auto_heads_up_notification_decay:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mAutoHeadsUpNotificationDecay:I

    .line 124
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 125
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 126
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 128
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->initResources()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)I
    .registers 1

    .line 61
    iget p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mStatusBarState:I

    return p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Ljava/lang/String;)V
    .registers 2

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->removeAlertEntry(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Ljava/util/HashSet;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mEntriesToRemoveAfterExpand:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Landroidx/collection/ArraySet;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mEntriesToRemoveWhenReorderingAllowed:Landroidx/collection/ArraySet;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Ljava/util/HashSet;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mKeysToRemoveWhenLeavingKeyguard:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)I
    .registers 1

    .line 61
    iget p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mAutoHeadsUpNotificationDecay:I

    return p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)I
    .registers 1

    .line 61
    iget p0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mAutoDismissNotificationDecay:I

    return p0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Lcom/android/systemui/statusbar/notification/VisualStabilityManager;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Z
    .registers 1

    .line 61
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mTrackingHeadsUp:Z

    return p0
.end method

.method private getHeadsUpEntryPhone(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;
    .registers 2

    .line 473
    iget-object p0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mAlertEntries:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    return-object p0
.end method

.method private getTopHeadsUpEntryPhone()Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;
    .registers 1

    .line 478
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopHeadsUpEntry()Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    return-object p0
.end method

.method private initResources()V
    .registers 4

    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105020f

    .line 159
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mStatusBarHeight:I

    .line 161
    iget v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mStatusBarHeight:I

    sget v2, Lcom/android/systemui/R$dimen;->heads_up_status_bar_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mHeadsUpInset:I

    const v1, 0x10500f4

    .line 163
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mDisplayCutoutTouchableRegionSize:I

    return-void
.end method

.method private updateRegionForNotch(Landroid/graphics/Region;)V
    .registers 5

    .line 393
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mStatusBarWindowView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    .line 400
    :cond_d
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/16 v2, 0x30

    .line 401
    invoke-static {v0, v2, v1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->boundsFromDirection(Landroid/view/DisplayCutout;ILandroid/graphics/Rect;)V

    const/4 v0, 0x0

    .line 402
    iget p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mDisplayCutoutTouchableRegionSize:I

    invoke-virtual {v1, v0, p0}, Landroid/graphics/Rect;->offset(II)V

    .line 403
    invoke-virtual {p1, v1}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    return-void
.end method


# virtual methods
.method public addSwipedOutNotification(Ljava/lang/String;)V
    .registers 2

    .line 342
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mSwipedOutKeys:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public calculateTouchableRegion()Landroid/graphics/Region;
    .registers 7

    .line 366
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    .line 370
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_40

    if-nez v0, :cond_e

    goto :goto_40

    .line 375
    :cond_e
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isChildInGroup()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 376
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 377
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    if-eqz v1, :cond_1f

    move-object v0, v1

    .line 382
    :cond_1f
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    .line 383
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mTmpTwoArray:[I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 384
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mTmpTwoArray:[I

    aget v3, v1, v2

    .line 385
    aget v1, v1, v2

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    .line 386
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v0

    .line 387
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mTouchableRegion:Landroid/graphics/Region;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mHeadsUpInset:I

    add-int/2addr v5, v0

    invoke-virtual {v4, v3, v2, v1, v5}, Landroid/graphics/Region;->set(IIII)Z

    goto :goto_52

    .line 371
    :cond_40
    :goto_40
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mTouchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mStatusBarWindowView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v3, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mStatusBarHeight:I

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/graphics/Region;->set(IIII)Z

    .line 372
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mTouchableRegion:Landroid/graphics/Region;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->updateRegionForNotch(Landroid/graphics/Region;)V

    .line 389
    :goto_52
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mTouchableRegion:Landroid/graphics/Region;

    return-object p0
.end method

.method protected canRemoveImmediately(Ljava/lang/String;)Z
    .registers 5

    .line 483
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mSwipedOutKeys:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    .line 485
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mSwipedOutKeys:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return v1

    .line 489
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->getHeadsUpEntryPhone(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    move-result-object v0

    .line 490
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->getTopHeadsUpEntryPhone()Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    move-result-object v2

    if-eqz v0, :cond_23

    if-ne v0, v2, :cond_23

    .line 492
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->canRemoveImmediately(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_22

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :cond_23
    :goto_23
    return v1
.end method

.method protected bridge synthetic createAlertEntry()Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;
    .registers 1

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->createAlertEntry()Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    move-result-object p0

    return-object p0
.end method

.method protected createAlertEntry()Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
    .registers 1

    .line 440
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mEntryPool:Landroid/util/Pools$Pool;

    invoke-interface {p0}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    return-object p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    const-string v0, "HeadsUpManagerPhone state:"

    .line 350
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method protected dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 461
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-string p1, "  mBarState="

    .line 462
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 463
    iget p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mStatusBarState:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "  mTouchableRegion="

    .line 464
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 465
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public extendHeadsUp()V
    .registers 1

    .line 320
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->getTopHeadsUpEntryPhone()Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    .line 324
    :cond_7
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->access$200(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;)V

    return-void
.end method

.method public isEntryAutoHeadsUpped(Ljava/lang/String;)Z
    .registers 2

    .line 259
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->getHeadsUpEntryPhone(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 263
    :cond_8
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->access$100(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;)Z

    move-result p0

    return p0
.end method

.method public isHeadsUpGoingAway()Z
    .registers 1

    .line 282
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mHeadsUpGoingAway:Z

    return p0
.end method

.method public isTrackingHeadsUp()Z
    .registers 1

    .line 332
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mTrackingHeadsUp:Z

    return p0
.end method

.method protected onAlertEntryRemoved(Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;)V
    .registers 4

    .line 445
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mKeysToRemoveWhenLeavingKeyguard:Ljava/util/HashSet;

    iget-object v1, p1, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 446
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->onAlertEntryRemoved(Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;)V

    .line 447
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mEntryPool:Landroid/util/Pools$Pool;

    check-cast p1, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    invoke-interface {p0, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 416
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->initResources()V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .registers 1

    .line 169
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->onDensityOrFontScaleChanged()V

    .line 170
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->initResources()V

    return-void
.end method

.method public onDozingChanged(Z)V
    .registers 3

    if-nez p1, :cond_1d

    .line 251
    iget-object p0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mAlertEntries:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;

    const/4 v0, 0x1

    .line 252
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->updateEntry(Z)V

    goto :goto_c

    :cond_1d
    return-void
.end method

.method public onExpandingFinished()V
    .registers 4

    .line 194
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mReleaseOnExpandFinish:Z

    if-eqz v0, :cond_b

    .line 195
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->releaseAllImmediately()V

    const/4 v0, 0x0

    .line 196
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mReleaseOnExpandFinish:Z

    goto :goto_2b

    .line 198
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mEntriesToRemoveAfterExpand:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 199
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->isAlerting(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 201
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->removeAlertEntry(Ljava/lang/String;)V

    goto :goto_11

    .line 205
    :cond_2b
    :goto_2b
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mEntriesToRemoveAfterExpand:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public onOverlayChanged()V
    .registers 1

    .line 175
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->initResources()V

    return-void
.end method

.method public onReorderingAllowed()V
    .registers 4

    .line 424
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mAnimationStateHandler:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$AnimationStateHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$AnimationStateHandler;->setHeadsUpGoingAwayAnimationsAllowed(Z)V

    .line 425
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mEntriesToRemoveWhenReorderingAllowed:Landroidx/collection/ArraySet;

    invoke-virtual {v0}, Landroidx/collection/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 426
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->isAlerting(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 428
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->removeAlertEntry(Ljava/lang/String;)V

    goto :goto_c

    .line 431
    :cond_26
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mEntriesToRemoveWhenReorderingAllowed:Landroidx/collection/ArraySet;

    invoke-virtual {v0}, Landroidx/collection/ArraySet;->clear()V

    .line 432
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mAnimationStateHandler:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$AnimationStateHandler;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$AnimationStateHandler;->setHeadsUpGoingAwayAnimationsAllowed(Z)V

    return-void
.end method

.method public onStateChanged(I)V
    .registers 5

    .line 234
    iget v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mStatusBarState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    :goto_9
    if-ne p1, v2, :cond_c

    goto :goto_d

    :cond_c
    move v2, v1

    .line 236
    :goto_d
    iput p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mStatusBarState:I

    if-eqz v0, :cond_35

    if-nez v2, :cond_35

    .line 237
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mKeysToRemoveWhenLeavingKeyguard:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-eqz p1, :cond_35

    .line 238
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mKeysToRemoveWhenLeavingKeyguard:Ljava/util/HashSet;

    new-array v0, v1, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 239
    array-length v0, p1

    :goto_26
    if-ge v1, v0, :cond_30

    aget-object v2, p1, v1

    .line 240
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->removeAlertEntry(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 242
    :cond_30
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mKeysToRemoveWhenLeavingKeyguard:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    :cond_35
    return-void
.end method

.method public setAnimationStateHandler(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$AnimationStateHandler;)V
    .registers 2

    .line 154
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mAnimationStateHandler:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$AnimationStateHandler;

    return-void
.end method

.method public setHeadsUpGoingAway(Z)V
    .registers 3

    .line 271
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mHeadsUpGoingAway:Z

    if-eq p1, v0, :cond_13

    .line 272
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mHeadsUpGoingAway:Z

    if-nez p1, :cond_e

    .line 274
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->updateTouchableRegionAfterLayout()V

    goto :goto_13

    .line 276
    :cond_e
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->updateTouchableRegion()V

    :cond_13
    :goto_13
    return-void
.end method

.method public setIsPanelExpanded(Z)V
    .registers 3

    .line 222
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mIsExpanded:Z

    if-eq p1, v0, :cond_15

    .line 223
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mIsExpanded:Z

    if-eqz p1, :cond_b

    const/4 v0, 0x0

    .line 225
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mHeadsUpGoingAway:Z

    .line 227
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->setIsStatusBarExpanded(Z)V

    .line 228
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->updateTouchableRegion()V

    :cond_15
    return-void
.end method

.method public setMenuShown(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .registers 4

    .line 309
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getHeadsUpEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    move-result-object p0

    .line 310
    instance-of v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowPinned()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 311
    check-cast p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->setMenuShownPinned(Z)V

    :cond_15
    return-void
.end method

.method public setRemoteInputActive(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .registers 3

    .line 293
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->getHeadsUpEntryPhone(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 294
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->remoteInputActive:Z

    if-eq p1, p2, :cond_18

    .line 295
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->remoteInputActive:Z

    if-eqz p2, :cond_14

    .line 297
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->removeAutoRemovalCallbacks()V

    goto :goto_18

    :cond_14
    const/4 p1, 0x0

    .line 299
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->updateEntry(Z)V

    :cond_18
    :goto_18
    return-void
.end method

.method public setTrackingHeadsUp(Z)V
    .registers 2

    .line 213
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mTrackingHeadsUp:Z

    return-void
.end method

.method public setUp(Landroid/view/View;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;)V
    .registers 7

    .line 136
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mStatusBarWindowView:Landroid/view/View;

    .line 137
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p3, p1}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    .line 139
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 140
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    .line 142
    new-instance p1, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$2;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    return-void
.end method

.method public shouldExtendLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .registers 3

    .line 411
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->isReorderingAllowed()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->shouldExtendLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method protected shouldHeadsUpBecomePinned(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .registers 6

    .line 452
    iget v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mStatusBarState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mIsExpanded:Z

    if-nez v0, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    move v0, v1

    .line 453
    :goto_d
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 454
    iget v3, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mStatusBarState:I

    if-ne v3, v2, :cond_1b

    move v3, v2

    goto :goto_1c

    :cond_1b
    move v3, v1

    :goto_1c
    or-int/2addr v0, v3

    :cond_1d
    if-nez v0, :cond_25

    .line 456
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->shouldHeadsUpBecomePinned(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    if-eqz p0, :cond_26

    :cond_25
    move v1, v2

    :cond_26
    return v1
.end method

.method public shouldSwallowClick(Ljava/lang/String;)Z
    .registers 4

    .line 189
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getHeadsUpEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 190
    iget-object p0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mClock:Lcom/android/systemui/statusbar/AlertingNotificationManager$Clock;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AlertingNotificationManager$Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-wide p0, p1, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mPostTime:J

    cmp-long p0, v0, p0

    if-gez p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public snooze()V
    .registers 2

    .line 337
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->snooze()V

    const/4 v0, 0x1

    .line 338
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mReleaseOnExpandFinish:Z

    return-void
.end method

.method public updateTouchableRegion(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .registers 3

    const/4 v0, 0x3

    .line 361
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 362
    iget-object p1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->calculateTouchableRegion()Landroid/graphics/Region;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    return-void
.end method
