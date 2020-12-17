.class public Lcom/flyme/systemui/statusbar/phone/FlymeLinearLayout;
.super Landroid/widget/LinearLayout;
.source "FlymeLinearLayout.java"


# instance fields
.field private mConfiguration:Landroid/content/res/Configuration;

.field private mKeyguardTextArea:Landroid/view/ViewGroup;

.field private mNotificationIconArea:Landroid/view/ViewGroup;

.field private mSystemIconsContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/FlymeLinearLayout;->mConfiguration:Landroid/content/res/Configuration;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/FlymeLinearLayout;->mConfiguration:Landroid/content/res/Configuration;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/FlymeLinearLayout;->mConfiguration:Landroid/content/res/Configuration;

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 43
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 44
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/FlymeLinearLayout;->mConfiguration:Landroid/content/res/Configuration;

    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .line 35
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 36
    sget v0, Lcom/android/systemui/R$id;->keyguard_text_area:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeLinearLayout;->mKeyguardTextArea:Landroid/view/ViewGroup;

    .line 37
    sget v0, Lcom/android/systemui/R$id;->notification_icon_area:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeLinearLayout;->mNotificationIconArea:Landroid/view/ViewGroup;

    .line 38
    sget v0, Lcom/android/systemui/R$id;->system_icons_super_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeLinearLayout;->mSystemIconsContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method protected onMeasure(II)V
    .registers 8

    .line 49
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeLinearLayout;->mKeyguardTextArea:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 50
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v0

    .line 51
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeLinearLayout;->mNotificationIconArea:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 52
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v0

    add-int/2addr v1, v2

    .line 53
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    sub-int/2addr v0, v1

    const/high16 v1, -0x80000000

    .line 54
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 55
    iget-object v3, p0, Lcom/flyme/systemui/statusbar/phone/FlymeLinearLayout;->mKeyguardTextArea:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2, p2}, Landroid/view/ViewGroup;->measure(II)V

    .line 57
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/phone/FlymeLinearLayout;->mKeyguardTextArea:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v0, v2

    .line 58
    invoke-static {}, Lcom/flyme/systemui/statusbar/utils/CutoutHelper;->isCutoutScreen()Z

    move-result v2

    const/high16 v3, 0x40000000  # 2.0f

    if-eqz v2, :cond_50

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/phone/FlymeLinearLayout;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_50

    .line 59
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x43160000  # 150.0f

    invoke-static {v1, v2}, Lcom/flyme/systemui/statusbar/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_54

    .line 61
    :cond_50
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 63
    :goto_54
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/phone/FlymeLinearLayout;->mSystemIconsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1, p2}, Landroid/view/ViewGroup;->measure(II)V

    .line 65
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/phone/FlymeLinearLayout;->mSystemIconsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 66
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 67
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/phone/FlymeLinearLayout;->mNotificationIconArea:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0, p2}, Landroid/view/ViewGroup;->measure(II)V

    .line 68
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void
.end method
