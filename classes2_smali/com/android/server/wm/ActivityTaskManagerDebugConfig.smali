.class public Lcom/android/server/wm/ActivityTaskManagerDebugConfig;
.super Ljava/lang/Object;
.source "ActivityTaskManagerDebugConfig.java"


# static fields
.field private static final APPEND_CATEGORY_NAME:Z = false

.field static DEBUG_ADD_REMOVE:Z = false

.field static DEBUG_ALL:Z = false

.field private static DEBUG_ALL_ACTIVITIES:Z = false

.field static DEBUG_APP:Z = false

.field public static DEBUG_CLEANUP:Z = false

.field public static DEBUG_CONFIGURATION:Z = false

.field static DEBUG_CONTAINERS:Z = false

.field static DEBUG_FOCUS:Z = false

.field static DEBUG_FREEZE:Z = false

.field static DEBUG_IDLE:Z = false

.field static DEBUG_IMMERSIVE:Z = false

.field static DEBUG_LOCKTASK:Z = false

.field public static DEBUG_METRICS:Z = false

.field static DEBUG_PAUSE:Z = false

.field static DEBUG_PERMISSIONS_REVIEW:Z = false

.field static DEBUG_RECENTS:Z = false

.field static DEBUG_RECENTS_TRIM_TASKS:Z = false

.field static DEBUG_RELEASE:Z = false

.field static DEBUG_RESULTS:Z = false

.field static DEBUG_SAVED_STATE:Z = false

.field static DEBUG_STACK:Z = false

.field static DEBUG_STATES:Z = false

.field public static DEBUG_SWITCH:Z = false

.field static DEBUG_TASKS:Z = false

.field static DEBUG_TRANSITION:Z = false

.field static DEBUG_USER_LEAVING:Z = false

.field static DEBUG_VISIBILITY:Z = false

.field static final POSTFIX_ADD_REMOVE:Ljava/lang/String; = ""

.field static final POSTFIX_APP:Ljava/lang/String; = ""

.field static final POSTFIX_CLEANUP:Ljava/lang/String; = ""

.field public static final POSTFIX_CONFIGURATION:Ljava/lang/String; = ""

.field static final POSTFIX_CONTAINERS:Ljava/lang/String; = ""

.field static final POSTFIX_FOCUS:Ljava/lang/String; = ""

.field static final POSTFIX_FREEZE:Ljava/lang/String; = ""

.field static final POSTFIX_IDLE:Ljava/lang/String; = ""

.field static final POSTFIX_IMMERSIVE:Ljava/lang/String; = ""

.field public static final POSTFIX_LOCKTASK:Ljava/lang/String; = ""

.field static final POSTFIX_PAUSE:Ljava/lang/String; = ""

.field static final POSTFIX_RECENTS:Ljava/lang/String; = ""

.field static final POSTFIX_RELEASE:Ljava/lang/String; = ""

.field static final POSTFIX_RESULTS:Ljava/lang/String; = ""

.field static final POSTFIX_SAVED_STATE:Ljava/lang/String; = ""

.field static final POSTFIX_STACK:Ljava/lang/String; = ""

.field static final POSTFIX_STATES:Ljava/lang/String; = ""

.field public static final POSTFIX_SWITCH:Ljava/lang/String; = ""

.field static final POSTFIX_TASKS:Ljava/lang/String; = ""

.field static final POSTFIX_TRANSITION:Ljava/lang/String; = ""

.field static final POSTFIX_USER_LEAVING:Ljava/lang/String; = ""

.field static final POSTFIX_VISIBILITY:Ljava/lang/String; = ""

.field static final TAG_ATM:Ljava/lang/String; = "ActivityTaskManager"

