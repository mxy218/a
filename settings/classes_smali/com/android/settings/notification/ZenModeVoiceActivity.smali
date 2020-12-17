.class public Lcom/android/settings/notification/ZenModeVoiceActivity;
.super Lcom/android/settings/utils/VoiceSettingsActivity;
.source "ZenModeVoiceActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Lcom/android/settings/utils/VoiceSettingsActivity;-><init>()V

    return-void
.end method

.method private getChangeSummary(II)Ljava/lang/CharSequence;
    .registers 11

    const/4 v0, -0x1

    if-eqz p1, :cond_17

    const/4 v1, 0x3

    if-eq p1, v1, :cond_a

    move v1, v0

    move v2, v1

    move v3, v2

    goto :goto_1e

    :cond_a
    const v0, 0x7f121adb

    const v1, 0x7f10005a

    const v2, 0x7f100059

    const v3, 0x7f121ada

    goto :goto_1e

    :cond_17
    const v1, 0x7f121adc

    move v2, v0

    move v3, v2

    move v0, v1

    move v1, v3

    :goto_1e
    if-ltz p2, :cond_7f

    if-nez p1, :cond_23

    goto :goto_7f

    .line 110
    :cond_23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const p1, 0xea60

    mul-int/2addr p1, p2

    int-to-long v6, p1

    add-long/2addr v4, v6

    .line 111
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-static {p0, p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_3a

    const-string p1, "Hm"

    goto :goto_3c

    :cond_3a
    const-string p1, "hma"

    .line 112
    :goto_3c
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 113
    invoke-static {p1, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p1

    .line 114
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x3c

    if-ge p2, v6, :cond_62

    new-array v0, v0, [Ljava/lang/Object;

    .line 117
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v5

    aput-object p1, v0, v4

    invoke-virtual {p0, v1, p2, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 118
    :cond_62
    rem-int/lit8 v1, p2, 0x3c

    if-eqz v1, :cond_6f

    new-array p2, v4, [Ljava/lang/Object;

    aput-object p1, p2, v5

    .line 119
    invoke-virtual {p0, v3, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 121
    :cond_6f
    div-int/2addr p2, v6

    new-array v0, v0, [Ljava/lang/Object;

    .line 122
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    aput-object p1, v0, v4

    invoke-virtual {p0, v2, p2, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 107
    :cond_7f
    :goto_7f
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setZenModeConfig(ILandroid/service/notification/Condition;)V
    .registers 4

    const-string v0, "ZenModeVoiceActivity"

    if-eqz p2, :cond_e

    .line 79
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    iget-object p2, p2, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    goto :goto_16

    .line 81
    :cond_e
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    :goto_16
    return-void
.end method


# virtual methods
.method protected onVoiceSettingInteraction(Landroid/content/Intent;)Z
    .registers 7

    const-string v0, "android.settings.extra.do_not_disturb_mode_enabled"

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3f

    const/4 v1, -0x1

    const-string v3, "android.settings.extra.do_not_disturb_mode_minutes"

    .line 50
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x0

    .line 54
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_24

    if-lez v1, :cond_22

    .line 56
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-static {p0, v1, p1}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object p1

    move-object v3, p1

    :cond_22
    const/4 p1, 0x3

    goto :goto_25

    :cond_24
    move p1, v2

    .line 60
    :goto_25
    invoke-direct {p0, p1, v3}, Lcom/android/settings/notification/ZenModeVoiceActivity;->setZenModeConfig(ILandroid/service/notification/Condition;)V

    const-string v0, "audio"

    .line 62
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_37

    const/4 v3, 0x5

    const/4 v4, 0x1

    .line 65
    invoke-virtual {v0, v3, v2, v4}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 69
    :cond_37
    invoke-direct {p0, p1, v1}, Lcom/android/settings/notification/ZenModeVoiceActivity;->getChangeSummary(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/utils/VoiceSettingsActivity;->notifySuccess(Ljava/lang/CharSequence;)V

    goto :goto_49

    :cond_3f
    const-string p1, "ZenModeVoiceActivity"

    const-string v0, "Missing extra android.provider.Settings.EXTRA_DO_NOT_DISTURB_MODE_ENABLED"

    .line 71
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_49
    return v2
.end method
