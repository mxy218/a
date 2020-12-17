.class public Lcom/android/server/display/hbm/HBMController;
.super Ljava/lang/Object;
.source "HBMController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/hbm/HBMController$HBMLimitCallback;
    }
.end annotation


# static fields
.field private static final ACTION_GO_TO_HBM_SETUP:Ljava/lang/String; = "flyme.intent.action.HBM_SETUP"

.field private static final DEVICE_HIGHT_TEMPERATURE_THRESHOLD:I = 0x36

.field private static final HBM_CHANNEL_ID:Ljava/lang/String; = "HBMChannel"

.field private static final HBM_ELAPSED_TIME_RESTRICTED_MILLS:J = 0x36ee80L

.field public static final HBM_NOTIFY_ID:I = 0x3e7

.field private static final HBM_PATH:Ljava/lang/String; = "/sys/class/meizu/lcm/display/sunnyscreen"

.field public static final HBM_REMAINING_REMINDERS_COUNT:Ljava/lang/String; = "hbm_remaining_reminders"

.field public static final HBM_SWITCH_STATE:Ljava/lang/String; = "hbm_switch_state"

.field private static final TAG:Ljava/lang/String; = "HBMController"


# instance fields
.field private mCallback:Lcom/android/server/display/hbm/HBMController$HBMLimitCallback;

.field private mContext:Landroid/content/Context;

.field private mDeviceTemperature:I

.field private mHBMOnTime:J

.field private mHBMStatusUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mHBMSwitchOn:Z

.field private mRemainingReminders:I

.field private mSettingsObserver:Landroid/database/ContentObserver;

.field private mSettingsSetUpReceiver:Landroid/content/BroadcastReceiver;

.field private mSettingsSetUpReceiverRegister:Z

.field private mStatusUpdateReceiverRegister:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"  # Landroid/content/Context;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/hbm/HBMController;->mStatusUpdateReceiverRegister:Z

    .line 55
    iput-boolean v0, p0, Lcom/android/server/display/hbm/HBMController;->mSettingsSetUpReceiverRegister:Z

    .line 60
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/display/hbm/HBMController;->mDeviceTemperature:I

    .line 66
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/server/display/hbm/HBMController;->mRemainingReminders:I

    .line 69
    new-instance v2, Lcom/android/server/display/hbm/HBMController$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/server/display/hbm/HBMController$1;-><init>(Lcom/android/server/display/hbm/HBMController;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/display/hbm/HBMController;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 98
    new-instance v2, Lcom/android/server/display/hbm/HBMController$2;

    invoke-direct {v2, p0}, Lcom/android/server/display/hbm/HBMController$2;-><init>(Lcom/android/server/display/hbm/HBMController;)V

    iput-object v2, p0, Lcom/android/server/display/hbm/HBMController;->mHBMStatusUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 119
    new-instance v2, Lcom/android/server/display/hbm/HBMController$3;

    invoke-direct {v2, p0}, Lcom/android/server/display/hbm/HBMController$3;-><init>(Lcom/android/server/display/hbm/HBMController;)V

    iput-object v2, p0, Lcom/android/server/display/hbm/HBMController;->mSettingsSetUpReceiver:Landroid/content/BroadcastReceiver;

    .line 131
    iput-object p1, p0, Lcom/android/server/display/hbm/HBMController;->mContext:Landroid/content/Context;

    .line 132
    iget-object v2, p0, Lcom/android/server/display/hbm/HBMController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 133
    const-string v3, "hbm_switch_state"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/hbm/HBMController;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 132
    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 135
    iget-object v2, p0, Lcom/android/server/display/hbm/HBMController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 136
    const-string v3, "hbm_remaining_reminders"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/hbm/HBMController;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 135
    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 138
    invoke-direct {p0}, Lcom/android/server/display/hbm/HBMController;->handleHBMSwitchChanged()V

    .line 139
    invoke-direct {p0}, Lcom/android/server/display/hbm/HBMController;->handleRemainingRemindersChanged()V

    .line 140
    iget-boolean v0, p0, Lcom/android/server/display/hbm/HBMController;->mHBMSwitchOn:Z

    if-eqz v0, :cond_59

    .line 141
    invoke-direct {p0}, Lcom/android/server/display/hbm/HBMController;->registerHBMReceiver()V

    .line 143
    :cond_59
    iget v0, p0, Lcom/android/server/display/hbm/HBMController;->mRemainingReminders:I

    if-lez v0, :cond_60

    .line 144
    invoke-direct {p0}, Lcom/android/server/display/hbm/HBMController;->registerSettingsSetUpReceiver()V

    .line 146
    :cond_60
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/hbm/HBMController;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/display/hbm/HBMController;

    .line 49
    invoke-direct {p0}, Lcom/android/server/display/hbm/HBMController;->handleHBMSwitchChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/hbm/HBMController;)Lcom/android/server/display/hbm/HBMController$HBMLimitCallback;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/hbm/HBMController;

    .line 49
    iget-object v0, p0, Lcom/android/server/display/hbm/HBMController;->mCallback:Lcom/android/server/display/hbm/HBMController$HBMLimitCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/display/hbm/HBMController;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/hbm/HBMController;

    .line 49
    iget-boolean v0, p0, Lcom/android/server/display/hbm/HBMController;->mHBMSwitchOn:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/display/hbm/HBMController;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/display/hbm/HBMController;

    .line 49
    invoke-direct {p0}, Lcom/android/server/display/hbm/HBMController;->registerHBMReceiver()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/display/hbm/HBMController;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/display/hbm/HBMController;

    .line 49
    invoke-direct {p0}, Lcom/android/server/display/hbm/HBMController;->unRegisterReceiver()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/display/hbm/HBMController;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/display/hbm/HBMController;

    .line 49
    invoke-direct {p0}, Lcom/android/server/display/hbm/HBMController;->handleRemainingRemindersChanged()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/display/hbm/HBMController;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/hbm/HBMController;

    .line 49
    iget v0, p0, Lcom/android/server/display/hbm/HBMController;->mDeviceTemperature:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/display/hbm/HBMController;I)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/hbm/HBMController;
    .param p1, "x1"  # I

    .line 49
    iput p1, p0, Lcom/android/server/display/hbm/HBMController;->mDeviceTemperature:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/display/hbm/HBMController;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/hbm/HBMController;

    .line 49
    iget-object v0, p0, Lcom/android/server/display/hbm/HBMController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getHBMElapsedTime()J
    .registers 5

    .line 298
    iget-wide v0, p0, Lcom/android/server/display/hbm/HBMController;->mHBMOnTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_9

    goto :goto_15

    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/display/hbm/HBMController;->mHBMOnTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    div-long v2, v0, v2

    :goto_15
    return-wide v2
