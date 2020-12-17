.class public Lcom/android/server/notification/MzDoNotDisturbHelper;
.super Ljava/lang/Object;
.source "MzDoNotDisturbHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/MzDoNotDisturbHelper$ScreenUnLockReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DND_ACTIVITY_COMPONENT:Landroid/content/ComponentName;

.field private static final DND_BREATH_LIGHT_URI:Landroid/net/Uri;

.field private static final KEY_DND_BREATH_LIGHT:Ljava/lang/String; = "mz_do_not_disturb_wakeup_breath_light"

.field private static final KEY_DND_END_HOUR:Ljava/lang/String; = "mz_do_not_disturb_end_time_hour"

.field private static final KEY_DND_END_MINUTE:Ljava/lang/String; = "mz_do_not_disturb_end_time_minutes"

.field private static final KEY_DND_IS_WORKING:Ljava/lang/String; = "mz_do_not_disturb_is_working"

.field private static final KEY_DND_REPEAT_CALL:Ljava/lang/String; = "mz_do_not_disturb_remind_repeating_coming _call"

.field private static final KEY_DND_REPEAT_DAY:Ljava/lang/String; = "mz_do_not_disturb_repeat_days"

.field private static final KEY_DND_START_HOUR:Ljava/lang/String; = "mz_do_not_disturb_start_time_hour"

.field private static final KEY_DND_START_MINUTE:Ljava/lang/String; = "mz_do_not_disturb_start_time_minute"

.field private static final KEY_DND_STATUSBAR_BACKGROUND_COLOR:Ljava/lang/String; = "bgColor"

.field private static final KEY_DND_STATUSBAR_PACKAGENAME:Ljava/lang/String; = "packageName"

.field private static final KEY_DND_STATUSBAR_RESOURCES_ID:Ljava/lang/String; = "resId"

.field private static final KEY_DND_STATUSBAR_TEXT_COLOR:Ljava/lang/String; = "textColor"

.field private static final KEY_DND_STATUSBAR_TIPS:Ljava/lang/String; = "tips"

.field private static final KEY_DND_TIME_SWITCH:Ljava/lang/String; = "mz_do_not_disturb_time_switch"

.field private static final KEY_DND_WHITE_LIST:Ljava/lang/String; = "white_list_disturb_enable"

.field private static final KEY_NOTIFICATION_PAULSE_LIGHT:Ljava/lang/String; = "notification_light_pulse"

.field private static final NOTIFICATION_CHANNEL_ID:Ljava/lang/String;

.field private static final ONE_DAY_INMILLIS:J = 0x5265c00L

.field static final SCHEDULE_RULE_NAME_FOR_SETTINGS:Ljava/lang/String; = "com.android.settings"

.field private static final TAG:Ljava/lang/String; = "ZenModeHelper"

.field private static final UPDATE_NOTIFICATION_DELAY:J = 0xc8L

