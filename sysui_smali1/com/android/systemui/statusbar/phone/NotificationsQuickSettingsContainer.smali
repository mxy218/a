.class public Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;
.super Landroid/widget/FrameLayout;
.source "NotificationsQuickSettingsContainer.java"

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;
.implements Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;
.implements Lcom/android/systemui/statusbar/notification/AboveShelfObserver$HasViewAboveShelfChangedListener;


# instance fields
.field private mBottomPadding:I

.field private mCustomizerAnimating:Z

.field private mDrawingOrderedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHasViewsAboveShelf:Z

.field private final mIndexComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInflated:Z

.field private mKeyguardShowing:Z

.field private mKeyguardStatusBar:Landroid/view/View;

.field private mLayoutDrawingOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mQsExpanded:Z

.field private mQsFrame:Landroid/widget/FrameLayout;

.field private mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field private mStackScrollerMargin:I

.field private mUserSwitcher:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 62
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mLayoutDrawingOrder:Ljava/util/ArrayList;

    .line 63
    new-instance p1, Lcom/android/systemui/statusbar/phone/-$$Lambda$rYOLYKY9UUHboooVhy4ZToEslhI;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$rYOLYKY9UUHboooVhy4ZToEslhI;-><init>(Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;)V

    invoke-static {p1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mIndexComparator:Ljava/util/Comparator;

    return-void
.end method

.method private reloadWidth(Landroid/view/View;I)V
    .registers 3
    .param p2  # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 108
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/utils/SystemUICommonUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->getPanelWidth()I

    move-result p0

    iput p0, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 109
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setBottomMargin(Landroid/view/View;I)V
    .registers 3

    .line 206
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    .line 207
    iput p2, p0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 208
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 4

    .line 114
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mBottomPadding:I

    .line 115
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mKeyguardShowing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_f

    :cond_d
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mBottomPadding:I

    :goto_f
    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-object p1
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .line 83
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 84
    invoke-static {p0}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v0

    const-string v1, "QS"

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 95
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 99
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    sget v0, Lcom/android/systemui/R$dimen;->notification_panel_width:I

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->reloadWidth(Landroid/view/View;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 89
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 90
    invoke-static {p0}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v0

    const-string v1, "QS"

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/fragments/FragmentHostManager;->removeTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .line 71
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 72
    sget v0, Lcom/android/systemui/R$id;->qs_frame:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mQsFrame:Landroid/widget/FrameLayout;

    .line 73
    sget v0, Lcom/android/systemui/R$id;->notification_stack_scroller:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScrollerMargin:I

    .line 75
    sget v0, Lcom/android/systemui/R$id;->keyguard_header:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mKeyguardStatusBar:Landroid/view/View;

    .line 76
    sget v0, Lcom/android/systemui/R$id;->keyguard_user_switcher:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 77
    invoke-virtual {v0, p0}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    .line 78
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mUserSwitcher:Landroid/view/View;

    return-void
.end method

.method public onFragmentViewCreated(Ljava/lang/String;Landroid/app/Fragment;)V
    .registers 3

    .line 175
    check-cast p2, Lcom/android/systemui/plugins/qs/QS;

    .line 176
    invoke-interface {p2, p0}, Lcom/android/systemui/plugins/qs/QS;->setContainer(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public onHasViewsAboveShelfChanged(Z)V
    .registers 2

    .line 213
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mHasViewsAboveShelf:Z

    .line 214
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .registers 4

    .line 167
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mUserSwitcher:Landroid/view/View;

    if-ne p1, v0, :cond_9

    .line 168
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mUserSwitcher:Landroid/view/View;

    const/4 p1, 0x1

    .line 169
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mInflated:Z

    :cond_9
    return-void
.end method

.method public setCustomizerAnimating(Z)V
    .registers 3

    .line 187
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mCustomizerAnimating:Z

    if-eq v0, p1, :cond_9

    .line 188
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mCustomizerAnimating:Z

    .line 189
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_9
    return-void
.end method

.method public setCustomizerShowing(Z)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    .line 196
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 197
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setBottomMargin(Landroid/view/View;I)V

    goto :goto_1e

    .line 199
    :cond_c
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mKeyguardShowing:Z

    if-eqz v1, :cond_12

    move v1, v0

    goto :goto_14

    :cond_12
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mBottomPadding:I

    :goto_14
    invoke-virtual {p0, v0, v0, v0, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 200
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScrollerMargin:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setBottomMargin(Landroid/view/View;I)V

    .line 202
    :goto_1e
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setQsCustomizerShowing(Z)V

    return-void
.end method

.method public setKeyguardShowing(Z)V
    .registers 2

    .line 219
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mKeyguardShowing:Z

    const/4 p1, 0x0

    .line 220
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerShowing(Z)V

    return-void
.end method

.method public setQsExpanded(Z)V
    .registers 3

    .line 180
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mQsExpanded:Z

    if-eq v0, p1, :cond_9

    .line 181
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->mQsExpanded:Z

    .line 182
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_9
    return-void
.end method
