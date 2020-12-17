.class public Lcom/android/systemui/statusbar/StatusBarMobileView;
.super Landroid/widget/FrameLayout;
.source "StatusBarMobileView.java"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/statusbar/StatusIconDisplayable;


# static fields
.field private static final DEBUG:Z

.field private static mMobileGroupRoot:Landroid/view/ViewGroup;


# instance fields
.field private mActivityInout:Landroid/widget/ImageView;

.field private mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

.field private mMobileGroup:Landroid/widget/LinearLayout;

.field private mMobileSignal:Landroid/widget/ImageView;

.field private mMobileType:Landroid/widget/ImageView;

.field private mNetworkTypeWhenShowVoiceType:Landroid/widget/ImageView;

.field private mSlot:Ljava/lang/String;

.field private mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

.field private mVisibleState:I

.field private mVoiceSignal:Landroid/widget/ImageView;

.field private mVoiceType:Landroid/widget/ImageView;

.field private mVolte:Landroid/widget/ImageView;

.field private mVolteMerge:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "StatusBarMobileView"

    const/4 v1, 0x3

    .line 658
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarMobileView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 92
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 63
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVisibleState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 96
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 63
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVisibleState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 100
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 63
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVisibleState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 105
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, -0x1

    .line 63
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVisibleState:I

    return-void
.end method

