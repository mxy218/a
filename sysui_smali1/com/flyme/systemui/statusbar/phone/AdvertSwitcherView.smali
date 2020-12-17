.class public Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;
.super Landroid/widget/ViewSwitcher;
.source "AdvertSwitcherView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView$OnModeChange;
    }
.end annotation


# instance fields
.field private mCallBack:Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView$OnModeChange;

.field private mCurrentNotification:Landroid/service/notification/StatusBarNotification;

.field private mCurrentView:Landroid/view/View;

.field private mLeftIconView:Landroid/view/View;

.field private mShouldShowTicker:Z

.field private mTickerView:Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;

.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mCurrentNotification:Landroid/service/notification/StatusBarNotification;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mCurrentNotification:Landroid/service/notification/StatusBarNotification;

    return-void
.end method

.method private applyCallBack(Z)V
    .registers 2

    .line 94
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mCallBack:Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView$OnModeChange;

    if-eqz p0, :cond_7

    .line 95
    invoke-interface {p0, p1}, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView$OnModeChange;->onChange(Z)V

    :cond_7
    return-void
.end method

.method private hideTickerViewIfNeed()V
    .registers 3

    .line 55
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mTickerView:Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;

    invoke-virtual {v0}, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->isShow()Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mCurrentNotification:Landroid/service/notification/StatusBarNotification;

    .line 57
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mCurrentView:Landroid/view/View;

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mLeftIconView:Landroid/view/View;

    if-eq v0, v1, :cond_1e

    .line 58
    iput-object v1, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mCurrentView:Landroid/view/View;

    .line 59
    invoke-virtual {p0, v1}, Landroid/widget/ViewSwitcher;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, v0}, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->applyCallBack(Z)V

    :cond_1e
    return-void
.end method


# virtual methods
.method public addNotification(Landroid/service/notification/StatusBarNotification;)Z
    .registers 4

    if-eqz p1, :cond_31

    .line 38
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    iget v1, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mUserId:I

    if-ne v0, v1, :cond_31

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mTickerView:Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;

    if-eqz v0, :cond_31

    .line 39
    invoke-virtual {v0, p1}, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->addNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 40
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mCurrentNotification:Landroid/service/notification/StatusBarNotification;

    .line 41
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mCurrentView:Landroid/view/View;

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mTickerView:Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2d

    iget-boolean p1, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mShouldShowTicker:Z

    if-eqz p1, :cond_2d

    .line 42
    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mCurrentView:Landroid/view/View;

    .line 43
    invoke-virtual {p0, v0}, Landroid/widget/ViewSwitcher;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 44
    invoke-direct {p0, v1}, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->applyCallBack(Z)V

    :cond_2d
    return v1

    .line 48
    :cond_2e
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->hideTickerViewIfNeed()V

    :cond_31
    const/4 p0, 0x0

    return p0
.end method

.method protected onFinishInflate()V
    .registers 2

    .line 88
    invoke-super {p0}, Landroid/widget/ViewSwitcher;->onFinishInflate()V

    .line 89
    sget v0, Lcom/android/systemui/R$id;->ticker_ext:I

    invoke-virtual {p0, v0}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mTickerView:Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;

    .line 90
    sget v0, Lcom/android/systemui/R$id;->status_bar_left_side:I

    invoke-virtual {p0, v0}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mLeftIconView:Landroid/view/View;

    return-void
.end method

.method public removeNotification(Ljava/lang/String;)V
    .registers 3

    .line 66
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mTickerView:Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;

    if-eqz v0, :cond_a

    .line 67
    invoke-virtual {v0, p1}, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->removeNotification(Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->hideTickerViewIfNeed()V

    :cond_a
    return-void
.end method

.method public updateTickerViewVisibility(Z)V
    .registers 3

    .line 104
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mShouldShowTicker:Z

    .line 105
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mTickerView:Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;

    invoke-virtual {v0}, Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;->isShow()Z

    move-result v0

    if-eqz v0, :cond_2b

    if-eqz p1, :cond_1c

    .line 107
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mTickerView:Lcom/flyme/systemui/statusbar/phone/AdvertTickerView;

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mCurrentView:Landroid/view/View;

    .line 108
    invoke-virtual {p0, p1}, Landroid/widget/ViewSwitcher;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    const/4 p1, 0x1

    .line 109
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->applyCallBack(Z)V

    goto :goto_2b

    .line 111
    :cond_1c
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mLeftIconView:Landroid/view/View;

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->mCurrentView:Landroid/view/View;

    .line 112
    invoke-virtual {p0, p1}, Landroid/widget/ViewSwitcher;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    const/4 p1, 0x0

    .line 113
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->applyCallBack(Z)V

    :cond_2b
    :goto_2b
    return-void
.end method
