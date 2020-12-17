.class public Lcom/android/systemui/statusbar/policy/SplitClockView;
.super Landroid/widget/LinearLayout;
.source "SplitClockView.java"


# instance fields
.field private mAmPmView:Landroid/widget/TextClock;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeView:Landroid/widget/TextClock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance p1, Lcom/android/systemui/statusbar/policy/SplitClockView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/policy/SplitClockView$1;-><init>(Lcom/android/systemui/statusbar/policy/SplitClockView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/SplitClockView;)V
    .registers 1

    .line 36
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->updatePatterns()V

    return-void
.end method

.method private static getAmPmPartEndIndex(Ljava/lang/String;)I
    .registers 9

    .line 120
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v0

    move v4, v2

    :goto_9
    const/4 v5, -0x1

    if-ltz v3, :cond_2e

    .line 122
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x61

    if-ne v6, v7, :cond_16

    move v7, v1

    goto :goto_17

    :cond_16
    move v7, v2

    .line 124
    :goto_17
    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v7, :cond_1e

    move v4, v1

    :cond_1e
    if-nez v7, :cond_2b

    if-eqz v6, :cond_23

    goto :goto_2b

    :cond_23
    if-ne v3, v0, :cond_26

    return v5

    :cond_26
    if-eqz v4, :cond_2a

    add-int/lit8 v5, v3, 0x1

    :cond_2a
    return v5

    :cond_2b
    :goto_2b
    add-int/lit8 v3, v3, -0x1

    goto :goto_9

    :cond_2e
    if-eqz v4, :cond_31

    goto :goto_32

    :cond_31
    move v2, v5

    :goto_32
    return v2
.end method

.method private updatePatterns()V
    .registers 7

    .line 90
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 91
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 90
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->getAmPmPartEndIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, ""

    const/4 v3, -0x1

    if-ne v1, v3, :cond_18

    move-object v3, v0

    move-object v1, v2

    goto :goto_21

    :cond_18
    const/4 v3, 0x0

    .line 99
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 104
    :goto_21
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mTimeView:Landroid/widget/TextClock;

    if-eqz v3, :cond_2c

    const-string v5, "a"

    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2d

    :cond_2c
    move-object v2, v3

    :goto_2d
    invoke-virtual {v4, v2}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mTimeView:Landroid/widget/TextClock;

    invoke-virtual {v2, v3}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mTimeView:Landroid/widget/TextClock;

    invoke-virtual {v2, v0}, Landroid/widget/TextClock;->setContentDescriptionFormat12Hour(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mTimeView:Landroid/widget/TextClock;

    invoke-virtual {v2, v0}, Landroid/widget/TextClock;->setContentDescriptionFormat24Hour(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 110
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {p0, v1}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 7

    .line 70
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 72
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.TIME_SET"

    .line 73
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    .line 74
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.LOCALE_CHANGED"

    .line 75
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    .line 76
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_SWITCHED"

    .line 77
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 80
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->updatePatterns()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 85
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 86
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .line 61
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 62
    sget v0, Lcom/android/systemui/R$id;->time_view:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mTimeView:Landroid/widget/TextClock;

    .line 63
    sget v0, Lcom/android/systemui/R$id;->am_pm_view:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmView:Landroid/widget/TextClock;

    .line 64
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mTimeView:Landroid/widget/TextClock;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setShowCurrentUserTime(Z)V

    .line 65
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {p0, v1}, Landroid/widget/TextClock;->setShowCurrentUserTime(Z)V

    return-void
.end method