.field private static final WEEK_DAYS_ARRAYS:[[I

.field private static final WEEK_DAY_BIT_SET_INDEX_TO_VALUE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final WEEK_DAY_VALUE_TO_BIT_SET_INDEX:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ZEN_MODE_TAG_URI:Landroid/net/Uri;

.field private static final ZEN_MODE_URI:Landroid/net/Uri;

.field private static mIfDndStatusBarCanShow:Z


# instance fields
.field private final KEY_DND_STATUSBAR_BG_COLOR_VALUE:I

.field private final MSG_DND_STATUSBAR_HIDE:I

.field private final MSG_DND_STATUSBAR_RESET:I

.field private final MSG_DND_STATUSBAR_SHOW:I

.field private final MSG_DND_UPDATE_OFF_TIME:I

.field private mContext:Landroid/content/Context;

.field private mDndReceiverIsRegistered:Z

.field private mDndStatusBarIsShowing:Z

.field private mHandler:Landroid/os/Handler;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mObserver:Landroid/database/ContentObserver;

.field private mResolver:Landroid/content/ContentResolver;

.field private mScreenUnLockReceiver:Lcom/android/server/notification/MzDoNotDisturbHelper$ScreenUnLockReceiver;

.field private mUpdateNotificationRunnable:Ljava/lang/Runnable;

.field private mZenMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 58
    const-string/jumbo v0, "zen_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/MzDoNotDisturbHelper;->ZEN_MODE_URI:Landroid/net/Uri;

    .line 59
    const-string/jumbo v0, "zen_mode_config_etag"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/MzDoNotDisturbHelper;->ZEN_MODE_TAG_URI:Landroid/net/Uri;

    .line 60
    nop

    .line 61
    const-string/jumbo v0, "mz_do_not_disturb_wakeup_breath_light"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/MzDoNotDisturbHelper;->DND_BREATH_LIGHT_URI:Landroid/net/Uri;

    .line 90
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.meizu.settings.MzSettingsActivity$DoNotDisturbActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/notification/MzDoNotDisturbHelper;->DND_ACTIVITY_COMPONENT:Landroid/content/ComponentName;

    .line 95
    const/4 v0, 0x7

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_a6

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_ae

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_b6

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_be

    const/4 v5, 0x3

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_c6

    const/4 v5, 0x4

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_ce

    const/4 v5, 0x5

    aput-object v2, v0, v5

    new-array v1, v1, [I

    fill-array-data v1, :array_d6

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/notification/MzDoNotDisturbHelper;->WEEK_DAYS_ARRAYS:[[I

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/notification/MzDoNotDisturbHelper;->WEEK_DAY_BIT_SET_INDEX_TO_VALUE:Ljava/util/HashMap;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/notification/MzDoNotDisturbHelper;->WEEK_DAY_VALUE_TO_BIT_SET_INDEX:Ljava/util/HashMap;

    .line 116
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_73
    sget-object v1, Lcom/android/server/notification/MzDoNotDisturbHelper;->WEEK_DAYS_ARRAYS:[[I

    array-length v2, v1

    if-ge v0, v2, :cond_9d

    .line 117
    aget-object v2, v1, v0

    aget v2, v2, v3

    .line 118
    .local v2, "bitSetIndex":I
    aget-object v1, v1, v0

    aget v1, v1, v4

    .line 119
    .local v1, "value":I
    sget-object v5, Lcom/android/server/notification/MzDoNotDisturbHelper;->WEEK_DAY_BIT_SET_INDEX_TO_VALUE:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v5, Lcom/android/server/notification/MzDoNotDisturbHelper;->WEEK_DAY_VALUE_TO_BIT_SET_INDEX:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .end local v1  # "value":I
    .end local v2  # "bitSetIndex":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_73

    .line 124
    .end local v0  # "i":I
    :cond_9d
    const-class v0, Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/MzDoNotDisturbHelper;->NOTIFICATION_CHANNEL_ID:Ljava/lang/String;

    return-void

    :array_a6
    .array-data 4
        0x6
        0x1
    .end array-data

    :array_ae
    .array-data 4
        0x5
        0x7
    .end array-data

    :array_b6
    .array-data 4
        0x4
        0x6
    .end array-data

    :array_be
    .array-data 4
        0x3
        0x5
    .end array-data

    :array_c6
    .array-data 4
        0x2
        0x4
    .end array-data

    :array_ce
    .array-data 4
        0x1
        0x3
    .end array-data

    :array_d6
    .array-data 4
        0x0
        0x2
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "c"  # Landroid/content/Context;

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const v0, -0xd1ba7b

    iput v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->KEY_DND_STATUSBAR_BG_COLOR_VALUE:I

    .line 84
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->MSG_DND_STATUSBAR_SHOW:I

    .line 85
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->MSG_DND_STATUSBAR_HIDE:I

    .line 86
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->MSG_DND_STATUSBAR_RESET:I

    .line 87
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->MSG_DND_UPDATE_OFF_TIME:I

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mZenMode:I

    .line 137
    new-instance v0, Lcom/android/server/notification/MzDoNotDisturbHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/MzDoNotDisturbHelper$1;-><init>(Lcom/android/server/notification/MzDoNotDisturbHelper;)V

    iput-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mHandler:Landroid/os/Handler;

    .line 165
    new-instance v0, Lcom/android/server/notification/MzDoNotDisturbHelper$2;

    invoke-direct {v0, p0}, Lcom/android/server/notification/MzDoNotDisturbHelper$2;-><init>(Lcom/android/server/notification/MzDoNotDisturbHelper;)V

    iput-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mUpdateNotificationRunnable:Ljava/lang/Runnable;

    .line 176
    new-instance v0, Lcom/android/server/notification/MzDoNotDisturbHelper$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/MzDoNotDisturbHelper$3;-><init>(Lcom/android/server/notification/MzDoNotDisturbHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mObserver:Landroid/database/ContentObserver;

    .line 201
    iput-object p1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mContext:Landroid/content/Context;

    .line 202
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/notification/MzDoNotDisturbHelper;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/MzDoNotDisturbHelper;

    .line 54
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/notification/MzDoNotDisturbHelper;Ljava/lang/String;Z)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/notification/MzDoNotDisturbHelper;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # Z

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/MzDoNotDisturbHelper;->showDoNotDisturbStatusBar(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/notification/MzDoNotDisturbHelper;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/notification/MzDoNotDisturbHelper;

    .line 54
    invoke-direct {p0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->updateNotificationPulseLight()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/notification/MzDoNotDisturbHelper;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/notification/MzDoNotDisturbHelper;

    .line 54
    invoke-direct {p0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->updateDndStatuBar()V

    return-void
.end method

.method static synthetic access$1200()Landroid/net/Uri;
    .registers 1

    .line 54
    sget-object v0, Lcom/android/server/notification/MzDoNotDisturbHelper;->DND_BREATH_LIGHT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1300()Landroid/net/Uri;
    .registers 1

    .line 54
    sget-object v0, Lcom/android/server/notification/MzDoNotDisturbHelper;->ZEN_MODE_TAG_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200()Z
    .registers 1

    .line 54
    sget-boolean v0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mIfDndStatusBarCanShow:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .registers 1
    .param p0, "x0"  # Z

    .line 54
    sput-boolean p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mIfDndStatusBarCanShow:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/server/notification/MzDoNotDisturbHelper;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/MzDoNotDisturbHelper;
    .param p1, "x1"  # Z

    .line 54
    iput-boolean p1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mDndStatusBarIsShowing:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/notification/MzDoNotDisturbHelper;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/MzDoNotDisturbHelper;

    .line 54
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/notification/MzDoNotDisturbHelper;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/MzDoNotDisturbHelper;

    .line 54
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mUpdateNotificationRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/notification/MzDoNotDisturbHelper;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/notification/MzDoNotDisturbHelper;

    .line 54
    invoke-direct {p0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->updateNotification()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/notification/MzDoNotDisturbHelper;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/MzDoNotDisturbHelper;

    .line 54
    iget v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mZenMode:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/notification/MzDoNotDisturbHelper;I)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/MzDoNotDisturbHelper;
    .param p1, "x1"  # I

    .line 54
    iput p1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mZenMode:I

    return p1
.end method

.method static synthetic access$800()Landroid/net/Uri;
    .registers 1

    .line 54
    sget-object v0, Lcom/android/server/notification/MzDoNotDisturbHelper;->ZEN_MODE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/notification/MzDoNotDisturbHelper;)Landroid/content/ContentResolver;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/MzDoNotDisturbHelper;

    .line 54
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public static binaryToRepeatDay(I)[I
    .registers 10
    .param p0, "binary"  # I

    .line 558
    if-gez p0, :cond_6

    .line 559
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0

    .line 561
    :cond_6
    const/4 v0, 0x1

    .line 562
    .local v0, "tmp":I
    const/4 v1, 0x0

    .line 563
    .local v1, "dayCount":I
    const/4 v2, 0x6

    .line 565
    .local v2, "maxShift":I
    move v3, p0

    .line 566
    .local v3, "tmpBinary":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 567
    .local v4, "bitSetIndexs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_10
    if-gt v5, v2, :cond_22

    .line 568
    shr-int v6, v3, v5

    and-int/2addr v6, v0

    if-eqz v6, :cond_1e

    .line 569
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    :cond_1e
    move v3, p0

    .line 567
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 573
    .end local v5  # "i":I
    :cond_22
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [I

    .line 574
    .local v5, "repeatDays":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_29
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_44

    .line 575
    sget-object v7, Lcom/android/server/notification/MzDoNotDisturbHelper;->WEEK_DAY_BIT_SET_INDEX_TO_VALUE:Ljava/util/HashMap;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 576
    .local v7, "value":I
    aput v7, v5, v6

    .line 574
    .end local v7  # "value":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    .line 578
    .end local v6  # "i":I
    :cond_44
    return-object v5
.end method

.method private clearDoNotDisturbNotification()V
    .registers 3

    .line 260
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_c

    .line 261
    const-string v0, "ZenModeHelper"

    const-string v1, "clearDoNotDisturbNotification return"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void

    .line 264
    :cond_c
    const v1, 0xa100053

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 265
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 266
    return-void
.end method

.method private computeDndOffTime(J)J
    .registers 22
    .param p1, "now"  # J

    .line 339
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    .line 340
    .local v3, "zenModeConfig":Landroid/service/notification/ZenModeConfig;
    const-wide/16 v4, 0x0

    const-string v6, "ZenModeHelper"

    if-nez v3, :cond_16

    .line 341
    const-string v7, "computeDndOffTime config null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    return-wide v4

    .line 344
    :cond_16
    iget-object v7, v3, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 345
    .local v7, "manualRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    if-eqz v7, :cond_1f

    iget-object v8, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-nez v8, :cond_1f

    .line 346
    return-wide v4

    .line 348
    :cond_1f
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .local v8, "zenRuleList":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/ZenModeConfig$ZenRule;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 351
    .local v9, "endTimeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-wide/32 v10, 0x5265c00

    if-eqz v7, :cond_8b

    iget-boolean v12, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-eqz v12, :cond_8b

    iget-boolean v12, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    if-nez v12, :cond_8b

    iget-object v12, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-eqz v12, :cond_8b

    .line 353
    invoke-direct {v0, v7, v1, v2}, Lcom/android/server/notification/MzDoNotDisturbHelper;->parseEndTime(Landroid/service/notification/ZenModeConfig$ZenRule;J)J

    move-result-wide v12

    .line 354
    .local v12, "manualRuleEndTime":J
    cmp-long v14, v12, v1

    if-lez v14, :cond_69

    add-long v14, v1, v10

    cmp-long v14, v12, v14

    if-gez v14, :cond_69

    .line 356
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "manualRuleEndTime endTime1 = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v12, v13}, Lcom/android/server/notification/MzDoNotDisturbHelper;->formateDateStr(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_88

    .line 358
    :cond_69
    add-long v14, v1, v10

    cmp-long v14, v12, v14

    if-ltz v14, :cond_88

    .line 359
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "manualRuleEndTime endTime2 = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v12, v13}, Lcom/android/server/notification/MzDoNotDisturbHelper;->formateDateStr(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_88
    :goto_88
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    .end local v12  # "manualRuleEndTime":J
    :cond_8b
    new-instance v12, Ljava/util/ArrayList;

    iget-object v13, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 365
    invoke-virtual {v13}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 366
    .local v12, "automaticRules":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/ZenModeConfig$ZenRule;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_9a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_108

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 367
    .local v14, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    if-eqz v14, :cond_102

    iget-boolean v15, v14, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-eqz v15, :cond_102

    iget-boolean v15, v14, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    if-nez v15, :cond_102

    .line 368
    invoke-direct {v0, v14, v1, v2}, Lcom/android/server/notification/MzDoNotDisturbHelper;->parseEndTime(Landroid/service/notification/ZenModeConfig$ZenRule;J)J

    move-result-wide v4

    .line 369
    .local v4, "automaticRuleEndTime":J
    cmp-long v17, v4, v1

    if-lez v17, :cond_de

    add-long v17, v1, v10

    cmp-long v17, v4, v17

    if-gez v17, :cond_de

    .line 371
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v9, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "automaticRuleEndTime endTime1 = "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-direct {v0, v4, v5}, Lcom/android/server/notification/MzDoNotDisturbHelper;->formateDateStr(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 372
    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ff

    .line 374
    :cond_de
    const-wide/32 v10, 0x5265c00

    add-long v15, v1, v10

    cmp-long v15, v4, v15

    if-ltz v15, :cond_ff

    .line 375
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "automaticRuleEndTime endTime2 = "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-direct {v0, v4, v5}, Lcom/android/server/notification/MzDoNotDisturbHelper;->formateDateStr(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 375
    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_ff
    :goto_ff
    invoke-interface {v8, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    .end local v4  # "automaticRuleEndTime":J
    .end local v14  # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_102
    const-wide/16 v4, 0x0

    const-wide/32 v10, 0x5265c00

    goto :goto_9a

    .line 381
    :cond_108
    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 383
    const-wide/16 v4, 0x0

    .line 384
    .local v4, "offTime":J
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_111
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_15e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 385
    .local v13, "endTime":J
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "computeDndOffTime endTime = "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v13, v14}, Lcom/android/server/notification/MzDoNotDisturbHelper;->formateDateStr(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const/4 v11, 0x0

    .line 387
    .local v11, "thisEndTimeOn":Z
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_13e
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_157

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v1, v16

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 388
    .local v1, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-direct {v0, v13, v14, v1}, Lcom/android/server/notification/MzDoNotDisturbHelper;->isRuleOn(JLandroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v2

    if-eqz v2, :cond_154

    .line 389
    const/4 v11, 0x1

    .line 390
    goto :goto_157

    .line 392
    .end local v1  # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_154
    move-wide/from16 v1, p1

    goto :goto_13e

    .line 393
    :cond_157
    :goto_157
    if-nez v11, :cond_15b

    .line 394
    move-wide v4, v13

    .line 395
    goto :goto_15e

    .line 397
    .end local v11  # "thisEndTimeOn":Z
    .end local v13  # "endTime":J
    :cond_15b
    move-wide/from16 v1, p1

    goto :goto_111

    .line 398
    :cond_15e
    :goto_15e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "computeDndOffTime offTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v10, 0x0

    cmp-long v2, v4, v10

    if-nez v2, :cond_171

    const-string v2, "0"

    goto :goto_175

    :cond_171
    invoke-direct {v0, v4, v5}, Lcom/android/server/notification/MzDoNotDisturbHelper;->formateDateStr(J)Ljava/lang/String;

    move-result-object v2

    :goto_175
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    return-wide v4
.end method

.method private formateDateStr(J)Ljava/lang/String;
    .registers 6
    .param p1, "now"  # J

    .line 436
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 437
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 438
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 439
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getNotificationContent()Ljava/lang/String;
    .registers 19

    .line 292
    move-object/from16 v0, p0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 293
    .local v1, "nowCalendar":Ljava/util/Calendar;
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 294
    .local v2, "nowTime":J
    invoke-direct {v0, v2, v3}, Lcom/android/server/notification/MzDoNotDisturbHelper;->computeDndOffTime(J)J

    move-result-wide v4

    .line 295
    .local v4, "offTime":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, 0x1

    if-nez v6, :cond_34

    .line 296
    const v6, 0xa100050

    .line 297
    .local v6, "strResId":I
    iget v10, v0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mZenMode:I

    if-ne v10, v9, :cond_22

    .line 298
    const v6, 0xa100050

    goto :goto_2d

    .line 299
    :cond_22
    if-ne v10, v8, :cond_28

    .line 300
    const v6, 0xa10004b

    goto :goto_2d

    .line 301
    :cond_28
    if-ne v10, v7, :cond_2d

    .line 302
    const v6, 0xa10004e

    .line 304
    :cond_2d
    :goto_2d
    iget-object v7, v0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 307
    .end local v6  # "strResId":I
    :cond_34
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 308
    .local v6, "offCalendar":Ljava/util/Calendar;
    invoke-virtual {v6, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 309
    iget-object v10, v0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v10

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 310
    .local v10, "timeStr":Ljava/lang/String;
    const/4 v11, 0x6

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 311
    .local v12, "nowDayOfYear":I
    invoke-virtual {v6, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 312
    .local v11, "offDayOfYear":I
    sub-int v13, v11, v12

    const/4 v14, 0x0

    if-ne v13, v9, :cond_ad

    .line 313
    iget-object v13, v0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mContext:Landroid/content/Context;

    const v15, 0xa100052

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v10, v7, v14

    invoke-virtual {v13, v15, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 316
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 317
    .local v7, "nextDayCalendar":Ljava/util/Calendar;
    invoke-virtual {v7, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 318
    const/16 v13, 0xb

    invoke-virtual {v7, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 319
    const/16 v13, 0xc

    invoke-virtual {v7, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 320
    const/16 v13, 0xd

    invoke-virtual {v7, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 321
    const/16 v13, 0xe

    invoke-virtual {v7, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 322
    iget-object v13, v0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x4

    .line 323
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    sub-long v8, v16, v2

    .line 322
    invoke-virtual {v13, v15, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 324
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getNotificationContent update next day label nextDayTime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " nowTime = "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 324
    const-string v13, "ZenModeHelper"

    invoke-static {v13, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    .end local v7  # "nextDayCalendar":Ljava/util/Calendar;
    :cond_ad
    const v7, 0xa100051

    .line 328
    .local v7, "strResId":I
    iget v8, v0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mZenMode:I

    const/4 v13, 0x1

    if-ne v8, v13, :cond_b9

    .line 329
    const v7, 0xa100051

    goto :goto_c6

    .line 330
    :cond_b9
    const/4 v13, 0x3

    if-ne v8, v13, :cond_c0

    .line 331
    const v7, 0xa10004c

    goto :goto_c6

    .line 332
    :cond_c0
    const/4 v13, 0x2

    if-ne v8, v13, :cond_c6

    .line 333
    const v7, 0xa10004f

    .line 335
    :cond_c6
    :goto_c6
    iget-object v8, v0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mContext:Landroid/content/Context;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v10, v13, v9

    invoke-virtual {v8, v7, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private getScheduleTime(JII)J
    .registers 8
    .param p1, "millis"  # J
    .param p3, "hour"  # I
    .param p4, "min"  # I

    .line 426
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 427
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 428
    const/16 v1, 0xb

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 429
    const/16 v1, 0xc

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    .line 430
    const/4 v1, 0x0

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 431
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 432
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public static importConfigFromOldDb(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;
    .registers 17
    .param p0, "context"  # Landroid/content/Context;

    .line 486
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 487
    .local v0, "resolver":Landroid/content/ContentResolver;
    nop

    .line 488
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 487
    const/4 v2, 0x0

    const-string/jumbo v3, "mz_do_not_disturb_time_switch"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 489
    .local v1, "timeSwitch":I
    nop

    .line 490
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 489
    const-string/jumbo v4, "mz_do_not_disturb_start_time_hour"

    const/16 v5, 0x17

    invoke-static {v0, v4, v5, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 491
    .local v3, "startHour":I
    nop

    .line 492
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 491
    const-string/jumbo v5, "mz_do_not_disturb_start_time_minute"

    invoke-static {v0, v5, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 493
    .local v4, "startMinute":I
    nop

    .line 494
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 493
    const-string/jumbo v6, "mz_do_not_disturb_end_time_hour"

    const/4 v7, 0x7

    invoke-static {v0, v6, v7, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 495
    .local v5, "endHour":I
    nop

    .line 496
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    .line 495
    const-string/jumbo v7, "mz_do_not_disturb_end_time_minutes"

    invoke-static {v0, v7, v2, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    .line 497
    .local v6, "endMinute":I
    nop

    .line 498
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    .line 497
    const-string/jumbo v8, "mz_do_not_disturb_repeat_days"

    const/16 v9, 0x7f

    invoke-static {v0, v8, v9, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    .line 499
    .local v7, "repeatDay":I
    nop

    .line 500
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    .line 499
    const-string/jumbo v9, "mz_do_not_disturb_remind_repeating_coming _call"

    invoke-static {v0, v9, v2, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    .line 501
    .local v8, "repeatCall":I
    const-string/jumbo v9, "white_list_disturb_enable"

    invoke-static {v0, v9, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 502
    .local v9, "whiteListEnable":I
    nop

    .line 503
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    .line 502
    const-string/jumbo v11, "mz_do_not_disturb_is_working"

    invoke-static {v0, v11, v2, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    .line 506
    .local v10, "dndIsWorking":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "importConfigFromOldDb timeSwitch = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " startHour = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " startMinute = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " endHour = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " endMinute = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " repeatCall = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " whiteListEnable = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " dndIsWorking = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "ZenModeHelper"

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    new-instance v11, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v11}, Landroid/service/notification/ZenModeConfig;-><init>()V

    .line 514
    .local v11, "dndConfig":Landroid/service/notification/ZenModeConfig;
    const/4 v12, 0x1

    if-eqz v9, :cond_ca

    move v13, v12

    goto :goto_cb

    :cond_ca
    move v13, v2

    :goto_cb
    iput-boolean v13, v11, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 515
    const/4 v13, 0x2

    iput v13, v11, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 516
    if-eqz v8, :cond_d4

    move v13, v12

    goto :goto_d5

    :cond_d4
    move v13, v2

    :goto_d5
    iput-boolean v13, v11, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .line 517
    iput-boolean v2, v11, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 518
    iput-boolean v2, v11, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 519
    iput-boolean v2, v11, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    .line 520
    iput-boolean v12, v11, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    .line 521
    iput-boolean v12, v11, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    .line 522
    iput-boolean v12, v11, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    .line 524
    const/4 v13, 0x0

    if-eqz v10, :cond_f3

    .line 525
    new-instance v14, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v14}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 526
    .local v14, "newRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iput-boolean v12, v14, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 527
    iput v12, v14, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 528
    iput-object v13, v14, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 529
    iput-object v14, v11, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 532
    .end local v14  # "newRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_f3
    new-instance v14, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {v14}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    .line 533
    .local v14, "scheduleInfo":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    invoke-static {v7}, Lcom/android/server/notification/MzDoNotDisturbHelper;->binaryToRepeatDay(I)[I

    move-result-object v15

    iput-object v15, v14, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 534
    iput v3, v14, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    .line 535
    iput v4, v14, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    .line 536
    iput v5, v14, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 537
    iput v6, v14, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    .line 538
    new-instance v15, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v15}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 539
    .local v15, "scheduleRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    if-eqz v1, :cond_10e

    move v2, v12

    :cond_10e
    iput-boolean v2, v15, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 540
    const-string v2, "com.android.settings"

    iput-object v2, v15, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 541
    invoke-static {v14}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v15, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 542
    iput v12, v15, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 543
    sget-object v2, Lcom/android/server/notification/ScheduleConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    iput-object v2, v15, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 544
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->newRuleId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    .line 545
    move-object v12, v14

    .end local v14  # "scheduleInfo":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    .local v12, "scheduleInfo":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iput-wide v13, v15, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    .line 547
    iget-object v13, v15, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    if-eqz v13, :cond_138

    .line 548
    iget-object v2, v15, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    goto :goto_144

    .line 549
    :cond_138
    iget-object v13, v15, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    if-eqz v13, :cond_143

    .line 550
    iget-object v2, v15, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    goto :goto_144

    .line 551
    :cond_143
    const/4 v13, 0x0

    :goto_144
    iput-object v13, v15, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 553
    iget-object v2, v11, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v13, v15, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v2, v13, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    return-object v11
.end method

.method public static isFlymeDndPriorityApp(Landroid/content/Context;Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3
    .param p0, "c"  # Landroid/content/Context;
    .param p1, "record"  # Lcom/android/server/notification/NotificationRecord;

    .line 643
    if-eqz p0, :cond_1c

    if-eqz p1, :cond_1c

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    if-eqz v0, :cond_1c

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 644
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_1c

    .line 647
    :cond_11
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->isFlymeDndPriorityApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 645
    :cond_1c
    :goto_1c
    const/4 v0, 0x0

    return v0
.end method

.method public static isFlymeDndPriorityApp(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9
    .param p0, "c"  # Landroid/content/Context;
    .param p1, "pkg"  # Ljava/lang/String;

    .line 651
    const/4 v0, 0x0

    if-eqz p0, :cond_37

    if-nez p1, :cond_6

    goto :goto_37

    .line 655
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mz_do_not_disturb_priority_apps"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 657
    .local v1, "priorityAppsStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 658
    return v0

    .line 660
    :cond_18
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 661
    .local v2, "priorityAppsArray":[Ljava/lang/String;
    if-eqz v2, :cond_36

    array-length v3, v2

    if-nez v3, :cond_24

    goto :goto_36

    .line 664
    :cond_24
    array-length v3, v2

    move v4, v0

    :goto_26
    if-ge v4, v3, :cond_35

    aget-object v5, v2, v4

    .line 665
    .local v5, "priorityApp":Ljava/lang/String;
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 666
    const/4 v0, 0x1

    return v0

    .line 664
    .end local v5  # "priorityApp":Ljava/lang/String;
    :cond_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 669
    :cond_35
    return v0

    .line 662
    :cond_36
    :goto_36
    return v0

    .line 652
    .end local v1  # "priorityAppsStr":Ljava/lang/String;
    .end local v2  # "priorityAppsArray":[Ljava/lang/String;
    :cond_37
    :goto_37
    const-string v1, "ZenModeHelper"

    const-string/jumbo v2, "isFlymeDndPriorityApp invalid argument"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    return v0
.end method

.method private isRuleOn(JLandroid/service/notification/ZenModeConfig$ZenRule;)Z
    .registers 11
    .param p1, "time"  # J
    .param p3, "rule"  # Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 443
    const/4 v0, 0x0

    const-string v1, "ZenModeHelper"

    if-eqz p3, :cond_8d

    iget-object v2, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-nez v2, :cond_b

    goto/16 :goto_8d

    .line 447
    :cond_b
    iget-object v2, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 448
    .local v2, "uri":Landroid/net/Uri;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isRuleOn uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->isValidCountdownConditionId(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 450
    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v3

    .line 451
    .local v3, "countDownEndTime":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isRuleOn isValidCountdownConditionId countDownEndTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v5

    cmp-long v1, v5, p1

    if-lez v1, :cond_52

    const/4 v0, 0x1

    :cond_52
    return v0

    .line 454
    .end local v3  # "countDownEndTime":J
    :cond_53
    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 455
    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v3

    .line 456
    .local v3, "scheduleInfo":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    if-nez v3, :cond_66

    .line 457
    const-string/jumbo v4, "isRuleOn scheduleInfo is null"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    return v0

    .line 460
    :cond_66
    new-instance v0, Landroid/service/notification/ScheduleCalendar;

    invoke-direct {v0}, Landroid/service/notification/ScheduleCalendar;-><init>()V

    .line 461
    .local v0, "scheduleCalendar":Landroid/service/notification/ScheduleCalendar;
    invoke-virtual {v0, v3}, Landroid/service/notification/ScheduleCalendar;->setSchedule(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)V

    .line 462
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isRuleOn isValidScheduleConditionId isOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-virtual {v0, p1, p2}, Landroid/service/notification/ScheduleCalendar;->isInSchedule(J)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 462
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-virtual {v0, p1, p2}, Landroid/service/notification/ScheduleCalendar;->isInSchedule(J)Z

    move-result v1

    return v1

    .line 466
    .end local v0  # "scheduleCalendar":Landroid/service/notification/ScheduleCalendar;
    .end local v3  # "scheduleInfo":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    :cond_8c
    return v0

    .line 444
    .end local v2  # "uri":Landroid/net/Uri;
    :cond_8d
    :goto_8d
    const-string/jumbo v2, "isRuleOn rule or  conditionId is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    return v0
.end method

.method private parseEndTime(Landroid/service/notification/ZenModeConfig$ZenRule;J)J
    .registers 12
    .param p1, "rule"  # Landroid/service/notification/ZenModeConfig$ZenRule;
    .param p2, "now"  # J

    .line 403
    const-wide/16 v0, 0x0

    if-eqz p1, :cond_47

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-nez v2, :cond_9

    goto :goto_47

    .line 406
    :cond_9
    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 407
    .local v2, "uri":Landroid/net/Uri;
    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->isValidCountdownConditionId(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 408
    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0

    .line 409
    :cond_16
    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 410
    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v3

    .line 411
    .local v3, "scheduleInfo":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    if-eqz v3, :cond_45

    iget-object v4, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-eqz v4, :cond_45

    iget-object v4, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    array-length v4, v4

    if-nez v4, :cond_2c

    goto :goto_45

    .line 415
    :cond_2c
    iget v0, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iget v1, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    invoke-direct {p0, p2, p3, v0, v1}, Lcom/android/server/notification/MzDoNotDisturbHelper;->getScheduleTime(JII)J

    move-result-wide v0

    .line 416
    .local v0, "startTime":J
    iget v4, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iget v5, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-direct {p0, p2, p3, v4, v5}, Lcom/android/server/notification/MzDoNotDisturbHelper;->getScheduleTime(JII)J

    move-result-wide v4

    .line 417
    .local v4, "endTime":J
    cmp-long v6, p2, v4

    if-lez v6, :cond_44

    .line 418
    const-wide/32 v6, 0x5265c00

    add-long/2addr v4, v6

    .line 420
    :cond_44
    return-wide v4

    .line 413
    .end local v0  # "startTime":J
    .end local v4  # "endTime":J
    :cond_45
    :goto_45
    return-wide v0

    .line 422
    .end local v3  # "scheduleInfo":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    :cond_46
    return-wide v0

    .line 404
    .end local v2  # "uri":Landroid/net/Uri;
    :cond_47
    :goto_47
    return-wide v0
.end method

.method private registerDndReceiver()V
    .registers 4

    .line 240
    new-instance v0, Lcom/android/server/notification/MzDoNotDisturbHelper$ScreenUnLockReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/notification/MzDoNotDisturbHelper$ScreenUnLockReceiver;-><init>(Lcom/android/server/notification/MzDoNotDisturbHelper;)V

    iput-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mScreenUnLockReceiver:Lcom/android/server/notification/MzDoNotDisturbHelper$ScreenUnLockReceiver;

    .line 241
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 242
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    iget-object v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mScreenUnLockReceiver:Lcom/android/server/notification/MzDoNotDisturbHelper$ScreenUnLockReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 244
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mDndReceiverIsRegistered:Z

    .line 245
    return-void
.end method

.method public static repeatDayToBinary([I)I
    .registers 7
    .param p0, "repeatDays"  # [I

    .line 582
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 583
    return v0

    .line 585
    :cond_4
    const/4 v1, 0x0

    .line 586
    .local v1, "binay":I
    array-length v2, p0

    :goto_6
    if-ge v0, v2, :cond_20

    aget v3, p0, v0

    .line 587
    .local v3, "day":I
    sget-object v4, Lcom/android/server/notification/MzDoNotDisturbHelper;->WEEK_DAY_VALUE_TO_BIT_SET_INDEX:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 588
    .local v4, "index":I
    const/4 v5, 0x1

    shl-int/2addr v5, v4

    or-int/2addr v1, v5

    .line 586
    .end local v3  # "day":I
    .end local v4  # "index":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 590
    :cond_20
    return v1
.end method

.method private showDoNotDisturbNotification()V
    .registers 9

    .line 269
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_d

    .line 270
    const-string v0, "ZenModeHelper"

    const-string/jumbo v1, "showDoNotDisturbNotification return"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return-void

    .line 273
    :cond_d
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/notification/MzDoNotDisturbHelper;->NOTIFICATION_CHANNEL_ID:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 274
    .local v0, "builder":Landroid/app/Notification$Builder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 275
    const v2, 0xa08001b

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mContext:Landroid/content/Context;

    .line 276
    const v4, 0xa100053

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mContext:Landroid/content/Context;

    .line 277
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 278
    invoke-direct {p0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->getNotificationContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 279
    iget-object v2, v0, Landroid/app/Notification$Builder;->mFlymeNotificationBuilder:Landroid/app/NotificationBuilderExt;

    const v3, 0xa08001a

    .line 280
    invoke-virtual {v2, v3}, Landroid/app/NotificationBuilderExt;->setNotificationIcon(I)V

    .line 281
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 282
    sget-object v2, Lcom/android/server/notification/MzDoNotDisturbHelper;->DND_ACTIVITY_COMPONENT:Landroid/content/ComponentName;

    invoke-static {v2}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 283
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v3, v1, v2, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 284
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 285
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 286
    .local v3, "n":Landroid/app/Notification;
    const/16 v5, 0x20

    iput v5, v3, Landroid/app/Notification;->flags:I

    .line 287
    iget-object v5, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v5, v4, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 288
    iget-object v4, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x4

    const-wide/32 v6, 0x5265c00

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 289
    return-void
.end method

.method private showDoNotDisturbStatusBar(Ljava/lang/String;Z)V
    .registers 9
    .param p1, "pkgName"  # Ljava/lang/String;
    .param p2, "isShowDndStatusBar"  # Z

    .line 604
    nop

    .line 605
    const-string v0, "flyme_statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmeizu/statusbar/IFlymeStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lmeizu/statusbar/IFlymeStatusBarService;

    move-result-object v0

    .line 607
    .local v0, "iFlymeStatusBarService":Lmeizu/statusbar/IFlymeStatusBarService;
    const-string v1, "ZenModeHelper"

    if-eqz p1, :cond_94

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_17

    goto/16 :goto_94

    .line 612
    :cond_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeStatusBarCorlor, pkgName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isShowDndStatusBar: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    if-eqz p2, :cond_86

    .line 616
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 617
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "packageName"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mContext:Landroid/content/Context;

    const v5, 0xa10004a

    .line 620
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 618
    const-string/jumbo v4, "tips"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    const/4 v3, -0x1

    const-string/jumbo v4, "textColor"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 622
    const v3, -0xd1ba7b

    const-string v4, "bgColor"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 623
    const v3, 0xa08001b

    const-string/jumbo v4, "resId"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 627
    :try_start_78
    invoke-interface {v0, v2}, Lmeizu/statusbar/IFlymeStatusBarService;->showAlwaysTextAndIcon(Landroid/os/Bundle;)V

    .line 628
    const-string v3, "DNDStatusBarHasShowed---"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_80
    .catch Landroid/os/RemoteException; {:try_start_78 .. :try_end_80} :catch_81

    .line 631
    goto :goto_85

    .line 629
    :catch_81
    move-exception v1

    .line 630
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 632
    .end local v1  # "e":Landroid/os/RemoteException;
    .end local v2  # "bundle":Landroid/os/Bundle;
    :goto_85
    goto :goto_93

    .line 634
    :cond_86
    :try_start_86
    invoke-interface {v0, p1}, Lmeizu/statusbar/IFlymeStatusBarService;->hideAlwaysTextAndIcon(Ljava/lang/String;)V

    .line 635
    const-string v2, "DNDStatusBarHasHided---"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catch Landroid/os/RemoteException; {:try_start_86 .. :try_end_8e} :catch_8f

    .line 638
    goto :goto_93

    .line 636
    :catch_8f
    move-exception v1

    .line 637
    .restart local v1  # "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 640
    .end local v1  # "e":Landroid/os/RemoteException;
    :goto_93
    return-void

    .line 608
    :cond_94
    :goto_94
    const-string v2, "changeStatusBarCorlor, pkgName is null or empty, return."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    return-void
.end method

.method private unRegisterDndReceiver()V
    .registers 4

    .line 248
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 249
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 250
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 251
    iget-boolean v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mDndStatusBarIsShowing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 252
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/MzDoNotDisturbHelper;->showDoNotDisturbStatusBar(Ljava/lang/String;Z)V

    .line 253
    iput-boolean v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mDndStatusBarIsShowing:Z

    .line 255
    :cond_22
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mScreenUnLockReceiver:Lcom/android/server/notification/MzDoNotDisturbHelper$ScreenUnLockReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 256
    iput-boolean v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mDndReceiverIsRegistered:Z

    .line 257
    return-void
.end method

.method private updateDndStatuBar()V
    .registers 2

    .line 229
    iget v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mZenMode:I

    if-nez v0, :cond_f

    .line 230
    iget-boolean v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mDndReceiverIsRegistered:Z

    if-eqz v0, :cond_b

    .line 231
    invoke-direct {p0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->unRegisterDndReceiver()V

    .line 233
    :cond_b
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mIfDndStatusBarCanShow:Z

    goto :goto_12

    .line 235
    :cond_f
    invoke-direct {p0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->registerDndReceiver()V

    .line 237
    :goto_12
    return-void
.end method

.method private updateNotification()V
    .registers 2

    .line 221
    iget v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mZenMode:I

    if-nez v0, :cond_8

    .line 222
    invoke-direct {p0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->clearDoNotDisturbNotification()V

    goto :goto_b

    .line 224
    :cond_8
    invoke-direct {p0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->showDoNotDisturbNotification()V

    .line 226
    :goto_b
    return-void
.end method

.method private updateNotificationPulseLight()V
    .registers 6

    .line 470
    iget v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mZenMode:I

    const-string/jumbo v1, "notification_light_pulse"

    if-nez v0, :cond_12

    .line 472
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    .line 473
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 472
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_2d

    .line 475
    :cond_12
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 477
    .local v0, "notificationPulseLightSwitch":I
    iget-object v3, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "mz_do_not_disturb_wakeup_breath_light"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 478
    .local v2, "breathLightSwitch":I
    if-eq v2, v0, :cond_2d

    .line 479
    iget-object v3, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mResolver:Landroid/content/ContentResolver;

    .line 480
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 479
    invoke-static {v3, v1, v2, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 483
    .end local v0  # "notificationPulseLightSwitch":I
    .end local v2  # "breathLightSwitch":I
    :cond_2d
    :goto_2d
    return-void
.end method


# virtual methods
.method public onSystemReady()V
    .registers 7

    .line 205
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mResolver:Landroid/content/ContentResolver;

    .line 206
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mNotificationManager:Landroid/app/NotificationManager;

    .line 207
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mContext:Landroid/content/Context;

    const v1, 0xa100053

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Landroid/app/NotificationChannel;

    sget-object v2, Lcom/android/server/notification/MzDoNotDisturbHelper;->NOTIFICATION_CHANNEL_ID:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v0, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 210
    .local v1, "dndChannel":Landroid/app/NotificationChannel;
    iget-object v2, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 211
    iget-object v2, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const-string/jumbo v4, "zen_mode"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mZenMode:I

    .line 212
    invoke-direct {p0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->updateNotification()V

    .line 213
    invoke-direct {p0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->updateNotificationPulseLight()V

    .line 214
    invoke-direct {p0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->updateDndStatuBar()V

    .line 215
    iget-object v2, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/server/notification/MzDoNotDisturbHelper;->ZEN_MODE_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 216
    iget-object v2, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/server/notification/MzDoNotDisturbHelper;->DND_BREATH_LIGHT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 217
    iget-object v2, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/server/notification/MzDoNotDisturbHelper;->ZEN_MODE_TAG_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/server/notification/MzDoNotDisturbHelper;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 218
    return-void
.end method
