.class public Lcom/android/systemui/statusbar/notification/row/FooterView;
.super Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;
.source "FooterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/row/FooterView$FooterViewState;
    }
.end annotation


# instance fields
.field private final mClearAllTopPadding:I

.field private mDismissButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

.field private mManageButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->clear_all_padding_top:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mClearAllTopPadding:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/row/FooterView;)I
    .registers 1

    .line 28
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mClearAllTopPadding:I

    return p0
.end method


# virtual methods
.method public createExpandableViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;
    .registers 2

    .line 92
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/FooterView$FooterViewState;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/FooterView$FooterViewState;-><init>(Lcom/android/systemui/statusbar/notification/row/FooterView;)V

    return-object v0
.end method

.method protected findContentView()Landroid/view/View;
    .registers 2

    .line 41
    sget v0, Lcom/android/systemui/R$id;->content:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected findSecondaryView()Landroid/view/View;
    .registers 2

    .line 45
    sget v0, Lcom/android/systemui/R$id;->dismiss_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 77
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 78
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mDismissButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    sget v0, Lcom/android/systemui/R$string;->clear_all_notifications_text:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 79
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mDismissButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->accessibility_clear_all:I

    .line 80
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 81
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mManageButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    sget v0, Lcom/android/systemui/R$string;->manage_notifications_text:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 82
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mManageButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->accessibility_manage_notification:I

    .line 83
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 82
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .line 50
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->onFinishInflate()V

    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/FooterView;->findSecondaryView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mDismissButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    .line 52
    sget v0, Lcom/android/systemui/R$id;->manage_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/FooterView;->mManageButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    return-void
.end method