.method public static fromContext(Landroid/content/Context;Ljava/lang/String;ZI)Lcom/android/systemui/statusbar/StatusBarMobileView;
    .registers 5

    .line 71
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 80
    invoke-static {}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->getPhoneStateExt()Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IPhoneStateExt;

    move-result-object v0

    .line 81
    invoke-interface {v0, p0, p2, p3}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IPhoneStateExt;->createSimViewGroup(Landroid/content/Context;ZI)Landroid/view/ViewGroup;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/StatusBarMobileView;

    .line 82
    sput-object p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileGroupRoot:Landroid/view/ViewGroup;

    .line 83
    invoke-direct {p0, p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->mzInit(Landroid/view/ViewGroup;)V

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarMobileView;->setSlot(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 87
    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setVisibleState(I)V

    return-object p0
.end method

.method private initDotView()V
    .registers 5

    .line 138
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSlot:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(I)V

    .line 141
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->status_bar_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 142
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v0, 0x800013

    .line 143
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private mzInit(Landroid/view/ViewGroup;)V
    .registers 4

    const-string v0, "StatusBarMobileView"

    const-string v1, "mzInit: "

    .line 423
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    sput-object p1, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileGroupRoot:Landroid/view/ViewGroup;

    .line 425
    sget v0, Lcom/android/systemui/R$id;->mobile_group:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileGroup:Landroid/widget/LinearLayout;

    .line 426
    sget v0, Lcom/android/systemui/R$id;->inout_container:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mActivityInout:Landroid/widget/ImageView;

    .line 427
    sget v0, Lcom/android/systemui/R$id;->mobile_signal:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileSignal:Landroid/widget/ImageView;

    .line 428
    sget v0, Lcom/android/systemui/R$id;->voice_signal:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 429
    sget v0, Lcom/android/systemui/R$id;->voice_signal:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVoiceSignal:Landroid/widget/ImageView;

    .line 431
    :cond_39
    sget v0, Lcom/android/systemui/R$id;->mobile_type:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    .line 432
    sget v0, Lcom/android/systemui/R$id;->voice_type:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_55

    .line 433
    sget v0, Lcom/android/systemui/R$id;->voice_type:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVoiceType:Landroid/widget/ImageView;

    .line 435
    :cond_55
    sget v0, Lcom/android/systemui/R$id;->network_type:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mNetworkTypeWhenShowVoiceType:Landroid/widget/ImageView;

    .line 436
    sget v0, Lcom/android/systemui/R$id;->mobile_volte:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolte:Landroid/widget/ImageView;

    .line 437
    sget v0, Lcom/android/systemui/R$id;->mobile_volte_merge:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolteMerge:Landroid/widget/ImageView;

    .line 438
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->initDotView()V

    return-void
.end method

.method private mzInitViewState()V
    .registers 6

    .line 464
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarMobileView;->DEBUG:Z

    if-eqz v0, :cond_1c

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mzInitViewState: mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBarMobileView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_1c
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->contentDescription:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 471
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->visible:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_32

    .line 472
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_37

    .line 474
    :cond_32
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 478
    :goto_37
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileSignal:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->strengthId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 481
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    if-eqz v3, :cond_5c

    .line 482
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 483
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 484
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_61

    .line 486
    :cond_5c
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 490
    :goto_61
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->activityInoutId:I

    if-eqz v0, :cond_72

    .line 491
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mActivityInout:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 492
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mActivityInout:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_77

    .line 494
    :cond_72
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mActivityInout:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 498
    :goto_77
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volteMergeId:I

    if-nez v3, :cond_96

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->canShowHD:Z

    if-eqz v3, :cond_96

    .line 499
    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volteId:I

    if-eqz v0, :cond_90

    .line 500
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolte:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 501
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolte:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_9b

    .line 503
    :cond_90
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolte:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_9b

    .line 506
    :cond_96
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolte:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 511
    :goto_9b
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->slotId:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_b5

    iget v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volteMergeId:I

    if-eqz v3, :cond_b5

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->canShowHD:Z

    if-eqz v0, :cond_b5

    .line 512
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolteMerge:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 513
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolteMerge:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_ba

    .line 515
    :cond_b5
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolteMerge:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 519
    :goto_ba
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVoiceSignal:Landroid/widget/ImageView;

    if-eqz v0, :cond_d6

    .line 520
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget-boolean v4, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->voiceVisible:Z

    if-eqz v4, :cond_d1

    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->voiceStrengthId:I

    if-eqz v3, :cond_d1

    .line 521
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 522
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVoiceSignal:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_d6

    .line 524
    :cond_d1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVoiceSignal:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 529
    :cond_d6
    :goto_d6
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVoiceType:Landroid/widget/ImageView;

    if-eqz v0, :cond_ec

    .line 530
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->voiceTypeId:I

    if-eqz v3, :cond_e9

    .line 531
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 532
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVoiceType:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_ec

    .line 534
    :cond_e9
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 539
    :cond_ec
    :goto_ec
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVoiceType:Landroid/widget/ImageView;

    if-eqz v0, :cond_106

    .line 540
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->networkTypeIdWhenShowVoiceType:I

    if-eqz v0, :cond_101

    .line 541
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mNetworkTypeWhenShowVoiceType:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 542
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mNetworkTypeWhenShowVoiceType:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_106

    .line 544
    :cond_101
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mNetworkTypeWhenShowVoiceType:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_106
    :goto_106
    return-void
.end method

.method private mzUpdateState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)Z
    .registers 9

    .line 551
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarMobileView;->DEBUG:Z

    if-eqz v0, :cond_24

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mzUpdateState: mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -- state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBarMobileView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_24
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->contentDescription:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 560
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->visible:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->visible:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eq v0, v1, :cond_40

    .line 561
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileGroup:Landroid/widget/LinearLayout;

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->visible:Z

    if-eqz v1, :cond_3c

    move v1, v3

    goto :goto_3d

    :cond_3c
    move v1, v2

    :goto_3d
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 565
    :cond_40
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->strengthId:I

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->strengthId:I

    if-eq v0, v1, :cond_4d

    .line 566
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileSignal:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 570
    :cond_4d
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    const/4 v4, 0x1

    if-eq v0, v1, :cond_7d

    if-eqz v1, :cond_5d

    if-nez v0, :cond_5b

    goto :goto_5d

    :cond_5b
    move v0, v3

    goto :goto_5e

    :cond_5d
    :goto_5d
    move v0, v4

    :goto_5e
    or-int/2addr v0, v3

    .line 572
    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    if-eqz v1, :cond_77

    .line 573
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    iget-object v5, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 574
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    iget v5, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 575
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7e

    .line 577
    :cond_77
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7e

    :cond_7d
    move v0, v3

    .line 582
    :goto_7e
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->activityInoutId:I

    iget v5, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->activityInoutId:I

    if-eq v1, v5, :cond_98

    if-eqz v5, :cond_93

    .line 584
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mActivityInout:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 585
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mActivityInout:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_98

    .line 587
    :cond_93
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mActivityInout:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 592
    :cond_98
    :goto_98
    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volteMergeId:I

    if-nez v1, :cond_b5

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->canShowHD:Z

    if-eqz v1, :cond_b5

    .line 593
    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volteId:I

    if-eqz v1, :cond_af

    .line 594
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolte:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 595
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolte:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_ba

    .line 597
    :cond_af
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolte:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_ba

    .line 600
    :cond_b5
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolte:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 605
    :goto_ba
    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->slotId:I

    if-ne v1, v4, :cond_e4

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v5, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volteMergeId:I

    iget v6, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volteMergeId:I

    if-ne v5, v6, :cond_cc

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->canShowHD:Z

    iget-boolean v5, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->canShowHD:Z

    if-eq v1, v5, :cond_e4

    .line 607
    :cond_cc
    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volteMergeId:I

    if-eqz v1, :cond_df

    iget-boolean v5, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->canShowHD:Z

    if-eqz v5, :cond_df

    .line 608
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolteMerge:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 609
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolteMerge:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_e4

    .line 611
    :cond_df
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolteMerge:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 616
    :cond_e4
    :goto_e4
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVoiceSignal:Landroid/widget/ImageView;

    if-eqz v1, :cond_f7

    iget-boolean v5, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->voiceVisible:Z

    if-eqz v5, :cond_f7

    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v5, v5, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->voiceStrengthId:I

    iget v6, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->voiceStrengthId:I

    if-eq v5, v6, :cond_f7

    .line 617
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 621
    :cond_f7
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVoiceType:Landroid/widget/ImageView;

    if-eqz v1, :cond_120

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->voiceTypeId:I

    iget v5, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->voiceTypeId:I

    if-eq v1, v5, :cond_120

    if-eqz v5, :cond_10a

    if-nez v1, :cond_108

    goto :goto_10a

    :cond_108
    move v1, v3

    goto :goto_10b

    :cond_10a
    :goto_10a
    move v1, v4

    :goto_10b
    or-int/2addr v0, v1

    .line 623
    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->voiceTypeId:I

    if-eqz v1, :cond_11b

    .line 624
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVoiceType:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 625
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVoiceType:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_120

    .line 627
    :cond_11b
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVoiceType:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 632
    :cond_120
    :goto_120
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVoiceType:Landroid/widget/ImageView;

    if-eqz v1, :cond_149

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->networkTypeIdWhenShowVoiceType:I

    iget v5, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->networkTypeIdWhenShowVoiceType:I

    if-eq v1, v5, :cond_149

    if-eqz v5, :cond_133

    if-nez v1, :cond_131

    goto :goto_133

    :cond_131
    move v1, v3

    goto :goto_134

    :cond_133
    :goto_133
    move v1, v4

    :goto_134
    or-int/2addr v0, v1

    .line 634
    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->networkTypeIdWhenShowVoiceType:I

    if-eqz v1, :cond_144

    .line 635
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mNetworkTypeWhenShowVoiceType:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 636
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mNetworkTypeWhenShowVoiceType:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_149

    .line 638
    :cond_144
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mNetworkTypeWhenShowVoiceType:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 643
    :cond_149
    :goto_149
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->visible:Z

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->visible:Z

    if-ne v1, v2, :cond_177

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v2, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->strengthId:I

    iget v5, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->strengthId:I

    if-ne v2, v5, :cond_177

    iget v2, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->activityInoutId:I

    iget v5, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->activityInoutId:I

    if-ne v2, v5, :cond_177

    iget v2, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->voiceStrengthId:I

    iget v5, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->voiceStrengthId:I

    if-ne v2, v5, :cond_177

    iget v2, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volteId:I

    iget v5, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volteId:I

    if-ne v2, v5, :cond_177

    iget v2, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volteMergeId:I

    iget v5, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->volteMergeId:I

    if-ne v2, v5, :cond_177

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->canShowHD:Z

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->canShowHD:Z

    if-eq v1, v2, :cond_178

    :cond_177
    move v3, v4

    :cond_178
    or-int/2addr v0, v3

    .line 651
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    return v0
.end method

.method private needFixInVisibleState()Z
    .registers 2

    .line 404
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->visible:Z

    if-nez v0, :cond_e

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private needFixVisibleState()Z
    .registers 2

    .line 396
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->visible:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private resetView(ZI)V
    .registers 5

    .line 442
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarMobileView;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetView: voiceVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBarMobileView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_22
    invoke-static {}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->getPhoneStateExt()Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IPhoneStateExt;

    move-result-object v0

    .line 447
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IPhoneStateExt;->createSimViewGroup(Landroid/content/Context;ZI)Landroid/view/ViewGroup;

    move-result-object p1

    .line 448
    sget-object p2, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileGroupRoot:Landroid/view/ViewGroup;

    if-eqz p2, :cond_4e

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_4e

    .line 449
    sget-object p2, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileGroupRoot:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 450
    sget-object v0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileGroupRoot:Landroid/view/ViewGroup;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 451
    sget-object v1, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileGroupRoot:Landroid/view/ViewGroup;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 452
    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 460
    :cond_4e
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarMobileView;->mzInit(Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method public applyMobileState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V
    .registers 6

    if-eqz p1, :cond_17

    .line 150
    invoke-static {}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->getPhoneStateExt()Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IPhoneStateExt;

    move-result-object v0

    invoke-interface {v0}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IPhoneStateExt;->isShowVoice()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->needResetView:Z

    if-eqz v0, :cond_17

    .line 151
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->voiceVisible:Z

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/StatusBarMobileView;->resetView(ZI)V

    :cond_17
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_2c

    .line 157
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    const/16 v2, 0x8

    if-eq p1, v2, :cond_24

    goto :goto_25

    :cond_24
    move v0, v1

    .line 158
    :goto_25
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 p1, 0x0

    .line 159
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    goto :goto_4a

    .line 160
    :cond_2c
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    if-nez v2, :cond_3a

    .line 162
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->copy()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 165
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->mzInitViewState()V

    goto :goto_4a

    .line 167
    :cond_3a
    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 170
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->copy()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarMobileView;->mzUpdateState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)Z

    move-result v0

    goto :goto_4a

    :cond_49
    move v0, v1

    :goto_4a
    if-eqz v0, :cond_4f

    .line 175
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 178
    :cond_4f
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->needFixVisibleState()Z

    move-result p1

    const-string v0, " height="

    const-string v2, "StatusBarMobileView"

    if-eqz p1, :cond_84

    .line 179
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fix VisibleState width="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVisibleState:I

    .line 181
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 182
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_b6

    .line 183
    :cond_84
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarMobileView;->needFixInVisibleState()Z

    move-result p1

    if-eqz p1, :cond_b6

    .line 184
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fix InVisibleState width="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    .line 185
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVisibleState:I

    const/4 p1, 0x4

    .line 186
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 187
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_b6
    :goto_b6
    return-void
.end method

.method public getDrawingRect(Landroid/graphics/Rect;)V
    .registers 4

    .line 110
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 111
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v0

    .line 112
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p0

    .line 113
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 114
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 115
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float/2addr v0, p0

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 116
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    add-float/2addr v0, p0

    float-to-int p0, v0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public getSlot()Ljava/lang/String;
    .registers 1

    .line 312
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSlot:Ljava/lang/String;

    return-object p0
.end method

.method public getState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 392
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    return-object p0
.end method

.method public getVisibleState()I
    .registers 1

    .line 387
    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVisibleState:I

    return p0
.end method

.method public isIconVisible()Z
    .registers 1

    .line 358
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->visible:Z

    return p0
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .registers 4

    .line 282
    invoke-static {p1, p0, p3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 293
    iget-object p2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileSignal:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 294
    iget-object p2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 295
    iget-object p2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mActivityInout:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 296
    iget-object p2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mNetworkTypeWhenShowVoiceType:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 297
    iget-object p2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVoiceSignal:Landroid/widget/ImageView;

    if-eqz p2, :cond_23

    .line 298
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 300
    :cond_23
    iget-object p2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVoiceType:Landroid/widget/ImageView;

    if-eqz p2, :cond_2a

    .line 301
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 303
    :cond_2a
    iget-object p2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolte:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 304
    iget-object p2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolteMerge:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 306
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    .line 307
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 p1, 0x0

    invoke-virtual {p0, p3, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setIconColor(IZ)V

    return-void
.end method

.method public setDecorColor(I)V
    .registers 2

    .line 353
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    return-void
.end method

.method public setSlot(Ljava/lang/String;)V
    .registers 2

    .line 316
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSlot:Ljava/lang/String;

    return-void
.end method

.method public setStaticDrawableColor(I)V
    .registers 4

    .line 321
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    const/4 v1, -0x1

    .line 335
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileSignal:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 336
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 337
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mActivityInout:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 338
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mNetworkTypeWhenShowVoiceType:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 339
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVoiceSignal:Landroid/widget/ImageView;

    if-eqz v1, :cond_20

    .line 340
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 342
    :cond_20
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVoiceType:Landroid/widget/ImageView;

    if-eqz v1, :cond_27

    .line 343
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 345
    :cond_27
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolte:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 346
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVolteMerge:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 348
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    return-void
.end method

.method public setVisibleState(IZ)V
    .registers 5

    .line 363
    iget p2, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVisibleState:I

    if-ne p1, p2, :cond_5

    return-void

    .line 367
    :cond_5
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mVisibleState:I

    const/4 p2, 0x0

    if-eqz p1, :cond_24

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p1, v0, :cond_19

    .line 379
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 380
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    goto :goto_30

    .line 374
    :cond_19
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 375
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    goto :goto_30

    .line 370
    :cond_24
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mMobileGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 371
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    :goto_30
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusBarMobileView(slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mSlot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarMobileView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
