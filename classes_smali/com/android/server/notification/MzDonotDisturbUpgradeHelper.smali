.class public Lcom/android/server/notification/MzDonotDisturbUpgradeHelper;
.super Ljava/lang/Object;
.source "MzDonotDisturbUpgradeHelper.java"


# static fields
.field private static DEBUG:Z = false

.field private static final DND_VERSION:I = 0x2

.field private static final KEY_CURRENT_DND_VERSION:Ljava/lang/String; = "current_dnd_version"

.field private static final TAG:Ljava/lang/String; = "MzDonotDisturbUpgradeHelper"


# instance fields
.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/notification/MzDonotDisturbUpgradeHelper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "c"  # Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    if-nez p1, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :goto_b
    iput-object v0, p0, Lcom/android/server/notification/MzDonotDisturbUpgradeHelper;->mResolver:Landroid/content/ContentResolver;

    .line 29
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 30
    .local v0, "systemDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "notification_policy.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 31
    .local v1, "notificationPolicyFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 32
    invoke-direct {p0}, Lcom/android/server/notification/MzDonotDisturbUpgradeHelper;->initVersion()V

    .line 34
    :cond_2a
    return-void
.end method

.method private initVersion()V
    .registers 4

    .line 110
    sget-boolean v0, Lcom/android/server/notification/MzDonotDisturbUpgradeHelper;->DEBUG:Z

    const-string v1, "MzDonotDisturbUpgradeHelper"

    if-eqz v0, :cond_c

    .line 111
    const-string/jumbo v0, "initVersion  = 2"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_c
    iget-object v0, p0, Lcom/android/server/notification/MzDonotDisturbUpgradeHelper;->mResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_17

    .line 114
    const-string/jumbo v0, "initVersion failed"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void

    .line 117
    :cond_17
    const/4 v1, 0x2

    const-string v2, "current_dnd_version"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 119
    return-void
.end method


# virtual methods
.method public onUpgrade(Landroid/service/notification/ZenModeConfig;)V
    .registers 13
    .param p1, "config"  # Landroid/service/notification/ZenModeConfig;

    .line 37
    iget-object v0, p0, Lcom/android/server/notification/MzDonotDisturbUpgradeHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "MzDonotDisturbUpgradeHelper"

    if-eqz v0, :cond_10a

    if-nez p1, :cond_a

    goto/16 :goto_10a

    .line 42
    :cond_a
    const-string v2, "current_dnd_version"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 44
    .local v0, "oldVersion":I
    sget-boolean v4, Lcom/android/server/notification/MzDonotDisturbUpgradeHelper;->DEBUG:Z

    const/4 v5, 0x2

    if-eqz v4, :cond_33

    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onUpgrade oldVersion = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " dndVersion = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_33
    if-ne v0, v5, :cond_36

    .line 48
    return-void

    .line 50
    :cond_36
    if-nez v0, :cond_4b

    .line 51
    iget-boolean v4, p1, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v4, :cond_4a

    .line 52
    const/16 v4, 0x64

    iput v4, p1, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 53
    sget-boolean v4, Lcom/android/server/notification/MzDonotDisturbUpgradeHelper;->DEBUG:Z

    if-eqz v4, :cond_4a

    .line 54
    const-string/jumbo v4, "onUpgrade allowCallsFrom update to SOURCE_WHITE_LIST from 0 to 1"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_4a
    const/4 v0, 0x1

    .line 60
    :cond_4b
    const/4 v4, 0x1

    if-ne v0, v4, :cond_104

    .line 61
    const/4 v5, 0x0

    .line 62
    .local v5, "ruleForDnd":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-object v6, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    if-eqz v6, :cond_76

    .line 63
    iget-object v6, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_76

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 64
    .local v7, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-object v8, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 65
    const-string v9, "com.android.settings"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_75

    .line 66
    move-object v5, v7

    .line 67
    goto :goto_76

    .line 69
    .end local v7  # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_75
    goto :goto_5d

    .line 72
    :cond_76
    :goto_76
    if-eqz v5, :cond_7b

    iget v6, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    goto :goto_7c

    .line 73
    :cond_7b
    move v6, v4

    :goto_7c
    nop

    .line 74
    .local v6, "zenMode":I
    nop

    .line 75
    invoke-static {v6}, Landroid/app/NotificationManager;->zenModeToInterruptionFilter(I)I

    move-result v7

    .line 76
    .local v7, "interruptionFilter":I
    iget-object v8, p0, Lcom/android/server/notification/MzDonotDisturbUpgradeHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v9, "mz_do_not_disturb_interruption_filter"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 78
    sget-boolean v8, Lcom/android/server/notification/MzDonotDisturbUpgradeHelper;->DEBUG:Z

    if-eqz v8, :cond_a3

    .line 79
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onUpgrade InterruptionFilter update to  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_a3
    iget-object v8, p0, Lcom/android/server/notification/MzDonotDisturbUpgradeHelper;->mResolver:Landroid/content/ContentResolver;

    .line 84
    if-eqz v5, :cond_a9

    move v9, v4

    goto :goto_aa

    :cond_a9
    move v9, v3

    .line 83
    :goto_aa
    const-string/jumbo v10, "mz_do_not_disturb_time_switch"

    invoke-static {v8, v10, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 85
    sget-boolean v8, Lcom/android/server/notification/MzDonotDisturbUpgradeHelper;->DEBUG:Z

    if-eqz v8, :cond_cc

    .line 86
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onUpgrade time switch update to  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_c2

    move v3, v4

    :cond_c2
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_cc
    sget-object v3, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    .line 90
    .local v3, "repeatDay":[I
    if-eqz v5, :cond_da

    .line 91
    iget-object v4, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 92
    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v4

    .line 93
    .local v4, "scheduleInfo":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    if-eqz v4, :cond_da

    .line 94
    iget-object v3, v4, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 97
    .end local v4  # "scheduleInfo":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    :cond_da
    invoke-static {v3}, Lcom/android/server/notification/MzDoNotDisturbHelper;->repeatDayToBinary([I)I

    move-result v4

    .line 98
    .local v4, "binaryRepeatDay":I
    iget-object v8, p0, Lcom/android/server/notification/MzDonotDisturbUpgradeHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v9, "mz_do_not_disturb_repeat_days"

    invoke-static {v8, v9, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 100
    sget-boolean v8, Lcom/android/server/notification/MzDonotDisturbUpgradeHelper;->DEBUG:Z

    if-eqz v8, :cond_103

    .line 101
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onUpgrade repeat update to  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_103
    const/4 v0, 0x2

    .line 105
    .end local v3  # "repeatDay":[I
    .end local v4  # "binaryRepeatDay":I
    .end local v5  # "ruleForDnd":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v6  # "zenMode":I
    .end local v7  # "interruptionFilter":I
    :cond_104
    iget-object v1, p0, Lcom/android/server/notification/MzDonotDisturbUpgradeHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 107
    return-void

    .line 39
    .end local v0  # "oldVersion":I
    :cond_10a
    :goto_10a
    const-string/jumbo v0, "onUpgrade return"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method
