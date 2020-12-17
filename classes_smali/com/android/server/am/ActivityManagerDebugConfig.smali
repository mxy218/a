.class Lcom/android/server/am/ActivityManagerDebugConfig;
.super Ljava/lang/Object;
.source "ActivityManagerDebugConfig.java"


# static fields
.field static final APPEND_CATEGORY_NAME:Z = false

.field static DEBUG_ALL:Z = false

.field static DEBUG_ANR:Z = false

.field static DEBUG_BACKGROUND_CHECK:Z = false

.field static DEBUG_BACKUP:Z = false

.field static DEBUG_BROADCAST:Z = false

.field static DEBUG_BROADCAST_BACKGROUND:Z = false

.field static DEBUG_BROADCAST_DEFERRAL:Z = false

.field static DEBUG_BROADCAST_LIGHT:Z = false

.field static DEBUG_BROADCAST_PREF:Z = false

.field static DEBUG_COMPACTION:Z = false

.field static DEBUG_FOREGROUND_SERVICE:Z = false

.field static DEBUG_FREEZE:Z = false

.field static DEBUG_INTERCEPT:Z = false

.field static DEBUG_INTERCEPT_BROADCAST_DETAILS:Z = false

.field static DEBUG_LRU:Z = false

.field static DEBUG_MU:Z = false

.field static DEBUG_NETWORK:Z = false

.field static DEBUG_OOM_ADJ:Z = false

.field static DEBUG_OOM_ADJ_REASON:Z = false

.field static DEBUG_PERMISSIONS_REVIEW:Z = false

.field static DEBUG_POWER:Z = false

.field static DEBUG_POWER_QUICK:Z = false

.field static DEBUG_PROCESSES:Z = false

.field static DEBUG_PROCESS_OBSERVERS:Z = false

.field static DEBUG_PROVIDER:Z = false

.field static DEBUG_PSS:Z = false

.field static DEBUG_SERVICE:Z = false

.field static DEBUG_SERVICE_EXECUTING:Z = false

.field static DEBUG_UID_OBSERVERS:Z = false

.field static DEBUG_USAGE_STATS:Z = false

.field static DEBUG_WHITELISTS:Z = false

.field static final POSTFIX_BACKUP:Ljava/lang/String; = ""

.field static final POSTFIX_BROADCAST:Ljava/lang/String; = ""

.field static final POSTFIX_CLEANUP:Ljava/lang/String; = ""

.field static final POSTFIX_FREEZE:Ljava/lang/String; = ""

.field static final POSTFIX_INTERCEPT:Ljava/lang/String; = ""

.field static final POSTFIX_LRU:Ljava/lang/String; = ""

.field static final POSTFIX_MU:Ljava/lang/String; = "_MU"

.field static final POSTFIX_NETWORK:Ljava/lang/String; = "_Network"

.field static final POSTFIX_OOM_ADJ:Ljava/lang/String; = ""

.field static final POSTFIX_POWER:Ljava/lang/String; = ""

.field static final POSTFIX_PROCESSES:Ljava/lang/String; = ""

.field static final POSTFIX_PROCESS_OBSERVERS:Ljava/lang/String; = ""

.field static final POSTFIX_PROVIDER:Ljava/lang/String; = ""

.field static final POSTFIX_PSS:Ljava/lang/String; = ""

.field static final POSTFIX_SERVICE:Ljava/lang/String; = ""

.field static final POSTFIX_SERVICE_EXECUTING:Ljava/lang/String; = ""

.field static final POSTFIX_UID_OBSERVERS:Ljava/lang/String; = ""

.field static final TAG_AM:Ljava/lang/String; = "ActivityManager"

