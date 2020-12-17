.class public Lcom/flyme/systemuitools/aod/view/datetime/VerticalClockView;
.super Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;
.source "VerticalClockView.java"


# instance fields
.field private mHourLayout:Landroid/widget/LinearLayout;

.field private mMinuteLayout:Landroid/widget/LinearLayout;

.field private mVerticalBG:Landroid/widget/ImageView;

.field private mVerticalSvga:Lcom/flyme/systemuitools/aod/view/AodSvgaView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 31
    invoke-direct {p0, p1}, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected doTimeAnimation(I)V
    .registers 4

    .line 127
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;->getAnimationTwo()[Landroid/view/animation/AnimationSet;

    move-result-object v0

    const/16 v1, 0xf

    if-ne p1, v1, :cond_21

    .line 130
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/view/datetime/VerticalClockView;->mHourLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 131
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/datetime/VerticalClockView;->mMinuteLayout:Landroid/widget/LinearLayout;

    const/4 p1, 0x1

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_30

    .line 133
    :cond_21
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;->getCommonAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    .line 134
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_30
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .line 44
    invoke-super {p0}, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->onFinishInflate()V

    .line 45
    sget v0, Lcom/android/systemui/R$id;->vertical_bg:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/datetime/VerticalClockView;->mVerticalBG:Landroid/widget/ImageView;

    .line 46
    sget v0, Lcom/android/systemui/R$id;->hour_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/datetime/VerticalClockView;->mHourLayout:Landroid/widget/LinearLayout;

    .line 47
    sget v0, Lcom/android/systemui/R$id;->minitue_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/datetime/VerticalClockView;->mMinuteLayout:Landroid/widget/LinearLayout;

    .line 48
    sget v0, Lcom/android/systemui/R$id;->vertical_svga_bg:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemuitools/aod/view/AodSvgaView;

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/datetime/VerticalClockView;->mVerticalSvga:Lcom/flyme/systemuitools/aod/view/AodSvgaView;

    return-void
.end method

.method protected updateTimeWidthAndHeight(I)V
    .registers 5

    .line 109
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mAODStateController:Lcom/flyme/systemuitools/aod/presenter/AODStateController;

    invoke-virtual {v0, p1}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->isVerticalSytleWithSvgaBg(I)Z

    move-result p1

    .line 110
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mAODStateController:Lcom/flyme/systemuitools/aod/presenter/AODStateController;

    invoke-virtual {v0}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->isSpringVerticalStyle2020()Z

    move-result v0

    .line 112
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_15

    .line 113
    sget v2, Lcom/android/systemui/R$dimen;->aod_time_width3:I

    goto :goto_1c

    :cond_15
    if-eqz p1, :cond_1a

    .line 114
    sget v2, Lcom/android/systemui/R$dimen;->aod_time_width2:I

    goto :goto_1c

    :cond_1a
    sget v2, Lcom/android/systemui/R$dimen;->aod_time_width:I

    .line 112
    :goto_1c
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 115
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v0, :cond_29

    .line 116
    sget p1, Lcom/android/systemui/R$dimen;->aod_time_height3:I

    goto :goto_30

    :cond_29
    if-eqz p1, :cond_2e

    .line 117
    sget p1, Lcom/android/systemui/R$dimen;->aod_time_height2:I

    goto :goto_30

    :cond_2e
    sget p1, Lcom/android/systemui/R$dimen;->aod_time_height:I

    .line 115
    :goto_30
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 119
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mHourOne:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    invoke-virtual {p0, v0, v1, p1}, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->updateViewWidthAndHeight(Landroid/view/View;II)V

    .line 120
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mHourTwo:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    invoke-virtual {p0, v0, v1, p1}, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->updateViewWidthAndHeight(Landroid/view/View;II)V

    .line 121
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mMinitueOne:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    invoke-virtual {p0, v0, v1, p1}, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->updateViewWidthAndHeight(Landroid/view/View;II)V

    .line 122
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mMinitueTwo:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    invoke-virtual {p0, v0, v1, p1}, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->updateViewWidthAndHeight(Landroid/view/View;II)V

    return-void
.end method

.method protected updateViews()V
    .registers 8

    .line 53
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mAODStateController:Lcom/flyme/systemuitools/aod/presenter/AODStateController;

    invoke-virtual {v0}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->getClockStyle()I

    move-result v0

    .line 55
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/datetime/VerticalClockView;->mHourLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 56
    iget-object v2, p0, Lcom/flyme/systemuitools/aod/view/datetime/VerticalClockView;->mMinuteLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->aod_vertical_minute_margintop1:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 57
    iget-object v2, p0, Lcom/flyme/systemuitools/aod/view/datetime/VerticalClockView;->mVerticalSvga:Lcom/flyme/systemuitools/aod/view/AodSvgaView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 58
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/android/systemui/R$dimen;->aod_svga_spring_width1:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 59
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/android/systemui/R$dimen;->aod_svga_spring_height1:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 61
    iget-object v3, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mAODStateController:Lcom/flyme/systemuitools/aod/presenter/AODStateController;

    invoke-virtual {v3, v0}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->isVerticalStyle(I)Z

    move-result v3

    const/16 v5, 0x8

    if-eqz v3, :cond_14c

    .line 62
    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 63
    iget-object v3, p0, Lcom/flyme/systemuitools/aod/view/datetime/VerticalClockView;->mVerticalSvga:Lcom/flyme/systemuitools/aod/view/AodSvgaView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eq v0, v5, :cond_134

    const/16 v3, 0x9

    if-eq v0, v3, :cond_134

    const/16 v3, 0xa

    if-ne v0, v3, :cond_64

    goto/16 :goto_134

    :cond_64
    const/4 v3, 0x7

    if-ne v0, v3, :cond_85

    .line 70
    iget-object v3, p0, Lcom/flyme/systemuitools/aod/view/datetime/VerticalClockView;->mVerticalBG:Landroid/widget/ImageView;

    sget v5, Lcom/android/systemui/R$drawable;->aod_background2:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 71
    iget-object v3, p0, Lcom/flyme/systemuitools/aod/view/datetime/VerticalClockView;->mVerticalBG:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/android/systemui/R$dimen;->aod_vertical_time_margintop1:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_13b

    :cond_85
    const/4 v3, 0x4

    if-ne v0, v3, :cond_a6

    .line 74
    iget-object v3, p0, Lcom/flyme/systemuitools/aod/view/datetime/VerticalClockView;->mVerticalBG:Landroid/widget/ImageView;

    sget v5, Lcom/android/systemui/R$drawable;->aod_spring_background:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    iget-object v3, p0, Lcom/flyme/systemuitools/aod/view/datetime/VerticalClockView;->mVerticalBG:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/android/systemui/R$dimen;->aod_vertical_time_margintop3:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_13b

    .line 77
    :cond_a6
    iget-object v3, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mAODStateController:Lcom/flyme/systemuitools/aod/presenter/AODStateController;

    invoke-virtual {v3, v0}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->isVerticalSytleWithSvgaBg(I)Z

    move-result v3

    if-eqz v3, :cond_dd

    .line 78
    iget-object v3, p0, Lcom/flyme/systemuitools/aod/view/datetime/VerticalClockView;->mVerticalBG:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/android/systemui/R$dimen;->aod_vertical_time_margintop2:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 80
    iget-object v3, p0, Lcom/flyme/systemuitools/aod/view/datetime/VerticalClockView;->mMinuteLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/systemui/R$dimen;->aod_vertical_minute_margintop2:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v3, v4, v5, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 81
    iget-object v3, p0, Lcom/flyme/systemuitools/aod/view/datetime/VerticalClockView;->mVerticalSvga:Lcom/flyme/systemuitools/aod/view/AodSvgaView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    iget-object v3, p0, Lcom/flyme/systemuitools/aod/view/datetime/VerticalClockView;->mVerticalSvga:Lcom/flyme/systemuitools/aod/view/AodSvgaView;

    invoke-virtual {v3}, Lcom/flyme/systemuitools/aod/view/AodSvgaView;->playAnimation()V

    goto :goto_13b

    .line 83
    :cond_dd
    iget-object v3, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mAODStateController:Lcom/flyme/systemuitools/aod/presenter/AODStateController;

    invoke-virtual {v3}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->isSpringVerticalStyle2020()Z

    move-result v3

    if-eqz v3, :cond_13b

    .line 84
    iget-object v3, p0, Lcom/flyme/systemuitools/aod/view/datetime/VerticalClockView;->mVerticalBG:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/android/systemui/R$dimen;->aod_vertical_time_margintop4:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 86
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/android/systemui/R$dimen;->aod_svga_spring_width2:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 87
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/android/systemui/R$dimen;->aod_svga_spring_height2:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 88
    iget-object v3, p0, Lcom/flyme/systemuitools/aod/view/datetime/VerticalClockView;->mMinuteLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/systemui/R$dimen;->aod_vertical_minute_margintop3:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v3, v4, v5, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 89
    iget-object v3, p0, Lcom/flyme/systemuitools/aod/view/datetime/VerticalClockView;->mVerticalSvga:Lcom/flyme/systemuitools/aod/view/AodSvgaView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    iget-object v3, p0, Lcom/flyme/systemuitools/aod/view/datetime/VerticalClockView;->mVerticalSvga:Lcom/flyme/systemuitools/aod/view/AodSvgaView;

    invoke-virtual {v3}, Lcom/flyme/systemuitools/aod/view/AodSvgaView;->playAnimation()V

    goto :goto_13b

    .line 67
    :cond_134
    :goto_134
    iget-object v3, p0, Lcom/flyme/systemuitools/aod/view/datetime/VerticalClockView;->mVerticalBG:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 92
    :cond_13b
    :goto_13b
    iget-object v3, p0, Lcom/flyme/systemuitools/aod/view/datetime/VerticalClockView;->mHourLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/datetime/VerticalClockView;->mVerticalSvga:Lcom/flyme/systemuitools/aod/view/AodSvgaView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    invoke-virtual {p0, v0}, Lcom/flyme/systemuitools/aod/view/datetime/VerticalClockView;->updateTimeWidthAndHeight(I)V

    .line 97
    invoke-virtual {p0, v0}, Lcom/flyme/systemuitools/aod/view/datetime/VerticalClockView;->doTimeAnimation(I)V

    goto :goto_14f

    .line 100
    :cond_14c
    invoke-virtual {p0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 103
    :goto_14f
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4, v4}, Landroid/widget/LinearLayout;->measure(II)V

    .line 104
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method
