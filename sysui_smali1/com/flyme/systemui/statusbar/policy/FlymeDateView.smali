.class public Lcom/flyme/systemui/statusbar/policy/FlymeDateView;
.super Landroid/widget/TextView;
.source "FlymeDateView.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/FlymeThemeController$IFontRefresh;
.implements Lcom/meizu/common/TimeTickManager$Callback;


# instance fields
.field private mCurrentLocale:Ljava/util/Locale;

.field private final mCurrentTime:Ljava/util/Date;

.field private mDateFormat:Ljava/text/SimpleDateFormat;

.field private mLastText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeDateView;->mCurrentTime:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 2

    .line 35
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 36
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/common/TimeTickManager;->getInstance(Landroid/content/Context;)Lcom/meizu/common/TimeTickManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/meizu/common/TimeTickManager;->addCallback(Lcom/meizu/common/TimeTickManager$Callback;)V

    .line 37
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/policy/FlymeDateView;->updateClock()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 42
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeDateView;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 44
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/common/TimeTickManager;->getInstance(Landroid/content/Context;)Lcom/meizu/common/TimeTickManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/meizu/common/TimeTickManager;->removeCallback(Lcom/meizu/common/TimeTickManager$Callback;)V

    return-void
.end method

.method public onTimeTick(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    if-eqz p2, :cond_3b

    .line 86
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.TIME_TICK"

    .line 87
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    const-string v1, "android.intent.action.TIME_SET"

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    if-nez p2, :cond_26

    .line 88
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_26

    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_26

    .line 90
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3b

    .line 91
    :cond_26
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_38

    .line 92
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_38

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    :cond_38
    const/4 p1, 0x0

    .line 94
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeDateView;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 98
    :cond_3b
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/policy/FlymeDateView;->updateClock()V

    return-void
.end method

.method public refreshFont()V
    .registers 3

    .line 75
    invoke-static {}, Landroid/content/res/flymetheme/FlymeFontsHelper;->hasFlymeTypeface()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 76
    invoke-static {p0}, Lcom/android/systemui/FontSizeUtils;->restoreTypeface(Landroid/widget/TextView;)V

    goto :goto_14

    :cond_a
    const/4 v0, 0x0

    const-string v1, "sans-serif-medium"

    .line 78
    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 79
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_14
    return-void
.end method

.method protected updateClock()V
    .registers 6

    .line 48
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeDateView;->mDateFormat:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_55

    .line 49
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeDateView;->mCurrentLocale:Ljava/util/Locale;

    .line 50
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    .line 51
    iget-object v1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->qs_header_date_local_pattern:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 52
    iget-object v2, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v0, :cond_2b

    sget v0, Lcom/android/systemui/R$string;->qs_header_date_main_pattern24:I

    goto :goto_2d

    :cond_2b
    sget v0, Lcom/android/systemui/R$string;->qs_header_date_main_pattern12:I

    :goto_2d
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_35

    const-string v0, "%s"

    :cond_35
    if-nez v1, :cond_3a

    const-string v1, ""

    goto :goto_40

    .line 54
    :cond_3a
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/FlymeDateView;->mCurrentLocale:Ljava/util/Locale;

    invoke-static {v2, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    :goto_40
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/FlymeDateView;->mCurrentLocale:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 56
    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/FlymeDateView;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeDateView;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 58
    :cond_55
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeDateView;->mCurrentTime:Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 59
    monitor-enter p0

    .line 60
    :try_start_5f
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeDateView;->mDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeDateView;->mCurrentTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeDateView;->mLastText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_74

    .line 62
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeDateView;->mLastText:Ljava/lang/String;

    .line 65
    :cond_74
    monitor-exit p0

    return-void

    :catchall_76
    move-exception v0

    monitor-exit p0
    :try_end_78
    .catchall {:try_start_5f .. :try_end_78} :catchall_76

    throw v0
.end method
