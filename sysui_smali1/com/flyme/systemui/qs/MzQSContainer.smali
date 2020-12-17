.class public Lcom/flyme/systemui/qs/MzQSContainer;
.super Landroid/widget/FrameLayout;
.source "MzQSContainer.java"


# instance fields
.field private mHeader:Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;

.field private mHeightOverride:I

.field private mNavigationBarBottomHeight:I

.field private mQSPanel:Lcom/android/systemui/qs/QSPanel;

.field private mQSPanelScrollView:Landroid/widget/ScrollView;

.field private final mQsBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 27
    iput p1, p0, Lcom/flyme/systemui/qs/MzQSContainer;->mHeightOverride:I

    .line 32
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/flyme/systemui/qs/MzQSContainer;->mQsBounds:Landroid/graphics/Rect;

    return-void
.end method

.method private updateBottom()V
    .registers 4

    .line 98
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/MzQSContainer;->calculateContainerHeight()I

    move-result v0

    .line 99
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setBottom(I)V

    .line 100
    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v2, p0, Lcom/flyme/systemui/qs/MzQSContainer;->mQSPanelScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getTop()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSPanel;->setQSPanelNormalHeight(I)V

    .line 101
    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSContainer;->mQsBounds:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 102
    iget-object v2, p0, Lcom/flyme/systemui/qs/MzQSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 103
    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSContainer;->mQsBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/flyme/systemui/qs/MzQSContainer;->mQSPanelScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 104
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSContainer;->mQSPanelScrollView:Landroid/widget/ScrollView;

    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSContainer;->mQsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/widget/ScrollView;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method protected calculateContainerHeight()I
    .registers 3

    .line 94
    iget v0, p0, Lcom/flyme/systemui/qs/MzQSContainer;->mHeightOverride:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    goto :goto_a

    :cond_6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    :goto_a
    return v0
.end method

.method public disable(IIZ)V
    .registers 4

    return-void
.end method

.method public getHeightOverride()I
    .registers 1

    .line 90
    iget p0, p0, Lcom/flyme/systemui/qs/MzQSContainer;->mHeightOverride:I

    return p0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 3

    .line 50
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/qs/MzQSContainer;->mNavigationBarBottomHeight:I

    .line 51
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 56
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .line 40
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 41
    sget v0, Lcom/android/systemui/R$id;->quick_settings_panel:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    iput-object v0, p0, Lcom/flyme/systemui/qs/MzQSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    .line 42
    sget v0, Lcom/android/systemui/R$id;->header:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;

    iput-object v0, p0, Lcom/flyme/systemui/qs/MzQSContainer;->mHeader:Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;

    .line 43
    sget v0, Lcom/android/systemui/R$id;->quick_settings_panel_scroll:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/flyme/systemui/qs/MzQSContainer;->mQSPanelScrollView:Landroid/widget/ScrollView;

    const/4 v0, 0x2

    .line 45
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 74
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 75
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/MzQSContainer;->updateExpansion()V

    return-void
.end method

.method public performClick()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public setExpansion(F)V
    .registers 2

    .line 69
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/MzQSContainer;->updateExpansion()V

    return-void
.end method

.method public setHeightOverride(I)V
    .registers 2

    .line 85
    iput p1, p0, Lcom/flyme/systemui/qs/MzQSContainer;->mHeightOverride:I

    .line 86
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/MzQSContainer;->updateExpansion()V

    return-void
.end method

.method public updateExpansion()V
    .registers 1

    .line 81
    invoke-direct {p0}, Lcom/flyme/systemui/qs/MzQSContainer;->updateBottom()V

    return-void
.end method