.end method

.method private handleHBMSwitchChanged()V
    .registers 5

    .line 232
    iget-object v0, p0, Lcom/android/server/display/hbm/HBMController;->mContext:Landroid/content/Context;

    .line 233
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 232
    const/4 v1, 0x0

    const-string v2, "hbm_switch_state"

    const/4 v3, -0x3

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_12

    move v1, v2

    :cond_12
    iput-boolean v1, p0, Lcom/android/server/display/hbm/HBMController;->mHBMSwitchOn:Z

    .line 237
    return-void
.end method

.method private handleRemainingRemindersChanged()V
    .registers 5

    .line 224
    iget-object v0, p0, Lcom/android/server/display/hbm/HBMController;->mContext:Landroid/content/Context;

    .line 225
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 224
    const-string v1, "hbm_remaining_reminders"

    const/4 v2, 0x3

    const/4 v3, -0x3

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/hbm/HBMController;->mRemainingReminders:I

    .line 229
    return-void
.end method

.method private registerHBMReceiver()V
    .registers 4

    .line 149
    iget-boolean v0, p0, Lcom/android/server/display/hbm/HBMController;->mStatusUpdateReceiverRegister:Z

    if-nez v0, :cond_1a

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/hbm/HBMController;->mStatusUpdateReceiverRegister:Z

    .line 151
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 152
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/android/server/display/hbm/HBMController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/hbm/HBMController;->mHBMStatusUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 155
    .end local v0  # "filter":Landroid/content/IntentFilter;
    :cond_1a
    return-void
.end method

.method private registerSettingsSetUpReceiver()V
    .registers 4

    .line 165
    iget-boolean v0, p0, Lcom/android/server/display/hbm/HBMController;->mSettingsSetUpReceiverRegister:Z

    if-nez v0, :cond_15

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/hbm/HBMController;->mSettingsSetUpReceiverRegister:Z

    .line 167
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "flyme.intent.action.HBM_SETUP"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 168
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/display/hbm/HBMController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/hbm/HBMController;->mSettingsSetUpReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 170
    .end local v0  # "filter":Landroid/content/IntentFilter;
    :cond_15
    return-void
.end method

.method private unRegisterReceiver()V
    .registers 3

    .line 158
    iget-boolean v0, p0, Lcom/android/server/display/hbm/HBMController;->mStatusUpdateReceiverRegister:Z

    if-eqz v0, :cond_e

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/hbm/HBMController;->mStatusUpdateReceiverRegister:Z

    .line 160
    iget-object v0, p0, Lcom/android/server/display/hbm/HBMController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/display/hbm/HBMController;->mHBMStatusUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 162
    :cond_e
    return-void
