.class public Lcom/android/systemui/qs/QuickStatusBarHeader;
.super Landroid/widget/RelativeLayout;
.source "QuickStatusBarHeader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

.field private mCarrierGroup:Lcom/android/systemui/qs/QSCarrierGroup;

.field private mDualToneHandler:Lcom/android/systemui/DualToneHandler;

.field private final mHandler:Landroid/os/Handler;

.field private mHasTopCutout:Z

.field protected mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

.field private mHeaderTextContainerAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mHeaderTextContainerView:Landroid/view/View;

.field private mListening:Z

.field private mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

.field private mNextAlarmContainer:Landroid/view/View;

.field private mNextAlarmIcon:Landroid/widget/ImageView;

.field private mNextAlarmTextView:Landroid/widget/TextView;

.field private mQsDisabled:Z

.field private mRingerContainer:Landroid/view/View;

.field private mRingerMode:I

.field private mRingerModeIcon:Landroid/widget/ImageView;

.field private mRingerModeTextView:Landroid/widget/TextView;

.field private final mRingerReceiver:Landroid/content/BroadcastReceiver;

.field private final mStatusBarIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

.field private mStatusSeparator:Landroid/view/View;

.field private final mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/statusbar/policy/NextAlarmController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/plugins/ActivityStarter;)V
    .registers 7
    .param p1  # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "view_context"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 146
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x2

    .line 117
    iput p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerMode:I

    .line 132
    new-instance p2, Lcom/android/systemui/qs/QuickStatusBarHeader$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/QuickStatusBarHeader$1;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeader;)V

    iput-object p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerReceiver:Landroid/content/BroadcastReceiver;

    const/4 p2, 0x0

    .line 139
    iput-boolean p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHasTopCutout:Z

    .line 147
    iput-object p3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    .line 148
    iput-object p4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 149
    iput-object p5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 150
    iput-object p6, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 151
    new-instance p2, Lcom/android/systemui/DualToneHandler;

    new-instance p3, Landroid/view/ContextThemeWrapper;

    sget p4, Lcom/android/systemui/R$style;->QSHeaderTheme:I

    invoke-direct {p3, p1, p4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p2, p3}, Lcom/android/systemui/DualToneHandler;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/QuickStatusBarHeader;I)I
    .registers 2

    .line 81
    iput p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerMode:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QuickStatusBarHeader;)V
    .registers 1

    .line 81
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateStatusText()V

    return-void
.end method

.method private applyDarkness(ILandroid/graphics/Rect;FI)V
    .registers 5

    .line 267
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 268
    instance-of p1, p0, Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;

    if-eqz p1, :cond_d

    .line 269
    check-cast p0, Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;

    invoke-interface {p0, p2, p3, p4}, Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;->onDarkChanged(Landroid/graphics/Rect;FI)V

    :cond_d
    return-void
.end method

