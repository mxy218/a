.class public Lcom/android/systemui/statusbar/notification/row/NotificationInfo;
.super Landroid/widget/FrameLayout;
.source "NotificationInfo.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/row/NotificationInfo$MzOnFilterClickListener;,
        Lcom/android/systemui/statusbar/notification/row/NotificationInfo$MzOnSettingsClickListener;,
        Lcom/android/systemui/statusbar/notification/row/NotificationInfo$AlertingBehavior;,
        Lcom/android/systemui/statusbar/notification/row/NotificationInfo$UpdateImportanceRunnable;,
        Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnAppSettingsClickListener;,
        Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;,
        Lcom/android/systemui/statusbar/notification/row/NotificationInfo$CheckSaveListener;,
        Lcom/android/systemui/statusbar/notification/row/NotificationInfo$NotificationInfoAction;
    }
.end annotation


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mAppSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnAppSettingsClickListener;

.field private mAppUid:I

.field private mChannelEditorDialogController:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

.field private mCheckSaveListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$CheckSaveListener;

.field private mChosenImportance:Ljava/lang/Integer;

.field private mDelegatePkg:Ljava/lang/String;

.field private mExitReason:Ljava/lang/String;

.field private mExpandAnimation:Landroid/animation/AnimatorSet;

.field private mFilterActionType:I

.field private mFilterTextResId:I

.field private mFilterTextView:Landroid/widget/TextView;

.field private mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

.field private mINotificationManager:Landroid/app/INotificationManager;

.field private final mIconRadius:I

.field private mIsDeviceProvisioned:Z

.field private mIsForBlockingHelper:Z

.field private mIsNonblockable:Z

.field private mIsSingleDefaultChannel:Z

.field private mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mMzOnFilterClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$MzOnFilterClickListener;

.field private mMzOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$MzOnSettingsClickListener;

.field private mNumUniqueChannelsInRow:I

.field private mOnAlert:Landroid/view/View$OnClickListener;

.field private mOnCancelClickListener:Landroid/view/View$OnClickListener;

.field private mOnDeliverSilently:Landroid/view/View$OnClickListener;

.field private mOnDismissSettings:Landroid/view/View$OnClickListener;

.field private mOnKeepShowing:Landroid/view/View$OnClickListener;

.field private mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;

.field private mOnSilent:Landroid/view/View$OnClickListener;

.field private mOnUndo:Landroid/view/View$OnClickListener;

.field private mPackageName:Ljava/lang/String;

.field private mPkgIcon:Landroid/graphics/drawable/Drawable;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPresentingChannelEditorDialog:Z

.field private mPressedApply:Z

.field private mPriorityDescriptionView:Landroid/widget/TextView;

.field private mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field private mSbn:Landroid/service/notification/StatusBarNotification;

.field private mSettingTextResId:I

.field private mSettingsTextView:Landroid/widget/TextView;

.field private mSilentDescriptionView:Landroid/widget/TextView;

.field private mSingleNotificationChannel:Landroid/app/NotificationChannel;

.field private mStartingChannelImportance:I

.field private mUniqueChannelsInRow:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

.field private mWasShownHighPriority:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 230
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 131
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPresentingChannelEditorDialog:Z

    const-string p1, "blocking_helper_dismissed"

    .line 156
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mExitReason:Ljava/lang/String;

    .line 159
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$-lxdNUTZhRsTq1qLdFuCftTaKsI;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$-lxdNUTZhRsTq1qLdFuCftTaKsI;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationInfo;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mOnAlert:Landroid/view/View$OnClickListener;

    .line 166
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$x1Q8n0IIdzsrzqhyaxjftYvWg5M;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$x1Q8n0IIdzsrzqhyaxjftYvWg5M;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationInfo;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mOnSilent:Landroid/view/View$OnClickListener;

    .line 173
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$p3qjyEUB89vA_NRs8XRVogtSM4k;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$p3qjyEUB89vA_NRs8XRVogtSM4k;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationInfo;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mOnDismissSettings:Landroid/view/View$OnClickListener;

    .line 179
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$j11VBERw7GgslLu77BlqWodFHxk;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$j11VBERw7GgslLu77BlqWodFHxk;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationInfo;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mOnKeepShowing:Landroid/view/View$OnClickListener;

    .line 189
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$QY1Am5dutJVQ0eHq5s0Z3dSQLu8;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$QY1Am5dutJVQ0eHq5s0Z3dSQLu8;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationInfo;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mOnDeliverSilently:Landroid/view/View$OnClickListener;

    .line 212
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$kcLdDg1SWpjkhvCX9FbMHOcKdX8;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$kcLdDg1SWpjkhvCX9FbMHOcKdX8;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationInfo;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mOnUndo:Landroid/view/View$OnClickListener;

    .line 232
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->notification_gut_icon_radius:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mIconRadius:I

    return-void
