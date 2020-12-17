.class public Lcom/meizu/settings/scheduledpower/ScheduledPowerUtils;
.super Ljava/lang/Object;
.source "ScheduledPowerUtils.java"


# direct methods
.method public static getGapDays(Ljava/util/Calendar;I)I
    .registers 7

    if-nez p1, :cond_4

    const/4 p0, -0x1

    return p0

    :cond_4
    const/4 v0, 0x7

    .line 79
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x5

    rem-int/2addr p0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_e
    if-ge v2, v0, :cond_21

    add-int v3, p0, v2

    .line 84
    rem-int/2addr v3, v0

    const/4 v4, 0x1

    shl-int v3, v4, v3

    and-int/2addr v3, p1

    if-lez v3, :cond_1a

    goto :goto_1b

    :cond_1a
    move v4, v1

    :goto_1b
    if-eqz v4, :cond_1e

    goto :goto_21

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_21
    :goto_21
    return v2
.end method

.method public static getSettingsValue(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 3

    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getTriggerCalendar(III)Ljava/util/Calendar;
    .registers 8

    .line 44
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v1, 0xb

    .line 46
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xc

    .line 47
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-lt p0, v2, :cond_1d

    if-ne p0, v2, :cond_22

    if-gt p1, v4, :cond_22

    :cond_1d
    const/4 v2, 0x6

    const/4 v4, 0x1

    .line 52
    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->add(II)V

    .line 54
    :cond_22
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    .line 55
    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xd

    const/4 p1, 0x0

    .line 56
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xe

    .line 57
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    .line 60
    invoke-static {v0, p2}, Lcom/meizu/settings/scheduledpower/ScheduledPowerUtils;->getGapDays(Ljava/util/Calendar;I)I

    move-result p0

    if-lez p0, :cond_3d

    const/4 p1, 0x7

    .line 62
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->add(II)V

    :cond_3d
    return-object v0
.end method

.method public static isPowerOFFOpened(Landroid/content/Context;)Z
    .registers 3

    .line 235
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "mz_scheduled_power_on"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_f

    move v0, v1

    :cond_f
    return v0
.end method

.method public static isPowerOnOpened(Landroid/content/Context;)Z
    .registers 3

    .line 230
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "mz_scheduled_power_off"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_f

    move v0, v1

    :cond_f
    return v0
.end method

.method public static isTimeLegal(Landroid/content/Context;III)Z
    .registers 14

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 192
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 193
    invoke-virtual {v9, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v2, v9

    move v6, p1

    move v7, p2

    .line 194
    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    .line 195
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    .line 196
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 197
    invoke-virtual {v9, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_35

    const/16 p3, 0x17

    const-string v2, "mz_scheduled_power_off_h"

    .line 200
    invoke-static {p0, v2, p3}, Lcom/meizu/settings/scheduledpower/ScheduledPowerUtils;->getSettingsValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p3

    const-string v2, "mz_scheduled_power_off_m"

    .line 201
    invoke-static {p0, v2, v1}, Lcom/meizu/settings/scheduledpower/ScheduledPowerUtils;->getSettingsValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    :goto_32
    move v6, p3

    move v7, v2

    goto :goto_47

    :cond_35
    if-ne p3, v0, :cond_45

    const/4 p3, 0x7

    const-string v2, "mz_scheduled_power_on_h"

    .line 203
    invoke-static {p0, v2, p3}, Lcom/meizu/settings/scheduledpower/ScheduledPowerUtils;->getSettingsValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p3

    const-string v2, "mz_scheduled_power_on_m"

    .line 204
    invoke-static {p0, v2, v1}, Lcom/meizu/settings/scheduledpower/ScheduledPowerUtils;->getSettingsValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    goto :goto_32

    :cond_45
    move v6, v1

    move v7, v6

    :goto_47
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v2, v9

    .line 206
    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    .line 207
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long v4, p1, v2

    .line 208
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0x927c0

    cmp-long p3, v4, v6

    if-ltz p3, :cond_7b

    const-wide/32 v4, 0x5265c00

    add-long v8, v2, v4

    sub-long v8, p1, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    cmp-long p3, v8, v6

    if-ltz p3, :cond_7b

    add-long/2addr p1, v4

    sub-long/2addr p1, v2

    .line 209
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    cmp-long p1, p1, v6

    if-gez p1, :cond_7a

    goto :goto_7b

    :cond_7a
    return v0

    :cond_7b
    :goto_7b
    const p1, 0x7f12122c

    .line 210
    invoke-static {p0, p1}, Lcom/meizu/settings/utils/MzUtils;->showSlideNotice(Landroid/content/Context;I)V

    return v1
.end method

.method private static needDisableSchedulePower()Z
    .registers 1

    .line 94
    invoke-static {}, Lcom/meizu/settings/utils/MzUtils;->isAAFRunning()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public static printLog(Ljava/lang/String;JI)V
    .registers 5

    .line 151
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 153
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "->days:("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-static {p3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") targetTime:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string p3, "yyyy/MM/dd-HH:mm:ss"

    invoke-direct {p0, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ScheduledPower"

    .line 154
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static printLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ScheduledPower"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setPowerOffTime(Landroid/content/Context;Landroid/app/AlarmManager;JZ)V
    .registers 9

    .line 131
    invoke-static {}, Lcom/meizu/settings/scheduledpower/ScheduledPowerUtils;->needDisableSchedulePower()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/16 v0, 0x7f

    const-string v1, "mz_scheduled_power_off_days"

    .line 135
    invoke-static {p0, v1, v0}, Lcom/meizu/settings/scheduledpower/ScheduledPowerUtils;->getSettingsValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 136
    new-instance v1, Landroid/content/Intent;

    const-string v2, "meizu.intent.action.SCHEDULED_POWEROFF"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    .line 137
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "offTime"

    .line 138
    invoke-virtual {v1, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x8000000

    const/4 v3, 0x0

    .line 140
    invoke-static {p0, v3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 142
    invoke-virtual {p1, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    if-eqz p4, :cond_3b

    .line 144
    invoke-virtual {p1, v3, p2, p3, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    const-string p0, "ScheduledPowerUtils:setPowerOffTime"

    .line 145
    invoke-static {p0, p2, p3, v0}, Lcom/meizu/settings/scheduledpower/ScheduledPowerUtils;->printLog(Ljava/lang/String;JI)V

    :cond_3b
    return-void
.end method

.method public static setPowerOnTime(Landroid/content/Context;Landroid/app/AlarmManager;JZ)V
    .registers 9

    .line 107
    invoke-static {}, Lcom/meizu/settings/scheduledpower/ScheduledPowerUtils;->needDisableSchedulePower()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/16 v0, 0x7f

    const-string v1, "mz_scheduled_power_on_days"

    .line 111
    invoke-static {p0, v1, v0}, Lcom/meizu/settings/scheduledpower/ScheduledPowerUtils;->getSettingsValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 112
    new-instance v1, Landroid/content/Intent;

    const-string v2, "meizu.intent.action.SCHEDULED_POWERON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 114
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    .line 115
    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 117
    invoke-virtual {p1, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 120
    invoke-virtual {p1, p0}, Landroid/app/AlarmManager;->cancelOnePoweroffAlarm(Landroid/app/PendingIntent;)V

    if-eqz p4, :cond_3a

    const/4 p4, 0x4

    .line 122
    invoke-virtual {p1, p4, p2, p3, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    const-string p0, "ScheduledPowerUtils:setPowerOnTime"

    .line 123
    invoke-static {p0, p2, p3, v0}, Lcom/meizu/settings/scheduledpower/ScheduledPowerUtils;->printLog(Ljava/lang/String;JI)V

    :cond_3a
    return-void
.end method

.method public static shutdown(Landroid/content/Context;)V
    .registers 5

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start shutdown activity now context = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScheduledPowerUtils"

    invoke-static {v1, v0}, Lcom/meizu/settings/scheduledpower/ScheduledPowerUtils;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_19

    return-void

    .line 221
    :cond_19
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "mz_scheduled_power_off_time"

    .line 221
    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 223
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.intent.action.REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "android.intent.extra.KEY_CONFIRM"

    .line 224
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 225
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 226
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
