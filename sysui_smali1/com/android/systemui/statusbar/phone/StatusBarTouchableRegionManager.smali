.class public final Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;
.super Ljava/lang/Object;
.source "StatusBarTouchableRegionManager.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field private final mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

.field private final mContext:Landroid/content/Context;

.field private mForceCollapsedUntilLayout:Z

.field private final mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field private mIsStatusBarExpanded:Z

.field private mShouldAdjustInsets:Z

.field private final mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mStatusBarHeight:I

.field private final mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

.field private final mStatusBarWindowView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/View;)V
    .registers 6

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-class v0, Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bubbles/BubbleController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mIsStatusBarExpanded:Z

    .line 44
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mShouldAdjustInsets:Z

    .line 48
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mForceCollapsedUntilLayout:Z

    .line 55
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 57
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 58
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mStatusBarWindowView:Landroid/view/View;

    .line 59
    const-class p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    .line 61
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->initResources()V

    .line 63
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    new-instance p2, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarTouchableRegionManager$gPLkE4bCtewGoGzOAAWq2ceZj1A;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarTouchableRegionManager$gPLkE4bCtewGoGzOAAWq2ceZj1A;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/bubbles/BubbleController;->setBubbleStateChangeListener(Lcom/android/systemui/bubbles/BubbleController$BubbleStateChangeListener;)V

    .line 67
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    new-instance p2, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarTouchableRegionManager$hTH-4E1pAu4IyAouqMqgWhw8_mw;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarTouchableRegionManager$hTH-4E1pAu4IyAouqMqgWhw8_mw;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setForcePluginOpenListener(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$ForcePluginOpenListener;)V

    .line 70
    const-class p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;)Landroid/view/View;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mStatusBarWindowView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;)I
    .registers 1

    .line 37
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mStatusBarHeight:I

    return p0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;Z)Z
    .registers 2

    .line 37
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mForceCollapsedUntilLayout:Z

    return p1
.end method

.method private initResources()V
    .registers 3

    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105020f

    .line 166
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mStatusBarHeight:I

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$StatusBarTouchableRegionManager(Z)V
    .registers 2

    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->updateTouchableRegion()V

    return-void
.end method

.method public synthetic lambda$new$1$StatusBarTouchableRegionManager(Z)V
    .registers 2

    .line 68
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->updateTouchableRegion()V

    return-void
.end method

.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .registers 3

    .line 136
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mIsStatusBarExpanded:Z

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1f

    .line 141
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->updateTouchableRegion(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    .line 143
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleController;->getTouchableRegion()Landroid/graphics/Rect;

    move-result-object p0

    if-eqz p0, :cond_1f

    .line 145
    iget-object p1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {p1, p0}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    :cond_1f
    :goto_1f
    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 151
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->initResources()V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .registers 1

    .line 156
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->initResources()V

    return-void
.end method

.method public onOverlayChanged()V
    .registers 1

    .line 161
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->initResources()V

    return-void
.end method

.method public setIsStatusBarExpanded(Z)V
    .registers 3

    .line 124
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mIsStatusBarExpanded:Z

    if-eq p1, v0, :cond_e

    .line 125
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mIsStatusBarExpanded:Z

    if-eqz p1, :cond_b

    const/4 p1, 0x0

    .line 128
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mForceCollapsedUntilLayout:Z

    .line 130
    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->updateTouchableRegion()V

    :cond_e
    return-void
.end method

.method public updateTouchableRegion()V
    .registers 5

    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mStatusBarWindowView:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    .line 78
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mStatusBarWindowView:Landroid/view/View;

    .line 79
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_1a

    move v0, v1

    goto :goto_1b

    :cond_1a
    move v0, v2

    .line 80
    :goto_1b
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 81
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v3

    if-nez v3, :cond_43

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->isHeadsUpGoingAway()Z

    move-result v3

    if-nez v3, :cond_43

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    .line 82
    invoke-virtual {v3}, Lcom/android/systemui/bubbles/BubbleController;->hasBubbles()Z

    move-result v3

    if-nez v3, :cond_43

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mForceCollapsedUntilLayout:Z

    if-nez v3, :cond_43

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    .line 85
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->getForcePluginOpen()Z

    move-result v0

    if-eqz v0, :cond_42

    goto :goto_43

    :cond_42
    move v1, v2

    .line 86
    :cond_43
    :goto_43
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mShouldAdjustInsets:Z

    if-ne v1, v0, :cond_48

    return-void

    :cond_48
    if-eqz v1, :cond_59

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mStatusBarWindowView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mStatusBarWindowView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_62

    .line 94
    :cond_59
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mStatusBarWindowView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 96
    :goto_62
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mShouldAdjustInsets:Z

    return-void
.end method

.method public updateTouchableRegionAfterLayout()V
    .registers 3

    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mForceCollapsedUntilLayout:Z

    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mStatusBarWindowView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