.end method

.method private writeNode(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "path"  # Ljava/lang/String;
    .param p2, "data"  # Ljava/lang/String;

    .line 181
    const-string v0, ", data:"

    const-string v1, "HBMController"

    const/4 v2, 0x0

    .line 183
    .local v2, "fos":Ljava/io/OutputStream;
    const/4 v3, 0x0

    :try_start_6
    new-array v4, v3, [Ljava/lang/String;

    invoke-static {p1, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v4, v3}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v3

    move-object v2, v3

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start write node:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const-string v3, "US-ASCII"

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_37} :catch_40
    .catchall {:try_start_6 .. :try_end_37} :catchall_3e

    .line 190
    nop

    .line 192
    :try_start_38
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3c

    .line 194
    :goto_3b
    goto :goto_65

    .line 193
    :catch_3c
    move-exception v3

    goto :goto_3b

    .line 190
    :catchall_3e
    move-exception v0

    goto :goto_80

    .line 186
    :catch_40
    move-exception v3

    .line 187
    .local v3, "e":Ljava/io/IOException;
    :try_start_41
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to write "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5f
    .catchall {:try_start_41 .. :try_end_5f} :catchall_3e

    .line 190
    .end local v3  # "e":Ljava/io/IOException;
    if-eqz v2, :cond_65

    .line 192
    :try_start_61
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_3c

    goto :goto_3b

    .line 198
    :cond_65
    :goto_65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "end write node:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-void

    .line 190
    :goto_80
    if-eqz v2, :cond_87

    .line 192
    :try_start_82
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_86

    .line 194
    goto :goto_87

    .line 193
    :catch_86
    move-exception v1

    .line 194
    :cond_87
    :goto_87
    throw v0
.end method


# virtual methods
.method public collectAndResetHBMElapsedTime()V
    .registers 8

    .line 249
    invoke-direct {p0}, Lcom/android/server/display/hbm/HBMController;->getHBMElapsedTime()J

    move-result-wide v0

    .line 250
    .local v0, "time":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_38

    .line 251
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 252
    .local v2, "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "time"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v3, p0, Lcom/android/server/display/hbm/HBMController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;->getInstance(Landroid/content/Context;)Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/display/hbm/HBMController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "highlight_mode"

    invoke-virtual {v3, v6, v4, v2, v5}, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;->onAppEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 255
    .end local v2  # "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_38
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/display/hbm/HBMController;->mHBMOnTime:J

    .line 256
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 291
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 292
    const-string v0, "high brightness mode configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDeviceTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/hbm/HBMController;->mDeviceTemperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  HBM elapsed time ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/display/hbm/HBMController;->getHBMElapsedTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method public isDeviceHightTemperature()Z
    .registers 3

    .line 220
    iget v0, p0, Lcom/android/server/display/hbm/HBMController;->mDeviceTemperature:I

    const/16 v1, 0x36

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isHBMRestricted()Z
    .registers 2

    .line 244
    invoke-virtual {p0}, Lcom/android/server/display/hbm/HBMController;->isOverHBMElapsedTimeLimit()Z

    move-result v0

    if-nez v0, :cond_f

    .line 245
    invoke-virtual {p0}, Lcom/android/server/display/hbm/HBMController;->isDeviceHightTemperature()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 244
    :goto_10
    return v0
.end method

.method public isHBMSwitchOn()Z
    .registers 2

    .line 216
    iget-boolean v0, p0, Lcom/android/server/display/hbm/HBMController;->mHBMSwitchOn:Z

    return v0
.end method

.method public isOverHBMElapsedTimeLimit()Z
    .registers 5

    .line 240
    iget-wide v0, p0, Lcom/android/server/display/hbm/HBMController;->mHBMOnTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/display/hbm/HBMController;->mHBMOnTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public registerCallback(Lcom/android/server/display/hbm/HBMController$HBMLimitCallback;)V
    .registers 3
    .param p1, "callback"  # Lcom/android/server/display/hbm/HBMController$HBMLimitCallback;

    .line 173
    if-eqz p1, :cond_e

    .line 174
    iput-object p1, p0, Lcom/android/server/display/hbm/HBMController;->mCallback:Lcom/android/server/display/hbm/HBMController$HBMLimitCallback;

    .line 175
    iget v0, p0, Lcom/android/server/display/hbm/HBMController;->mDeviceTemperature:I

    invoke-interface {p1, v0}, Lcom/android/server/display/hbm/HBMController$HBMLimitCallback;->onDeviceTemperatureChanged(I)V

    .line 176
    iget-boolean v0, p0, Lcom/android/server/display/hbm/HBMController;->mHBMSwitchOn:Z

    invoke-interface {p1, v0}, Lcom/android/server/display/hbm/HBMController$HBMLimitCallback;->onHBMSwitchChanged(Z)V

    .line 178
    :cond_e
    return-void
.end method

.method public sendHBMTipsNotificationIfNeeded()V
    .registers 13
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 260
    invoke-virtual {p0}, Lcom/android/server/display/hbm/HBMController;->isHBMSwitchOn()Z

    move-result v0

    if-nez v0, :cond_b3

    iget v0, p0, Lcom/android/server/display/hbm/HBMController;->mRemainingReminders:I

    if-lez v0, :cond_b3

    .line 261
    iget-object v0, p0, Lcom/android/server/display/hbm/HBMController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 262
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/server/display/hbm/HBMController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 263
    .local v1, "nmgr":Landroid/app/NotificationManager;
    new-instance v2, Landroid/app/NotificationChannel;

    const/4 v3, 0x4

    const-string v4, "HBMChannel"

    invoke-direct {v2, v4, v4, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 264
    .local v2, "channel":Landroid/app/NotificationChannel;
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/server/display/hbm/HBMController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 265
    .local v3, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 266
    const v5, 0xa100074

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 267
    const v5, 0xa100075

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 268
    sget-object v5, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 269
    const/4 v5, 0x1

    new-array v6, v5, [J

    const-wide/16 v7, 0x32

    const/4 v9, 0x0

    aput-wide v7, v6, v9

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 270
    new-instance v6, Landroid/content/Intent;

    const-string v7, "flyme.intent.action.HBM_SETUP"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 271
    .local v6, "hbmIntent":Landroid/content/Intent;
    const-string/jumbo v7, "launchFromHBMNotify"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 272
    const/high16 v7, 0x14000000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 273
    new-array v7, v5, [Landroid/content/Intent;

    aput-object v6, v7, v9

    .line 274
    .local v7, "intents":[Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/server/display/hbm/HBMController;->mContext:Landroid/content/Context;

    const/high16 v10, 0x8000000

    invoke-static {v8, v9, v7, v10}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 275
    .local v8, "pi":Landroid/app/PendingIntent;
    const v10, 0xa100073

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10, v8}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 276
    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 277
    const v9, 0xa080036

    invoke-virtual {v3, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 278
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 279
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 280
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 281
    .local v4, "notification":Landroid/app/Notification;
    iget-object v9, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v10, "headsup"

    invoke-virtual {v9, v10, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 282
    iget-object v9, v4, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    const v10, 0xa080035

    iput v10, v9, Landroid/app/NotificationExt;->notificationIcon:I

    .line 283
    iput v5, v4, Landroid/app/Notification;->priority:I

    .line 284
    const/16 v9, 0x3e7

    invoke-virtual {v1, v9}, Landroid/app/NotificationManager;->cancel(I)V

    .line 285
    invoke-virtual {v1, v9, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 286
    iget-object v9, p0, Lcom/android/server/display/hbm/HBMController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget v10, p0, Lcom/android/server/display/hbm/HBMController;->mRemainingReminders:I

    sub-int/2addr v10, v5

    const/4 v5, -0x3

    const-string v11, "hbm_remaining_reminders"

    invoke-static {v9, v11, v10, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 288
    .end local v0  # "res":Landroid/content/res/Resources;
    .end local v1  # "nmgr":Landroid/app/NotificationManager;
    .end local v2  # "channel":Landroid/app/NotificationChannel;
    .end local v3  # "builder":Landroid/app/Notification$Builder;
    .end local v4  # "notification":Landroid/app/Notification;
    .end local v6  # "hbmIntent":Landroid/content/Intent;
    .end local v7  # "intents":[Landroid/content/Intent;
    .end local v8  # "pi":Landroid/app/PendingIntent;
    :cond_b3
    return-void
.end method

.method public setHBMEnabled(ZZ)V
    .registers 5
    .param p1, "enabled"  # Z
    .param p2, "anim"  # Z

    .line 202
    const-string v0, "/sys/class/meizu/lcm/display/sunnyscreen"

    if-eqz p1, :cond_10

    .line 203
    const-string v1, "1"

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/hbm/HBMController;->writeNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/hbm/HBMController;->mHBMOnTime:J

    goto :goto_20

    .line 206
    :cond_10
    if-eqz p2, :cond_18

    .line 207
    const-string v1, "0"

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/hbm/HBMController;->writeNode(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 209
    :cond_18
    const-string v1, "2"

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/hbm/HBMController;->writeNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :goto_1d
    invoke-virtual {p0}, Lcom/android/server/display/hbm/HBMController;->collectAndResetHBMElapsedTime()V

    .line 213
    :goto_20
    return-void
.end method
