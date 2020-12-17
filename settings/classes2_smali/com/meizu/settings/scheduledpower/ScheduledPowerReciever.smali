.class public Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;
.super Landroid/content/BroadcastReceiver;
.source "ScheduledPowerReciever.java"


# instance fields
.field private mAm:Landroid/app/AlarmManager;

.field private mContext:Landroid/content/Context;

.field private mKm:Landroid/app/KeyguardManager;

.field private mListener:Lcom/meizu/settings/utils/PhoneStateListenerHepler$OnCallStateChangeListener;

.field private mPhoneStateListenerHepler:Lcom/meizu/settings/utils/PhoneStateListenerHepler;

.field private mPm:Landroid/os/PowerManager;

.field private mTm:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 105
    new-instance v0, Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever$1;-><init>(Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;)V

    iput-object v0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;->mListener:Lcom/meizu/settings/utils/PhoneStateListenerHepler$OnCallStateChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;)Landroid/content/Context;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;)Lcom/meizu/settings/utils/PhoneStateListenerHepler;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;->mPhoneStateListenerHepler:Lcom/meizu/settings/utils/PhoneStateListenerHepler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;I)V
    .registers 2

    .line 20
    invoke-direct {p0, p1}, Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;->showDialog(I)V

    return-void
.end method

.method private isPreviousScheduleTimeExpired(II)Z
    .registers 6

    .line 180
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 181
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const/16 v2, 0xb

    .line 182
    invoke-virtual {p0, v2, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 183
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 184
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->clear(I)V

    const/16 p1, 0xe

    .line 185
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->clear(I)V

    .line 186
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-lez p0, :cond_26

    const/4 p0, 0x1

    goto :goto_27

    :cond_26
    const/4 p0, 0x0

    :goto_27
    return p0
.end method

.method private printBootTime(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-wide/16 v0, 0x0

    const-string v2, "mz_scheduled_power_on_time"

    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "mz_scheduled_power_off_time"

    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide p0

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/16 v4, 0x81

    const-string v5, "ScheduledPowerReciever:printBootTime-period"

    .line 86
    invoke-static {v5, v2, v3, v4}, Lcom/meizu/settings/scheduledpower/ScheduledPowerUtils;->printLog(Ljava/lang/String;JI)V

    const-string v5, "ScheduledPowerReciever:printBootTime-current"

    .line 87
    invoke-static {v5, v0, v1, v4}, Lcom/meizu/settings/scheduledpower/ScheduledPowerUtils;->printLog(Ljava/lang/String;JI)V

    const-string v5, "ScheduledPowerReciever:printBootTime-autoShutdown"

    .line 88
    invoke-static {v5, p0, p1, v4}, Lcom/meizu/settings/scheduledpower/ScheduledPowerUtils;->printLog(Ljava/lang/String;JI)V

    const-string p0, "android.intent.action.BOOT_COMPLETED"

    .line 89
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_46

    sub-long/2addr v2, v0

    .line 90
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    const-wide/32 v0, 0x1d4c0

    cmp-long p0, p0, v0

    if-lez p0, :cond_46

    const-string p0, "ScheduledPowerReciever"

    const-string p1, "Did you boot device manually?"

    .line 91
    invoke-static {p0, p1}, Lcom/meizu/settings/scheduledpower/ScheduledPowerUtils;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_46
    return-void
.end method

.method private resetSchedulePoweroff(Landroid/content/Context;)V
    .registers 10

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_scheduled_power_off"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_10

    move v0, v3

    goto :goto_11

    :cond_10
    move v0, v2

    :goto_11
    if-eqz v0, :cond_63

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v4, 0x17

    const-string v5, "mz_scheduled_power_off_h"

    invoke-static {v0, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "mz_scheduled_power_off_m"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/16 v6, 0x7f

    const-string v7, "mz_scheduled_power_off_days"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 134
    invoke-direct {p0, v0, v4}, Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;->isPreviousScheduleTimeExpired(II)Z

    move-result v6

    if-nez v5, :cond_53

    if-eqz v6, :cond_53

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 138
    iget-object p0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;->mAm:Landroid/app/AlarmManager;

    const-wide/16 v0, 0x0

    invoke-static {p1, p0, v0, v1, v2}, Lcom/meizu/settings/scheduledpower/ScheduledPowerUtils;->setPowerOffTime(Landroid/content/Context;Landroid/app/AlarmManager;JZ)V

    const-string p0, "ScheduledPowerReciever"

    const-string p1, "resetSchedulePoweroff close"

    .line 139
    invoke-static {p0, p1}, Lcom/meizu/settings/scheduledpower/ScheduledPowerUtils;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_63

    .line 142
    :cond_53
    invoke-static {v0, v4, v5}, Lcom/meizu/settings/scheduledpower/ScheduledPowerUtils;->getTriggerCalendar(III)Ljava/util/Calendar;

    move-result-object v0

    .line 143
    iget-object p0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;->mAm:Landroid/app/AlarmManager;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {p1, p0, v1, v2, v3}, Lcom/meizu/settings/scheduledpower/ScheduledPowerUtils;->setPowerOffTime(Landroid/content/Context;Landroid/app/AlarmManager;JZ)V

    .line 144
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    :cond_63
    :goto_63
    return-void
.end method

.method private resetSchedulePoweron(Landroid/content/Context;)V
    .registers 10

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_scheduled_power_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_10

    move v0, v3

    goto :goto_11

    :cond_10
    move v0, v2

    :goto_11
    if-eqz v0, :cond_62

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x7

    const-string v5, "mz_scheduled_power_on_h"

    invoke-static {v0, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "mz_scheduled_power_on_m"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/16 v6, 0x7f

    const-string v7, "mz_scheduled_power_on_days"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 165
    invoke-direct {p0, v0, v4}, Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;->isPreviousScheduleTimeExpired(II)Z

    move-result v6

    if-nez v5, :cond_52

    if-eqz v6, :cond_52

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 169
    iget-object p0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;->mAm:Landroid/app/AlarmManager;

    const-wide/16 v0, 0x0

    invoke-static {p1, p0, v0, v1, v2}, Lcom/meizu/settings/scheduledpower/ScheduledPowerUtils;->setPowerOnTime(Landroid/content/Context;Landroid/app/AlarmManager;JZ)V

    const-string p0, "ScheduledPowerReciever"

    const-string p1, "resetSchedulePoweron close"

    .line 170
    invoke-static {p0, p1}, Lcom/meizu/settings/scheduledpower/ScheduledPowerUtils;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_62

    .line 172
    :cond_52
    invoke-static {v0, v4, v5}, Lcom/meizu/settings/scheduledpower/ScheduledPowerUtils;->getTriggerCalendar(III)Ljava/util/Calendar;

    move-result-object v0

    .line 173
    iget-object p0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;->mAm:Landroid/app/AlarmManager;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {p1, p0, v1, v2, v3}, Lcom/meizu/settings/scheduledpower/ScheduledPowerUtils;->setPowerOnTime(Landroid/content/Context;Landroid/app/AlarmManager;JZ)V

    .line 174
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    :cond_62
    :goto_62
    return-void
.end method

.method private shouldShutDown(J)Z
    .registers 6

    .line 97
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 98
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const/4 p0, 0x0

    const-string v2, "ScheduledPowerReciever:shouldShutDown off time"

    .line 99
    invoke-static {v2, p1, p2, p0}, Lcom/meizu/settings/scheduledpower/ScheduledPowerUtils;->printLog(Ljava/lang/String;JI)V

    const-string v2, "ScheduledPowerReciever:shouldShutDown current time"

    .line 100
    invoke-static {v2, v0, v1, p0}, Lcom/meizu/settings/scheduledpower/ScheduledPowerUtils;->printLog(Ljava/lang/String;JI)V

    sub-long/2addr v0, p1

    .line 102
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    const-wide/16 v0, 0x7530

    cmp-long p1, p1, v0

    if-gez p1, :cond_1f

    const/4 p0, 0x1

    :cond_1f
    return p0
.end method

.method private showDialog(I)V
    .registers 5

    .line 191
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 193
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 194
    iget-object v1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;->mContext:Landroid/content/Context;

    const-class v2, Lcom/meizu/settings/scheduledpower/ShutdownService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "targetTime"

    .line 195
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 196
    iget-object p0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 33
    iput-object p1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    .line 34
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;->mAm:Landroid/app/AlarmManager;

    const-string v1, "keyguard"

    .line 35
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;->mKm:Landroid/app/KeyguardManager;

    const-string v1, "phone"

    .line 36
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;->mTm:Landroid/telephony/TelephonyManager;

    const-string v1, "power"

    .line 37
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;->mPm:Landroid/os/PowerManager;

    .line 38
    invoke-static {p1}, Lcom/meizu/settings/utils/PhoneStateListenerHepler;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/utils/PhoneStateListenerHepler;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;->mPhoneStateListenerHepler:Lcom/meizu/settings/utils/PhoneStateListenerHepler;

    .line 40
    iget-object v1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "mz_scheduled_power_off"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_46

    move v1, v3

    goto :goto_47

    :cond_46
    move v1, v2

    .line 42
    :goto_47
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "mz_scheduled_power_on"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_54

    move v2, v3

    .line 45
    :cond_54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isOffOpened = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isOnOpened = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isInteractive = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;->mPm:Landroid/os/PowerManager;

    .line 46
    invoke-virtual {v4}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " callstate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;->mTm:Landroid/telephony/TelephonyManager;

    .line 47
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ScheduledPowerReciever"

    .line 45
    invoke-static {v4, v3}, Lcom/meizu/settings/scheduledpower/ScheduledPowerUtils;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_9b

    if-nez v2, :cond_9b

    return-void

    :cond_9b
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f5

    const-string v1, "android.intent.action.TIME_SET"

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ac

    goto :goto_f5

    :cond_ac
    const-string v1, "meizu.intent.action.SCHEDULED_POWERON"

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b8

    .line 59
    invoke-direct {p0, p1}, Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;->resetSchedulePoweron(Landroid/content/Context;)V

    goto :goto_fe

    :cond_b8
    const-string v1, "meizu.intent.action.SCHEDULED_POWEROFF"

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fe

    const-wide/16 v0, 0x0

    const-string v2, "offTime"

    .line 61
    invoke-virtual {p2, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 63
    iget-object p2, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;->mPhoneStateListenerHepler:Lcom/meizu/settings/utils/PhoneStateListenerHepler;

    invoke-virtual {p2}, Lcom/meizu/settings/utils/PhoneStateListenerHepler;->isPhoneStateIdle()Z

    move-result p2

    if-nez p2, :cond_d8

    .line 64
    iget-object p2, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;->mPhoneStateListenerHepler:Lcom/meizu/settings/utils/PhoneStateListenerHepler;

    iget-object v0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;->mListener:Lcom/meizu/settings/utils/PhoneStateListenerHepler$OnCallStateChangeListener;

    invoke-virtual {p2, v0}, Lcom/meizu/settings/utils/PhoneStateListenerHepler;->addListener(Lcom/meizu/settings/utils/PhoneStateListenerHepler$OnCallStateChangeListener;)V

    goto :goto_f1

    .line 65
    :cond_d8
    iget-object p2, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;->mPm:Landroid/os/PowerManager;

    if-eqz p2, :cond_e6

    invoke-virtual {p2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p2

    if-nez p2, :cond_e6

    .line 66
    invoke-static {p1}, Lcom/meizu/settings/scheduledpower/ScheduledPowerUtils;->shutdown(Landroid/content/Context;)V

    goto :goto_f1

    .line 67
    :cond_e6
    invoke-direct {p0, v0, v1}, Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;->shouldShutDown(J)Z

    move-result p2

    if-eqz p2, :cond_f1

    const/16 p2, 0x3c

    .line 68
    invoke-direct {p0, p2}, Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;->showDialog(I)V

    .line 70
    :cond_f1
    :goto_f1
    invoke-direct {p0, p1}, Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;->resetSchedulePoweroff(Landroid/content/Context;)V

    goto :goto_fe

    .line 55
    :cond_f5
    :goto_f5
    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;->printBootTime(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0, p1}, Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;->resetSchedulePoweroff(Landroid/content/Context;)V

    .line 57
    invoke-direct {p0, p1}, Lcom/meizu/settings/scheduledpower/ScheduledPowerReciever;->resetSchedulePoweron(Landroid/content/Context;)V

    :cond_fe
    :goto_fe
    return-void
.end method