.field static final TAG_WITH_CLASS_NAME:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    .line 45
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ANR:Z

    .line 46
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    const/4 v2, 0x1

    if-nez v1, :cond_c

    move v1, v0

    goto :goto_d

    :cond_c
    move v1, v2

    :goto_d
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKGROUND_CHECK:Z

    .line 47
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_15

    move v1, v0

    goto :goto_16

    :cond_15
    move v1, v2

    :goto_16
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKUP:Z

    .line 48
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_1e

    move v1, v0

    goto :goto_1f

    :cond_1e
    move v1, v2

    :goto_1f
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    .line 49
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-nez v1, :cond_27

    move v1, v0

    goto :goto_28

    :cond_27
    move v1, v2

    :goto_28
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_BACKGROUND:Z

    .line 50
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-nez v1, :cond_30

    move v1, v0

    goto :goto_31

    :cond_30
    move v1, v2

    :goto_31
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_LIGHT:Z

    .line 51
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-nez v1, :cond_39

    move v1, v0

    goto :goto_3a

    :cond_39
    move v1, v2

    :goto_3a
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_DEFERRAL:Z

    .line 52
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_42

    move v1, v0

    goto :goto_43

    :cond_42
    move v1, v2

    :goto_43
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    .line 53
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_4b

    move v1, v0

    goto :goto_4c

    :cond_4b
    move v1, v2

    :goto_4c
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    .line 54
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_54

    move v1, v0

    goto :goto_55

    :cond_54
    move v1, v2

    :goto_55
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    .line 55
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_5d

    move v1, v0

    goto :goto_5e

    :cond_5d
    move v1, v2

    :goto_5e
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_NETWORK:Z

    .line 56
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_66

    move v1, v0

    goto :goto_67

    :cond_66
    move v1, v2

    :goto_67
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    .line 57
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_6f

    move v1, v0

    goto :goto_70

    :cond_6f
    move v1, v2

    :goto_70
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    .line 58
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_78

    move v1, v0

    goto :goto_79

    :cond_78
    move v1, v2

    :goto_79
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_POWER:Z

    .line 59
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_POWER:Z

    if-nez v1, :cond_81

    move v1, v0

    goto :goto_82

    :cond_81
    move v1, v2

    :goto_82
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_POWER_QUICK:Z

    .line 60
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_8a

    move v1, v0

    goto :goto_8b

    :cond_8a
    move v1, v2

    :goto_8b
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    .line 61
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_93

    move v1, v0

    goto :goto_94

    :cond_93
    move v1, v2

    :goto_94
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    .line 62
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_9c

    move v1, v0

    goto :goto_9d

    :cond_9c
    move v1, v2

    :goto_9d
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROVIDER:Z

    .line 63
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_a5

    move v1, v0

    goto :goto_a6

    :cond_a5
    move v1, v2

    :goto_a6
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    .line 64
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_ae

    move v1, v0

    goto :goto_af

    :cond_ae
    move v1, v2

    :goto_af
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    .line 65
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_b7

    move v1, v0

    goto :goto_b8

    :cond_b7
    move v1, v2

    :goto_b8
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    .line 66
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_c0

    move v1, v0

    goto :goto_c1

    :cond_c0
    move v1, v2

    :goto_c1
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE_EXECUTING:Z

    .line 67
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_c9

    move v1, v0

    goto :goto_ca

    :cond_c9
    move v1, v2

    :goto_ca
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    .line 68
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_d2

    move v1, v0

    goto :goto_d3

    :cond_d2
    move v1, v2

    :goto_d3
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_USAGE_STATS:Z

    .line 69
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_db

    move v1, v0

    goto :goto_dc

    :cond_db
    move v1, v2

    :goto_dc
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PERMISSIONS_REVIEW:Z

    .line 70
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_e4

    move v1, v0

    goto :goto_e5

    :cond_e4
    move v1, v2

    :goto_e5
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_WHITELISTS:Z

    .line 73
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_ed

    move v1, v0

    goto :goto_ee

    :cond_ed
    move v1, v2

    :goto_ee
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FREEZE:Z

    .line 102
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_f6

    move v1, v0

    goto :goto_f7

    :cond_f6
    move v1, v2

    :goto_f7
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_PREF:Z

    .line 108
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_ff

    move v1, v0

    goto :goto_100

    :cond_ff
    move v1, v2

    :goto_100
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_INTERCEPT_BROADCAST_DETAILS:Z

    .line 109
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_107

    goto :goto_108

    :cond_107
    move v0, v2

    :goto_108
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_INTERCEPT:Z

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
