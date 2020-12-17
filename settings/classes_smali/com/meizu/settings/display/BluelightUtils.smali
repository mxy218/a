.class public Lcom/meizu/settings/display/BluelightUtils;
.super Ljava/lang/Object;
.source "BluelightUtils.java"


# direct methods
.method public static enableBluelightReduction(Landroid/content/Context;ZZ)V
    .registers 7

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableBluelightReduction ---> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluelightUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p2, :cond_24

    .line 145
    invoke-static {p0, p1}, Lcom/meizu/settings/display/BluelightUtils;->setBluelightEnable(Landroid/content/Context;Z)V

    .line 146
    invoke-static {v0, v1}, Lcom/meizu/settings/display/BluelightUtils;->setBluelightReductionEnabledByUser(Landroid/content/ContentResolver;Z)V

    goto :goto_4f

    .line 148
    :cond_24
    invoke-static {p0}, Lcom/meizu/settings/display/BluelightUtils;->getTimeConfigType(Landroid/content/Context;)I

    move-result p2

    const/4 v2, 0x0

    const-string v3, "immediately_on_or_off_by_user"

    .line 149
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_32

    move v2, v1

    :cond_32
    if-nez p2, :cond_38

    .line 152
    invoke-static {p0, p1}, Lcom/meizu/settings/display/BluelightUtils;->setBluelightEnable(Landroid/content/Context;Z)V

    goto :goto_4f

    :cond_38
    if-eqz v2, :cond_4c

    .line 155
    invoke-static {v0}, Lcom/meizu/settings/display/BluelightUtils;->getBluelightReductionEnabledByUserTime(Landroid/content/ContentResolver;)J

    move-result-wide v2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_46

    .line 157
    invoke-static {p0, v2, v3, p1}, Lcom/meizu/settings/display/BluelightUtils;->isBluelightNeedEnableInCustomTimeType(Landroid/content/Context;JZ)Z

    move-result p1

    goto :goto_4c

    :cond_46
    if-ne p2, v1, :cond_4c

    .line 159
    invoke-static {p0, p1}, Lcom/meizu/settings/display/BluelightUtils;->isBluelightNeedEnableInTwilightTimeType(Landroid/content/Context;Z)Z

    move-result p1

    .line 162
    :cond_4c
    :goto_4c
    invoke-static {p0, p1}, Lcom/meizu/settings/display/BluelightUtils;->setBluelightEnable(Landroid/content/Context;Z)V

    :goto_4f
    return-void
.end method

.method private static enableBluelightReductionIfNeed(Landroid/content/Context;Landroid/content/ContentResolver;Z)V
    .registers 3

    .line 274
    invoke-static {p1}, Lcom/meizu/settings/display/BluelightUtils;->isBluelightReductionEnabled(Landroid/content/ContentResolver;)Z

    move-result p1

    if-eq p1, p2, :cond_a

    const/4 p1, 0x0

    .line 276
    invoke-static {p0, p2, p1}, Lcom/meizu/settings/display/BluelightUtils;->enableBluelightReduction(Landroid/content/Context;ZZ)V

    :cond_a
    return-void
.end method

