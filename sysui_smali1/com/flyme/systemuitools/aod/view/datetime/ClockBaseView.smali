.class public Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;
.super Landroid/widget/RelativeLayout;
.source "ClockBaseView.java"

# interfaces
.implements Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter$IDateTimeCallback;
.implements Lcom/flyme/systemuitools/aod/presenter/GradientPresenter$IGradientCallback;


# instance fields
.field protected mAODStateController:Lcom/flyme/systemuitools/aod/presenter/AODStateController;

.field private mColon:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

.field private mContext:Landroid/content/Context;

.field private mHorizontalBG:Landroid/widget/ImageView;

.field private mHorizontalLayout:Landroid/widget/LinearLayout;

.field private mHorizontalSvga:Lcom/flyme/systemuitools/aod/view/AodSvgaView;

.field protected mHourOne:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

.field protected mHourTwo:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

.field protected mMinitueOne:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

.field protected mMinitueTwo:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mContext:Landroid/content/Context;

    .line 52
    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/presenter/AODStateController;

    move-result-object p2

    iput-object p2, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mAODStateController:Lcom/flyme/systemuitools/aod/presenter/AODStateController;

    .line 53
    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;->registerCallback(Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter$IDateTimeCallback;)V

    .line 54
    invoke-static {}, Lcom/flyme/systemuitools/aod/presenter/GradientPresenter;->getInstance()Lcom/flyme/systemuitools/aod/presenter/GradientPresenter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/flyme/systemuitools/aod/presenter/GradientPresenter;->registerCallback(Lcom/flyme/systemuitools/aod/presenter/GradientPresenter$IGradientCallback;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getSpringColonId(I)I
    .registers 2

    const/16 p0, 0x12

    if-ne p1, p0, :cond_7

    .line 321
    sget p0, Lcom/android/systemui/R$dimen;->aod_horizontal_time_colon_width3:I

    goto :goto_16

    :cond_7
    const/16 p0, 0x13

    if-ne p1, p0, :cond_e

    .line 323
    sget p0, Lcom/android/systemui/R$dimen;->aod_horizontal_time_colon_width4:I

    goto :goto_16

    :cond_e
    const/16 p0, 0x14

    if-ne p1, p0, :cond_15

    .line 325
    sget p0, Lcom/android/systemui/R$dimen;->aod_horizontal_time_colon_width5:I

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method private setTimeImage(Landroid/widget/ImageView;C)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/16 v0, 0x3a

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1d

    .line 107
    :try_start_8
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_18} :catch_19

    goto :goto_1d

    :catch_19
    move-exception v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mAODStateController:Lcom/flyme/systemuitools/aod/presenter/AODStateController;

    invoke-virtual {v0}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->isSpringHorizontalStyle2020()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mAODStateController:Lcom/flyme/systemuitools/aod/presenter/AODStateController;

    .line 115
    invoke-virtual {p0}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->isSpringVerticalStyle2020()Z

    move-result p0

    if-eqz p0, :cond_2e

    :cond_2d
    const/4 v1, 0x1

    :cond_2e
    packed-switch p2, :pswitch_data_a4

    goto/16 :goto_a2

    :pswitch_33  #0x39
    if-eqz v1, :cond_38

    .line 146
    sget p0, Lcom/android/systemui/R$drawable;->spring_lock_time_num_9:I

    goto :goto_3a

    :cond_38
    sget p0, Lcom/android/systemui/R$drawable;->lock_time_num_9:I

    :goto_3a
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_a2

    :pswitch_3f  #0x38
    if-eqz v1, :cond_44

    .line 143
    sget p0, Lcom/android/systemui/R$drawable;->spring_lock_time_num_8:I

    goto :goto_46

    :cond_44
    sget p0, Lcom/android/systemui/R$drawable;->lock_time_num_8:I

    :goto_46
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_a2

    :pswitch_4b  #0x37
    if-eqz v1, :cond_50

    .line 140
    sget p0, Lcom/android/systemui/R$drawable;->spring_lock_time_num_7:I

    goto :goto_52

    :cond_50
    sget p0, Lcom/android/systemui/R$drawable;->lock_time_num_7:I

    :goto_52
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_a2

    :pswitch_56  #0x36
    if-eqz v1, :cond_5b

    .line 137
    sget p0, Lcom/android/systemui/R$drawable;->spring_lock_time_num_6:I

    goto :goto_5d

    :cond_5b
    sget p0, Lcom/android/systemui/R$drawable;->lock_time_num_6:I

    :goto_5d
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_a2

    :pswitch_61  #0x35
    if-eqz v1, :cond_66

    .line 134
    sget p0, Lcom/android/systemui/R$drawable;->spring_lock_time_num_5:I

    goto :goto_68

    :cond_66
    sget p0, Lcom/android/systemui/R$drawable;->lock_time_num_5:I

    :goto_68
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_a2

    :pswitch_6c  #0x34
    if-eqz v1, :cond_71

    .line 131
    sget p0, Lcom/android/systemui/R$drawable;->spring_lock_time_num_4:I

    goto :goto_73

    :cond_71
    sget p0, Lcom/android/systemui/R$drawable;->lock_time_num_4:I

    :goto_73
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_a2

    :pswitch_77  #0x33
    if-eqz v1, :cond_7c

    .line 128
    sget p0, Lcom/android/systemui/R$drawable;->spring_lock_time_num_3:I

    goto :goto_7e

    :cond_7c
    sget p0, Lcom/android/systemui/R$drawable;->lock_time_num_3:I

    :goto_7e
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_a2

    :pswitch_82  #0x32
    if-eqz v1, :cond_87

    .line 125
    sget p0, Lcom/android/systemui/R$drawable;->spring_lock_time_num_2:I

    goto :goto_89

    :cond_87
    sget p0, Lcom/android/systemui/R$drawable;->lock_time_num_2:I

    :goto_89
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_a2

    :pswitch_8d  #0x31
    if-eqz v1, :cond_92

    .line 122
    sget p0, Lcom/android/systemui/R$drawable;->spring_lock_time_num_1:I

    goto :goto_94

    :cond_92
    sget p0, Lcom/android/systemui/R$drawable;->lock_time_num_1:I

    :goto_94
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_a2

    :pswitch_98  #0x30
    if-eqz v1, :cond_9d

    .line 119
    sget p0, Lcom/android/systemui/R$drawable;->spring_lock_time_num_0:I

    goto :goto_9f

    :cond_9d
    sget p0, Lcom/android/systemui/R$drawable;->lock_time_num_0:I

    :goto_9f
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_a2
    return-void

    nop

    :pswitch_data_a4
    .packed-switch 0x30
        :pswitch_98  #00000030
        :pswitch_8d  #00000031
        :pswitch_82  #00000032
        :pswitch_77  #00000033
        :pswitch_6c  #00000034
        :pswitch_61  #00000035
        :pswitch_56  #00000036
        :pswitch_4b  #00000037
        :pswitch_3f  #00000038
        :pswitch_33  #00000039
    .end packed-switch