.end method

.method private applyAlertingBehavior(IZ)V
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_46

    .line 598
    new-instance p2, Landroid/transition/TransitionSet;

    invoke-direct {p2}, Landroid/transition/TransitionSet;-><init>()V

    .line 599
    invoke-virtual {p2, v1}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 600
    new-instance v2, Landroid/transition/Fade;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/transition/Fade;-><init>(I)V

    invoke-virtual {p2, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v2

    new-instance v3, Landroid/transition/ChangeBounds;

    invoke-direct {v3}, Landroid/transition/ChangeBounds;-><init>()V

    .line 601
    invoke-virtual {v2, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v2

    new-instance v3, Landroid/transition/Fade;

    invoke-direct {v3, v0}, Landroid/transition/Fade;-><init>(I)V

    const-wide/16 v4, 0x96

    .line 604
    invoke-virtual {v3, v4, v5}, Landroid/transition/Fade;->setStartDelay(J)Landroid/transition/Transition;

    move-result-object v3

    const-wide/16 v4, 0xc8

    .line 605
    invoke-virtual {v3, v4, v5}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 606
    invoke-virtual {v3, v4}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    move-result-object v3

    .line 602
    invoke-virtual {v2, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    const-wide/16 v2, 0x15e

    .line 607
    invoke-virtual {p2, v2, v3}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    .line 608
    sget-object v2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v2}, Landroid/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    .line 609
    invoke-static {p0, p2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 612
    :cond_46
    sget p2, Lcom/android/systemui/R$id;->alert:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 613
    sget v2, Lcom/android/systemui/R$id;->silence:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    if-eqz p1, :cond_82

    if-ne p1, v0, :cond_6b

    .line 626
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSilentDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 627
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPriorityDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 628
    new-instance v3, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$JpCUeqH4NTR-eIw4dQ3BiR4iSog;

    invoke-direct {v3, p2, v2}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$JpCUeqH4NTR-eIw4dQ3BiR4iSog;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_94

    .line 634
    :cond_6b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unrecognized alerting behavior: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 617
    :cond_82
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPriorityDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 618
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSilentDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 619
    new-instance v3, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$z1_znMHrt0xHowqdvbrSsphINf0;

    invoke-direct {v3, p2, v2}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$z1_znMHrt0xHowqdvbrSsphINf0;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 637
    :goto_94
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mWasShownHighPriority:Z

    if-nez p1, :cond_9a

    move p1, v0

    goto :goto_9b

    :cond_9a
    move p1, v1

    :goto_9b
    if-eq p2, p1, :cond_9e

    goto :goto_9f

    :cond_9e
    move v0, v1

    .line 638
    :goto_9f
    sget p1, Lcom/android/systemui/R$id;->done:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz v0, :cond_ac

    .line 639
    sget p1, Lcom/android/systemui/R$string;->inline_ok_button:I

    goto :goto_ae

    :cond_ac
    sget p1, Lcom/android/systemui/R$string;->inline_done_button:I

    :goto_ae
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private dealWithFilterBtnAction(Landroid/service/notification/StatusBarNotification;)V
    .registers 3

    .line 1069
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->shouldForbidFilter(Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 1070
    sget p1, Lcom/android/systemui/R$id;->guts_line1:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1071
    sget p1, Lcom/android/systemui/R$string;->smart_notification_guts_action0_disable_reason_1:I

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mFilterTextResId:I

    const/4 p1, 0x4

    .line 1072
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mFilterActionType:I

    :cond_18
    return-void
.end method

.method private getFirstChild()Landroid/service/notification/StatusBarNotification;
    .registers 2

    .line 1052
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_14

    const/4 v0, 0x0

    .line 1054
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    return-object p0

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method

.method private getLogMaker()Landroid/metrics/LogMaker;
    .registers 2

    .line 899
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    const/16 v0, 0x655

    if-nez p0, :cond_c

    new-instance p0, Landroid/metrics/LogMaker;

    invoke-direct {p0, v0}, Landroid/metrics/LogMaker;-><init>(I)V

    goto :goto_14

    .line 900
    :cond_c
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object p0

    :goto_14
    return-object p0
.end method

.method private handleSaveImportance(II)V
    .registers 4

    .line 195
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$VsGw7yinvO7eM-lSnQkbAlXJJig;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$VsGw7yinvO7eM-lSnQkbAlXJJig;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationInfo;II)V

    .line 205
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mCheckSaveListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$CheckSaveListener;

    if-eqz p1, :cond_f

    .line 206
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-interface {p1, v0, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$CheckSaveListener;->checkSave(Ljava/lang/Runnable;Landroid/service/notification/StatusBarNotification;)V

    goto :goto_12

    .line 208
    :cond_f
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_12
    return-void
.end method

.method private importanceChangeLogMaker()Landroid/metrics/LogMaker;
    .registers 4

    .line 910
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_b

    :cond_9
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mStartingChannelImportance:I

    :goto_b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 911
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v1

    const/16 v2, 0x123

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v1

    const/4 v2, 0x4

    .line 912
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 913
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mStartingChannelImportance:I

    sub-int/2addr v0, p0

    invoke-virtual {v1, v0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$applyAlertingBehavior$11(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x1

    .line 620
    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    const/4 p0, 0x0

    .line 621
    invoke-virtual {p1, p0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method static synthetic lambda$applyAlertingBehavior$12(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x0

    .line 629
    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    const/4 p0, 0x1

    .line 630
    invoke-virtual {p1, p0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method private notificationControlsLogMaker()Landroid/metrics/LogMaker;
    .registers 3

    .line 922
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v0

    const/4 v1, 0x1

    .line 923
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 924
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mIsForBlockingHelper:Z

    invoke-virtual {v0, p0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p0

    return-object p0
.end method

.method private saveImportance()V
    .registers 3

    .line 563
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mIsNonblockable:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mExitReason:Ljava/lang/String;

    const-string v1, "blocking_helper_stop_notifications"

    if-eq v0, v1, :cond_19

    .line 565
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    if-nez v0, :cond_16

    .line 566
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mStartingChannelImportance:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    .line 568
    :cond_16
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->updateImportance()V

    :cond_19
    return-void
.end method

.method private saveImportanceAndExitReason(I)V
    .registers 3
    .param p1  # I
        .annotation build Lcom/android/systemui/statusbar/notification/row/NotificationInfo$NotificationInfoAction;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1f

    const/4 v0, 0x4

    if-ne p1, v0, :cond_19

    const-string p1, "blocking_helper_deliver_silently"

    .line 648
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mExitReason:Ljava/lang/String;

    .line 649
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mWasShownHighPriority:Z

    if-eqz p1, :cond_10

    const/4 p1, 0x2

    goto :goto_12

    .line 650
    :cond_10
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mStartingChannelImportance:I

    .line 649
    :goto_12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    goto :goto_27

    .line 653
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 645
    :cond_1f
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mStartingChannelImportance:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    :goto_27
    return-void
.end method

.method private shouldForbidFilter(Landroid/service/notification/StatusBarNotification;)Z
    .registers 3

    if-eqz p1, :cond_10

    .line 1061
    iget-object p1, p1, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget-boolean v0, p1, Landroid/service/notification/StatusBarNotification$Filter;->shouldAffectIntercept:Z

    if-nez v0, :cond_10

    iget-boolean v0, p1, Landroid/service/notification/StatusBarNotification$Filter;->shouldAuthorityManagement:Z

    if-nez v0, :cond_10

    iget-object p1, p1, Landroid/service/notification/StatusBarNotification$Filter;->tag:Ljava/lang/String;

    if-eqz p1, :cond_14

    :cond_10
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppUid:I

    if-gez p0, :cond_16

    :cond_14
    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method private swapContent(IZ)V
    .registers 13
    .param p1  # I
        .annotation build Lcom/android/systemui/statusbar/notification/row/NotificationInfo$NotificationInfoAction;
        .end annotation
    .end param

    .line 659
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mExpandAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_7

    .line 660
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 663
    :cond_7
    sget v0, Lcom/android/systemui/R$id;->blocking_helper:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 664
    sget v1, Lcom/android/systemui/R$id;->confirmation:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 665
    sget v2, Lcom/android/systemui/R$id;->confirmation_text:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 667
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->saveImportanceAndExitReason(I)V

    const/4 v3, 0x1

    if-eq p1, v3, :cond_32

    const/4 v4, 0x4

    if-ne p1, v4, :cond_2c

    .line 673
    sget v4, Lcom/android/systemui/R$string;->notification_channel_silenced:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_32

    .line 676
    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_32
    :goto_32
    const/4 v2, 0x0

    if-ne p1, v3, :cond_37

    move p1, v3

    goto :goto_38

    :cond_37
    move p1, v2

    :goto_38
    const/16 v4, 0x8

    if-eqz p1, :cond_3e

    move v5, v2

    goto :goto_3f

    :cond_3e
    move v5, v4

    .line 681
    :goto_3f
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 682
    sget v5, Lcom/android/systemui/R$id;->channel_info:I

    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz p1, :cond_4c

    move v6, v2

    goto :goto_4d

    :cond_4c
    move v6, v4

    :goto_4d
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 683
    sget v5, Lcom/android/systemui/R$id;->header:I

    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz p1, :cond_5a

    move v6, v2

    goto :goto_5b

    :cond_5a
    move v6, v4

    :goto_5b
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_61

    goto :goto_62

    :cond_61
    move v4, v2

    .line 684
    :goto_62
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz p2, :cond_cf

    .line 687
    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v5, v4, [F

    .line 688
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v6

    aput v6, v5, v2

    const/high16 v6, 0x3f800000  # 1.0f

    const/4 v7, 0x0

    if-eqz p1, :cond_79

    move v8, v6

    goto :goto_7a

    :cond_79
    move v8, v7

    :goto_7a
    aput v8, v5, v3

    .line 687
    invoke-static {v0, p2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    if-eqz p1, :cond_85

    .line 689
    sget-object v5, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    goto :goto_87

    :cond_85
    sget-object v5, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    :goto_87
    invoke-virtual {p2, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 690
    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v4, [F

    .line 691
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v9

    aput v9, v8, v2

    if-eqz p1, :cond_97

    move v6, v7

    :cond_97
    aput v6, v8, v3

    .line 690
    invoke-static {v1, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    if-eqz p1, :cond_a2

    .line 692
    sget-object v6, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    goto :goto_a4

    :cond_a2
    sget-object v6, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    :goto_a4
    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 694
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mExpandAnimation:Landroid/animation/AnimatorSet;

    .line 695
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mExpandAnimation:Landroid/animation/AnimatorSet;

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object p2, v4, v2

    aput-object v5, v4, v3

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 696
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mExpandAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x96

    invoke-virtual {p2, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 697
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mExpandAnimation:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$1;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$1;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationInfo;Landroid/view/View;ZLandroid/view/ViewGroup;)V

    invoke-virtual {p2, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 713
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mExpandAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 718
    :cond_cf
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    if-eqz p0, :cond_d6

    .line 719
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->resetFalsingCheck()V

    :cond_d6
    return-void
.end method

.method private updateGutsHeader()V
    .registers 9

    const/4 v0, 0x0

    .line 968
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPkgIcon:Landroid/graphics/drawable/Drawable;

    .line 972
    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPackageName:Ljava/lang/String;

    const v2, 0xc2200

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 979
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppName:Ljava/lang/String;

    .line 980
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPkgIcon:Landroid/graphics/drawable/Drawable;
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_24} :catch_25

    goto :goto_2d

    .line 984
    :catch_25
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPkgIcon:Landroid/graphics/drawable/Drawable;

    .line 987
    :cond_2d
    :goto_2d
    sget v0, Lcom/android/systemui/R$id;->guts_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/MzRoundImageView;

    .line 988
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPkgIcon:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    const-string v3, "InfoGuts"

    if-eqz v2, :cond_60

    .line 989
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 990
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 991
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BitmapDrawable "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mIconRadius:I

    invoke-virtual {v0, v2}, Landroid/widget/MzRoundImageView;->setBorderRadius(I)V

    .line 993
    invoke-virtual {v0, v1}, Landroid/widget/MzRoundImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_ac

    .line 994
    :cond_60
    instance-of v2, v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v2, :cond_a9

    .line 995
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPkgIcon:Landroid/graphics/drawable/Drawable;

    .line 996
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 995
    invoke-static {v1, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 997
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 998
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPkgIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 999
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPkgIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1000
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AdaptiveIconDrawable "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mIconRadius:I

    invoke-virtual {v0, v2}, Landroid/widget/MzRoundImageView;->setBorderRadius(I)V

    .line 1002
    invoke-virtual {v0, v1}, Landroid/widget/MzRoundImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_ac

    .line 1004
    :cond_a9
    invoke-virtual {v0, v1}, Landroid/widget/MzRoundImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1007
    :goto_ac
    sget v0, Lcom/android/systemui/R$id;->guts_app_name_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1008
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1010
    sget v0, Lcom/android/systemui/R$id;->guts_cancel:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1011
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mOnCancelClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateImportance()V
    .registers 10

    .line 576
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    if-eqz v0, :cond_62

    .line 577
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->importanceChangeLogMaker()Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 579
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 580
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mStartingChannelImportance:I

    const/16 v2, -0x3e8

    if-eq v1, v2, :cond_34

    .line 581
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mWasShownHighPriority:Z

    const/4 v2, 0x3

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, v2, :cond_32

    :cond_26
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mWasShownHighPriority:Z

    if-nez v1, :cond_34

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    .line 582
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, v2, :cond_34

    .line 583
    :cond_32
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mStartingChannelImportance:I

    :cond_34
    move v7, v0

    .line 587
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 588
    new-instance v8, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$UpdateImportanceRunnable;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppUid:I

    .line 590
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mNumUniqueChannelsInRow:I

    const/4 v5, 0x1

    if-ne v1, v5, :cond_52

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    goto :goto_53

    :cond_52
    const/4 v1, 0x0

    :goto_53
    move-object v5, v1

    iget v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mStartingChannelImportance:I

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$UpdateImportanceRunnable;-><init>(Landroid/app/INotificationManager;Ljava/lang/String;ILandroid/app/NotificationChannel;II)V

    .line 588
    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 592
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->temporarilyAllowReordering()V

    :cond_62
    return-void
.end method


# virtual methods
.method bindNotification(Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/Set;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$CheckSaveListener;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnAppSettingsClickListener;ZZIZILcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/view/View$OnClickListener;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$MzOnFilterClickListener;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$MzOnSettingsClickListener;)V
    .registers 41
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/app/INotificationManager;",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            "Ljava/lang/String;",
            "Landroid/app/NotificationChannel;",
            "Ljava/util/Set<",
            "Landroid/app/NotificationChannel;",
            ">;",
            "Landroid/service/notification/StatusBarNotification;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationInfo$CheckSaveListener;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnAppSettingsClickListener;",
            "ZZIZI",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            "Landroid/view/View$OnClickListener;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationInfo$MzOnFilterClickListener;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationInfo$MzOnSettingsClickListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    const/4 v13, 0x0

    .line 283
    invoke-virtual/range {v0 .. v20}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->bindNotification(Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/Set;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$CheckSaveListener;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnAppSettingsClickListener;ZZZIZILcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/view/View$OnClickListener;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$MzOnFilterClickListener;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$MzOnSettingsClickListener;)V

    return-void
.end method

.method public bindNotification(Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/Set;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$CheckSaveListener;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnAppSettingsClickListener;ZZZIZILcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/view/View$OnClickListener;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$MzOnFilterClickListener;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$MzOnSettingsClickListener;)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/app/INotificationManager;",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            "Ljava/lang/String;",
            "Landroid/app/NotificationChannel;",
            "Ljava/util/Set<",
            "Landroid/app/NotificationChannel;",
            ">;",
            "Landroid/service/notification/StatusBarNotification;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationInfo$CheckSaveListener;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnAppSettingsClickListener;",
            "ZZZIZI",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            "Landroid/view/View$OnClickListener;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationInfo$MzOnFilterClickListener;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationInfo$MzOnSettingsClickListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p4

    move-object v2, p2

    .line 317
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    .line 318
    const-class v2, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/logging/MetricsLogger;

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    move-object v2, p3

    .line 319
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    .line 320
    const-class v2, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChannelEditorDialogController:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    .line 321
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPackageName:Ljava/lang/String;

    move-object v2, p6

    .line 322
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mUniqueChannelsInRow:Ljava/util/Set;

    .line 323
    invoke-interface {p6}, Ljava/util/Set;->size()I

    move-result v2

    iput v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mNumUniqueChannelsInRow:I

    move-object v2, p7

    .line 324
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    move-object v2, p1

    .line 325
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v2, p10

    .line 326
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnAppSettingsClickListener;

    .line 327
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPackageName:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppName:Ljava/lang/String;

    move-object v2, p8

    .line 328
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mCheckSaveListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$CheckSaveListener;

    move-object v2, p9

    .line 329
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;

    move-object v2, p5

    .line 330
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    .line 331
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    iput v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mStartingChannelImportance:I

    move/from16 v2, p15

    .line 332
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mWasShownHighPriority:Z

    move/from16 v2, p12

    .line 333
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mIsNonblockable:Z

    move/from16 v2, p13

    .line 334
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mIsForBlockingHelper:Z

    move/from16 v2, p16

    .line 335
    iput v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppUid:I

    .line 336
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mDelegatePkg:Ljava/lang/String;

    move/from16 v2, p11

    .line 337
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mIsDeviceProvisioned:Z

    .line 339
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    iget v3, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppUid:I

    const/4 v4, 0x0

    invoke-interface {v2, p4, v3, v4}, Landroid/app/INotificationManager;->getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I

    move-result v1

    .line 341
    iget v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mNumUniqueChannelsInRow:I

    if-eqz v2, :cond_a3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_83

    .line 345
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    .line 346
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v5, "miscellaneous"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_83

    if-ne v1, v3, :cond_83

    goto :goto_84

    :cond_83
    move v3, v4

    :goto_84
    iput-boolean v3, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mIsSingleDefaultChannel:Z

    .line 362
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->notificationControlsLogMaker()Landroid/metrics/LogMaker;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    move-object/from16 v1, p17

    .line 365
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-object/from16 v1, p18

    .line 366
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mOnCancelClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v1, p19

    .line 367
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mMzOnFilterClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$MzOnFilterClickListener;

    move-object/from16 v1, p20

    .line 368
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mMzOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$MzOnSettingsClickListener;

    .line 369
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mzBindGuts()V

    return-void

    .line 342
    :cond_a3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bindNotification requires at least one channel"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method closeControls(Landroid/view/View;Z)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [I

    new-array v2, v0, [I

    .line 791
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    .line 792
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 793
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v3, v0

    .line 794
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/2addr p1, v0

    const/4 v0, 0x0

    .line 795
    aget v4, v2, v0

    aget v5, v1, v0

    sub-int/2addr v4, v5

    add-int/2addr v4, v3

    const/4 v3, 0x1

    .line 796
    aget v2, v2, v3

    aget v1, v1, v3

    sub-int/2addr v2, v1

    add-int/2addr v2, p1

    .line 797
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    invoke-virtual {p0, v4, v2, p2, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->closeControls(IIZZ)V

    return-void
.end method

.method public getActualHeight()I
    .registers 1

    .line 840
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method public getContentView()Landroid/view/View;
    .registers 1

    return-object p0
.end method

.method public handleCloseControls(ZZ)Z
    .registers 5

    .line 822
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPresentingChannelEditorDialog:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_14

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChannelEditorDialogController:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    if-eqz p2, :cond_14

    .line 823
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPresentingChannelEditorDialog:Z

    const/4 v1, 0x0

    .line 825
    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->setOnFinishListener(Lcom/android/systemui/statusbar/notification/row/OnChannelEditorDialogFinishedListener;)V

    .line 826
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChannelEditorDialogController:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->close()V

    :cond_14
    if-eqz p1, :cond_19

    .line 832
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->saveImportance()V

    .line 834
    :cond_19
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mExitReason:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->logBlockingHelperCounter(Ljava/lang/String;)V

    return v0
.end method

.method public isAnimating()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 845
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mExpandAnimation:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public synthetic lambda$handleSaveImportance$5$NotificationInfo(II)V
    .registers 4

    .line 196
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->saveImportanceAndExitReason(I)V

    .line 197
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mIsForBlockingHelper:Z

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    .line 198
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->swapContent(IZ)V

    .line 199
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object p0

    const/16 v0, 0x655

    .line 200
    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object p0

    const/4 v0, 0x4

    .line 201
    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p0

    .line 202
    invoke-virtual {p0, p2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p0

    .line 199
    invoke-virtual {p1, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    :cond_23
    return-void
.end method

.method public synthetic lambda$new$0$NotificationInfo(Landroid/view/View;)V
    .registers 3

    const-string p1, "blocking_helper_keep_showing"

    .line 160
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mExitReason:Ljava/lang/String;

    const/4 p1, 0x3

    .line 161
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 162
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->applyAlertingBehavior(IZ)V

    return-void
.end method

.method public synthetic lambda$new$1$NotificationInfo(Landroid/view/View;)V
    .registers 2

    const-string p1, "blocking_helper_deliver_silently"

    .line 167
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mExitReason:Ljava/lang/String;

    const/4 p1, 0x2

    .line 168
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    const/4 p1, 0x1

    .line 169
    invoke-direct {p0, p1, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->applyAlertingBehavior(IZ)V

    return-void
.end method

.method public synthetic lambda$new$2$NotificationInfo(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x1

    .line 174
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPressedApply:Z

    .line 175
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->closeControls(Landroid/view/View;Z)V

    return-void
.end method

.method public synthetic lambda$new$3$NotificationInfo(Landroid/view/View;)V
    .registers 3

    const-string v0, "blocking_helper_keep_showing"

    .line 180
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mExitReason:Ljava/lang/String;

    const/4 v0, 0x1

    .line 181
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->closeControls(Landroid/view/View;Z)V

    .line 182
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object p0

    const/16 v0, 0x655

    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object p0

    const/4 v0, 0x4

    .line 184
    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p0

    const/4 v0, 0x5

    .line 185
    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p0

    .line 182
    invoke-virtual {p1, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method public synthetic lambda$new$4$NotificationInfo(Landroid/view/View;)V
    .registers 3

    const/4 p1, 0x4

    const/4 v0, 0x5

    .line 190
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->handleSaveImportance(II)V

    return-void
.end method

.method public synthetic lambda$new$6$NotificationInfo(Landroid/view/View;)V
    .registers 5

    const-string p1, "blocking_helper_dismissed"

    .line 214
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mExitReason:Ljava/lang/String;

    .line 215
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mIsForBlockingHelper:Z

    const/4 v0, 0x5

    if-eqz p1, :cond_27

    const-string p1, "blocking_helper_undo"

    .line 216
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->logBlockingHelperCounter(Ljava/lang/String;)V

    .line 217
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v1

    const/16 v2, 0x655

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 219
    invoke-virtual {v1, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    const/4 v1, 0x7

    .line 220
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 217
    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    goto :goto_34

    .line 223
    :cond_27
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->importanceChangeLogMaker()Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    :goto_34
    const/4 p1, 0x1

    .line 225
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->saveImportanceAndExitReason(I)V

    .line 226
    invoke-direct {p0, p1, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->swapContent(IZ)V

    return-void
.end method

.method public synthetic lambda$updateGutsFilterAction$13$NotificationInfo(Landroid/view/View;)V
    .registers 2

    .line 1019
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mMzOnFilterClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$MzOnFilterClickListener;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$MzOnFilterClickListener;->onFilterButtonClick()V

    return-void
.end method

.method public synthetic lambda$updateGutsFilterAction$14$NotificationInfo(Landroid/view/View;)V
    .registers 4

    .line 1023
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mMzOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$MzOnSettingsClickListener;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppName:Ljava/lang/String;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppUid:I

    invoke-interface {p1, v0, v1, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$MzOnSettingsClickListener;->onSettingsButtonClick(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method logBlockingHelperCounter(Ljava/lang/String;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 557
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mIsForBlockingHelper:Z

    if-eqz v0, :cond_a

    .line 558
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    :cond_a
    return-void
.end method

.method public mzBindGuts()V
    .registers 4

    .line 948
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->updateGutsHeader()V

    .line 950
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    iget-object v0, v0, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget-boolean v0, v0, Landroid/service/notification/StatusBarNotification$Filter;->intercept:Z

    if-eqz v0, :cond_e

    .line 951
    sget v0, Lcom/android/systemui/R$string;->smart_notification_guts_action0_inside:I

    goto :goto_10

    .line 952
    :cond_e
    sget v0, Lcom/android/systemui/R$string;->smart_notification_guts_action0_outside:I

    :goto_10
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mFilterTextResId:I

    .line 953
    sget v0, Lcom/android/systemui/R$string;->smart_notification_guts_action1:I

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSettingTextResId:I

    const/4 v0, 0x3

    .line 954
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mFilterActionType:I

    .line 956
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 957
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->getFirstChild()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 958
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->dealWithFilterBtnAction(Landroid/service/notification/StatusBarNotification;)V

    goto :goto_2e

    .line 960
    :cond_29
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->dealWithFilterBtnAction(Landroid/service/notification/StatusBarNotification;)V

    .line 962
    :goto_2e
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mFilterActionType:I

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mFilterTextResId:I

    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSettingTextResId:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->updateGutsFilterAction(III)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .line 238
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 240
    sget v0, Lcom/android/systemui/R$id;->alert_summary:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPriorityDescriptionView:Landroid/widget/TextView;

    .line 241
    sget v0, Lcom/android/systemui/R$id;->silence_summary:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSilentDescriptionView:Landroid/widget/TextView;

    return-void
.end method

.method public onFinishedClosing()V
    .registers 3

    .line 725
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    .line 726
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mStartingChannelImportance:I

    :cond_a
    const-string v0, "blocking_helper_dismissed"

    .line 728
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mExitReason:Ljava/lang/String;

    .line 738
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->notificationControlsLogMaker()Landroid/metrics/LogMaker;

    move-result-object p0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 6

    .line 743
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 744
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    if-eqz v0, :cond_44

    .line 745
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_44

    .line 746
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->isExposed()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2f

    .line 747
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->notification_channel_controls_opened_accessibility:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppName:Ljava/lang/String;

    aput-object p0, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_44

    .line 750
    :cond_2f
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->notification_channel_controls_closed_accessibility:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mAppName:Ljava/lang/String;

    aput-object p0, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_44
    :goto_44
    return-void
.end method

.method public setGutsParent(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V
    .registers 2

    .line 802
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    return-void
.end method

.method public shouldBeSaved()Z
    .registers 1

    .line 812
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mPressedApply:Z

    return p0
.end method

.method public updateGutsFilterAction(III)V
    .registers 5

    .line 1015
    sget v0, Lcom/android/systemui/R$id;->guts_action0:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mFilterTextView:Landroid/widget/TextView;

    .line 1016
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mFilterTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    const/4 p2, 0x3

    if-eq p1, p2, :cond_14

    const/4 p0, 0x4

    goto :goto_37

    .line 1019
    :cond_14
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mFilterTextView:Landroid/widget/TextView;

    new-instance p2, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$BF3tqEdeG-ABrlQtVmtkEQRvHDk;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$BF3tqEdeG-ABrlQtVmtkEQRvHDk;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationInfo;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1020
    sget p1, Lcom/android/systemui/R$id;->guts_action1:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSettingsTextView:Landroid/widget/TextView;

    .line 1021
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSettingsTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    .line 1022
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mSettingsTextView:Landroid/widget/TextView;

    new-instance p2, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$5M-2Q2x66HHfcl7exUpL6BToRZg;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$5M-2Q2x66HHfcl7exUpL6BToRZg;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationInfo;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_37
    return-void
.end method

.method public updateRowContentViewAlpha()V
    .registers 1

    .line 1048
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateContentViewAlpha()V

    return-void
.end method

.method public willBeRemoved()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
