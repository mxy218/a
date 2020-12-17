.class public Lcom/flyme/systemuitools/aod/view/datetime/DateBaseView;
.super Landroid/widget/LinearLayout;
.source "DateBaseView.java"

# interfaces
.implements Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter$IDateTimeCallback;
.implements Lcom/flyme/systemuitools/aod/presenter/GradientPresenter$IGradientCallback;


# instance fields
.field private mAmPmTextView:Lcom/flyme/systemuitools/aod/view/gradient/GradientTextView;

.field private mBatteryPercent:Lcom/flyme/systemuitools/aod/view/gradient/GradientTextView;

.field private mBatteryView:Lcom/flyme/systemuitools/aod/view/AODBatteryView;

.field private mContext:Landroid/content/Context;

.field private mDateTextView:Lcom/flyme/systemuitools/aod/view/gradient/GradientTextView;

.field private mWeekTextView:Lcom/flyme/systemuitools/aod/view/gradient/GradientTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/datetime/DateBaseView;->mContext:Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/view/datetime/DateBaseView;->initRes()V

    .line 37
    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;->registerCallback(Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter$IDateTimeCallback;)V

    .line 38
    invoke-static {}, Lcom/flyme/systemuitools/aod/presenter/GradientPresenter;->getInstance()Lcom/flyme/systemuitools/aod/presenter/GradientPresenter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/flyme/systemuitools/aod/presenter/GradientPresenter;->registerCallback(Lcom/flyme/systemuitools/aod/presenter/GradientPresenter$IGradientCallback;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private doAnimation()V
    .registers 2

    .line 134
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;->getCommonAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 135
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private getLayoutId()I
    .registers 1

    .line 85
    sget p0, Lcom/android/systemui/R$layout;->date_base_view:I

    return p0
.end method

.method private initRes()V
    .registers 4

    .line 89
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/datetime/DateBaseView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 90
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/view/datetime/DateBaseView;->getLayoutId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 92
    sget v1, Lcom/android/systemui/R$id;->lock_date:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemuitools/aod/view/gradient/GradientTextView;

    iput-object v1, p0, Lcom/flyme/systemuitools/aod/view/datetime/DateBaseView;->mDateTextView:Lcom/flyme/systemuitools/aod/view/gradient/GradientTextView;

    .line 93
    sget v1, Lcom/android/systemui/R$id;->lock_week:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemuitools/aod/view/gradient/GradientTextView;

    iput-object v1, p0, Lcom/flyme/systemuitools/aod/view/datetime/DateBaseView;->mWeekTextView:Lcom/flyme/systemuitools/aod/view/gradient/GradientTextView;

    .line 94
    sget v1, Lcom/android/systemui/R$id;->am_pm:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemuitools/aod/view/gradient/GradientTextView;

    iput-object v1, p0, Lcom/flyme/systemuitools/aod/view/datetime/DateBaseView;->mAmPmTextView:Lcom/flyme/systemuitools/aod/view/gradient/GradientTextView;

    .line 95
    sget v1, Lcom/android/systemui/R$id;->battery_percent:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemuitools/aod/view/gradient/GradientTextView;

    iput-object v1, p0, Lcom/flyme/systemuitools/aod/view/datetime/DateBaseView;->mBatteryPercent:Lcom/flyme/systemuitools/aod/view/gradient/GradientTextView;

    .line 96
    sget v1, Lcom/android/systemui/R$id;->battery_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemuitools/aod/view/AODBatteryView;

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/datetime/DateBaseView;->mBatteryView:Lcom/flyme/systemuitools/aod/view/AODBatteryView;

    .line 98
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/datetime/DateBaseView;->mDateTextView:Lcom/flyme/systemuitools/aod/view/gradient/GradientTextView;

    const-string/jumbo v1, "system/fonts/Roboto-Regular.ttf"

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 99
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/datetime/DateBaseView;->mWeekTextView:Lcom/flyme/systemuitools/aod/view/gradient/GradientTextView;

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 100
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/datetime/DateBaseView;->mAmPmTextView:Lcom/flyme/systemuitools/aod/view/gradient/GradientTextView;

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 101
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/datetime/DateBaseView;->mBatteryPercent:Lcom/flyme/systemuitools/aod/view/gradient/GradientTextView;

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 2

    .line 78
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 79
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/presenter/AODStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->getDateColors()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flyme/systemuitools/aod/view/datetime/DateBaseView;->updateDateGradientColor([I)V

    .line 81
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/view/datetime/DateBaseView;->doAnimation()V

    return-void
.end method

.method public updateAmPm(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_17

    const-string v0, ""

    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_17

    .line 71
    :cond_b
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/datetime/DateBaseView;->mAmPmTextView:Lcom/flyme/systemuitools/aod/view/gradient/GradientTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/datetime/DateBaseView;->mAmPmTextView:Lcom/flyme/systemuitools/aod/view/gradient/GradientTextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1e

    .line 69
    :cond_17
    :goto_17
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/datetime/DateBaseView;->mAmPmTextView:Lcom/flyme/systemuitools/aod/view/gradient/GradientTextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1e
    return-void
.end method

.method public updateBatteryInfo(Lcom/flyme/systemuitools/aod/model/BatteryStatus;)V
    .registers 3

    .line 129
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/datetime/DateBaseView;->mBatteryView:Lcom/flyme/systemuitools/aod/view/AODBatteryView;

    invoke-virtual {v0, p1}, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->updateBatteryInfo(Lcom/flyme/systemuitools/aod/model/BatteryStatus;)V

    .line 130
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/datetime/DateBaseView;->mBatteryPercent:Lcom/flyme/systemuitools/aod/view/gradient/GradientTextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget p1, p1, Lcom/flyme/systemuitools/aod/model/BatteryStatus;->level:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateClockGradientColor([I)V
    .registers 2

    return-void
.end method

.method public updateDate(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 47
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/datetime/DateBaseView;->mWeekTextView:Lcom/flyme/systemuitools/aod/view/gradient/GradientTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 48
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->gap_between_date_week:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 49
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/datetime/DateBaseView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/utils/SystemUICommonUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "en-US"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 50
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/datetime/DateBaseView;->mDateTextView:Lcom/flyme/systemuitools/aod/view/gradient/GradientTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object p2, p0, Lcom/flyme/systemuitools/aod/view/datetime/DateBaseView;->mWeekTextView:Lcom/flyme/systemuitools/aod/view/gradient/GradientTextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 52
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_53

    .line 54
    :cond_49
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/datetime/DateBaseView;->mDateTextView:Lcom/flyme/systemuitools/aod/view/gradient/GradientTextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/view/datetime/DateBaseView;->mWeekTextView:Lcom/flyme/systemuitools/aod/view/gradient/GradientTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    :goto_53
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/view/datetime/DateBaseView;->mWeekTextView:Lcom/flyme/systemuitools/aod/view/gradient/GradientTextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public updateDateGradientColor([I)V
    .registers 3

    .line 111
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/datetime/DateBaseView;->mDateTextView:Lcom/flyme/systemuitools/aod/view/gradient/GradientTextView;

    invoke-virtual {v0, p1}, Lcom/flyme/systemuitools/aod/view/gradient/GradientTextView;->setColors([I)V

    .line 112
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/datetime/DateBaseView;->mWeekTextView:Lcom/flyme/systemuitools/aod/view/gradient/GradientTextView;

    invoke-virtual {v0, p1}, Lcom/flyme/systemuitools/aod/view/gradient/GradientTextView;->setColors([I)V

    .line 113
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/datetime/DateBaseView;->mAmPmTextView:Lcom/flyme/systemuitools/aod/view/gradient/GradientTextView;

    invoke-virtual {v0, p1}, Lcom/flyme/systemuitools/aod/view/gradient/GradientTextView;->setColors([I)V

    .line 114
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/datetime/DateBaseView;->mBatteryView:Lcom/flyme/systemuitools/aod/view/AODBatteryView;

    invoke-virtual {v0, p1}, Lcom/flyme/systemuitools/aod/view/AODBatteryView;->setColors([I)V

    .line 115
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/datetime/DateBaseView;->mBatteryPercent:Lcom/flyme/systemuitools/aod/view/gradient/GradientTextView;

    invoke-virtual {p0, p1}, Lcom/flyme/systemuitools/aod/view/gradient/GradientTextView;->setColors([I)V

    return-void
.end method

.method public updateNotificationIconGradientColor([I)V
    .registers 2

    return-void
.end method

.method public updateTime(Ljava/lang/CharSequence;)V
    .registers 2

    return-void
.end method