.method private formatNextAlarm(Landroid/app/AlarmManager$AlarmClockInfo;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_5

    const-string p0, ""

    return-object p0

    .line 521
    :cond_5
    iget-object p0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_14

    const-string p0, "EHm"

    goto :goto_16

    :cond_14
    const-string p0, "Ehma"

    .line 523
    :goto_16
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 524
    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getColorIntensity(I)F
    .registers 2

    const/4 v0, -0x1

    if-ne p0, v0, :cond_5

    const/4 p0, 0x0

    goto :goto_7

    :cond_5
    const/high16 p0, 0x3f800000  # 1.0f

    :goto_7
    return p0
.end method

.method private updateAlarmStatus()Z
    .registers 9

    .line 250
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    move v0, v2

    .line 251
    :goto_d
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 254
    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v4, :cond_22

    .line 256
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmTextView:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/android/systemui/qs/QuickStatusBarHeader;->formatNextAlarm(Landroid/app/AlarmManager$AlarmClockInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v4, v1

    goto :goto_23

    :cond_22
    move v4, v2

    .line 258
    :goto_23
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmIcon:Landroid/widget/ImageView;

    const/16 v6, 0x8

    if-eqz v4, :cond_2b

    move v7, v2

    goto :goto_2c

    :cond_2b
    move v7, v6

    :goto_2c
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 259
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_35

    move v7, v2

    goto :goto_36

    :cond_35
    move v7, v6

    :goto_36
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmContainer:Landroid/view/View;

    if-eqz v4, :cond_3e

    move v6, v2

    :cond_3e
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    if-ne v0, v4, :cond_51

    .line 262
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmTextView:Landroid/widget/TextView;

    .line 263
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {v3, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_50

    goto :goto_51

    :cond_50
    move v1, v2

    :cond_51
    :goto_51
    return v1
.end method

.method private updateHeaderTextContainerAlphaAnimator()V
    .registers 5

    .line 341
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    const/4 v2, 0x3

    new-array v2, v2, [F

    fill-array-data v2, :array_1a

    const-string v3, "alpha"

    .line 342
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 343
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    return-void

    nop

    :array_1a
    .array-data 4
        0x0
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private updateMinimumHeight()V
    .registers 4

    .line 295
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105020f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 297
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->qs_quick_header_panel_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 300
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setMinimumHeight(I)V

    return-void
.end method

.method private updateResources()V
    .registers 5

    .line 304
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 305
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateMinimumHeight()V

    .line 308
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->qs_header_tooltip_height:I

    .line 309
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 310
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 319
    iget-boolean v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsDisabled:Z

    if-eqz v2, :cond_34

    const v2, 0x10501f1

    .line 320
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_45

    .line 323
    :cond_34
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMinimumHeight()I

    move-result v2

    const v3, 0x10501f2

    .line 324
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 323
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 328
    :goto_45
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateHeaderTextContainerAlphaAnimator()V

    return-void
.end method

.method private updateRingerStatus()Z
    .registers 9

    .line 225
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    move v0, v2

    .line 226
    :goto_d
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 229
    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 230
    invoke-interface {v5}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getConsolidatedPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v5

    .line 229
    invoke-static {v4, v5}, Landroid/service/notification/ZenModeConfig;->isZenOverridingRinger(ILandroid/app/NotificationManager$Policy;)Z

    move-result v4

    if-nez v4, :cond_4a

    .line 231
    iget v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerMode:I

    if-ne v4, v1, :cond_39

    .line 232
    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeIcon:Landroid/widget/ImageView;

    sget v5, Lcom/android/systemui/R$drawable;->ic_volume_ringer_vibrate:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 233
    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    sget v5, Lcom/android/systemui/R$string;->qs_status_phone_vibrate:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    :goto_37
    move v4, v1

    goto :goto_4b

    :cond_39
    if-nez v4, :cond_4a

    .line 236
    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeIcon:Landroid/widget/ImageView;

    sget v5, Lcom/android/systemui/R$drawable;->ic_volume_ringer_mute:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 237
    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    sget v5, Lcom/android/systemui/R$string;->qs_status_phone_muted:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_37

    :cond_4a
    move v4, v2

    .line 241
    :goto_4b
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeIcon:Landroid/widget/ImageView;

    const/16 v6, 0x8

    if-eqz v4, :cond_53

    move v7, v2

    goto :goto_54

    :cond_53
    move v7, v6

    :goto_54
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 242
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_5d

    move v7, v2

    goto :goto_5e

    :cond_5d
    move v7, v6

    :goto_5e
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerContainer:Landroid/view/View;

    if-eqz v4, :cond_66

    move v6, v2

    :cond_66
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    if-ne v0, v4, :cond_79

    .line 245
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    .line 246
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {v3, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_78

    goto :goto_79

    :cond_78
    move v1, v2

    :cond_79
    :goto_79
    return v1
.end method

.method private updateStatusText()V
    .registers 5

    .line 214
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateRingerStatus()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_11

    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateAlarmStatus()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    move v0, v2

    goto :goto_12

    :cond_11
    :goto_11
    move v0, v1

    :goto_12
    if-eqz v0, :cond_35

    .line 217
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1e

    move v0, v1

    goto :goto_1f

    :cond_1e
    move v0, v2

    .line 218
    :goto_1f
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_28

    goto :goto_29

    :cond_28
    move v1, v2

    .line 219
    :goto_29
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusSeparator:Landroid/view/View;

    if-eqz v0, :cond_30

    if-eqz v1, :cond_30

    goto :goto_32

    :cond_30
    const/16 v2, 0x8

    :goto_32
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_35
    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 4

    .line 405
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 407
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getDisplay()Landroid/view/Display;

    move-result-object v1

    .line 406
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->cornerCutoutMargins(Landroid/view/DisplayCutout;Landroid/view/Display;)Landroid/util/Pair;

    .line 418
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public onAttachedToWindow()V
    .registers 1

    .line 398
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 400
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestApplyInsets()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 457
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmContainer:Landroid/view/View;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_33

    invoke-virtual {v0}, Landroid/view/View;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 458
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 459
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 460
    invoke-virtual {p0}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    move-result-object p0

    .line 459
    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V

    goto :goto_49

    :cond_1f
    const-string p1, "QuickStatusBarHeader"

    const-string v0, "No PendingIntent for next alarm. Using default intent"

    .line 462
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SHOW_ALARMS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    goto :goto_49

    .line 466
    :cond_33
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerContainer:Landroid/view/View;

    if-ne p1, v0, :cond_49

    invoke-virtual {v0}, Landroid/view/View;->isVisibleToUser()Z

    move-result p1

    if-eqz p1, :cond_49

    .line 467
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.SOUND_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    :cond_49
    :goto_49
    return-void
.end method

.method public onConfigChanged(Landroid/service/notification/ZenModeConfig;)V
    .registers 2

    .line 485
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateStatusText()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 275
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 276
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    .line 279
    iget p0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 p1, 0x2

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 424
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setListening(Z)V

    .line 426
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 6

    .line 157
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 159
    sget v0, Lcom/android/systemui/R$id;->quick_qs_panel:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QuickQSPanel;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 169
    sget v0, Lcom/android/systemui/R$id;->header_text_container:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    .line 170
    sget v0, Lcom/android/systemui/R$id;->status_separator:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusSeparator:Landroid/view/View;

    .line 171
    sget v0, Lcom/android/systemui/R$id;->next_alarm_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmIcon:Landroid/widget/ImageView;

    .line 172
    sget v0, Lcom/android/systemui/R$id;->next_alarm_text:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmTextView:Landroid/widget/TextView;

    .line 173
    sget v0, Lcom/android/systemui/R$id;->alarm_container:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmContainer:Landroid/view/View;

    .line 174
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmContainer:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/qs/-$$Lambda$p8TkVReSUo0LsQ3y-9iKja9mJXE;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/-$$Lambda$p8TkVReSUo0LsQ3y-9iKja9mJXE;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeader;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    sget v0, Lcom/android/systemui/R$id;->ringer_mode_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeIcon:Landroid/widget/ImageView;

    .line 176
    sget v0, Lcom/android/systemui/R$id;->ringer_mode_text:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    .line 177
    sget v0, Lcom/android/systemui/R$id;->ringer_container:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerContainer:Landroid/view/View;

    .line 178
    sget v0, Lcom/android/systemui/R$id;->carrier_group:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSCarrierGroup;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mCarrierGroup:Lcom/android/systemui/qs/QSCarrierGroup;

    .line 181
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    .line 183
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 184
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1010030

    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v1

    .line 186
    invoke-static {v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getColorIntensity(I)F

    move-result v1

    .line 187
    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    invoke-virtual {v2, v1}, Lcom/android/systemui/DualToneHandler;->getSingleColor(F)I

    move-result v1

    .line 190
    sget v2, Lcom/android/systemui/R$id;->clock:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-direct {p0, v2, v0, v3, v4}, Lcom/android/systemui/qs/QuickStatusBarHeader;->applyDarkness(ILandroid/graphics/Rect;FI)V

    .line 193
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmIcon:Landroid/widget/ImageView;

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 194
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeIcon:Landroid/widget/ImageView;

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 209
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerModeTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 210
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarmTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method public onNextAlarmChanged(Landroid/app/AlarmManager$AlarmClockInfo;)V
    .registers 2

    .line 474
    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 475
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateStatusText()V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 2

    .line 286
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onRtlPropertiesChanged(I)V

    .line 287
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    return-void
.end method

.method public onZenChanged(I)V
    .registers 2

    .line 480
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateStatusText()V

    return-void
.end method

.method public setListening(Z)V
    .registers 4

    .line 430
    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mListening:Z

    if-ne p1, v0, :cond_5

    return-void

    .line 433
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSPanel;->setListening(Z)V

    .line 434
    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mListening:Z

    .line 435
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mCarrierGroup:Lcom/android/systemui/qs/QSCarrierGroup;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mListening:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSCarrierGroup;->setListening(Z)V

    if-eqz p1, :cond_2e

    .line 438
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 439
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 440
    iget-object p1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_3f

    .line 443
    :cond_2e
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 444
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 445
    iget-object p1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRingerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_3f
    return-void
.end method

.method public setMargins(I)V
    .registers 5

    const/4 v0, 0x0

    .line 532
    :goto_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 533
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 536
    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    if-eq v1, v2, :cond_1e

    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderTextContainerView:Landroid/view/View;

    if-ne v1, v2, :cond_14

    goto :goto_1e

    .line 540
    :cond_14
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 541
    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 542
    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    :cond_1e
    :goto_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_21
    return-void
.end method