.method public static getBlueLightConfigType(Landroid/content/Context;)I
    .registers 3

    .line 363
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "blue_reduction_config_type"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getBlueTypeAmberEntry(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 2

    const v0, 0x7f120306

    .line 326
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBlueTypeAppleGreenEntry(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 2

    const v0, 0x7f120307

    .line 330
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBluelightPreferenceSummary(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 3

    .line 334
    invoke-static {p0}, Lcom/meizu/settings/display/BluelightUtils;->getTimeConfigType(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_18

    const/4 v1, 0x1

    if-eq v0, v1, :cond_13

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 344
    :cond_e
    invoke-static {p0}, Lcom/meizu/settings/display/BluelightUtils;->getSelfConfigTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 342
    :cond_13
    invoke-static {p0}, Lcom/meizu/settings/display/BluelightUtils;->getTimeConfigTypeTwilightSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 336
    :cond_18
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/display/BluelightUtils;->isBluelightReductionEnabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const v0, 0x7f120fa9

    .line 337
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 339
    :cond_2a
    invoke-static {p0}, Lcom/meizu/settings/display/BluelightUtils;->getTimeConfigTypeCloseSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static getBluelightReductionEnabledByUserTime(Landroid/content/ContentResolver;)J
    .registers 4

    const-string v0, "immediately_on_or_off_by_user_time"

    const-wide/16 v1, -0x1

    .line 55
    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getEndHour(Landroid/content/ContentResolver;)I
    .registers 3

    const-string/jumbo v0, "self_config_time_end_hour"

    const/4 v1, 0x7

    .line 306
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getEndMinute(Landroid/content/ContentResolver;)I
    .registers 3

    const-string/jumbo v0, "self_config_time_end_minute"

    const/4 v1, 0x0

    .line 310
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 4

    .line 367
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "flyme.intent.action.BLUE_LIGHT_REDUCTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    .line 368
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    .line 367
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static getSelfConfigTime(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 350
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 351
    invoke-static {v0}, Lcom/meizu/settings/display/BluelightUtils;->getStartHour(Landroid/content/ContentResolver;)I

    move-result v1

    .line 352
    invoke-static {v0}, Lcom/meizu/settings/display/BluelightUtils;->getStartMinute(Landroid/content/ContentResolver;)I

    move-result v2

    .line 353
    invoke-static {v0}, Lcom/meizu/settings/display/BluelightUtils;->getEndHour(Landroid/content/ContentResolver;)I

    move-result v3

    .line 354
    invoke-static {v0}, Lcom/meizu/settings/display/BluelightUtils;->getEndMinute(Landroid/content/ContentResolver;)I

    move-result v0

    .line 355
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v2, p0}, Lcom/meizu/settings/display/BluelightUtils;->getTimeSummary(IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v0, p0}, Lcom/meizu/settings/display/BluelightUtils;->getTimeSummary(IILandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStartHour(Landroid/content/ContentResolver;)I
    .registers 3

    const-string/jumbo v0, "self_config_time_start_hour"

    const/16 v1, 0x17

    .line 298
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getStartMinute(Landroid/content/ContentResolver;)I
    .registers 3

    const-string/jumbo v0, "self_config_time_start_minute"

    const/4 v1, 0x0

    .line 302
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getTimeConfigType(Landroid/content/Context;)I
    .registers 3

    .line 359
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "time_config_type"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getTimeConfigTypeCloseSummary(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 2

    const v0, 0x7f1204f2

    .line 314
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTimeConfigTypeCustomTimeSummary(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 2

    const v0, 0x7f12134a

    .line 322
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTimeConfigTypeTwilightSummary(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 2

    const v0, 0x7f121585

    .line 318
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTimeSummary(IILandroid/content/Context;)Ljava/lang/String;
    .registers 10

    .line 379
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    const/4 v0, 0x1

    .line 380
    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v0, 0x2

    .line 381
    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v0, 0x5

    .line 382
    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    move-object v0, v6

    move v4, p0

    move v5, p1

    .line 383
    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 384
    invoke-static {p2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p0

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isBluelightNeedEnableInCustomTimeType(Landroid/content/Context;JZ)Z
    .registers 22

    move-wide/from16 v0, p1

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-lez v2, :cond_10

    return v3

    .line 99
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 100
    invoke-static {v2}, Lcom/meizu/settings/display/BluelightUtils;->isBluelightReductionEnabled(Landroid/content/ContentResolver;)Z

    move-result v4

    .line 101
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 102
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    .line 103
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    .line 104
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    .line 105
    invoke-virtual {v15, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 106
    invoke-static {v2}, Lcom/meizu/settings/display/BluelightUtils;->getStartHour(Landroid/content/ContentResolver;)I

    move-result v10

    .line 107
    invoke-static {v2}, Lcom/meizu/settings/display/BluelightUtils;->getStartMinute(Landroid/content/ContentResolver;)I

    move-result v11

    .line 108
    invoke-static {v2}, Lcom/meizu/settings/display/BluelightUtils;->getEndHour(Landroid/content/ContentResolver;)I

    move-result v0

    .line 109
    invoke-static {v2}, Lcom/meizu/settings/display/BluelightUtils;->getEndMinute(Landroid/content/ContentResolver;)I

    move-result v1

    const/4 v2, 0x1

    .line 110
    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v12, 0x2

    invoke-virtual {v5, v12}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x5

    .line 111
    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v16

    const/16 v17, 0x0

    move-object v6, v13

    move v3, v9

    move/from16 v9, v16

    move v3, v12

    move/from16 v12, v17

    .line 110
    invoke-virtual/range {v6 .. v12}, Ljava/util/Calendar;->set(IIIIII)V

    .line 113
    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v3, 0x5

    .line 114
    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/4 v12, 0x0

    move-object v6, v14

    move v10, v0

    move v11, v1

    .line 113
    invoke-virtual/range {v6 .. v12}, Ljava/util/Calendar;->set(IIIIII)V

    .line 116
    invoke-virtual {v15, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v13, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_9c

    .line 118
    invoke-virtual {v15}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    cmp-long v0, v0, v5

    if-gez v0, :cond_85

    if-eqz v4, :cond_a2

    if-nez p3, :cond_a2

    return v2

    .line 122
    :cond_85
    invoke-virtual {v15}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {v14}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    cmp-long v0, v0, v5

    if-gtz v0, :cond_97

    if-nez v4, :cond_a2

    if-eqz p3, :cond_a2

    const/4 v0, 0x0

    return v0

    :cond_97
    if-eqz v4, :cond_a2

    if-nez p3, :cond_a2

    return v2

    :cond_9c
    const/4 v0, 0x0

    if-nez v4, :cond_a2

    if-eqz p3, :cond_a2

    return v0

    :cond_a2
    return p3
.end method

.method private static isBluelightNeedEnableInTwilightTimeType(Landroid/content/Context;Z)Z
    .registers 2

    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/display/BluelightUtils;->isBluelightReductionEnabled(Landroid/content/ContentResolver;)Z

    move-result p0

    if-eqz p0, :cond_e

    if-nez p1, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    if-nez p0, :cond_14

    if-eqz p1, :cond_14

    const/4 p0, 0x0

    return p0

    :cond_14
    return p1
.end method

.method public static isBluelightReductionEnabled(Landroid/content/ContentResolver;)Z
    .registers 3

    const/4 v0, 0x0

    const-string v1, "immediately_on_or_off"

    .line 45
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_b

    move v0, v1

    .line 46
    :cond_b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isBluelightReductionEnabled ---> "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BluelightUtils"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isSupportForestGreen(Landroid/content/Context;)Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public static scheduleNext(Landroid/content/Context;)V
    .registers 9

    const-string v0, "alarm"

    .line 186
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/AlarmManager;

    .line 187
    invoke-static {p0}, Lcom/meizu/settings/display/BluelightUtils;->getTimeConfigType(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "BluelightUtils"

    const-string v1, "cancel the bluelight alarm."

    .line 189
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-static {p0}, Lcom/meizu/settings/display/BluelightUtils;->getPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_39

    :cond_1e
    const/4 v1, 0x2

    if-ne v0, v1, :cond_39

    .line 193
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 195
    invoke-static {v2}, Lcom/meizu/settings/display/BluelightUtils;->getStartHour(Landroid/content/ContentResolver;)I

    move-result v4

    invoke-static {v2}, Lcom/meizu/settings/display/BluelightUtils;->getStartMinute(Landroid/content/ContentResolver;)I

    move-result v5

    .line 196
    invoke-static {v2}, Lcom/meizu/settings/display/BluelightUtils;->getEndHour(Landroid/content/ContentResolver;)I

    move-result v6

    invoke-static {v2}, Lcom/meizu/settings/display/BluelightUtils;->getEndMinute(Landroid/content/ContentResolver;)I

    move-result v7

    move-object v1, p0

    .line 194
    invoke-static/range {v1 .. v7}, Lcom/meizu/settings/display/BluelightUtils;->scheduleOrEnableOrDisbaleImmediately(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/app/AlarmManager;IIII)V

    :cond_39
    :goto_39
    return-void
.end method

.method public static scheduleOrEnableOrDisbaleImmediately(Landroid/content/Context;)V
    .registers 9

    .line 202
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/settings/display/BluelightUtils;->setBluelightReductionEnabledByUser(Landroid/content/ContentResolver;Z)V

    const-string v0, "alarm"

    .line 203
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/AlarmManager;

    .line 204
    invoke-static {p0}, Lcom/meizu/settings/display/BluelightUtils;->getTimeConfigType(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "BluelightUtils"

    const-string v1, "cancel the bluelight alarm."

    .line 206
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-static {p0}, Lcom/meizu/settings/display/BluelightUtils;->getPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_41

    :cond_26
    const/4 v1, 0x2

    if-ne v0, v1, :cond_41

    .line 210
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 212
    invoke-static {v2}, Lcom/meizu/settings/display/BluelightUtils;->getStartHour(Landroid/content/ContentResolver;)I

    move-result v4

    invoke-static {v2}, Lcom/meizu/settings/display/BluelightUtils;->getStartMinute(Landroid/content/ContentResolver;)I

    move-result v5

    .line 213
    invoke-static {v2}, Lcom/meizu/settings/display/BluelightUtils;->getEndHour(Landroid/content/ContentResolver;)I

    move-result v6

    invoke-static {v2}, Lcom/meizu/settings/display/BluelightUtils;->getEndMinute(Landroid/content/ContentResolver;)I

    move-result v7

    move-object v1, p0

    .line 211
    invoke-static/range {v1 .. v7}, Lcom/meizu/settings/display/BluelightUtils;->scheduleOrEnableOrDisbaleImmediately(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/app/AlarmManager;IIII)V

    :cond_41
    :goto_41
    return-void
.end method

.method public static scheduleOrEnableOrDisbaleImmediately(Landroid/content/Context;IIII)V
    .registers 12

    .line 220
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v0, 0x0

    .line 221
    invoke-static {v1, v0}, Lcom/meizu/settings/display/BluelightUtils;->setBluelightReductionEnabledByUser(Landroid/content/ContentResolver;Z)V

    const-string v0, "alarm"

    .line 222
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/AlarmManager;

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 223
    invoke-static/range {v0 .. v6}, Lcom/meizu/settings/display/BluelightUtils;->scheduleOrEnableOrDisbaleImmediately(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/app/AlarmManager;IIII)V

    return-void
.end method

.method private static scheduleOrEnableOrDisbaleImmediately(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/app/AlarmManager;IIII)V
    .registers 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 229
    invoke-static/range {p0 .. p0}, Lcom/meizu/settings/display/BluelightUtils;->getPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 230
    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 232
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 233
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    const/4 v13, 0x1

    .line 234
    invoke-virtual {v4, v13}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v14, 0x2

    invoke-virtual {v4, v14}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v15, 0x5

    .line 235
    invoke-virtual {v4, v15}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v11, 0x0

    move-object v5, v12

    move/from16 v9, p3

    move/from16 v10, p4

    .line 234
    invoke-virtual/range {v5 .. v11}, Ljava/util/Calendar;->set(IIIIII)V

    .line 236
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 237
    invoke-virtual {v4, v13}, Ljava/util/Calendar;->get(I)I

    move-result v17

    invoke-virtual {v4, v14}, Ljava/util/Calendar;->get(I)I

    move-result v18

    .line 238
    invoke-virtual {v4, v15}, Ljava/util/Calendar;->get(I)I

    move-result v19

    const/16 v22, 0x0

    move-object/from16 v16, v5

    move/from16 v20, p5

    move/from16 v21, p6

    .line 237
    invoke-virtual/range {v16 .. v22}, Ljava/util/Calendar;->set(IIIIII)V

    .line 240
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 241
    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 242
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v10, v8, v4

    const-wide/32 v11, 0x5265c00

    const/4 v14, 0x0

    if-gez v10, :cond_79

    cmp-long v10, v6, v8

    if-ltz v10, :cond_6b

    cmp-long v6, v6, v4

    if-gez v6, :cond_6b

    .line 247
    invoke-static {v0, v1, v13}, Lcom/meizu/settings/display/BluelightUtils;->enableBluelightReductionIfNeed(Landroid/content/Context;Landroid/content/ContentResolver;Z)V

    .line 248
    invoke-static {v0, v2, v3, v4, v5}, Lcom/meizu/settings/display/BluelightUtils;->setAlarmAndPrintLog(Landroid/content/Context;Landroid/app/AlarmManager;Landroid/app/PendingIntent;J)V

    goto :goto_97

    .line 250
    :cond_6b
    invoke-static {v0, v1, v14}, Lcom/meizu/settings/display/BluelightUtils;->enableBluelightReductionIfNeed(Landroid/content/Context;Landroid/content/ContentResolver;Z)V

    if-gez v10, :cond_74

    .line 252
    invoke-static {v0, v2, v3, v8, v9}, Lcom/meizu/settings/display/BluelightUtils;->setAlarmAndPrintLog(Landroid/content/Context;Landroid/app/AlarmManager;Landroid/app/PendingIntent;J)V

    goto :goto_97

    :cond_74
    add-long/2addr v8, v11

    .line 254
    invoke-static {v0, v2, v3, v8, v9}, Lcom/meizu/settings/display/BluelightUtils;->setAlarmAndPrintLog(Landroid/content/Context;Landroid/app/AlarmManager;Landroid/app/PendingIntent;J)V

    goto :goto_97

    :cond_79
    cmp-long v10, v6, v8

    if-gez v10, :cond_88

    cmp-long v10, v6, v4

    if-ltz v10, :cond_88

    .line 260
    invoke-static {v0, v1, v14}, Lcom/meizu/settings/display/BluelightUtils;->enableBluelightReductionIfNeed(Landroid/content/Context;Landroid/content/ContentResolver;Z)V

    .line 261
    invoke-static {v0, v2, v3, v8, v9}, Lcom/meizu/settings/display/BluelightUtils;->setAlarmAndPrintLog(Landroid/content/Context;Landroid/app/AlarmManager;Landroid/app/PendingIntent;J)V

    goto :goto_97

    .line 263
    :cond_88
    invoke-static {v0, v1, v13}, Lcom/meizu/settings/display/BluelightUtils;->enableBluelightReductionIfNeed(Landroid/content/Context;Landroid/content/ContentResolver;Z)V

    cmp-long v1, v6, v4

    if-gez v1, :cond_93

    .line 265
    invoke-static {v0, v2, v3, v4, v5}, Lcom/meizu/settings/display/BluelightUtils;->setAlarmAndPrintLog(Landroid/content/Context;Landroid/app/AlarmManager;Landroid/app/PendingIntent;J)V

    goto :goto_97

    :cond_93
    add-long/2addr v4, v11

    .line 267
    invoke-static {v0, v2, v3, v4, v5}, Lcom/meizu/settings/display/BluelightUtils;->setAlarmAndPrintLog(Landroid/content/Context;Landroid/app/AlarmManager;Landroid/app/PendingIntent;J)V

    :goto_97
    return-void
.end method

.method private static setAlarmAndPrintLog(Landroid/content/Context;Landroid/app/AlarmManager;Landroid/app/PendingIntent;J)V
    .registers 6

    .line 282
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setExact ---> "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BluelightUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 283
    invoke-virtual {p1, p0, p3, p4, p2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public static setBluelightEnable(Landroid/content/Context;Z)V
    .registers 8

    const-string/jumbo v0, "persist.sys.enable.dc"

    const-string v1, "false"

    .line 68
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBluelightEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", dc:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluelightUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "immediately_on_or_off"

    invoke-static {v1, v3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v1, 0x1

    const-string/jumbo v3, "pending"

    const-string/jumbo v4, "true"

    if-eqz p1, :cond_45

    .line 72
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    const/4 v0, 0x0

    .line 73
    invoke-static {v0, v3}, Lcom/meizu/settings/display/BluelightUtils;->setDcLightEnable(ZLjava/lang/String;)V

    goto :goto_50

    :cond_45
    if-nez p1, :cond_50

    .line 74
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 75
    invoke-static {v1, v4}, Lcom/meizu/settings/display/BluelightUtils;->setDcLightEnable(ZLjava/lang/String;)V

    :cond_50
    :goto_50
    const-string v0, "fingerprint"

    .line 77
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    const-string/jumbo v3, "user"

    .line 78
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 79
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasClient()Z

    move-result v0

    xor-int/2addr v0, v1

    .line 80
    invoke-virtual {v3}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v1

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBluelightEnable fingerprintHasnotClient:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isUserUnlocked:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_8b

    if-nez v1, :cond_97

    .line 84
    :cond_8b
    invoke-static {p0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/display/QcomDisplayWrapper;

    move-result-object p0

    .line 85
    new-instance v0, Lcom/meizu/settings/display/BluelightUtils$1;

    invoke-direct {v0, p0, p1}, Lcom/meizu/settings/display/BluelightUtils$1;-><init>(Lcom/meizu/settings/display/QcomDisplayWrapper;Z)V

    invoke-virtual {p0, v0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->registerDisplayConnnectListener(Lcom/meizu/settings/display/QcomDisplayWrapper$DisplayConnnectListener;)V

    :cond_97
    return-void
.end method

.method public static setBluelightReductionEnabledByUser(Landroid/content/ContentResolver;Z)V
    .registers 4

    const-string v0, "immediately_on_or_off_by_user"

    .line 59
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p1, :cond_f

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/meizu/settings/display/BluelightUtils;->setBluelightReductionEnabledByUserTime(Landroid/content/ContentResolver;J)V

    goto :goto_14

    :cond_f
    const-wide/16 v0, -0x1

    .line 63
    invoke-static {p0, v0, v1}, Lcom/meizu/settings/display/BluelightUtils;->setBluelightReductionEnabledByUserTime(Landroid/content/ContentResolver;J)V

    :goto_14
    return-void
.end method

.method private static setBluelightReductionEnabledByUserTime(Landroid/content/ContentResolver;J)V
    .registers 4

    const-string v0, "immediately_on_or_off_by_user_time"

    .line 51
    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    return-void
.end method

.method public static setDcLightEnable(ZLjava/lang/String;)V
    .registers 3

    :try_start_0
    const-string/jumbo v0, "persist.sys.enable.dc"

    .line 413
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "device_control"

    .line 414
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lmeizu/os/IDeviceControlService$Stub;->asInterface(Landroid/os/IBinder;)Lmeizu/os/IDeviceControlService;

    move-result-object p1

    const-string v0, "/sys/class/meizu/lcm/display/DC_Enable"

    if-eqz p0, :cond_17

    const-string p0, "1"

    goto :goto_19

    :cond_17
    const-string p0, "0"

    .line 415
    :goto_19
    invoke-interface {p1, v0, p0}, Lmeizu/os/IDeviceControlService;->writeNode(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception p0

    .line 417
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_21
    return-void
.end method
