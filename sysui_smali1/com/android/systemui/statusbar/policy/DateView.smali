.class public Lcom/android/systemui/statusbar/policy/DateView;
.super Landroid/widget/TextView;
.source "DateView.java"

# interfaces
.implements Lcom/meizu/common/TimeTickManager$Callback;


# instance fields
.field private final mCurrentTime:Ljava/util/Date;

.field private mDateFormat:Landroid/icu/text/DateFormat;

.field private mDatePattern:Ljava/lang/String;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mCurrentTime:Ljava/util/Date;

    .line 47
    new-instance v0, Lcom/android/systemui/statusbar/policy/DateView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/DateView$1;-><init>(Lcom/android/systemui/statusbar/policy/DateView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/R$styleable;->DateView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 73
    :try_start_1c
    sget p2, Lcom/android/systemui/R$styleable;->DateView_datePattern:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDatePattern:Ljava/lang/String;
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_38

    .line 75
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDatePattern:Ljava/lang/String;

    if-nez p1, :cond_37

    .line 78
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$string;->system_ui_date_pattern:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDatePattern:Ljava/lang/String;

    :cond_37
    return-void

    :catchall_38
    move-exception p0

    .line 75
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/DateView;Landroid/icu/text/DateFormat;)Landroid/icu/text/DateFormat;
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDateFormat:Landroid/icu/text/DateFormat;

    return-object p1
.end method


# virtual methods
.method public synthetic lambda$onTimeTick$0$DateView()V
    .registers 2

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDateFormat:Landroid/icu/text/DateFormat;

    return-void
.end method

.method public synthetic lambda$onTimeTick$1$DateView()V
    .registers 1

    .line 151
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->updateClock()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 84
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 95
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/common/TimeTickManager;->getInstance(Landroid/content/Context;)Lcom/meizu/common/TimeTickManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/meizu/common/TimeTickManager;->addCallback(Lcom/meizu/common/TimeTickManager$Callback;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->updateClock()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 102
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDateFormat:Landroid/icu/text/DateFormat;

    .line 106
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/common/TimeTickManager;->getInstance(Landroid/content/Context;)Lcom/meizu/common/TimeTickManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/meizu/common/TimeTickManager;->removeCallback(Lcom/meizu/common/TimeTickManager$Callback;)V

    return-void
.end method

.method public onTimeTick(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    if-eqz p2, :cond_4a

    .line 141
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.TIME_TICK"

    .line 142
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    if-nez p2, :cond_26

    const-string p2, "android.intent.action.TIME_SET"

    .line 143
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_26

    .line 144
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_26

    .line 145
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4a

    .line 146
    :cond_26
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_32

    .line 147
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 149
    :cond_32
    invoke-virtual {p0}, Landroid/widget/TextView;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/policy/-$$Lambda$DateView$BoiQ4XPMjKuPKpFAg14aS1OsBSo;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/-$$Lambda$DateView$BoiQ4XPMjKuPKpFAg14aS1OsBSo;-><init>(Lcom/android/systemui/statusbar/policy/DateView;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 151
    :cond_3e
    invoke-virtual {p0}, Landroid/widget/TextView;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/policy/-$$Lambda$DateView$vGCRXqQ8in8_JREu2lPVJQ_kGqE;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/-$$Lambda$DateView$vGCRXqQ8in8_JREu2lPVJQ_kGqE;-><init>(Lcom/android/systemui/statusbar/policy/DateView;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4a
    return-void
.end method

.method protected updateClock()V
    .registers 4

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDateFormat:Landroid/icu/text/DateFormat;

    if-nez v0, :cond_15

    .line 111
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDatePattern:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    .line 113
    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    invoke-virtual {v0, v1}, Landroid/icu/text/DateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    .line 114
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDateFormat:Landroid/icu/text/DateFormat;

    .line 117
    :cond_15
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mCurrentTime:Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDateFormat:Landroid/icu/text/DateFormat;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mCurrentTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mLastText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 121
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mLastText:Ljava/lang/String;

    :cond_33
    return-void
.end method