.end method


# virtual methods
.method protected doTimeAnimation(I)V
    .registers 8

    .line 277
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;->getAnimationOne()[Landroid/view/animation/AnimationSet;

    move-result-object v0

    .line 278
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;->getSvgaInterpolator()Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x10

    if-ne p1, v3, :cond_3b

    .line 280
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mHourOne:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 281
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mHourTwo:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    aget-object v2, v0, v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 282
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mMinitueOne:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 283
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mMinitueTwo:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    aget-object p1, v0, v1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_ee

    :cond_3b
    const/16 v3, 0x11

    if-ne p1, v3, :cond_5d

    .line 285
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mHourOne:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 286
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mHourTwo:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 287
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mMinitueOne:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 288
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mMinitueTwo:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    aget-object p1, v0, v2

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_ee

    .line 289
    :cond_5d
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/presenter/AODStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->isSpringHorizontalStyle2020()Z

    move-result v0

    if-nez v0, :cond_8a

    .line 290
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/presenter/AODStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->isSpringVerticalStyle2020()Z

    move-result v0

    if-eqz v0, :cond_7a

    goto :goto_8a

    .line 313
    :cond_7a
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;->getCommonAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    .line 314
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_ee

    .line 291
    :cond_8a
    :goto_8a
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 292
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;->getSvgaInterpolator()Landroid/view/animation/PathInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/16 v1, 0x12

    if-ne p1, v1, :cond_b0

    const-wide/16 v1, 0x294

    .line 295
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const-wide/16 v1, 0x14a

    .line 296
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    goto :goto_da

    :cond_b0
    const/16 v1, 0x13

    const-wide/16 v2, 0x212

    if-ne p1, v1, :cond_bf

    const-wide/16 v4, 0x1cc

    .line 298
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 299
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    goto :goto_da

    :cond_bf
    const/16 v1, 0x14

    if-ne p1, v1, :cond_cc

    const-wide/16 v4, 0x2bc

    .line 301
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 302
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    goto :goto_da

    :cond_cc
    const/16 v1, 0x15

    if-ne p1, v1, :cond_da

    const-wide/16 v1, 0x31d

    .line 304
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const-wide/16 v1, 0xfa

    .line 305
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 307
    :cond_da
    :goto_da
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mHourOne:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 308
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mHourTwo:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 309
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mMinitueOne:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 310
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mMinitueTwo:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_ee
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .line 82
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 84
    invoke-virtual {p0}, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->updateViews()V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .line 89
    sget v0, Lcom/android/systemui/R$id;->hour_one:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mHourOne:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    .line 90
    sget v0, Lcom/android/systemui/R$id;->hour_two:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mHourTwo:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    .line 91
    sget v0, Lcom/android/systemui/R$id;->minitue_one:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mMinitueOne:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    .line 92
    sget v0, Lcom/android/systemui/R$id;->minitue_two:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mMinitueTwo:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    .line 93
    sget v0, Lcom/android/systemui/R$id;->horizontal_bg:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mHorizontalBG:Landroid/widget/ImageView;

    .line 94
    sget v0, Lcom/android/systemui/R$id;->time_colon:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mColon:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    .line 95
    sget v0, Lcom/android/systemui/R$id;->horizantal_svga_bg:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemuitools/aod/view/AodSvgaView;

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mHorizontalSvga:Lcom/flyme/systemuitools/aod/view/AodSvgaView;

    .line 96
    sget v0, Lcom/android/systemui/R$id;->horizontal_hour_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mHorizontalLayout:Landroid/widget/LinearLayout;

    .line 98
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mAODStateController:Lcom/flyme/systemuitools/aod/presenter/AODStateController;

    invoke-virtual {v0}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->getClockColors()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->updateClockGradientColor([I)V

    return-void
.end method

.method public updateAmPm(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public updateClockGradientColor([I)V
    .registers 3

    .line 219
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mHourOne:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    invoke-virtual {v0, p1}, Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;->setColors([I)V

    .line 220
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mHourTwo:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    invoke-virtual {v0, p1}, Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;->setColors([I)V

    .line 221
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mMinitueOne:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    invoke-virtual {v0, p1}, Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;->setColors([I)V

    .line 222
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mMinitueTwo:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    invoke-virtual {v0, p1}, Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;->setColors([I)V

    .line 223
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mColon:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    if-eqz p0, :cond_1b

    .line 224
    invoke-virtual {p0, p1}, Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;->setColors([I)V

    :cond_1b
    return-void
.end method

.method public updateDate(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public updateDateGradientColor([I)V
    .registers 2

    return-void
.end method

.method public updateNotificationIconGradientColor([I)V
    .registers 2

    return-void
.end method

.method public updateTime(Ljava/lang/CharSequence;)V
    .registers 4

    .line 68
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mHourOne:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->setTimeImage(Landroid/widget/ImageView;C)V

    .line 69
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mHourTwo:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->setTimeImage(Landroid/widget/ImageView;C)V

    .line 70
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mMinitueOne:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->setTimeImage(Landroid/widget/ImageView;C)V

    .line 71
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mMinitueTwo:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    const/4 v1, 0x4

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->setTimeImage(Landroid/widget/ImageView;C)V

    .line 72
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method protected updateTimeWidthAndHeight(I)V
    .registers 7

    .line 251
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mAODStateController:Lcom/flyme/systemuitools/aod/presenter/AODStateController;

    invoke-virtual {v0, p1}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->isHorizontalStyleWithBG(I)Z

    move-result v0

    .line 252
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mAODStateController:Lcom/flyme/systemuitools/aod/presenter/AODStateController;

    invoke-virtual {v1}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->isSpringHorizontalStyle2020()Z

    move-result v1

    .line 253
    iget-object v2, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mAODStateController:Lcom/flyme/systemuitools/aod/presenter/AODStateController;

    invoke-virtual {v2, p1}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->isHorizontalSytleWithSvgaBg(I)Z

    move-result v2

    .line 256
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v1, :cond_1b

    .line 257
    sget v4, Lcom/android/systemui/R$dimen;->aod_time_width3:I

    goto :goto_27

    :cond_1b
    if-eqz v2, :cond_20

    .line 258
    sget v4, Lcom/android/systemui/R$dimen;->aod_time_width2:I

    goto :goto_27

    :cond_20
    if-eqz v0, :cond_25

    .line 259
    sget v4, Lcom/android/systemui/R$dimen;->aod_horizontal_time_width1:I

    goto :goto_27

    :cond_25
    sget v4, Lcom/android/systemui/R$dimen;->aod_time_width:I

    .line 256
    :goto_27
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 260
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v1, :cond_36

    .line 261
    invoke-direct {p0, p1}, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->getSpringColonId(I)I

    move-result p1

    goto :goto_42

    :cond_36
    if-eqz v2, :cond_3b

    .line 262
    sget p1, Lcom/android/systemui/R$dimen;->aod_horizontal_time_colon_width2:I

    goto :goto_42

    :cond_3b
    if-eqz v0, :cond_40

    .line 263
    sget p1, Lcom/android/systemui/R$dimen;->aod_horizontal_time_colon_width1:I

    goto :goto_42

    :cond_40
    sget p1, Lcom/android/systemui/R$dimen;->aod_time_colon_width:I

    .line 260
    :goto_42
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 264
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v1, :cond_4f

    .line 265
    sget v0, Lcom/android/systemui/R$dimen;->aod_time_height3:I

    goto :goto_5b

    :cond_4f
    if-eqz v2, :cond_54

    .line 266
    sget v0, Lcom/android/systemui/R$dimen;->aod_time_height2:I

    goto :goto_5b

    :cond_54
    if-eqz v0, :cond_59

    .line 267
    sget v0, Lcom/android/systemui/R$dimen;->aod_horizontal_time_height1:I

    goto :goto_5b

    :cond_59
    sget v0, Lcom/android/systemui/R$dimen;->aod_time_height:I

    .line 264
    :goto_5b
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 269
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mHourOne:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    invoke-virtual {p0, v1, v3, v0}, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->updateViewWidthAndHeight(Landroid/view/View;II)V

    .line 270
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mHourTwo:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    invoke-virtual {p0, v1, v3, v0}, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->updateViewWidthAndHeight(Landroid/view/View;II)V

    .line 271
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mMinitueOne:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    invoke-virtual {p0, v1, v3, v0}, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->updateViewWidthAndHeight(Landroid/view/View;II)V

    .line 272
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mMinitueTwo:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    invoke-virtual {p0, v1, v3, v0}, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->updateViewWidthAndHeight(Landroid/view/View;II)V

    .line 273
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mColon:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    invoke-virtual {p0, v1, p1, v0}, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->updateViewWidthAndHeight(Landroid/view/View;II)V

    return-void
.end method

.method protected updateViewWidthAndHeight(Landroid/view/View;II)V
    .registers 4

    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 245
    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 246
    iput p3, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 247
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected updateViews()V
    .registers 7

    .line 154
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mAODStateController:Lcom/flyme/systemuitools/aod/presenter/AODStateController;

    invoke-virtual {v0}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->getClockStyle()I

    move-result v0

    .line 156
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mAODStateController:Lcom/flyme/systemuitools/aod/presenter/AODStateController;

    invoke-virtual {v1, v0}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->isHorizontalStyle(I)Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_154

    const/4 v1, 0x0

    .line 157
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 158
    iget-object v3, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mHorizontalSvga:Lcom/flyme/systemuitools/aod/view/AodSvgaView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    iget-object v3, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mHorizontalBG:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    iget-object v2, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mColon:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    sget v3, Lcom/android/systemui/R$drawable;->lock_minute_num_colon:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 162
    iget-object v2, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mHorizontalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 163
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->aod_horizontal_time_margintop1:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 164
    iget-object v3, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mHorizontalSvga:Lcom/flyme/systemuitools/aod/view/AodSvgaView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 165
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$dimen;->aod_svga_spring_width1:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 166
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$dimen;->aod_svga_spring_height1:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    if-eqz v0, :cond_141

    const/16 v4, 0xb

    if-eq v0, v4, :cond_141

    const/16 v4, 0xc

    if-ne v0, v4, :cond_6d

    goto/16 :goto_141

    :cond_6d
    const/4 v4, 0x5

    if-ne v0, v4, :cond_7e

    .line 173
    iget-object v4, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mHorizontalBG:Landroid/widget/ImageView;

    sget v5, Lcom/android/systemui/R$drawable;->aod_background0:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 174
    iget-object v4, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mHorizontalBG:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_143

    :cond_7e
    const/4 v4, 0x6

    if-ne v0, v4, :cond_8f

    .line 176
    iget-object v4, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mHorizontalBG:Landroid/widget/ImageView;

    sget v5, Lcom/android/systemui/R$drawable;->aod_background1:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 177
    iget-object v4, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mHorizontalBG:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_143

    :cond_8f
    const/16 v4, 0xd

    if-ne v0, v4, :cond_a1

    .line 179
    iget-object v4, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mHorizontalBG:Landroid/widget/ImageView;

    sget v5, Lcom/android/systemui/R$drawable;->aod_background3:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 180
    iget-object v4, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mHorizontalBG:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_143

    :cond_a1
    const/16 v4, 0xe

    if-ne v0, v4, :cond_b3

    .line 182
    iget-object v4, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mHorizontalBG:Landroid/widget/ImageView;

    sget v5, Lcom/android/systemui/R$drawable;->aod_background4:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 183
    iget-object v4, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mHorizontalBG:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_143

    .line 184
    :cond_b3
    iget-object v4, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mAODStateController:Lcom/flyme/systemuitools/aod/presenter/AODStateController;

    invoke-virtual {v4, v0}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->isHorizontalSytleWithSvgaBg(I)Z

    move-result v4

    if-eqz v4, :cond_d7

    .line 185
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$dimen;->aod_horizontal_time_margintop2:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 186
    iget-object v4, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mColon:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 187
    iget-object v4, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mHorizontalSvga:Lcom/flyme/systemuitools/aod/view/AodSvgaView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 188
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mHorizontalSvga:Lcom/flyme/systemuitools/aod/view/AodSvgaView;

    invoke-virtual {v1}, Lcom/flyme/systemuitools/aod/view/AodSvgaView;->playAnimation()V

    goto :goto_143

    .line 189
    :cond_d7
    iget-object v4, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mAODStateController:Lcom/flyme/systemuitools/aod/presenter/AODStateController;

    invoke-virtual {v4}, Lcom/flyme/systemuitools/aod/presenter/AODStateController;->isSpringHorizontalStyle2020()Z

    move-result v4

    if-eqz v4, :cond_143

    const/16 v4, 0x12

    if-ne v0, v4, :cond_f0

    .line 191
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$dimen;->aod_horizontal_time_margintop3:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_111

    :cond_f0
    const/16 v4, 0x13

    if-ne v0, v4, :cond_101

    .line 193
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$dimen;->aod_horizontal_time_margintop4:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_111

    :cond_101
    const/16 v4, 0x14

    if-ne v0, v4, :cond_111

    .line 195
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$dimen;->aod_horizontal_time_margintop5:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 197
    :cond_111
    :goto_111
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$dimen;->aod_svga_spring_width2:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 198
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$dimen;->aod_svga_spring_height2:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 200
    iget-object v4, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mColon:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 201
    iget-object v4, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mHorizontalSvga:Lcom/flyme/systemuitools/aod/view/AodSvgaView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mHorizontalSvga:Lcom/flyme/systemuitools/aod/view/AodSvgaView;

    invoke-virtual {v1}, Lcom/flyme/systemuitools/aod/view/AodSvgaView;->playAnimation()V

    goto :goto_143

    .line 171
    :cond_141
    :goto_141
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 205
    :cond_143
    :goto_143
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mHorizontalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->mHorizontalSvga:Lcom/flyme/systemuitools/aod/view/AodSvgaView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    invoke-virtual {p0, v0}, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->updateTimeWidthAndHeight(I)V

    .line 210
    invoke-virtual {p0, v0}, Lcom/flyme/systemuitools/aod/view/datetime/ClockBaseView;->doTimeAnimation(I)V

    goto :goto_157

    .line 212
    :cond_154
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_157
    return-void
.end method