.field static final TAG_WITH_CLASS_NAME:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ALL:Z

    .line 44
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ALL:Z

    const/4 v2, 0x1

    if-nez v1, :cond_a

    move v1, v0

    goto :goto_b

    :cond_a
    move v1, v2

    :goto_b
    sput-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    .line 46
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    if-nez v1, :cond_13

    move v1, v0

    goto :goto_14

    :cond_13
    move v1, v2

    :goto_14
    sput-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    .line 47
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_1c

    move v1, v0

    goto :goto_1d

    :cond_1c
    move v1, v2

    :goto_1d
    sput-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    .line 48
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    if-nez v1, :cond_25

    move v1, v0

    goto :goto_26

    :cond_25
    move v1, v2

    :goto_26
    sput-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONTAINERS:Z

    .line 49
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_FOCUS:Z

    .line 50
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_30

    move v1, v0

    goto :goto_31

    :cond_30
    move v1, v2

    :goto_31
    sput-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_IMMERSIVE:Z

    .line 51
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_39

    move v1, v0

    goto :goto_3a

    :cond_39
    move v1, v2

    :goto_3a
    sput-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_LOCKTASK:Z

    .line 52
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_42

    move v1, v0

    goto :goto_43

    :cond_42
    move v1, v2

    :goto_43
    sput-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    .line 53
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_4b

    move v1, v0

    goto :goto_4c

    :cond_4b
    move v1, v2

    :goto_4c
    sput-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    .line 54
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-nez v1, :cond_54

    move v1, v0

    goto :goto_55

    :cond_54
    move v1, v2

    :goto_55
    sput-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    .line 55
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    if-nez v1, :cond_5d

    move v1, v0

    goto :goto_5e

    :cond_5d
    move v1, v2

    :goto_5e
    sput-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SAVED_STATE:Z

    .line 56
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_66

    move v1, v0

    goto :goto_67

    :cond_66
    move v1, v2

    :goto_67
    sput-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    .line 57
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    if-nez v1, :cond_6f

    move v1, v0

    goto :goto_70

    :cond_6f
    move v1, v2

    :goto_70
    sput-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    .line 58
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_78

    move v1, v0

    goto :goto_79

    :cond_78
    move v1, v2

    :goto_79
    sput-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    .line 59
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_81

    move v1, v0

    goto :goto_82

    :cond_81
    move v1, v2

    :goto_82
    sput-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    .line 60
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_8a

    move v1, v0

    goto :goto_8b

    :cond_8a
    move v1, v2

    :goto_8b
    sput-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    .line 61
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_93

    move v1, v0

    goto :goto_94

    :cond_93
    move v1, v2

    :goto_94
    sput-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    .line 62
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    if-nez v1, :cond_9c

    move v1, v0

    goto :goto_9d

    :cond_9c
    move v1, v2

    :goto_9d
    sput-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_APP:Z

    .line 63
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    if-nez v1, :cond_a5

    move v1, v0

    goto :goto_a6

    :cond_a5
    move v1, v2

    :goto_a6
    sput-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_IDLE:Z

    .line 64
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    if-nez v1, :cond_ae

    move v1, v0

    goto :goto_af

    :cond_ae
    move v1, v2

    :goto_af
    sput-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RELEASE:Z

    .line 65
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_b7

    move v1, v0

    goto :goto_b8

    :cond_b7
    move v1, v2

    :goto_b8
    sput-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    .line 66
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_c0

    move v1, v0

    goto :goto_c1

    :cond_c0
    move v1, v2

    :goto_c1
    sput-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PERMISSIONS_REVIEW:Z

    .line 67
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_c9

    move v1, v0

    goto :goto_ca

    :cond_c9
    move v1, v2

    :goto_ca
    sput-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RESULTS:Z

    .line 68
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_d2

    move v1, v0

    goto :goto_d3

    :cond_d2
    move v1, v2

    :goto_d3
    sput-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    .line 69
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_db

    move v1, v0

    goto :goto_dc

    :cond_db
    move v1, v2

    :goto_dc
    sput-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    .line 72
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v1, :cond_e3

    goto :goto_e4

    :cond_e3
    move v0, v2

    :goto_e4
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_FREEZE:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
