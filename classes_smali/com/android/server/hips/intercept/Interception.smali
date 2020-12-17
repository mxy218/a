.class public abstract Lcom/android/server/hips/intercept/Interception;
.super Ljava/lang/Object;
.source "Interception.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    }
.end annotation


# static fields
.field private static final AIR_RULES_NAME:Ljava/lang/String; = "interception.conf"

.field private static final CURRENT_RULES_NAME:Ljava/lang/String; = "current_V4_interception_rules"

.field private static DELAY_TIME:J = 0x0L

.field public static final INTERCEPTION_VERSION:I = 0x4

.field private static final ITEMS_NAME:Ljava/lang/String; = "interception_items"

.field private static final ITEM_LENGTH:I = 0x2

.field public static final MODE_ALLOW:I = 0x1

.field public static final MODE_AUTO:I = 0x0

.field public static final MODE_DENY:I = 0x2

.field public static final MODE_ERROR:I = -0x1

.field private static final RULES_NAME:Ljava/lang/String; = "V4_interception_rules"

.field private static final RULE_TYPE_ALLOW:I = 0x1

.field private static final RULE_TYPE_DEFAULT:I = 0x0

.field private static final RULE_TYPE_DENY:I = -0x1

.field public static final RUN_TYPE_ACTIVITY:Ljava/lang/String; = "activity"

.field public static final RUN_TYPE_BACKUP:Ljava/lang/String; = "backup"

.field public static final RUN_TYPE_BROADCAST:Ljava/lang/String; = "broadcast"

.field public static final RUN_TYPE_CONTENT_PROVIDER:Ljava/lang/String; = "provider"

.field public static final RUN_TYPE_RETRIEVE_SERVICE:Ljava/lang/String; = "retrieve_service"

.field private static final STORAGE_PATH:Ljava/lang/String; = "/data/system"

.field private static final SUPPORT_LENGH_MAX:I = 0x14

.field private static final SUPPORT_LENGH_MIN:I = 0xe

.field public static final TAG:Ljava/lang/String; = "Interception"

.field public static final TYPE_ACTIVITY:I = 0x1

.field public static final TYPE_BACKUP:I = 0x5

.field public static final TYPE_BROADCAST:I = 0x3

.field public static final TYPE_PROVIDER:I = 0x4

.field public static final TYPE_SERVICE:I = 0x2

.field private static mActivityInterceptionRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/hips/intercept/Interception$RulesConvertor;",
            ">;"
        }
    .end annotation
.end field

.field private static mActivityInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private static mAdbStatus:I

.field private static mBroadcastInterceptionRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/hips/intercept/Interception$RulesConvertor;",
            ">;"
        }
    .end annotation
.end field

.field private static mBroadcastInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private static mInterceptionItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mInterceptionItemsRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private static mInterceptionRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/hips/intercept/Interception$RulesConvertor;",
            ">;"
        }
    .end annotation
.end field

.field private static mInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private static mInterceptionTimeStamp:J

.field private static mIsCTA:Z

.field private static mIsCurrentInMp3Mode:Z

.field private static mLastEvent:Lcom/android/server/hips/intercept/InterceptionEvent;

.field private static mLocalActivityInterceptionRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/hips/intercept/Interception$RulesConvertor;",
            ">;"
        }
    .end annotation
.end field

.field private static mLocalBroadcastInterceptionRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/hips/intercept/Interception$RulesConvertor;",
            ">;"
        }
    .end annotation
.end field

.field private static mLocalInterceptionRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/hips/intercept/Interception$RulesConvertor;",
            ">;"
        }
    .end annotation
.end field

.field private static mLocalProviderInterceptionRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/hips/intercept/Interception$RulesConvertor;",
            ">;"
        }
    .end annotation
.end field

.field private static mLocalServiceInterceptionRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/hips/intercept/Interception$RulesConvertor;",
            ">;"
        }
    .end annotation
.end field

.field private static mProviderInterceptionRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/hips/intercept/Interception$RulesConvertor;",
            ">;"
        }
    .end annotation
.end field

.field private static mProviderInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private static mServiceInterceptionRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/hips/intercept/Interception$RulesConvertor;",
            ">;"
        }
    .end annotation
.end field

.field private static mServiceInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private static mSystemInterceptionItemsRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private static mSystemInterceptionRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/hips/intercept/Interception$RulesConvertor;",
            ">;"
        }
    .end annotation
.end field

.field private static mSystemInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private static mSystemLocalInterceptionRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/hips/intercept/Interception$RulesConvertor;",
            ">;"
        }
    .end annotation
.end field

.field private static mUserSettingInterceptionRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/hips/intercept/Interception$RulesConvertor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 81
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/hips/intercept/Interception;->mIsCurrentInMp3Mode:Z

    .line 83
    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v1, Lcom/android/server/hips/intercept/Interception;->mInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/server/hips/intercept/Interception;->mInterceptionRules:Ljava/util/List;

    .line 85
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v1, Lcom/android/server/hips/intercept/Interception;->mLocalInterceptionRules:Ljava/util/List;

    .line 86
    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v1, Lcom/android/server/hips/intercept/Interception;->mInterceptionItemsRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 87
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/server/hips/intercept/Interception;->mInterceptionItems:Ljava/util/Map;

    .line 90
    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v1, Lcom/android/server/hips/intercept/Interception;->mSystemInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/server/hips/intercept/Interception;->mSystemInterceptionRules:Ljava/util/List;

    .line 92
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v1, Lcom/android/server/hips/intercept/Interception;->mSystemLocalInterceptionRules:Ljava/util/List;

    .line 93
    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v1, Lcom/android/server/hips/intercept/Interception;->mSystemInterceptionItemsRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 95
    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v1, Lcom/android/server/hips/intercept/Interception;->mActivityInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 96
    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v1, Lcom/android/server/hips/intercept/Interception;->mServiceInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 97
    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v1, Lcom/android/server/hips/intercept/Interception;->mBroadcastInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 98
    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v1, Lcom/android/server/hips/intercept/Interception;->mProviderInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/server/hips/intercept/Interception;->mActivityInterceptionRules:Ljava/util/List;

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/server/hips/intercept/Interception;->mBroadcastInterceptionRules:Ljava/util/List;

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/server/hips/intercept/Interception;->mServiceInterceptionRules:Ljava/util/List;

    .line 103
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/server/hips/intercept/Interception;->mProviderInterceptionRules:Ljava/util/List;

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/server/hips/intercept/Interception;->mLocalActivityInterceptionRules:Ljava/util/List;

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/server/hips/intercept/Interception;->mLocalBroadcastInterceptionRules:Ljava/util/List;

    .line 107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/server/hips/intercept/Interception;->mLocalServiceInterceptionRules:Ljava/util/List;

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/server/hips/intercept/Interception;->mLocalProviderInterceptionRules:Ljava/util/List;

    .line 110
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/server/hips/intercept/Interception;->mUserSettingInterceptionRules:Ljava/util/List;

    .line 112
    sput v0, Lcom/android/server/hips/intercept/Interception;->mAdbStatus:I

    .line 113
    sput-boolean v0, Lcom/android/server/hips/intercept/Interception;->mIsCTA:Z

    .line 114
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/hips/intercept/Interception;->DELAY_TIME:J

    .line 122
    const-string v0, "/data/system/V4_interception_rules"

    invoke-static {v0}, Lcom/android/server/hips/utils/HipsUtils;->readInfoFromFile(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 123
    .local v0, "rulesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_b7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_b7

    .line 124
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/hips/intercept/Interception;->loadInterceptionRule(Ljava/util/ArrayList;Z)I

    .line 128
    :cond_b7
    invoke-static {}, Lcom/android/server/hips/intercept/Interception;->readInterceptionItem()V

    .line 129
    invoke-static {}, Lcom/android/server/hips/intercept/Interception;->initLocalInterceptionRule()V

    .line 130
    invoke-static {}, Lcom/android/server/hips/intercept/Interception;->isCTA()Z

    move-result v1

    sput-boolean v1, Lcom/android/server/hips/intercept/Interception;->mIsCTA:Z

    .line 131
    .end local v0  # "rulesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/Map;)V
    .registers 1
    .param p0, "x0"  # Ljava/util/Map;

    .line 45
    invoke-static {p0}, Lcom/android/server/hips/intercept/Interception;->updateInterceptionItemsInner(Ljava/util/Map;)V

    return-void
.end method

.method public static activityCalleeStayTimeStats(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZZLcom/android/server/hips/intercept/InterceptionEvent;)V
    .registers 29
    .param p0, "callingPackage"  # Ljava/lang/String;
    .param p1, "calleePkg"  # Ljava/lang/String;
    .param p2, "reason"  # I
    .param p3, "calleeClass"  # Ljava/lang/String;
    .param p4, "processName"  # Ljava/lang/String;
    .param p5, "type"  # I
    .param p6, "isTop"  # Z
    .param p7, "isIntercept"  # Z
    .param p8, "startProc"  # Z
    .param p9, "lastEvent"  # Lcom/android/server/hips/intercept/InterceptionEvent;

    .line 3193
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p9

    const-wide/16 v16, 0x0

    .line 3194
    .local v16, "calleeStayTime":J
    const-string v0, "com.android.settings"

    const-string v1, ""

    const-string v2, "com.meizu.flyme.launcher"

    if-eqz v13, :cond_70

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    if-eqz v14, :cond_70

    .line 3195
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_70

    if-eqz v15, :cond_70

    .line 3196
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCaller()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_70

    invoke-virtual/range {p9 .. p9}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCallee()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    .line 3197
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCallee()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 3198
    :cond_3a
    new-instance v18, Lcom/android/server/hips/intercept/InterceptionEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move/from16 v9, p2

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-direct/range {v0 .. v12}, Lcom/android/server/hips/intercept/InterceptionEvent;-><init>(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V

    .line 3200
    .local v0, "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual/range {p9 .. p9}, Lcom/android/server/hips/intercept/InterceptionEvent;->getStayTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 3201
    .end local v16  # "calleeStayTime":J
    .local v1, "calleeStayTime":J
    invoke-virtual {v15, v1, v2}, Lcom/android/server/hips/intercept/InterceptionEvent;->setStayTime(J)V

    .line 3202
    invoke-static {}, Lcom/android/server/hips/intercept/InterceptionEventStats;->getInstance()Lcom/android/server/hips/intercept/InterceptionEventStats;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/android/server/hips/intercept/InterceptionEventStats;->addInterceptEvent(Lcom/android/server/hips/intercept/InterceptionEvent;)V

    .line 3203
    invoke-static {v0}, Lcom/android/server/hips/intercept/Interception;->setLastInterceptionEvent(Lcom/android/server/hips/intercept/InterceptionEvent;)V

    .line 3204
    .end local v0  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    goto/16 :goto_2c0

    .line 3205
    .end local v1  # "calleeStayTime":J
    .restart local v16  # "calleeStayTime":J
    :cond_70
    if-eqz v15, :cond_c2

    invoke-virtual/range {p9 .. p9}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCaller()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c2

    invoke-virtual/range {p9 .. p9}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCaller()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c2

    if-eqz v14, :cond_c2

    if-eqz v13, :cond_c2

    .line 3206
    invoke-virtual/range {p0 .. p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c2

    .line 3208
    new-instance v18, Lcom/android/server/hips/intercept/InterceptionEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move/from16 v9, p2

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-direct/range {v0 .. v12}, Lcom/android/server/hips/intercept/InterceptionEvent;-><init>(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V

    .line 3210
    .restart local v0  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual/range {p9 .. p9}, Lcom/android/server/hips/intercept/InterceptionEvent;->getStayTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 3211
    .end local v16  # "calleeStayTime":J
    .restart local v1  # "calleeStayTime":J
    invoke-virtual {v15, v1, v2}, Lcom/android/server/hips/intercept/InterceptionEvent;->setStayTime(J)V

    .line 3212
    invoke-static {}, Lcom/android/server/hips/intercept/InterceptionEventStats;->getInstance()Lcom/android/server/hips/intercept/InterceptionEventStats;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/android/server/hips/intercept/InterceptionEventStats;->addInterceptEvent(Lcom/android/server/hips/intercept/InterceptionEvent;)V

    .line 3213
    invoke-static {v0}, Lcom/android/server/hips/intercept/Interception;->setLastInterceptionEvent(Lcom/android/server/hips/intercept/InterceptionEvent;)V

    .line 3214
    .end local v0  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    goto/16 :goto_2c0

    .line 3215
    .end local v1  # "calleeStayTime":J
    .restart local v16  # "calleeStayTime":J
    :cond_c2
    if-eqz v15, :cond_ee

    invoke-virtual/range {p9 .. p9}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCaller()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_ee

    invoke-virtual/range {p9 .. p9}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCaller()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p9 .. p9}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCallee()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ee

    if-eqz v13, :cond_ee

    if-eqz v14, :cond_ee

    .line 3216
    invoke-virtual/range {p0 .. p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ee

    .line 3217
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCaller()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ee

    goto/16 :goto_2be

    .line 3224
    :cond_ee
    if-eqz v15, :cond_146

    invoke-virtual/range {p9 .. p9}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCallee()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_146

    invoke-virtual/range {p9 .. p9}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCallee()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_146

    .line 3225
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCaller()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_146

    invoke-virtual/range {p9 .. p9}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCaller()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_146

    .line 3226
    new-instance v18, Lcom/android/server/hips/intercept/InterceptionEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move/from16 v9, p2

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-direct/range {v0 .. v12}, Lcom/android/server/hips/intercept/InterceptionEvent;-><init>(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V

    .line 3228
    .restart local v0  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual/range {p9 .. p9}, Lcom/android/server/hips/intercept/InterceptionEvent;->getStayTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 3229
    .end local v16  # "calleeStayTime":J
    .restart local v1  # "calleeStayTime":J
    invoke-virtual {v15, v1, v2}, Lcom/android/server/hips/intercept/InterceptionEvent;->setStayTime(J)V

    .line 3230
    invoke-static {}, Lcom/android/server/hips/intercept/InterceptionEventStats;->getInstance()Lcom/android/server/hips/intercept/InterceptionEventStats;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/android/server/hips/intercept/InterceptionEventStats;->addInterceptEvent(Lcom/android/server/hips/intercept/InterceptionEvent;)V

    .line 3231
    invoke-static {v0}, Lcom/android/server/hips/intercept/Interception;->setLastInterceptionEvent(Lcom/android/server/hips/intercept/InterceptionEvent;)V

    .line 3232
    .end local v0  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    goto/16 :goto_2c0

    .line 3233
    .end local v1  # "calleeStayTime":J
    .restart local v16  # "calleeStayTime":J
    :cond_146
    if-nez v13, :cond_19e

    if-eqz v14, :cond_19e

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19e

    if-eqz v15, :cond_19e

    .line 3234
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCaller()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_19e

    invoke-virtual/range {p9 .. p9}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCallee()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_19e

    .line 3235
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCallee()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19e

    .line 3236
    new-instance v18, Lcom/android/server/hips/intercept/InterceptionEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move/from16 v9, p2

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-direct/range {v0 .. v12}, Lcom/android/server/hips/intercept/InterceptionEvent;-><init>(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V

    .line 3238
    .restart local v0  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual/range {p9 .. p9}, Lcom/android/server/hips/intercept/InterceptionEvent;->getStayTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 3239
    .end local v16  # "calleeStayTime":J
    .restart local v1  # "calleeStayTime":J
    invoke-virtual {v15, v1, v2}, Lcom/android/server/hips/intercept/InterceptionEvent;->setStayTime(J)V

    .line 3240
    invoke-static {}, Lcom/android/server/hips/intercept/InterceptionEventStats;->getInstance()Lcom/android/server/hips/intercept/InterceptionEventStats;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/android/server/hips/intercept/InterceptionEventStats;->addInterceptEvent(Lcom/android/server/hips/intercept/InterceptionEvent;)V

    .line 3241
    invoke-static {v0}, Lcom/android/server/hips/intercept/Interception;->setLastInterceptionEvent(Lcom/android/server/hips/intercept/InterceptionEvent;)V

    .line 3242
    .end local v0  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    goto/16 :goto_2c0

    .line 3243
    .end local v1  # "calleeStayTime":J
    .restart local v16  # "calleeStayTime":J
    :cond_19e
    if-eqz v15, :cond_1ea

    invoke-virtual/range {p9 .. p9}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCaller()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1ea

    invoke-virtual/range {p9 .. p9}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCallee()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ea

    if-eqz v13, :cond_1ea

    if-eqz v14, :cond_1ea

    .line 3245
    new-instance v18, Lcom/android/server/hips/intercept/InterceptionEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move/from16 v9, p2

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-direct/range {v0 .. v12}, Lcom/android/server/hips/intercept/InterceptionEvent;-><init>(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V

    .line 3247
    .restart local v0  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual/range {p9 .. p9}, Lcom/android/server/hips/intercept/InterceptionEvent;->getStayTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 3248
    .end local v16  # "calleeStayTime":J
    .restart local v1  # "calleeStayTime":J
    invoke-virtual {v15, v1, v2}, Lcom/android/server/hips/intercept/InterceptionEvent;->setStayTime(J)V

    .line 3249
    invoke-static {}, Lcom/android/server/hips/intercept/InterceptionEventStats;->getInstance()Lcom/android/server/hips/intercept/InterceptionEventStats;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/android/server/hips/intercept/InterceptionEventStats;->addInterceptEvent(Lcom/android/server/hips/intercept/InterceptionEvent;)V

    .line 3250
    invoke-static {v0}, Lcom/android/server/hips/intercept/Interception;->setLastInterceptionEvent(Lcom/android/server/hips/intercept/InterceptionEvent;)V

    .line 3251
    .end local v0  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    goto/16 :goto_2c0

    .line 3252
    .end local v1  # "calleeStayTime":J
    .restart local v16  # "calleeStayTime":J
    :cond_1ea
    if-nez v15, :cond_20f

    .line 3254
    new-instance v18, Lcom/android/server/hips/intercept/InterceptionEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move/from16 v9, p2

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-direct/range {v0 .. v12}, Lcom/android/server/hips/intercept/InterceptionEvent;-><init>(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V

    .line 3256
    .restart local v0  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    invoke-static {v0}, Lcom/android/server/hips/intercept/Interception;->setLastInterceptionEvent(Lcom/android/server/hips/intercept/InterceptionEvent;)V

    .line 3257
    .end local v0  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    goto/16 :goto_2be

    :cond_20f
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCaller()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_242

    invoke-virtual/range {p9 .. p9}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCallee()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_242

    .line 3258
    new-instance v18, Lcom/android/server/hips/intercept/InterceptionEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move/from16 v9, p2

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-direct/range {v0 .. v12}, Lcom/android/server/hips/intercept/InterceptionEvent;-><init>(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V

    .line 3260
    .restart local v0  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    invoke-static {v0}, Lcom/android/server/hips/intercept/Interception;->setLastInterceptionEvent(Lcom/android/server/hips/intercept/InterceptionEvent;)V

    .line 3261
    .end local v0  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    goto/16 :goto_2be

    :cond_242
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCaller()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_297

    invoke-virtual/range {p9 .. p9}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCaller()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_297

    .line 3262
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCallee()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_297

    invoke-virtual/range {p9 .. p9}, Lcom/android/server/hips/intercept/InterceptionEvent;->getCallee()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_297

    .line 3264
    new-instance v18, Lcom/android/server/hips/intercept/InterceptionEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move/from16 v9, p2

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-direct/range {v0 .. v12}, Lcom/android/server/hips/intercept/InterceptionEvent;-><init>(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V

    .line 3266
    .restart local v0  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual/range {p9 .. p9}, Lcom/android/server/hips/intercept/InterceptionEvent;->getStayTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 3267
    .end local v16  # "calleeStayTime":J
    .restart local v1  # "calleeStayTime":J
    invoke-virtual {v15, v1, v2}, Lcom/android/server/hips/intercept/InterceptionEvent;->setStayTime(J)V

    .line 3268
    invoke-static {}, Lcom/android/server/hips/intercept/InterceptionEventStats;->getInstance()Lcom/android/server/hips/intercept/InterceptionEventStats;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/android/server/hips/intercept/InterceptionEventStats;->addInterceptEvent(Lcom/android/server/hips/intercept/InterceptionEvent;)V

    .line 3269
    invoke-static {v0}, Lcom/android/server/hips/intercept/Interception;->setLastInterceptionEvent(Lcom/android/server/hips/intercept/InterceptionEvent;)V

    .line 3270
    .end local v0  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    goto :goto_2c0

    .line 3272
    .end local v1  # "calleeStayTime":J
    .restart local v16  # "calleeStayTime":J
    :cond_297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resumeTopActivityInnerLocked unknown event caller: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " callee: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " last event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Interception"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3274
    :goto_2be
    move-wide/from16 v1, v16

    .end local v16  # "calleeStayTime":J
    .restart local v1  # "calleeStayTime":J
    :goto_2c0
    return-void
.end method

.method private addInterceptionRuleInner(Lcom/android/server/hips/intercept/Interception$RulesConvertor;)V
    .registers 7
    .param p1, "convertor"  # Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 2184
    const-string v0, "addInterceptionRulesInner, E2:"

    const-string v1, "Interception"

    :try_start_4
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_98
    .catchall {:try_start_4 .. :try_end_d} :catchall_96

    .line 2185
    if-nez p1, :cond_31

    .line 2202
    :try_start_f
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_18} :catch_19

    .line 2205
    goto :goto_30

    .line 2203
    :catch_19
    move-exception v2

    .line 2204
    .local v2, "e2":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2186
    .end local v2  # "e2":Ljava/lang/Exception;
    :goto_30
    return-void

    .line 2188
    :cond_31
    :try_start_31
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mInterceptionRules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 2189
    .local v3, "rulesConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    invoke-virtual {v3, p1}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->equals(Lcom/android/server/hips/intercept/Interception$RulesConvertor;)Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 2190
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mInterceptionRules:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2191
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mInterceptionRules:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2192
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mInterceptionRules:Ljava/util/List;

    invoke-static {v2}, Lcom/android/server/hips/intercept/Interception;->sortAllInterceptionRules(Ljava/util/List;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_58} :catch_98
    .catchall {:try_start_31 .. :try_end_58} :catchall_96

    .line 2202
    :try_start_58
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_61} :catch_62

    .line 2205
    goto :goto_79

    .line 2203
    :catch_62
    move-exception v2

    .line 2204
    .restart local v2  # "e2":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    .end local v2  # "e2":Ljava/lang/Exception;
    :goto_79
    return-void

    .line 2195
    .end local v3  # "rulesConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :cond_7a
    goto :goto_37

    .line 2196
    :cond_7b
    :try_start_7b
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mInterceptionRules:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2197
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mInterceptionRules:Ljava/util/List;

    invoke-static {v2}, Lcom/android/server/hips/intercept/Interception;->sortAllInterceptionRules(Ljava/util/List;)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_85} :catch_98
    .catchall {:try_start_7b .. :try_end_85} :catchall_96

    .line 2202
    :try_start_85
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_8e} :catch_8f

    goto :goto_ba

    .line 2203
    :catch_8f
    move-exception v2

    .line 2204
    .restart local v2  # "e2":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_c1

    .line 2201
    .end local v2  # "e2":Ljava/lang/Exception;
    :catchall_96
    move-exception v2

    goto :goto_d4

    .line 2198
    :catch_98
    move-exception v2

    .line 2199
    .local v2, "e":Ljava/lang/Exception;
    :try_start_99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addInterceptionRulesInner, E:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b1
    .catchall {:try_start_99 .. :try_end_b1} :catchall_96

    .line 2202
    .end local v2  # "e":Ljava/lang/Exception;
    :try_start_b1
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_ba} :catch_bb

    .line 2205
    :goto_ba
    goto :goto_d3

    .line 2203
    :catch_bb
    move-exception v2

    .line 2204
    .local v2, "e2":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_c1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2206
    .end local v2  # "e2":Ljava/lang/Exception;
    nop

    .line 2207
    :goto_d3
    return-void

    .line 2202
    :goto_d4
    :try_start_d4
    sget-object v3, Lcom/android/server/hips/intercept/Interception;->mInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_dd} :catch_de

    .line 2205
    goto :goto_f5

    .line 2203
    :catch_de
    move-exception v3

    .line 2204
    .local v3, "e2":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    .end local v3  # "e2":Ljava/lang/Exception;
    :goto_f5
    throw v2
.end method

.method private static addInterceptionRuleInnerStatic(Lcom/android/server/hips/intercept/Interception$RulesConvertor;)V
    .registers 6
    .param p0, "convertor"  # Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 2417
    const-string v0, "addInterceptionRuleInnerStatic, E2:"

    const-string v1, "Interception"

    :try_start_4
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_67
    .catchall {:try_start_4 .. :try_end_d} :catchall_65

    .line 2418
    if-nez p0, :cond_31

    .line 2430
    :try_start_f
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_18} :catch_19

    .line 2433
    goto :goto_30

    .line 2431
    :catch_19
    move-exception v2

    .line 2432
    .local v2, "e2":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2419
    .end local v2  # "e2":Ljava/lang/Exception;
    :goto_30
    return-void

    .line 2421
    :cond_31
    :try_start_31
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mInterceptionRules:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 2422
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mInterceptionRules:Ljava/util/List;

    invoke-static {v2}, Lcom/android/server/hips/intercept/Interception;->sortAllInterceptionRules(Ljava/util/List;)V

    .line 2423
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mInterceptionRules:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_43} :catch_67
    .catchall {:try_start_31 .. :try_end_43} :catchall_65

    .line 2430
    :cond_43
    :try_start_43
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4c} :catch_4d

    .line 2433
    :goto_4c
    goto :goto_91

    .line 2431
    :catch_4d
    move-exception v2

    .line 2432
    .restart local v2  # "e2":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_53
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2434
    .end local v2  # "e2":Ljava/lang/Exception;
    goto :goto_91

    .line 2429
    :catchall_65
    move-exception v2

    goto :goto_92

    .line 2426
    :catch_67
    move-exception v2

    .line 2427
    .local v2, "e":Ljava/lang/Exception;
    :try_start_68
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addInterceptionRuleInnerStatic, E:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_80
    .catchall {:try_start_68 .. :try_end_80} :catchall_65

    .line 2430
    .end local v2  # "e":Ljava/lang/Exception;
    :try_start_80
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_89} :catch_8a

    goto :goto_4c

    .line 2431
    :catch_8a
    move-exception v2

    .line 2432
    .local v2, "e2":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_53

    .line 2435
    .end local v2  # "e2":Ljava/lang/Exception;
    :goto_91
    return-void

    .line 2430
    :goto_92
    :try_start_92
    sget-object v3, Lcom/android/server/hips/intercept/Interception;->mInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_9b} :catch_9c

    .line 2433
    goto :goto_b3

    .line 2431
    :catch_9c
    move-exception v3

    .line 2432
    .local v3, "e2":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    .end local v3  # "e2":Ljava/lang/Exception;
    :goto_b3
    throw v2
.end method

.method private addLocalRule(Ljava/lang/String;)V
    .registers 6
    .param p1, "rule"  # Ljava/lang/String;

    .line 1411
    if-nez p1, :cond_b

    .line 1412
    const-string v0, "Interception"

    const-string/jumbo v1, "rule is null , input valid rule"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    return-void

    .line 1415
    :cond_b
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1416
    .local v0, "itemArray":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1417
    .local v1, "itemBuilder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    array-length v3, v0

    if-ge v2, v3, :cond_28

    .line 1418
    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|||"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1417
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 1420
    .end local v2  # "i":I
    :cond_28
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1422
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1423
    .local v2, "newRule":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/hips/intercept/Interception;->addLocalRuleInner(Ljava/lang/String;)V

    .line 1424
    return-void
.end method

.method private addLocalRuleInner(Ljava/lang/String;)V
    .registers 35
    .param p1, "rule"  # Ljava/lang/String;

    .line 1822
    move-object/from16 v1, p1

    if-nez v1, :cond_c

    .line 1823
    const-string v0, "Interception"

    const-string v2, "addRuleInner the rule is null, stop to add."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    return-void

    .line 1827
    :cond_c
    const-string v0, "\\|\\|\\|"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1828
    .local v2, "items":[Ljava/lang/String;
    if-nez v2, :cond_1c

    .line 1829
    const-string v0, "Interception"

    const-string v3, "addRuleInner the items is null, stop to add."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    return-void

    .line 1833
    :cond_1c
    array-length v0, v2

    invoke-static {v0}, Lcom/android/server/hips/intercept/Interception;->isSupportRuleLength(I)Z

    move-result v0

    if-nez v0, :cond_40

    .line 1834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addRuleInner the length("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") of the items is error, stop to add."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Interception"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    return-void

    .line 1839
    :cond_40
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1840
    .local v0, "realItem":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_46
    array-length v4, v2

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge v3, v4, :cond_ab

    .line 1841
    aget-object v4, v2, v3

    if-eqz v4, :cond_88

    aget-object v4, v2, v3

    const-string v7, "\\=\\=\\="

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_88

    aget-object v4, v2, v3

    .line 1842
    const-string v7, "\\=\\=\\="

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-eq v4, v5, :cond_65

    goto :goto_88

    .line 1848
    :cond_65
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1849
    .local v4, "key":Ljava/lang/Integer;
    aget-object v5, v2, v3

    const-string v7, "\\=\\=\\="

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v6

    .line 1850
    .local v5, "value":Ljava/lang/String;
    if-eqz v5, :cond_82

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_82

    .line 1851
    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_85

    .line 1853
    :cond_82
    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1840
    .end local v4  # "key":Ljava/lang/Integer;
    .end local v5  # "value":Ljava/lang/String;
    :goto_85
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    .line 1843
    :cond_88
    :goto_88
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addRuleInner get the value for realItem error, stop to add. index = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " items = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v2, v3

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "Interception"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    const/4 v0, 0x0

    .line 1845
    move-object v3, v0

    goto :goto_ac

    .line 1840
    :cond_ab
    move-object v3, v0

    .line 1857
    .end local v0  # "realItem":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local v3, "realItem":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    :goto_ac
    if-nez v3, :cond_b7

    .line 1858
    const-string v0, "Interception"

    const-string/jumbo v4, "realItem is null, ingore!"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    return-void

    .line 1862
    :cond_b7
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 1863
    .local v4, "version":Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/hips/intercept/Interception;->isSupportRuleVersion(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e6

    .line 1864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "version "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is not support, ignore!"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "Interception"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    return-void

    .line 1868
    :cond_e6
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 1869
    .local v6, "runType":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 1870
    .local v5, "callerPkg":Ljava/lang/String;
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/String;

    .line 1871
    .local v22, "calleePkg":Ljava/lang/String;
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    .line 1872
    .local v23, "calleeClass":Ljava/lang/String;
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/String;

    .line 1873
    .local v24, "processName":Ljava/lang/String;
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Ljava/lang/String;

    .line 1874
    .local v25, "action":Ljava/lang/String;
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Ljava/lang/String;

    .line 1875
    .local v26, "data":Ljava/lang/String;
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v27, v0

    check-cast v27, Ljava/lang/String;

    .line 1876
    .local v27, "extras":Ljava/lang/String;
    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v28, v0

    check-cast v28, Ljava/lang/String;

    .line 1877
    .local v28, "interception":Ljava/lang/String;
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v29, v0

    check-cast v29, Ljava/lang/String;

    .line 1878
    .local v29, "interaction":Ljava/lang/String;
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v30, v0

    check-cast v30, Ljava/lang/String;

    .line 1879
    .local v30, "country":Ljava/lang/String;
    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v31, v0

    check-cast v31, Ljava/lang/String;

    .line 1880
    .local v31, "sn":Ljava/lang/String;
    const/16 v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v32, v0

    check-cast v32, Ljava/lang/String;

    .line 1883
    .local v32, "flyme":Ljava/lang/String;
    if-nez v5, :cond_1a9

    if-nez v22, :cond_1a9

    if-nez v23, :cond_1a9

    if-nez v24, :cond_1a9

    if-nez v25, :cond_1a9

    if-nez v26, :cond_1a9

    if-nez v27, :cond_1a9

    if-nez v29, :cond_1a9

    .line 1885
    const-string v0, "Interception"

    const-string v7, "all items are null, skip this rule, should never happen!"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    return-void

    .line 1889
    :cond_1a9
    invoke-static {v5}, Lcom/android/server/hips/utils/HipsUtils;->isSystemApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_354

    .line 1890
    invoke-static {v5}, Lcom/android/server/hips/utils/HipsUtils;->isHasSystemSignature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b7

    goto/16 :goto_354

    .line 1911
    :cond_1b7
    new-instance v0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    move-object v7, v0

    move-object v8, v4

    move-object v9, v6

    move-object v10, v5

    move-object/from16 v11, v22

    move-object/from16 v12, v23

    move-object/from16 v13, v24

    move-object/from16 v14, v25

    move-object/from16 v15, v26

    move-object/from16 v16, v27

    move-object/from16 v17, v28

    move-object/from16 v18, v29

    move-object/from16 v19, v30

    move-object/from16 v20, v31

    move-object/from16 v21, v32

    invoke-direct/range {v7 .. v21}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1914
    .local v7, "convertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    if-eqz v6, :cond_21f

    const-string v0, "activity"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21f

    .line 1915
    sget-object v8, Lcom/android/server/hips/intercept/Interception;->mLocalActivityInterceptionRules:Ljava/util/List;

    monitor-enter v8

    .line 1916
    const/4 v0, 0x0

    .line 1917
    .local v0, "ruleAdded":Z
    :try_start_1e4
    sget-object v9, Lcom/android/server/hips/intercept/Interception;->mLocalActivityInterceptionRules:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1ea
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_20d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 1918
    .local v10, "rulesConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    invoke-virtual {v10, v7}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->equals(Lcom/android/server/hips/intercept/Interception$RulesConvertor;)Z

    move-result v11

    if-eqz v11, :cond_20c

    .line 1919
    sget-object v11, Lcom/android/server/hips/intercept/Interception;->mLocalActivityInterceptionRules:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1920
    sget-object v11, Lcom/android/server/hips/intercept/Interception;->mLocalActivityInterceptionRules:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1921
    sget-object v11, Lcom/android/server/hips/intercept/Interception;->mLocalActivityInterceptionRules:Ljava/util/List;

    invoke-static {v11}, Lcom/android/server/hips/intercept/Interception;->sortAllInterceptionRules(Ljava/util/List;)V

    .line 1922
    const/4 v0, 0x1

    .line 1924
    .end local v10  # "rulesConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :cond_20c
    goto :goto_1ea

    .line 1925
    :cond_20d
    if-nez v0, :cond_214

    .line 1926
    sget-object v9, Lcom/android/server/hips/intercept/Interception;->mLocalActivityInterceptionRules:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1928
    :cond_214
    sget-object v9, Lcom/android/server/hips/intercept/Interception;->mLocalActivityInterceptionRules:Ljava/util/List;

    invoke-static {v9}, Lcom/android/server/hips/intercept/Interception;->sortAllInterceptionRules(Ljava/util/List;)V

    .line 1929
    .end local v0  # "ruleAdded":Z
    monitor-exit v8

    goto/16 :goto_335

    :catchall_21c
    move-exception v0

    monitor-exit v8
    :try_end_21e
    .catchall {:try_start_1e4 .. :try_end_21e} :catchall_21c

    throw v0

    .line 1930
    :cond_21f
    if-eqz v6, :cond_269

    const-string/jumbo v0, "retrieve_service"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_269

    .line 1931
    sget-object v8, Lcom/android/server/hips/intercept/Interception;->mLocalServiceInterceptionRules:Ljava/util/List;

    monitor-enter v8

    .line 1932
    const/4 v0, 0x0

    .line 1933
    .restart local v0  # "ruleAdded":Z
    :try_start_22e
    sget-object v9, Lcom/android/server/hips/intercept/Interception;->mLocalServiceInterceptionRules:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_234
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_257

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 1934
    .restart local v10  # "rulesConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    invoke-virtual {v10, v7}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->equals(Lcom/android/server/hips/intercept/Interception$RulesConvertor;)Z

    move-result v11

    if-eqz v11, :cond_256

    .line 1935
    sget-object v11, Lcom/android/server/hips/intercept/Interception;->mLocalServiceInterceptionRules:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1936
    sget-object v11, Lcom/android/server/hips/intercept/Interception;->mLocalServiceInterceptionRules:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1937
    sget-object v11, Lcom/android/server/hips/intercept/Interception;->mLocalServiceInterceptionRules:Ljava/util/List;

    invoke-static {v11}, Lcom/android/server/hips/intercept/Interception;->sortAllInterceptionRules(Ljava/util/List;)V

    .line 1938
    const/4 v0, 0x1

    .line 1940
    .end local v10  # "rulesConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :cond_256
    goto :goto_234

    .line 1941
    :cond_257
    if-nez v0, :cond_25e

    .line 1942
    sget-object v9, Lcom/android/server/hips/intercept/Interception;->mLocalServiceInterceptionRules:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1944
    :cond_25e
    sget-object v9, Lcom/android/server/hips/intercept/Interception;->mLocalServiceInterceptionRules:Ljava/util/List;

    invoke-static {v9}, Lcom/android/server/hips/intercept/Interception;->sortAllInterceptionRules(Ljava/util/List;)V

    .line 1945
    .end local v0  # "ruleAdded":Z
    monitor-exit v8

    goto/16 :goto_335

    :catchall_266
    move-exception v0

    monitor-exit v8
    :try_end_268
    .catchall {:try_start_22e .. :try_end_268} :catchall_266

    throw v0

    .line 1946
    :cond_269
    if-eqz v6, :cond_2b2

    const-string v0, "broadcast"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b2

    .line 1947
    sget-object v8, Lcom/android/server/hips/intercept/Interception;->mLocalBroadcastInterceptionRules:Ljava/util/List;

    monitor-enter v8

    .line 1948
    const/4 v0, 0x0

    .line 1949
    .restart local v0  # "ruleAdded":Z
    :try_start_277
    sget-object v9, Lcom/android/server/hips/intercept/Interception;->mLocalBroadcastInterceptionRules:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_27d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2a0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 1950
    .restart local v10  # "rulesConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    invoke-virtual {v10, v7}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->equals(Lcom/android/server/hips/intercept/Interception$RulesConvertor;)Z

    move-result v11

    if-eqz v11, :cond_29f

    .line 1951
    sget-object v11, Lcom/android/server/hips/intercept/Interception;->mLocalBroadcastInterceptionRules:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1952
    sget-object v11, Lcom/android/server/hips/intercept/Interception;->mLocalBroadcastInterceptionRules:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1953
    sget-object v11, Lcom/android/server/hips/intercept/Interception;->mLocalBroadcastInterceptionRules:Ljava/util/List;

    invoke-static {v11}, Lcom/android/server/hips/intercept/Interception;->sortAllInterceptionRules(Ljava/util/List;)V

    .line 1954
    const/4 v0, 0x1

    .line 1956
    .end local v10  # "rulesConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :cond_29f
    goto :goto_27d

    .line 1957
    :cond_2a0
    if-nez v0, :cond_2a7

    .line 1958
    sget-object v9, Lcom/android/server/hips/intercept/Interception;->mLocalBroadcastInterceptionRules:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1960
    :cond_2a7
    sget-object v9, Lcom/android/server/hips/intercept/Interception;->mLocalBroadcastInterceptionRules:Ljava/util/List;

    invoke-static {v9}, Lcom/android/server/hips/intercept/Interception;->sortAllInterceptionRules(Ljava/util/List;)V

    .line 1961
    .end local v0  # "ruleAdded":Z
    monitor-exit v8

    goto/16 :goto_335

    :catchall_2af
    move-exception v0

    monitor-exit v8
    :try_end_2b1
    .catchall {:try_start_277 .. :try_end_2b1} :catchall_2af

    throw v0

    .line 1962
    :cond_2b2
    if-eqz v6, :cond_2fb

    const-string/jumbo v0, "provider"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2fb

    .line 1963
    sget-object v8, Lcom/android/server/hips/intercept/Interception;->mLocalProviderInterceptionRules:Ljava/util/List;

    monitor-enter v8

    .line 1964
    const/4 v0, 0x0

    .line 1965
    .restart local v0  # "ruleAdded":Z
    :try_start_2c1
    sget-object v9, Lcom/android/server/hips/intercept/Interception;->mLocalProviderInterceptionRules:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2c7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2ea

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 1966
    .restart local v10  # "rulesConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    invoke-virtual {v10, v7}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->equals(Lcom/android/server/hips/intercept/Interception$RulesConvertor;)Z

    move-result v11

    if-eqz v11, :cond_2e9

    .line 1967
    sget-object v11, Lcom/android/server/hips/intercept/Interception;->mLocalProviderInterceptionRules:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1968
    sget-object v11, Lcom/android/server/hips/intercept/Interception;->mLocalProviderInterceptionRules:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1969
    sget-object v11, Lcom/android/server/hips/intercept/Interception;->mLocalProviderInterceptionRules:Ljava/util/List;

    invoke-static {v11}, Lcom/android/server/hips/intercept/Interception;->sortAllInterceptionRules(Ljava/util/List;)V

    .line 1970
    const/4 v0, 0x1

    .line 1972
    .end local v10  # "rulesConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :cond_2e9
    goto :goto_2c7

    .line 1973
    :cond_2ea
    if-nez v0, :cond_2f1

    .line 1974
    sget-object v9, Lcom/android/server/hips/intercept/Interception;->mLocalProviderInterceptionRules:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1976
    :cond_2f1
    sget-object v9, Lcom/android/server/hips/intercept/Interception;->mLocalProviderInterceptionRules:Ljava/util/List;

    invoke-static {v9}, Lcom/android/server/hips/intercept/Interception;->sortAllInterceptionRules(Ljava/util/List;)V

    .line 1977
    .end local v0  # "ruleAdded":Z
    monitor-exit v8

    goto :goto_335

    :catchall_2f8
    move-exception v0

    monitor-exit v8
    :try_end_2fa
    .catchall {:try_start_2c1 .. :try_end_2fa} :catchall_2f8

    throw v0

    .line 1979
    :cond_2fb
    sget-object v8, Lcom/android/server/hips/intercept/Interception;->mLocalInterceptionRules:Ljava/util/List;

    monitor-enter v8

    .line 1980
    const/4 v0, 0x0

    .line 1981
    .restart local v0  # "ruleAdded":Z
    :try_start_2ff
    sget-object v9, Lcom/android/server/hips/intercept/Interception;->mLocalInterceptionRules:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_305
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_328

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 1982
    .restart local v10  # "rulesConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    invoke-virtual {v10, v7}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->equals(Lcom/android/server/hips/intercept/Interception$RulesConvertor;)Z

    move-result v11

    if-eqz v11, :cond_327

    .line 1983
    sget-object v11, Lcom/android/server/hips/intercept/Interception;->mLocalInterceptionRules:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1984
    sget-object v11, Lcom/android/server/hips/intercept/Interception;->mLocalInterceptionRules:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1985
    sget-object v11, Lcom/android/server/hips/intercept/Interception;->mLocalInterceptionRules:Ljava/util/List;

    invoke-static {v11}, Lcom/android/server/hips/intercept/Interception;->sortAllInterceptionRules(Ljava/util/List;)V

    .line 1986
    const/4 v0, 0x1

    .line 1988
    .end local v10  # "rulesConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :cond_327
    goto :goto_305

    .line 1989
    :cond_328
    if-nez v0, :cond_32f

    .line 1990
    sget-object v9, Lcom/android/server/hips/intercept/Interception;->mLocalInterceptionRules:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1992
    :cond_32f
    sget-object v9, Lcom/android/server/hips/intercept/Interception;->mLocalInterceptionRules:Ljava/util/List;

    invoke-static {v9}, Lcom/android/server/hips/intercept/Interception;->sortAllInterceptionRules(Ljava/util/List;)V

    .line 1993
    .end local v0  # "ruleAdded":Z
    monitor-exit v8
    :try_end_335
    .catchall {:try_start_2ff .. :try_end_335} :catchall_351

    .line 1995
    :goto_335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "add third local rule : "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "Interception"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3c8

    .line 1993
    :catchall_351
    move-exception v0

    :try_start_352
    monitor-exit v8
    :try_end_353
    .catchall {:try_start_352 .. :try_end_353} :catchall_351

    throw v0

    .line 1891
    .end local v7  # "convertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :cond_354
    :goto_354
    new-instance v0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    move-object v7, v0

    move-object v8, v4

    move-object v9, v6

    move-object v10, v5

    move-object/from16 v11, v22

    move-object/from16 v12, v23

    move-object/from16 v13, v24

    move-object/from16 v14, v25

    move-object/from16 v15, v26

    move-object/from16 v16, v27

    move-object/from16 v17, v28

    move-object/from16 v18, v29

    move-object/from16 v19, v30

    move-object/from16 v20, v31

    move-object/from16 v21, v32

    invoke-direct/range {v7 .. v21}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1894
    .restart local v7  # "convertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    sget-object v8, Lcom/android/server/hips/intercept/Interception;->mSystemLocalInterceptionRules:Ljava/util/List;

    monitor-enter v8

    .line 1895
    const/4 v0, 0x0

    .line 1896
    .restart local v0  # "ruleAdded":Z
    :try_start_377
    sget-object v9, Lcom/android/server/hips/intercept/Interception;->mSystemLocalInterceptionRules:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_37d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3a0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 1897
    .restart local v10  # "rulesConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    invoke-virtual {v10, v7}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->equals(Lcom/android/server/hips/intercept/Interception$RulesConvertor;)Z

    move-result v11

    if-eqz v11, :cond_39f

    .line 1898
    sget-object v11, Lcom/android/server/hips/intercept/Interception;->mSystemLocalInterceptionRules:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1899
    sget-object v11, Lcom/android/server/hips/intercept/Interception;->mSystemLocalInterceptionRules:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1900
    sget-object v11, Lcom/android/server/hips/intercept/Interception;->mSystemLocalInterceptionRules:Ljava/util/List;

    invoke-static {v11}, Lcom/android/server/hips/intercept/Interception;->sortAllInterceptionRules(Ljava/util/List;)V

    .line 1901
    const/4 v0, 0x1

    .line 1903
    .end local v10  # "rulesConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :cond_39f
    goto :goto_37d

    .line 1904
    :cond_3a0
    if-nez v0, :cond_3a7

    .line 1905
    sget-object v9, Lcom/android/server/hips/intercept/Interception;->mSystemLocalInterceptionRules:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1907
    :cond_3a7
    sget-object v9, Lcom/android/server/hips/intercept/Interception;->mSystemLocalInterceptionRules:Ljava/util/List;

    invoke-static {v9}, Lcom/android/server/hips/intercept/Interception;->sortAllInterceptionRules(Ljava/util/List;)V

    .line 1908
    .end local v0  # "ruleAdded":Z
    monitor-exit v8
    :try_end_3ad
    .catchall {:try_start_377 .. :try_end_3ad} :catchall_3c9

    .line 1909
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "add system local rule : "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "Interception"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    .end local v7  # "convertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    nop

    .line 1997
    :goto_3c8
    return-void

    .line 1908
    .restart local v7  # "convertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :catchall_3c9
    move-exception v0

    :try_start_3ca
    monitor-exit v8
    :try_end_3cb
    .catchall {:try_start_3ca .. :try_end_3cb} :catchall_3c9

    throw v0
.end method

.method private addRule(Ljava/lang/String;)V
    .registers 6
    .param p1, "rule"  # Ljava/lang/String;

    .line 1395
    if-nez p1, :cond_3

    return-void

    .line 1396
    :cond_3
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1397
    .local v0, "itemArray":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1398
    .local v1, "itemBuilder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    array-length v3, v0

    if-ge v2, v3, :cond_20

    .line 1399
    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|||"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1398
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1401
    .end local v2  # "i":I
    :cond_20
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1403
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1406
    .local v2, "newRule":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/hips/intercept/Interception;->addRuleInner(Ljava/lang/String;)V

    .line 1408
    return-void
.end method

.method private addRuleInner(Ljava/lang/String;)V
    .registers 35
    .param p1, "rule"  # Ljava/lang/String;

    .line 2000
    move-object/from16 v1, p1

    if-nez v1, :cond_c

    .line 2001
    const-string v0, "Interception"

    const-string v2, "addRuleInner the rule is null, stop to add."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    return-void

    .line 2005
    :cond_c
    const-string v0, "\\|\\|\\|"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2006
    .local v2, "items":[Ljava/lang/String;
    if-nez v2, :cond_1c

    .line 2007
    const-string v0, "Interception"

    const-string v3, "addRuleInner the items is null, stop to add."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    return-void

    .line 2011
    :cond_1c
    array-length v0, v2

    invoke-static {v0}, Lcom/android/server/hips/intercept/Interception;->isSupportRuleLength(I)Z

    move-result v0

    if-nez v0, :cond_40

    .line 2012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addRuleInner the length("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") of the items is error, stop to add."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Interception"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    return-void

    .line 2017
    :cond_40
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 2018
    .local v0, "realItem":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_46
    array-length v4, v2

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge v3, v4, :cond_ab

    .line 2019
    aget-object v4, v2, v3

    if-eqz v4, :cond_88

    aget-object v4, v2, v3

    const-string v7, "\\=\\=\\="

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_88

    aget-object v4, v2, v3

    .line 2020
    const-string v7, "\\=\\=\\="

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-eq v4, v5, :cond_65

    goto :goto_88

    .line 2026
    :cond_65
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2027
    .local v4, "key":Ljava/lang/Integer;
    aget-object v5, v2, v3

    const-string v7, "\\=\\=\\="

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v6

    .line 2028
    .local v5, "value":Ljava/lang/String;
    if-eqz v5, :cond_82

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_82

    .line 2029
    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_85

    .line 2031
    :cond_82
    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2018
    .end local v4  # "key":Ljava/lang/Integer;
    .end local v5  # "value":Ljava/lang/String;
    :goto_85
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    .line 2021
    :cond_88
    :goto_88
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addRuleInner get the value for realItem error, stop to add. index = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " items = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v2, v3

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "Interception"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    const/4 v0, 0x0

    .line 2023
    move-object v3, v0

    goto :goto_ac

    .line 2018
    :cond_ab
    move-object v3, v0

    .line 2035
    .end local v0  # "realItem":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local v3, "realItem":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    :goto_ac
    if-nez v3, :cond_b7

    .line 2036
    const-string v0, "Interception"

    const-string/jumbo v4, "realItem is null, ingore!"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    return-void

    .line 2040
    :cond_b7
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 2041
    .local v4, "version":Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/hips/intercept/Interception;->isSupportRuleVersion(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e6

    .line 2042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "version "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is not support, ignore!"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "Interception"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    return-void

    .line 2046
    :cond_e6
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 2047
    .local v6, "runType":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 2048
    .local v5, "callerPkg":Ljava/lang/String;
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/String;

    .line 2049
    .local v22, "calleePkg":Ljava/lang/String;
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    .line 2050
    .local v23, "calleeClass":Ljava/lang/String;
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/String;

    .line 2051
    .local v24, "processName":Ljava/lang/String;
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Ljava/lang/String;

    .line 2052
    .local v25, "action":Ljava/lang/String;
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Ljava/lang/String;

    .line 2053
    .local v26, "data":Ljava/lang/String;
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v27, v0

    check-cast v27, Ljava/lang/String;

    .line 2054
    .local v27, "extras":Ljava/lang/String;
    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v28, v0

    check-cast v28, Ljava/lang/String;

    .line 2055
    .local v28, "interception":Ljava/lang/String;
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v29, v0

    check-cast v29, Ljava/lang/String;

    .line 2056
    .local v29, "interaction":Ljava/lang/String;
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v30, v0

    check-cast v30, Ljava/lang/String;

    .line 2057
    .local v30, "country":Ljava/lang/String;
    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v31, v0

    check-cast v31, Ljava/lang/String;

    .line 2058
    .local v31, "sn":Ljava/lang/String;
    const/16 v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v32, v0

    check-cast v32, Ljava/lang/String;

    .line 2061
    .local v32, "flyme":Ljava/lang/String;
    if-nez v5, :cond_1a9

    if-nez v22, :cond_1a9

    if-nez v23, :cond_1a9

    if-nez v24, :cond_1a9

    if-nez v25, :cond_1a9

    if-nez v26, :cond_1a9

    if-nez v27, :cond_1a9

    if-nez v29, :cond_1a9

    .line 2063
    const-string v0, "Interception"

    const-string v7, "all items are null, skip this rule, should never happen!"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    return-void

    .line 2068
    :cond_1a9
    invoke-static {v5}, Lcom/android/server/hips/utils/HipsUtils;->isSystemApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_354

    .line 2069
    invoke-static {v5}, Lcom/android/server/hips/utils/HipsUtils;->isHasSystemSignature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b7

    goto/16 :goto_354

    .line 2090
    :cond_1b7
    new-instance v0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    move-object v7, v0

    move-object v8, v4

    move-object v9, v6

    move-object v10, v5

    move-object/from16 v11, v22

    move-object/from16 v12, v23

    move-object/from16 v13, v24

    move-object/from16 v14, v25

    move-object/from16 v15, v26

    move-object/from16 v16, v27

    move-object/from16 v17, v28

    move-object/from16 v18, v29

    move-object/from16 v19, v30

    move-object/from16 v20, v31

    move-object/from16 v21, v32

    invoke-direct/range {v7 .. v21}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2093
    .local v7, "convertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    if-eqz v6, :cond_21f

    const-string v0, "activity"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21f

    .line 2094
    sget-object v8, Lcom/android/server/hips/intercept/Interception;->mActivityInterceptionRules:Ljava/util/List;

    monitor-enter v8

    .line 2095
    const/4 v0, 0x0

    .line 2096
    .local v0, "ruleAdded":Z
    :try_start_1e4
    sget-object v9, Lcom/android/server/hips/intercept/Interception;->mActivityInterceptionRules:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1ea
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_20d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 2097
    .local v10, "rulesConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    invoke-virtual {v10, v7}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->equals(Lcom/android/server/hips/intercept/Interception$RulesConvertor;)Z

    move-result v11

    if-eqz v11, :cond_20c

    .line 2098
    sget-object v11, Lcom/android/server/hips/intercept/Interception;->mActivityInterceptionRules:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2099
    sget-object v11, Lcom/android/server/hips/intercept/Interception;->mActivityInterceptionRules:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2100
    sget-object v11, Lcom/android/server/hips/intercept/Interception;->mActivityInterceptionRules:Ljava/util/List;

    invoke-static {v11}, Lcom/android/server/hips/intercept/Interception;->sortAllInterceptionRules(Ljava/util/List;)V

    .line 2101
    const/4 v0, 0x1

    .line 2103
    .end local v10  # "rulesConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :cond_20c
    goto :goto_1ea

    .line 2104
    :cond_20d
    if-nez v0, :cond_214

    .line 2105
    sget-object v9, Lcom/android/server/hips/intercept/Interception;->mActivityInterceptionRules:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2107
    :cond_214
    sget-object v9, Lcom/android/server/hips/intercept/Interception;->mActivityInterceptionRules:Ljava/util/List;

    invoke-static {v9}, Lcom/android/server/hips/intercept/Interception;->sortAllInterceptionRules(Ljava/util/List;)V

    .line 2108
    .end local v0  # "ruleAdded":Z
    monitor-exit v8

    goto/16 :goto_335

    :catchall_21c
    move-exception v0

    monitor-exit v8
    :try_end_21e
    .catchall {:try_start_1e4 .. :try_end_21e} :catchall_21c

    throw v0

    .line 2109
    :cond_21f
    if-eqz v6, :cond_268

    const-string v0, "broadcast"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_268

    .line 2110
    sget-object v8, Lcom/android/server/hips/intercept/Interception;->mBroadcastInterceptionRules:Ljava/util/List;

    monitor-enter v8

    .line 2111
    const/4 v0, 0x0

    .line 2112
    .restart local v0  # "ruleAdded":Z
    :try_start_22d
    sget-object v9, Lcom/android/server/hips/intercept/Interception;->mBroadcastInterceptionRules:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_233
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_256

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 2113
    .restart local v10  # "rulesConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    invoke-virtual {v10, v7}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->equals(Lcom/android/server/hips/intercept/Interception$RulesConvertor;)Z

    move-result v11

    if-eqz v11, :cond_255

    .line 2114
    sget-object v11, Lcom/android/server/hips/intercept/Interception;->mBroadcastInterceptionRules:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2115
    sget-object v11, Lcom/android/server/hips/intercept/Interception;->mBroadcastInterceptionRules:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2116
    sget-object v11, Lcom/android/server/hips/intercept/Interception;->mBroadcastInterceptionRules:Ljava/util/List;

    invoke-static {v11}, Lcom/android/server/hips/intercept/Interception;->sortAllInterceptionRules(Ljava/util/List;)V

    .line 2117
    const/4 v0, 0x1

    .line 2119
    .end local v10  # "rulesConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :cond_255
    goto :goto_233

    .line 2120
    :cond_256
    if-nez v0, :cond_25d

    .line 2121
    sget-object v9, Lcom/android/server/hips/intercept/Interception;->mBroadcastInterceptionRules:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2123
    :cond_25d
    sget-object v9, Lcom/android/server/hips/intercept/Interception;->mBroadcastInterceptionRules:Ljava/util/List;

    invoke-static {v9}, Lcom/android/server/hips/intercept/Interception;->sortAllInterceptionRules(Ljava/util/List;)V

    .line 2124
    .end local v0  # "ruleAdded":Z
    monitor-exit v8

    goto/16 :goto_335

    :catchall_265
    move-exception v0

    monitor-exit v8
    :try_end_267
    .catchall {:try_start_22d .. :try_end_267} :catchall_265

    throw v0

    .line 2125
    :cond_268
    if-eqz v6, :cond_2b2

    const-string/jumbo v0, "retrieve_service"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b2

    .line 2126
    sget-object v8, Lcom/android/server/hips/intercept/Interception;->mServiceInterceptionRules:Ljava/util/List;

    monitor-enter v8

    .line 2127
    const/4 v0, 0x0

    .line 2128
    .restart local v0  # "ruleAdded":Z
    :try_start_277
    sget-object v9, Lcom/android/server/hips/intercept/Interception;->mServiceInterceptionRules:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_27d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2a0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 2129
    .restart local v10  # "rulesConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    invoke-virtual {v10, v7}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->equals(Lcom/android/server/hips/intercept/Interception$RulesConvertor;)Z

    move-result v11

    if-eqz v11, :cond_29f

    .line 2130
    sget-object v11, Lcom/android/server/hips/intercept/Interception;->mServiceInterceptionRules:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2131
    sget-object v11, Lcom/android/server/hips/intercept/Interception;->mServiceInterceptionRules:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2132
    sget-object v11, Lcom/android/server/hips/intercept/Interception;->mServiceInterceptionRules:Ljava/util/List;

    invoke-static {v11}, Lcom/android/server/hips/intercept/Interception;->sortAllInterceptionRules(Ljava/util/List;)V

    .line 2133
    const/4 v0, 0x1

    .line 2135
    .end local v10  # "rulesConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :cond_29f
    goto :goto_27d

    .line 2136
    :cond_2a0
    if-nez v0, :cond_2a7

    .line 2137
    sget-object v9, Lcom/android/server/hips/intercept/Interception;->mServiceInterceptionRules:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2139
    :cond_2a7
    sget-object v9, Lcom/android/server/hips/intercept/Interception;->mServiceInterceptionRules:Ljava/util/List;

    invoke-static {v9}, Lcom/android/server/hips/intercept/Interception;->sortAllInterceptionRules(Ljava/util/List;)V

    .line 2140
    .end local v0  # "ruleAdded":Z
    monitor-exit v8

    goto/16 :goto_335

    :catchall_2af
    move-exception v0

    monitor-exit v8
    :try_end_2b1
    .catchall {:try_start_277 .. :try_end_2b1} :catchall_2af

    throw v0

    .line 2141
    :cond_2b2
    if-eqz v6, :cond_2fb

    const-string/jumbo v0, "provider"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2fb

    .line 2142
    sget-object v8, Lcom/android/server/hips/intercept/Interception;->mProviderInterceptionRules:Ljava/util/List;

    monitor-enter v8

    .line 2143
    const/4 v0, 0x0

    .line 2144
    .restart local v0  # "ruleAdded":Z
    :try_start_2c1
    sget-object v9, Lcom/android/server/hips/intercept/Interception;->mProviderInterceptionRules:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2c7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2ea

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 2145
    .restart local v10  # "rulesConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    invoke-virtual {v10, v7}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->equals(Lcom/android/server/hips/intercept/Interception$RulesConvertor;)Z

    move-result v11

    if-eqz v11, :cond_2e9

    .line 2146
    sget-object v11, Lcom/android/server/hips/intercept/Interception;->mProviderInterceptionRules:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2147
    sget-object v11, Lcom/android/server/hips/intercept/Interception;->mProviderInterceptionRules:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2148
    sget-object v11, Lcom/android/server/hips/intercept/Interception;->mProviderInterceptionRules:Ljava/util/List;

    invoke-static {v11}, Lcom/android/server/hips/intercept/Interception;->sortAllInterceptionRules(Ljava/util/List;)V

    .line 2149
    const/4 v0, 0x1

    .line 2151
    .end local v10  # "rulesConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :cond_2e9
    goto :goto_2c7

    .line 2152
    :cond_2ea
    if-nez v0, :cond_2f1

    .line 2153
    sget-object v9, Lcom/android/server/hips/intercept/Interception;->mProviderInterceptionRules:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2155
    :cond_2f1
    sget-object v9, Lcom/android/server/hips/intercept/Interception;->mProviderInterceptionRules:Ljava/util/List;

    invoke-static {v9}, Lcom/android/server/hips/intercept/Interception;->sortAllInterceptionRules(Ljava/util/List;)V

    .line 2156
    .end local v0  # "ruleAdded":Z
    monitor-exit v8

    goto :goto_335

    :catchall_2f8
    move-exception v0

    monitor-exit v8
    :try_end_2fa
    .catchall {:try_start_2c1 .. :try_end_2fa} :catchall_2f8

    throw v0

    .line 2158
    :cond_2fb
    sget-object v8, Lcom/android/server/hips/intercept/Interception;->mInterceptionRules:Ljava/util/List;

    monitor-enter v8

    .line 2159
    const/4 v0, 0x0

    .line 2160
    .restart local v0  # "ruleAdded":Z
    :try_start_2ff
    sget-object v9, Lcom/android/server/hips/intercept/Interception;->mInterceptionRules:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_305
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_328

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 2161
    .restart local v10  # "rulesConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    invoke-virtual {v10, v7}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->equals(Lcom/android/server/hips/intercept/Interception$RulesConvertor;)Z

    move-result v11

    if-eqz v11, :cond_327

    .line 2162
    sget-object v11, Lcom/android/server/hips/intercept/Interception;->mInterceptionRules:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2163
    sget-object v11, Lcom/android/server/hips/intercept/Interception;->mInterceptionRules:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2164
    sget-object v11, Lcom/android/server/hips/intercept/Interception;->mInterceptionRules:Ljava/util/List;

    invoke-static {v11}, Lcom/android/server/hips/intercept/Interception;->sortAllInterceptionRules(Ljava/util/List;)V

    .line 2165
    const/4 v0, 0x1

    .line 2167
    .end local v10  # "rulesConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :cond_327
    goto :goto_305

    .line 2168
    :cond_328
    if-nez v0, :cond_32f

    .line 2169
    sget-object v9, Lcom/android/server/hips/intercept/Interception;->mInterceptionRules:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2171
    :cond_32f
    sget-object v9, Lcom/android/server/hips/intercept/Interception;->mInterceptionRules:Ljava/util/List;

    invoke-static {v9}, Lcom/android/server/hips/intercept/Interception;->sortAllInterceptionRules(Ljava/util/List;)V

    .line 2172
    .end local v0  # "ruleAdded":Z
    monitor-exit v8
    :try_end_335
    .catchall {:try_start_2ff .. :try_end_335} :catchall_351

    .line 2174
    :goto_335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addRuleInner non-system: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "Interception"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3c8

    .line 2172
    :catchall_351
    move-exception v0

    :try_start_352
    monitor-exit v8
    :try_end_353
    .catchall {:try_start_352 .. :try_end_353} :catchall_351

    throw v0

    .line 2070
    .end local v7  # "convertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :cond_354
    :goto_354
    new-instance v0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    move-object v7, v0

    move-object v8, v4

    move-object v9, v6

    move-object v10, v5

    move-object/from16 v11, v22

    move-object/from16 v12, v23

    move-object/from16 v13, v24

    move-object/from16 v14, v25

    move-object/from16 v15, v26

    move-object/from16 v16, v27

    move-object/from16 v17, v28

    move-object/from16 v18, v29

    move-object/from16 v19, v30

    move-object/from16 v20, v31

    move-object/from16 v21, v32

    invoke-direct/range {v7 .. v21}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2073
    .restart local v7  # "convertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    sget-object v8, Lcom/android/server/hips/intercept/Interception;->mSystemInterceptionRules:Ljava/util/List;

    monitor-enter v8

    .line 2074
    const/4 v0, 0x0

    .line 2075
    .restart local v0  # "ruleAdded":Z
    :try_start_377
    sget-object v9, Lcom/android/server/hips/intercept/Interception;->mSystemInterceptionRules:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_37d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3a0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 2076
    .restart local v10  # "rulesConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    invoke-virtual {v10, v7}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->equals(Lcom/android/server/hips/intercept/Interception$RulesConvertor;)Z

    move-result v11

    if-eqz v11, :cond_39f

    .line 2077
    sget-object v11, Lcom/android/server/hips/intercept/Interception;->mSystemInterceptionRules:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2078
    sget-object v11, Lcom/android/server/hips/intercept/Interception;->mSystemInterceptionRules:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2079
    sget-object v11, Lcom/android/server/hips/intercept/Interception;->mSystemInterceptionRules:Ljava/util/List;

    invoke-static {v11}, Lcom/android/server/hips/intercept/Interception;->sortAllInterceptionRules(Ljava/util/List;)V

    .line 2080
    const/4 v0, 0x1

    .line 2082
    .end local v10  # "rulesConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :cond_39f
    goto :goto_37d

    .line 2083
    :cond_3a0
    if-nez v0, :cond_3a7

    .line 2084
    sget-object v9, Lcom/android/server/hips/intercept/Interception;->mSystemInterceptionRules:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2086
    :cond_3a7
    sget-object v9, Lcom/android/server/hips/intercept/Interception;->mSystemInterceptionRules:Ljava/util/List;

    invoke-static {v9}, Lcom/android/server/hips/intercept/Interception;->sortAllInterceptionRules(Ljava/util/List;)V

    .line 2087
    .end local v0  # "ruleAdded":Z
    monitor-exit v8
    :try_end_3ad
    .catchall {:try_start_377 .. :try_end_3ad} :catchall_3c9

    .line 2088
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addRuleInner system: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "Interception"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    .end local v7  # "convertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    nop

    .line 2176
    :goto_3c8
    return-void

    .line 2087
    .restart local v7  # "convertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :catchall_3c9
    move-exception v0

    :try_start_3ca
    monitor-exit v8
    :try_end_3cb
    .catchall {:try_start_3ca .. :try_end_3cb} :catchall_3c9

    throw v0
.end method

.method private static addRuleInnerStatic(Ljava/lang/String;)V
    .registers 35
    .param p0, "rule"  # Ljava/lang/String;

    .line 2317
    move-object/from16 v0, p0

    const-string v1, "Interception"

    if-nez v0, :cond_c

    .line 2318
    const-string v2, "addRuleInnerStatic the rule is null, stop to add."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2319
    return-void

    .line 2322
    :cond_c
    const-string v2, "\\|\\|\\|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2323
    .local v2, "items":[Ljava/lang/String;
    if-nez v2, :cond_1a

    .line 2324
    const-string v3, "addRuleInnerStatic the items is null, stop to add."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    return-void

    .line 2328
    :cond_1a
    array-length v3, v2

    invoke-static {v3}, Lcom/android/server/hips/intercept/Interception;->isSupportRuleLength(I)Z

    move-result v3

    if-nez v3, :cond_3c

    .line 2329
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addRuleInnerStatic the length("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") of the items is error, stop to add."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2331
    return-void

    .line 2334
    :cond_3c
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 2335
    .local v3, "realItem":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_42
    array-length v5, v2

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge v4, v5, :cond_86

    .line 2336
    aget-object v5, v2, v4

    if-eqz v5, :cond_80

    aget-object v5, v2, v4

    const-string v8, "\\=\\=\\="

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_80

    aget-object v5, v2, v4

    .line 2337
    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-eq v5, v6, :cond_5f

    goto :goto_80

    .line 2343
    :cond_5f
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2344
    .local v5, "key":Ljava/lang/Integer;
    aget-object v6, v2, v4

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v7

    .line 2345
    .local v6, "value":Ljava/lang/String;
    if-eqz v6, :cond_7a

    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7a

    .line 2346
    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7d

    .line 2348
    :cond_7a
    invoke-virtual {v3, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2335
    .end local v5  # "key":Ljava/lang/Integer;
    .end local v6  # "value":Ljava/lang/String;
    :goto_7d
    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    .line 2338
    :cond_80
    :goto_80
    const-string v5, "addRuleInnerStatic get the value for realItem error, stop to add."

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    const/4 v3, 0x0

    .line 2352
    .end local v4  # "i":I
    :cond_86
    if-nez v3, :cond_8f

    .line 2353
    const-string/jumbo v4, "realItem is null, ingore!"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2354
    return-void

    .line 2357
    :cond_8f
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2358
    .local v4, "version":Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/hips/intercept/Interception;->isSupportRuleVersion(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_bb

    .line 2359
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is not support, ignore!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2360
    return-void

    .line 2362
    :cond_bb
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2363
    .local v5, "runType":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2364
    .local v6, "callerPkg":Ljava/lang/String;
    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2365
    .local v7, "calleePkg":Ljava/lang/String;
    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v23, v8

    check-cast v23, Ljava/lang/String;

    .line 2366
    .local v23, "calleeClass":Ljava/lang/String;
    const/4 v8, 0x5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v24, v8

    check-cast v24, Ljava/lang/String;

    .line 2367
    .local v24, "processName":Ljava/lang/String;
    const/4 v8, 0x6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v25, v8

    check-cast v25, Ljava/lang/String;

    .line 2368
    .local v25, "action":Ljava/lang/String;
    const/4 v8, 0x7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v26, v8

    check-cast v26, Ljava/lang/String;

    .line 2369
    .local v26, "data":Ljava/lang/String;
    const/16 v8, 0x8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v27, v8

    check-cast v27, Ljava/lang/String;

    .line 2370
    .local v27, "extras":Ljava/lang/String;
    const/16 v8, 0x9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v28, v8

    check-cast v28, Ljava/lang/String;

    .line 2371
    .local v28, "interception":Ljava/lang/String;
    const/16 v8, 0xa

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v29, v8

    check-cast v29, Ljava/lang/String;

    .line 2372
    .local v29, "interaction":Ljava/lang/String;
    const/16 v8, 0xc

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v30, v8

    check-cast v30, Ljava/lang/String;

    .line 2373
    .local v30, "country":Ljava/lang/String;
    const/16 v8, 0xd

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v31, v8

    check-cast v31, Ljava/lang/String;

    .line 2374
    .local v31, "sn":Ljava/lang/String;
    const/16 v8, 0xe

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v32, v8

    check-cast v32, Ljava/lang/String;

    .line 2377
    .local v32, "flyme":Ljava/lang/String;
    if-nez v6, :cond_178

    if-nez v7, :cond_178

    if-nez v23, :cond_178

    if-nez v24, :cond_178

    if-nez v25, :cond_178

    if-nez v26, :cond_178

    if-nez v27, :cond_178

    if-nez v29, :cond_178

    .line 2379
    const-string v8, "all items are null, skip this rule, should never happen!"

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2380
    return-void

    .line 2383
    :cond_178
    new-instance v33, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    move-object/from16 v8, v33

    move-object v9, v4

    move-object v10, v5

    move-object v11, v6

    move-object v12, v7

    move-object/from16 v13, v23

    move-object/from16 v14, v24

    move-object/from16 v15, v25

    move-object/from16 v16, v26

    move-object/from16 v17, v27

    move-object/from16 v18, v28

    move-object/from16 v19, v29

    move-object/from16 v20, v30

    move-object/from16 v21, v31

    move-object/from16 v22, v32

    invoke-direct/range {v8 .. v22}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2386
    .local v8, "convertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    invoke-static {v8}, Lcom/android/server/hips/intercept/Interception;->addInterceptionRuleInnerStatic(Lcom/android/server/hips/intercept/Interception$RulesConvertor;)V

    .line 2388
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addRuleInnerStatic: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2389
    return-void
.end method

.method private static addRuleStatic(Ljava/lang/String;)V
    .registers 5
    .param p0, "rule"  # Ljava/lang/String;

    .line 2210
    if-nez p0, :cond_a

    .line 2211
    const-string v0, "Interception"

    const-string v1, "add rule is null, ignore!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    return-void

    .line 2214
    :cond_a
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2215
    .local v0, "itemArray":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2216
    .local v1, "itemBuilder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    array-length v3, v0

    if-ge v2, v3, :cond_27

    .line 2217
    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|||"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2216
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 2219
    .end local v2  # "i":I
    :cond_27
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2221
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2222
    .local v2, "newRule":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/hips/intercept/Interception;->addRuleInnerStatic(Ljava/lang/String;)V

    .line 2223
    return-void
.end method

.method public static enterOrExitMP3Mode(Z)V
    .registers 1
    .param p0, "isEnter"  # Z

    .line 1108
    sput-boolean p0, Lcom/android/server/hips/intercept/Interception;->mIsCurrentInMp3Mode:Z

    .line 1109
    return-void
.end method

.method public static getAppInterceptionRule(Ljava/lang/String;)I
    .registers 6
    .param p0, "pkgName"  # Ljava/lang/String;

    .line 2988
    const/4 v0, -0x1

    .line 2990
    .local v0, "perm":I
    sget-object v1, Lcom/android/server/hips/intercept/Interception;->mUserSettingInterceptionRules:Ljava/util/List;

    monitor-enter v1

    .line 2991
    :try_start_4
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mUserSettingInterceptionRules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 2992
    .local v3, "rulesConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    if-eqz p0, :cond_27

    iget-object v4, v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCalleePkg:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 2993
    iget-boolean v4, v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mIntercept:Z

    if-nez v4, :cond_27

    .line 2994
    const/4 v0, 0x1

    .line 2995
    monitor-exit v1

    return v0

    .line 2998
    .end local v3  # "rulesConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :cond_27
    goto :goto_a

    .line 2999
    :cond_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_4 .. :try_end_29} :catchall_1a0

    .line 3001
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mActivityInterceptionRules:Ljava/util/List;

    monitor-enter v2

    .line 3002
    :try_start_2c
    sget-object v1, Lcom/android/server/hips/intercept/Interception;->mActivityInterceptionRules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 3003
    .restart local v3  # "rulesConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    if-eqz p0, :cond_4f

    iget-object v4, v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCalleePkg:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 3004
    iget-boolean v4, v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mIntercept:Z

    if-nez v4, :cond_4f

    .line 3005
    const/4 v0, 0x1

    .line 3006
    monitor-exit v2

    return v0

    .line 3009
    .end local v3  # "rulesConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :cond_4f
    goto :goto_32

    .line 3010
    :cond_50
    monitor-exit v2
    :try_end_51
    .catchall {:try_start_2c .. :try_end_51} :catchall_19d

    .line 3011
    sget-object v1, Lcom/android/server/hips/intercept/Interception;->mServiceInterceptionRules:Ljava/util/List;

    monitor-enter v1

    .line 3012
    :try_start_54
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mServiceInterceptionRules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_78

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 3013
    .restart local v3  # "rulesConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    if-eqz p0, :cond_77

    iget-object v4, v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCalleePkg:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_77

    .line 3014
    iget-boolean v4, v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mIntercept:Z

    if-nez v4, :cond_77

    .line 3015
    const/4 v0, 0x1

    .line 3016
    monitor-exit v1

    return v0

    .line 3019
    .end local v3  # "rulesConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :cond_77
    goto :goto_5a

    .line 3020
    :cond_78
    monitor-exit v1
    :try_end_79
    .catchall {:try_start_54 .. :try_end_79} :catchall_19a

    .line 3021
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mBroadcastInterceptionRules:Ljava/util/List;

    monitor-enter v2

    .line 3022
    :try_start_7c
    sget-object v1, Lcom/android/server/hips/intercept/Interception;->mBroadcastInterceptionRules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_82
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 3023
    .restart local v3  # "rulesConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    if-eqz p0, :cond_9f

    iget-object v4, v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCalleePkg:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9f

    .line 3024
    iget-boolean v4, v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mIntercept:Z

    if-nez v4, :cond_9f

    .line 3025
    const/4 v0, 0x1

    .line 3026
    monitor-exit v2

    return v0

    .line 3029
    .end local v3  # "rulesConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :cond_9f
    goto :goto_82

    .line 3030
    :cond_a0
    monitor-exit v2
    :try_end_a1
    .catchall {:try_start_7c .. :try_end_a1} :catchall_197

    .line 3031
    sget-object v1, Lcom/android/server/hips/intercept/Interception;->mProviderInterceptionRules:Ljava/util/List;

    monitor-enter v1

    .line 3032
    :try_start_a4
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mProviderInterceptionRules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_aa
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 3033
    .restart local v3  # "rulesConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    if-eqz p0, :cond_c7

    iget-object v4, v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCalleePkg:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c7

    .line 3034
    iget-boolean v4, v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mIntercept:Z

    if-nez v4, :cond_c7

    .line 3035
    const/4 v0, 0x1

    .line 3036
    monitor-exit v1

    return v0

    .line 3039
    .end local v3  # "rulesConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :cond_c7
    goto :goto_aa

    .line 3040
    :cond_c8
    monitor-exit v1
    :try_end_c9
    .catchall {:try_start_a4 .. :try_end_c9} :catchall_194

    .line 3041
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mLocalActivityInterceptionRules:Ljava/util/List;

    monitor-enter v2

    .line 3042
    :try_start_cc
    sget-object v1, Lcom/android/server/hips/intercept/Interception;->mLocalActivityInterceptionRules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 3043
    .restart local v3  # "rulesConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    if-eqz p0, :cond_ef

    iget-object v4, v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCalleePkg:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ef

    .line 3044
    iget-boolean v4, v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mIntercept:Z

    if-nez v4, :cond_ef

    .line 3045
    const/4 v0, 0x1

    .line 3046
    monitor-exit v2

    return v0

    .line 3049
    .end local v3  # "rulesConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :cond_ef
    goto :goto_d2

    .line 3050
    :cond_f0
    monitor-exit v2
    :try_end_f1
    .catchall {:try_start_cc .. :try_end_f1} :catchall_191

    .line 3051
    sget-object v1, Lcom/android/server/hips/intercept/Interception;->mLocalServiceInterceptionRules:Ljava/util/List;

    monitor-enter v1

    .line 3052
    :try_start_f4
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mLocalServiceInterceptionRules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_fa
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_118

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 3053
    .restart local v3  # "rulesConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    if-eqz p0, :cond_117

    iget-object v4, v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCalleePkg:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_117

    .line 3054
    iget-boolean v4, v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mIntercept:Z

    if-nez v4, :cond_117

    .line 3055
    const/4 v0, 0x1

    .line 3056
    monitor-exit v1

    return v0

    .line 3059
    .end local v3  # "rulesConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :cond_117
    goto :goto_fa

    .line 3060
    :cond_118
    monitor-exit v1
    :try_end_119
    .catchall {:try_start_f4 .. :try_end_119} :catchall_18e

    .line 3061
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mLocalBroadcastInterceptionRules:Ljava/util/List;

    monitor-enter v2

    .line 3062
    :try_start_11c
    sget-object v1, Lcom/android/server/hips/intercept/Interception;->mLocalBroadcastInterceptionRules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_122
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_140

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 3063
    .restart local v3  # "rulesConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    if-eqz p0, :cond_13f

    iget-object v4, v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCalleePkg:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13f

    .line 3064
    iget-boolean v4, v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mIntercept:Z

    if-nez v4, :cond_13f

    .line 3065
    const/4 v0, 0x1

    .line 3066
    monitor-exit v2

    return v0

    .line 3069
    .end local v3  # "rulesConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :cond_13f
    goto :goto_122

    .line 3070
    :cond_140
    monitor-exit v2
    :try_end_141
    .catchall {:try_start_11c .. :try_end_141} :catchall_18b

    .line 3071
    sget-object v1, Lcom/android/server/hips/intercept/Interception;->mLocalProviderInterceptionRules:Ljava/util/List;

    monitor-enter v1

    .line 3072
    :try_start_144
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mLocalProviderInterceptionRules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_168

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 3073
    .restart local v3  # "rulesConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    if-eqz p0, :cond_167

    iget-object v4, v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCalleePkg:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_167

    .line 3074
    iget-boolean v4, v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mIntercept:Z

    if-nez v4, :cond_167

    .line 3075
    const/4 v0, 0x1

    .line 3076
    monitor-exit v1

    return v0

    .line 3079
    .end local v3  # "rulesConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :cond_167
    goto :goto_14a

    .line 3080
    :cond_168
    monitor-exit v1
    :try_end_169
    .catchall {:try_start_144 .. :try_end_169} :catchall_188

    .line 3082
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInterceptionRule, package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " permission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Interception"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3083
    return v0

    .line 3080
    :catchall_188
    move-exception v2

    :try_start_189
    monitor-exit v1
    :try_end_18a
    .catchall {:try_start_189 .. :try_end_18a} :catchall_188

    throw v2

    .line 3070
    :catchall_18b
    move-exception v1

    :try_start_18c
    monitor-exit v2
    :try_end_18d
    .catchall {:try_start_18c .. :try_end_18d} :catchall_18b

    throw v1

    .line 3060
    :catchall_18e
    move-exception v2

    :try_start_18f
    monitor-exit v1
    :try_end_190
    .catchall {:try_start_18f .. :try_end_190} :catchall_18e

    throw v2

    .line 3050
    :catchall_191
    move-exception v1

    :try_start_192
    monitor-exit v2
    :try_end_193
    .catchall {:try_start_192 .. :try_end_193} :catchall_191

    throw v1

    .line 3040
    :catchall_194
    move-exception v2

    :try_start_195
    monitor-exit v1
    :try_end_196
    .catchall {:try_start_195 .. :try_end_196} :catchall_194

    throw v2

    .line 3030
    :catchall_197
    move-exception v1

    :try_start_198
    monitor-exit v2
    :try_end_199
    .catchall {:try_start_198 .. :try_end_199} :catchall_197

    throw v1

    .line 3020
    :catchall_19a
    move-exception v2

    :try_start_19b
    monitor-exit v1
    :try_end_19c
    .catchall {:try_start_19b .. :try_end_19c} :catchall_19a

    throw v2

    .line 3010
    :catchall_19d
    move-exception v1

    :try_start_19e
    monitor-exit v2
    :try_end_19f
    .catchall {:try_start_19e .. :try_end_19f} :catchall_19d

    throw v1

    .line 2999
    :catchall_1a0
    move-exception v2

    :try_start_1a1
    monitor-exit v1
    :try_end_1a2
    .catchall {:try_start_1a1 .. :try_end_1a2} :catchall_1a0

    throw v2
.end method

.method private getInterceptionItemByKey(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 8
    .param p1, "calleePkg"  # Ljava/lang/String;

    .line 573
    const-string v0, "getInterceptionItemByKey, E2:"

    const-string v1, "Interception"

    const/4 v2, 0x0

    .line 575
    .local v2, "ret":Ljava/lang/Integer;
    :try_start_5
    sget-object v3, Lcom/android/server/hips/intercept/Interception;->mInterceptionItemsRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 577
    sget-object v3, Lcom/android/server/hips/intercept/Interception;->mInterceptionItems:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_16} :catch_3b
    .catchall {:try_start_5 .. :try_end_16} :catchall_39

    move-object v2, v3

    .line 582
    :try_start_17
    sget-object v3, Lcom/android/server/hips/intercept/Interception;->mInterceptionItemsRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_20} :catch_21

    .line 585
    :goto_20
    goto :goto_65

    .line 583
    :catch_21
    move-exception v3

    .line 584
    .local v3, "e2":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_27
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    .end local v3  # "e2":Ljava/lang/Exception;
    goto :goto_65

    .line 581
    :catchall_39
    move-exception v3

    goto :goto_66

    .line 578
    :catch_3b
    move-exception v3

    .line 579
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInterceptionItemByKey, E:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catchall {:try_start_3c .. :try_end_54} :catchall_39

    .line 582
    .end local v3  # "e":Ljava/lang/Exception;
    :try_start_54
    sget-object v3, Lcom/android/server/hips/intercept/Interception;->mInterceptionItemsRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_5d} :catch_5e

    goto :goto_20

    .line 583
    :catch_5e
    move-exception v3

    .line 584
    .local v3, "e2":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_27

    .line 587
    .end local v3  # "e2":Ljava/lang/Exception;
    :goto_65
    return-object v2

    .line 582
    :goto_66
    :try_start_66
    sget-object v4, Lcom/android/server/hips/intercept/Interception;->mInterceptionItemsRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_6f} :catch_70

    .line 585
    goto :goto_87

    .line 583
    :catch_70
    move-exception v4

    .line 584
    .local v4, "e2":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    .end local v4  # "e2":Ljava/lang/Exception;
    :goto_87
    throw v3
.end method

.method public static getInterceptionTimeStamp()J
    .registers 2

    .line 1100
    sget-wide v0, Lcom/android/server/hips/intercept/Interception;->mInterceptionTimeStamp:J

    return-wide v0
.end method

.method public static getInterceptionVersion()I
    .registers 1

    .line 159
    const/4 v0, 0x4

    return v0
.end method

.method public static getLastInterceptionEvent()Lcom/android/server/hips/intercept/InterceptionEvent;
    .registers 1

    .line 3189
    sget-object v0, Lcom/android/server/hips/intercept/Interception;->mLastEvent:Lcom/android/server/hips/intercept/InterceptionEvent;

    return-object v0
.end method

.method public static getProcessName(I)Ljava/lang/String;
    .registers 8
    .param p0, "pid"  # I

    .line 1077
    const-string v0, "getProcessName close is fail. exception="

    const-string v1, "Interception"

    const/4 v2, 0x0

    .line 1079
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_5
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/proc/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/cmdline"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 1080
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 1081
    .local v3, "processName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_35

    .line 1082
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_34} :catch_51
    .catchall {:try_start_5 .. :try_end_34} :catchall_4f

    move-object v3, v4

    .line 1084
    :cond_35
    nop

    .line 1089
    nop

    .line 1090
    :try_start_37
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    .line 1094
    goto :goto_4e

    .line 1092
    :catch_3b
    move-exception v4

    .line 1093
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    .end local v4  # "e":Ljava/io/IOException;
    :goto_4e
    return-object v3

    .line 1088
    .end local v3  # "processName":Ljava/lang/String;
    :catchall_4f
    move-exception v3

    goto :goto_84

    .line 1085
    :catch_51
    move-exception v3

    .line 1086
    .local v3, "e":Ljava/lang/Exception;
    :try_start_52
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProcessName read is fail. exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catchall {:try_start_52 .. :try_end_66} :catchall_4f

    .line 1089
    .end local v3  # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_80

    .line 1090
    :try_start_68
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6c

    goto :goto_80

    .line 1092
    :catch_6c
    move-exception v3

    .line 1093
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    .end local v3  # "e":Ljava/io/IOException;
    goto :goto_81

    .line 1094
    :cond_80
    :goto_80
    nop

    .line 1096
    :goto_81
    const-string v0, ""

    return-object v0

    .line 1089
    :goto_84
    if-eqz v2, :cond_9e

    .line 1090
    :try_start_86
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_8a

    goto :goto_9e

    .line 1092
    :catch_8a
    move-exception v4

    .line 1093
    .restart local v4  # "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9f

    .line 1094
    .end local v4  # "e":Ljava/io/IOException;
    :cond_9e
    :goto_9e
    nop

    :goto_9f
    throw v3
.end method

.method private static initLocalInterceptionRule()V
    .registers 47

    .line 391
    new-instance v0, Lcom/android/server/hips/intercept/LocalInterceptionRule;

    invoke-direct {v0}, Lcom/android/server/hips/intercept/LocalInterceptionRule;-><init>()V

    move-object v1, v0

    .line 392
    .local v1, "localInterceptionRule":Lcom/android/server/hips/intercept/LocalInterceptionRule;
    invoke-virtual {v1}, Lcom/android/server/hips/intercept/LocalInterceptionRule;->getData()Ljava/util/ArrayList;

    move-result-object v2

    .line 393
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_3ea

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_18

    move-object/from16 v18, v1

    move-object/from16 v17, v2

    goto/16 :goto_3ee

    .line 397
    :cond_18
    const/4 v0, 0x0

    .line 398
    .local v0, "usefulRulesCount":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 399
    .local v3, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 401
    .local v4, "localSystemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 402
    .local v5, "localActivityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 403
    .local v6, "localServiceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 404
    .local v7, "localBroadcastList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 406
    .local v8, "localProviderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v10, v0

    .end local v0  # "usefulRulesCount":I
    .local v10, "usefulRulesCount":I
    :goto_3c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 407
    .local v0, "rule":Ljava/lang/String;
    if-nez v0, :cond_65

    .line 408
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "initLocalInterceptionRule, the rule is null, stop to add. rule: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Interception"

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    move-object/from16 v18, v1

    goto/16 :goto_139

    .line 413
    :cond_65
    const-string v11, "\\|\\|\\|"

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 414
    .local v11, "items":[Ljava/lang/String;
    if-nez v11, :cond_88

    .line 415
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "initLocalInterceptionRule, the items is null, stop to add. rule: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "Interception"

    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    move-object/from16 v18, v1

    goto/16 :goto_139

    .line 419
    :cond_88
    array-length v12, v11

    invoke-static {v12}, Lcom/android/server/hips/intercept/Interception;->isSupportRuleLength(I)Z

    move-result v12

    if-nez v12, :cond_b3

    .line 420
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "initLocalInterceptionRule, the length("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v13, v11

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ") of the items is error, stop to add. rule: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "Interception"

    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    move-object/from16 v18, v1

    goto/16 :goto_139

    .line 425
    :cond_b3
    new-instance v12, Landroid/util/ArrayMap;

    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V

    .line 426
    .local v12, "realItem":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_b9
    array-length v14, v11

    const/16 v16, 0x1

    if-ge v13, v14, :cond_11d

    .line 427
    aget-object v14, v11, v13

    if-eqz v14, :cond_102

    aget-object v14, v11, v13

    const-string v15, "\\=\\=\\="

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_102

    aget-object v14, v11, v13

    .line 428
    const-string v15, "\\=\\=\\="

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    array-length v14, v14

    const/4 v15, 0x2

    if-eq v14, v15, :cond_db

    move-object/from16 v18, v1

    goto :goto_104

    .line 435
    :cond_db
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 436
    .local v14, "key":Ljava/lang/Integer;
    aget-object v15, v11, v13

    move-object/from16 v18, v1

    .end local v1  # "localInterceptionRule":Lcom/android/server/hips/intercept/LocalInterceptionRule;
    .local v18, "localInterceptionRule":Lcom/android/server/hips/intercept/LocalInterceptionRule;
    const-string v1, "\\=\\=\\="

    invoke-virtual {v15, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v16

    .line 437
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_fa

    const-string v15, "*"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_fa

    .line 438
    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_fd

    .line 440
    :cond_fa
    invoke-virtual {v12, v14, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    .end local v1  # "value":Ljava/lang/String;
    .end local v14  # "key":Ljava/lang/Integer;
    :goto_fd
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v18

    goto :goto_b9

    .line 427
    .end local v18  # "localInterceptionRule":Lcom/android/server/hips/intercept/LocalInterceptionRule;
    .local v1, "localInterceptionRule":Lcom/android/server/hips/intercept/LocalInterceptionRule;
    :cond_102
    move-object/from16 v18, v1

    .line 429
    .end local v1  # "localInterceptionRule":Lcom/android/server/hips/intercept/LocalInterceptionRule;
    .restart local v18  # "localInterceptionRule":Lcom/android/server/hips/intercept/LocalInterceptionRule;
    :goto_104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "initLocalInterceptionRule, get the value for realItem error, stop to add. rule: "

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v14, "Interception"

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const/4 v12, 0x0

    .line 432
    goto :goto_11f

    .line 426
    .end local v18  # "localInterceptionRule":Lcom/android/server/hips/intercept/LocalInterceptionRule;
    .restart local v1  # "localInterceptionRule":Lcom/android/server/hips/intercept/LocalInterceptionRule;
    :cond_11d
    move-object/from16 v18, v1

    .line 444
    .end local v1  # "localInterceptionRule":Lcom/android/server/hips/intercept/LocalInterceptionRule;
    .end local v13  # "i":I
    .restart local v18  # "localInterceptionRule":Lcom/android/server/hips/intercept/LocalInterceptionRule;
    :goto_11f
    if-nez v12, :cond_13d

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "init local realItem is null, rule: "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v13, "Interception"

    invoke-static {v13, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    nop

    .line 406
    .end local v0  # "rule":Ljava/lang/String;
    .end local v11  # "items":[Ljava/lang/String;
    .end local v12  # "realItem":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v18  # "localInterceptionRule":Lcom/android/server/hips/intercept/LocalInterceptionRule;
    .restart local v1  # "localInterceptionRule":Lcom/android/server/hips/intercept/LocalInterceptionRule;
    :goto_139
    move-object/from16 v1, v18

    .end local v1  # "localInterceptionRule":Lcom/android/server/hips/intercept/LocalInterceptionRule;
    .restart local v18  # "localInterceptionRule":Lcom/android/server/hips/intercept/LocalInterceptionRule;
    goto/16 :goto_3c

    .line 449
    .restart local v0  # "rule":Ljava/lang/String;
    .restart local v11  # "items":[Ljava/lang/String;
    .restart local v12  # "realItem":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_13d
    add-int/lit8 v10, v10, 0x1

    .line 451
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 452
    .local v1, "version":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/hips/intercept/Interception;->isSupportRuleVersion(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_179

    .line 453
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "init local realItem is null, rule: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "Interception"

    invoke-static {v14, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    move-object/from16 v17, v2

    move-object v12, v3

    move-object v1, v4

    move-object/from16 v42, v5

    move-object/from16 v41, v6

    move-object/from16 v40, v7

    move-object/from16 v39, v8

    move-object/from16 v34, v9

    move/from16 v35, v10

    goto/16 :goto_368

    .line 456
    :cond_179
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 457
    .local v13, "runType":Ljava/lang/String;
    const/4 v14, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 458
    .local v14, "callerPkg":Ljava/lang/String;
    const/4 v15, 0x3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 459
    .local v15, "calleePkg":Ljava/lang/String;
    const/16 v16, 0x4

    move-object/from16 v17, v2

    .end local v2  # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v17, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 460
    .local v2, "calleeClass":Ljava/lang/String;
    const/16 v16, 0x5

    move-object/from16 v34, v9

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v12, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 461
    .local v9, "processName":Ljava/lang/String;
    const/16 v16, 0x6

    move/from16 v35, v10

    .end local v10  # "usefulRulesCount":I
    .local v35, "usefulRulesCount":I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v12, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 462
    .local v10, "action":Ljava/lang/String;
    const/16 v16, 0x7

    move-object/from16 v36, v11

    .end local v11  # "items":[Ljava/lang/String;
    .local v36, "items":[Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 463
    .local v11, "data":Ljava/lang/String;
    const/16 v16, 0x8

    move-object/from16 v37, v4

    .end local v4  # "localSystemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v37, "localSystemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 464
    .local v4, "extras":Ljava/lang/String;
    const/16 v16, 0x9

    move-object/from16 v38, v3

    .end local v3  # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v38, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 465
    .local v3, "interception":Ljava/lang/String;
    const/16 v16, 0xa

    move-object/from16 v39, v8

    .end local v8  # "localProviderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v39, "localProviderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v12, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 466
    .local v8, "interaction":Ljava/lang/String;
    const/16 v16, 0xc

    move-object/from16 v40, v7

    .end local v7  # "localBroadcastList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v40, "localBroadcastList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v12, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 467
    .local v7, "country":Ljava/lang/String;
    const/16 v16, 0xd

    move-object/from16 v41, v6

    .end local v6  # "localServiceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v41, "localServiceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v12, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 468
    .local v6, "sn":Ljava/lang/String;
    const/16 v16, 0xe

    move-object/from16 v42, v5

    .end local v5  # "localActivityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v42, "localActivityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 471
    .local v5, "flyme":Ljava/lang/String;
    invoke-static {v14}, Lcom/android/server/hips/utils/HipsUtils;->isSystemApp(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_313

    .line 472
    invoke-static {v14}, Lcom/android/server/hips/utils/HipsUtils;->isHasSystemSignature(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_23b

    move-object/from16 v46, v0

    move-object/from16 v45, v5

    move-object/from16 v44, v12

    move-object/from16 v12, v38

    goto/16 :goto_31b

    .line 479
    :cond_23b
    const/16 v16, 0x0

    .line 480
    .local v16, "isCallerPkgInstalled":Z
    const/16 v19, 0x0

    .line 482
    .local v19, "isCalleePkgInstalled":Z
    if-eqz v14, :cond_245

    .line 483
    invoke-static {v14}, Lcom/android/server/hips/utils/HipsUtils;->isPkgInstalled(Ljava/lang/String;)Z

    move-result v16

    .line 486
    :cond_245
    if-eqz v15, :cond_24e

    .line 487
    invoke-static {v15}, Lcom/android/server/hips/utils/HipsUtils;->isPkgInstalled(Ljava/lang/String;)Z

    move-result v19

    move/from16 v43, v19

    goto :goto_250

    .line 486
    :cond_24e
    move/from16 v43, v19

    .line 490
    .end local v19  # "isCalleePkgInstalled":Z
    .local v43, "isCalleePkgInstalled":Z
    :goto_250
    if-nez v14, :cond_254

    if-eqz v15, :cond_255

    .line 491
    :cond_254
    nop

    .line 495
    :cond_255
    new-instance v44, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    move-object/from16 v19, v44

    move-object/from16 v20, v1

    move-object/from16 v21, v13

    move-object/from16 v22, v14

    move-object/from16 v23, v15

    move-object/from16 v24, v2

    move-object/from16 v25, v9

    move-object/from16 v26, v10

    move-object/from16 v27, v11

    move-object/from16 v28, v4

    move-object/from16 v29, v3

    move-object/from16 v30, v8

    move-object/from16 v31, v7

    move-object/from16 v32, v6

    move-object/from16 v33, v5

    invoke-direct/range {v19 .. v33}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    .local v19, "convertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    move-object/from16 v44, v12

    .end local v12  # "realItem":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local v44, "realItem":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v45, v5

    .end local v5  # "flyme":Ljava/lang/String;
    .local v45, "flyme":Ljava/lang/String;
    const-string/jumbo v5, "init local third rule: "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " convertor: "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v19

    .end local v19  # "convertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .local v5, "convertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v46, v0

    .end local v0  # "rule":Ljava/lang/String;
    .local v46, "rule":Ljava/lang/String;
    const-string v0, "Interception"

    invoke-static {v0, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    if-eqz v13, :cond_2b4

    const-string v0, "activity"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b4

    .line 501
    move-object/from16 v12, v42

    .end local v42  # "localActivityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v12, "localActivityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v37

    move-object/from16 v12, v38

    goto/16 :goto_367

    .line 500
    .end local v12  # "localActivityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .restart local v42  # "localActivityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    :cond_2b4
    move-object/from16 v12, v42

    .line 502
    .end local v42  # "localActivityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .restart local v12  # "localActivityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    if-eqz v13, :cond_2ce

    const-string/jumbo v0, "retrieve_service"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2ce

    .line 503
    move-object/from16 v42, v12

    move-object/from16 v12, v41

    .end local v41  # "localServiceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v12, "localServiceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .restart local v42  # "localActivityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v37

    move-object/from16 v12, v38

    goto/16 :goto_367

    .line 502
    .end local v42  # "localActivityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v12, "localActivityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .restart local v41  # "localServiceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    :cond_2ce
    move-object/from16 v42, v12

    move-object/from16 v12, v41

    .line 504
    .end local v41  # "localServiceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v12, "localServiceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .restart local v42  # "localActivityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    if-eqz v13, :cond_2e9

    const-string v0, "broadcast"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e9

    .line 505
    move-object/from16 v41, v12

    move-object/from16 v12, v40

    .end local v40  # "localBroadcastList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v12, "localBroadcastList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .restart local v41  # "localServiceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v37

    move-object/from16 v12, v38

    goto/16 :goto_367

    .line 504
    .end local v41  # "localServiceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v12, "localServiceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .restart local v40  # "localBroadcastList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    :cond_2e9
    move-object/from16 v41, v12

    move-object/from16 v12, v40

    .line 506
    .end local v40  # "localBroadcastList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v12, "localBroadcastList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .restart local v41  # "localServiceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    if-eqz v13, :cond_305

    const-string/jumbo v0, "provider"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_305

    .line 507
    move-object/from16 v40, v12

    move-object/from16 v12, v39

    .end local v39  # "localProviderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v12, "localProviderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .restart local v40  # "localBroadcastList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v37

    move-object/from16 v12, v38

    goto/16 :goto_367

    .line 506
    .end local v40  # "localBroadcastList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v12, "localBroadcastList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .restart local v39  # "localProviderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    :cond_305
    move-object/from16 v40, v12

    move-object/from16 v12, v39

    .line 509
    .end local v39  # "localProviderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v12, "localProviderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .restart local v40  # "localBroadcastList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    move-object/from16 v39, v12

    move-object/from16 v12, v38

    .end local v38  # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v12, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .restart local v39  # "localProviderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v37

    goto :goto_367

    .line 471
    .end local v16  # "isCallerPkgInstalled":Z
    .end local v43  # "isCalleePkgInstalled":Z
    .end local v44  # "realItem":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v45  # "flyme":Ljava/lang/String;
    .end local v46  # "rule":Ljava/lang/String;
    .restart local v0  # "rule":Ljava/lang/String;
    .local v5, "flyme":Ljava/lang/String;
    .local v12, "realItem":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v38  # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    :cond_313
    move-object/from16 v46, v0

    move-object/from16 v45, v5

    move-object/from16 v44, v12

    move-object/from16 v12, v38

    .line 473
    .end local v0  # "rule":Ljava/lang/String;
    .end local v5  # "flyme":Ljava/lang/String;
    .end local v38  # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v12, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .restart local v44  # "realItem":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v45  # "flyme":Ljava/lang/String;
    .restart local v46  # "rule":Ljava/lang/String;
    :goto_31b
    new-instance v0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    move-object/from16 v19, v0

    move-object/from16 v20, v1

    move-object/from16 v21, v13

    move-object/from16 v22, v14

    move-object/from16 v23, v15

    move-object/from16 v24, v2

    move-object/from16 v25, v9

    move-object/from16 v26, v10

    move-object/from16 v27, v11

    move-object/from16 v28, v4

    move-object/from16 v29, v3

    move-object/from16 v30, v8

    move-object/from16 v31, v7

    move-object/from16 v32, v6

    move-object/from16 v33, v45

    invoke-direct/range {v19 .. v33}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    .local v0, "convertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v1

    .end local v1  # "version":Ljava/lang/String;
    .local v16, "version":Ljava/lang/String;
    const-string/jumbo v1, "init local system rule: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v46

    .end local v46  # "rule":Ljava/lang/String;
    .local v1, "rule":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v1  # "rule":Ljava/lang/String;
    .restart local v46  # "rule":Ljava/lang/String;
    const-string v1, " convertor: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "Interception"

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    move-object/from16 v1, v37

    .end local v37  # "localSystemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v1, "localSystemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    .end local v0  # "convertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    nop

    .line 512
    .end local v2  # "calleeClass":Ljava/lang/String;
    .end local v3  # "interception":Ljava/lang/String;
    .end local v4  # "extras":Ljava/lang/String;
    .end local v6  # "sn":Ljava/lang/String;
    .end local v7  # "country":Ljava/lang/String;
    .end local v8  # "interaction":Ljava/lang/String;
    .end local v9  # "processName":Ljava/lang/String;
    .end local v10  # "action":Ljava/lang/String;
    .end local v11  # "data":Ljava/lang/String;
    .end local v13  # "runType":Ljava/lang/String;
    .end local v14  # "callerPkg":Ljava/lang/String;
    .end local v15  # "calleePkg":Ljava/lang/String;
    .end local v16  # "version":Ljava/lang/String;
    .end local v36  # "items":[Ljava/lang/String;
    .end local v44  # "realItem":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v45  # "flyme":Ljava/lang/String;
    .end local v46  # "rule":Ljava/lang/String;
    :goto_367
    nop

    .line 406
    .end local v1  # "localSystemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .end local v12  # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .end local v17  # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v35  # "usefulRulesCount":I
    .end local v39  # "localProviderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .end local v40  # "localBroadcastList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .end local v41  # "localServiceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .end local v42  # "localActivityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v3, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v4, "localSystemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v5, "localActivityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v6, "localServiceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v7, "localBroadcastList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v8, "localProviderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v10, "usefulRulesCount":I
    :goto_368
    move-object v4, v1

    move-object v3, v12

    move-object/from16 v2, v17

    move-object/from16 v1, v18

    move-object/from16 v9, v34

    move/from16 v10, v35

    move-object/from16 v8, v39

    move-object/from16 v7, v40

    move-object/from16 v6, v41

    move-object/from16 v5, v42

    .end local v2  # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3  # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .end local v4  # "localSystemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .end local v5  # "localActivityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .end local v6  # "localServiceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .end local v7  # "localBroadcastList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .end local v8  # "localProviderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .end local v10  # "usefulRulesCount":I
    .restart local v1  # "localSystemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .restart local v12  # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .restart local v17  # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v35  # "usefulRulesCount":I
    .restart local v39  # "localProviderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .restart local v40  # "localBroadcastList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .restart local v41  # "localServiceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .restart local v42  # "localActivityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    goto/16 :goto_3c

    .line 514
    .end local v12  # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .end local v17  # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18  # "localInterceptionRule":Lcom/android/server/hips/intercept/LocalInterceptionRule;
    .end local v35  # "usefulRulesCount":I
    .end local v39  # "localProviderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .end local v40  # "localBroadcastList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .end local v41  # "localServiceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .end local v42  # "localActivityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v1, "localInterceptionRule":Lcom/android/server/hips/intercept/LocalInterceptionRule;
    .restart local v2  # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3  # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .restart local v4  # "localSystemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .restart local v5  # "localActivityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .restart local v6  # "localServiceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .restart local v7  # "localBroadcastList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .restart local v8  # "localProviderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .restart local v10  # "usefulRulesCount":I
    :cond_37c
    move-object/from16 v18, v1

    move-object/from16 v17, v2

    move-object v12, v3

    move-object v1, v4

    move-object/from16 v42, v5

    move-object/from16 v41, v6

    move-object/from16 v40, v7

    move-object/from16 v39, v8

    .end local v2  # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3  # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .end local v4  # "localSystemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .end local v5  # "localActivityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .end local v6  # "localServiceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .end local v7  # "localBroadcastList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .end local v8  # "localProviderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v1, "localSystemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .restart local v12  # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .restart local v17  # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v18  # "localInterceptionRule":Lcom/android/server/hips/intercept/LocalInterceptionRule;
    .restart local v39  # "localProviderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .restart local v40  # "localBroadcastList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .restart local v41  # "localServiceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .restart local v42  # "localActivityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    invoke-static {v1}, Lcom/android/server/hips/intercept/Interception;->sortAllInterceptionRules(Ljava/util/List;)V

    .line 515
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mSystemLocalInterceptionRules:Ljava/util/List;

    monitor-enter v2

    .line 516
    :try_start_390
    sput-object v1, Lcom/android/server/hips/intercept/Interception;->mSystemLocalInterceptionRules:Ljava/util/List;

    .line 517
    monitor-exit v2
    :try_end_393
    .catchall {:try_start_390 .. :try_end_393} :catchall_3e7

    .line 519
    invoke-static/range {v42 .. v42}, Lcom/android/server/hips/intercept/Interception;->sortAllInterceptionRules(Ljava/util/List;)V

    .line 520
    sget-object v3, Lcom/android/server/hips/intercept/Interception;->mLocalActivityInterceptionRules:Ljava/util/List;

    monitor-enter v3

    .line 521
    :try_start_399
    sput-object v42, Lcom/android/server/hips/intercept/Interception;->mLocalActivityInterceptionRules:Ljava/util/List;

    .line 522
    monitor-exit v3
    :try_end_39c
    .catchall {:try_start_399 .. :try_end_39c} :catchall_3e4

    .line 524
    invoke-static/range {v41 .. v41}, Lcom/android/server/hips/intercept/Interception;->sortAllInterceptionRules(Ljava/util/List;)V

    .line 525
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mLocalServiceInterceptionRules:Ljava/util/List;

    monitor-enter v2

    .line 526
    :try_start_3a2
    sput-object v41, Lcom/android/server/hips/intercept/Interception;->mLocalServiceInterceptionRules:Ljava/util/List;

    .line 527
    monitor-exit v2
    :try_end_3a5
    .catchall {:try_start_3a2 .. :try_end_3a5} :catchall_3e1

    .line 529
    invoke-static/range {v40 .. v40}, Lcom/android/server/hips/intercept/Interception;->sortAllInterceptionRules(Ljava/util/List;)V

    .line 530
    sget-object v3, Lcom/android/server/hips/intercept/Interception;->mLocalBroadcastInterceptionRules:Ljava/util/List;

    monitor-enter v3

    .line 531
    :try_start_3ab
    sput-object v40, Lcom/android/server/hips/intercept/Interception;->mLocalBroadcastInterceptionRules:Ljava/util/List;

    .line 532
    monitor-exit v3
    :try_end_3ae
    .catchall {:try_start_3ab .. :try_end_3ae} :catchall_3de

    .line 534
    invoke-static/range {v39 .. v39}, Lcom/android/server/hips/intercept/Interception;->sortAllInterceptionRules(Ljava/util/List;)V

    .line 535
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mLocalProviderInterceptionRules:Ljava/util/List;

    monitor-enter v2

    .line 536
    :try_start_3b4
    sput-object v39, Lcom/android/server/hips/intercept/Interception;->mLocalProviderInterceptionRules:Ljava/util/List;

    .line 537
    monitor-exit v2
    :try_end_3b7
    .catchall {:try_start_3b4 .. :try_end_3b7} :catchall_3db

    .line 540
    invoke-static {v12}, Lcom/android/server/hips/intercept/Interception;->sortAllInterceptionRules(Ljava/util/List;)V

    .line 541
    sget-object v3, Lcom/android/server/hips/intercept/Interception;->mLocalInterceptionRules:Ljava/util/List;

    monitor-enter v3

    .line 542
    :try_start_3bd
    sput-object v12, Lcom/android/server/hips/intercept/Interception;->mLocalInterceptionRules:Ljava/util/List;

    .line 543
    monitor-exit v3
    :try_end_3c0
    .catchall {:try_start_3bd .. :try_end_3c0} :catchall_3d8

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initLocalInterceptionRule, usefulRulesCount: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Interception"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    return-void

    .line 543
    :catchall_3d8
    move-exception v0

    :try_start_3d9
    monitor-exit v3
    :try_end_3da
    .catchall {:try_start_3d9 .. :try_end_3da} :catchall_3d8

    throw v0

    .line 537
    :catchall_3db
    move-exception v0

    :try_start_3dc
    monitor-exit v2
    :try_end_3dd
    .catchall {:try_start_3dc .. :try_end_3dd} :catchall_3db

    throw v0

    .line 532
    :catchall_3de
    move-exception v0

    :try_start_3df
    monitor-exit v3
    :try_end_3e0
    .catchall {:try_start_3df .. :try_end_3e0} :catchall_3de

    throw v0

    .line 527
    :catchall_3e1
    move-exception v0

    :try_start_3e2
    monitor-exit v2
    :try_end_3e3
    .catchall {:try_start_3e2 .. :try_end_3e3} :catchall_3e1

    throw v0

    .line 522
    :catchall_3e4
    move-exception v0

    :try_start_3e5
    monitor-exit v3
    :try_end_3e6
    .catchall {:try_start_3e5 .. :try_end_3e6} :catchall_3e4

    throw v0

    .line 517
    :catchall_3e7
    move-exception v0

    :try_start_3e8
    monitor-exit v2
    :try_end_3e9
    .catchall {:try_start_3e8 .. :try_end_3e9} :catchall_3e7

    throw v0

    .line 393
    .end local v10  # "usefulRulesCount":I
    .end local v12  # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .end local v17  # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18  # "localInterceptionRule":Lcom/android/server/hips/intercept/LocalInterceptionRule;
    .end local v39  # "localProviderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .end local v40  # "localBroadcastList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .end local v41  # "localServiceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .end local v42  # "localActivityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v1, "localInterceptionRule":Lcom/android/server/hips/intercept/LocalInterceptionRule;
    .restart local v2  # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3ea
    move-object/from16 v18, v1

    move-object/from16 v17, v2

    .line 394
    .end local v1  # "localInterceptionRule":Lcom/android/server/hips/intercept/LocalInterceptionRule;
    .end local v2  # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v17  # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v18  # "localInterceptionRule":Lcom/android/server/hips/intercept/LocalInterceptionRule;
    :goto_3ee
    return-void
.end method

.method private static interceptByActivityRuleInner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .registers 25
    .param p0, "processName"  # Ljava/lang/String;
    .param p1, "runType"  # Ljava/lang/String;
    .param p2, "callerPkg2"  # Ljava/lang/String;
    .param p3, "calleePkg"  # Ljava/lang/String;
    .param p4, "calleeClass"  # Ljava/lang/String;
    .param p5, "action"  # Ljava/lang/String;
    .param p6, "data"  # Ljava/lang/String;
    .param p7, "extras"  # Ljava/lang/String;
    .param p8, "isFgAction"  # Z

    .line 2719
    const-string/jumbo v1, "interceptByActivityRuleInner, E2:"

    const-string v2, "Interception"

    const/4 v3, 0x0

    .line 2720
    .local v3, "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    const/4 v4, -0x1

    .line 2722
    .local v4, "index":I
    :try_start_7
    sget-object v0, Lcom/android/server/hips/intercept/Interception;->mActivityInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2724
    sget-object v0, Lcom/android/server/hips/intercept/Interception;->mActivityInterceptionRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 2725
    .local v5, "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    add-int/lit8 v4, v4, 0x1

    .line 2726
    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p0

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move/from16 v14, p8

    move-object v15, v5

    invoke-static/range {v6 .. v15}, Lcom/android/server/hips/intercept/Interception;->isRuleMatchExV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/server/hips/intercept/Interception$RulesConvertor;)Z

    move-result v6

    if-nez v6, :cond_3e

    .line 2728
    goto :goto_16

    .line 2730
    :cond_3e
    new-instance v0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    invoke-direct {v0, v5}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;-><init>(Lcom/android/server/hips/intercept/Interception$RulesConvertor;)V

    move-object v3, v0

    .line 2731
    if-eqz v5, :cond_5b

    iget-object v0, v5, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCallerPkg:Ljava/lang/String;

    if-nez v0, :cond_5b

    iget-object v0, v5, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCalleePkg:Ljava/lang/String;

    if-nez v0, :cond_5b

    if-eqz p2, :cond_5b

    if-eqz p3, :cond_5b

    .line 2734
    invoke-virtual/range {p2 .. p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 2736
    const/4 v0, 0x0

    iput-boolean v0, v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mIntercept:Z

    .line 2740
    :cond_5b
    iput v4, v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mIndex:I
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_5d} :catch_84
    .catchall {:try_start_7 .. :try_end_5d} :catchall_7f

    .line 2747
    .end local v5  # "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :cond_5d
    :try_start_5d
    sget-object v0, Lcom/android/server/hips/intercept/Interception;->mActivityInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_66} :catch_67

    .line 2750
    :goto_66
    goto :goto_af

    .line 2748
    :catch_67
    move-exception v0

    .line 2749
    .local v0, "e2":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_6d
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2751
    .end local v0  # "e2":Ljava/lang/Exception;
    goto :goto_af

    .line 2746
    :catchall_7f
    move-exception v0

    move v5, v4

    move-object v4, v3

    move-object v3, v0

    goto :goto_b0

    .line 2743
    :catch_84
    move-exception v0

    .line 2744
    .local v0, "e":Ljava/lang/Exception;
    :try_start_85
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "interceptByActivityRuleInner, E:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catchall {:try_start_85 .. :try_end_9e} :catchall_7f

    .line 2747
    .end local v0  # "e":Ljava/lang/Exception;
    :try_start_9e
    sget-object v0, Lcom/android/server/hips/intercept/Interception;->mActivityInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a7} :catch_a8

    goto :goto_66

    .line 2748
    :catch_a8
    move-exception v0

    .line 2749
    .local v0, "e2":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_6d

    .line 2752
    .end local v0  # "e2":Ljava/lang/Exception;
    :goto_af
    return-object v3

    .line 2747
    .end local v3  # "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .local v4, "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .local v5, "index":I
    :goto_b0
    :try_start_b0
    sget-object v0, Lcom/android/server/hips/intercept/Interception;->mActivityInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b9} :catch_ba

    .line 2750
    goto :goto_d1

    .line 2748
    :catch_ba
    move-exception v0

    .line 2749
    .restart local v0  # "e2":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2750
    .end local v0  # "e2":Ljava/lang/Exception;
    :goto_d1
    throw v3
.end method

.method private static interceptByBroadcastRuleInner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .registers 25
    .param p0, "processName"  # Ljava/lang/String;
    .param p1, "runType"  # Ljava/lang/String;
    .param p2, "callerPkg2"  # Ljava/lang/String;
    .param p3, "calleePkg"  # Ljava/lang/String;
    .param p4, "calleeClass"  # Ljava/lang/String;
    .param p5, "action"  # Ljava/lang/String;
    .param p6, "data"  # Ljava/lang/String;
    .param p7, "extras"  # Ljava/lang/String;
    .param p8, "isFgAction"  # Z

    .line 2799
    const-string/jumbo v1, "interceptByBroadcastRuleInner, E2:"

    const-string v2, "Interception"

    const/4 v3, 0x0

    .line 2800
    .local v3, "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    const/4 v4, -0x1

    .line 2802
    .local v4, "index":I
    :try_start_7
    sget-object v0, Lcom/android/server/hips/intercept/Interception;->mBroadcastInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2804
    sget-object v0, Lcom/android/server/hips/intercept/Interception;->mBroadcastInterceptionRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 2805
    .local v5, "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    add-int/lit8 v4, v4, 0x1

    .line 2806
    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p0

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move/from16 v14, p8

    move-object v15, v5

    invoke-static/range {v6 .. v15}, Lcom/android/server/hips/intercept/Interception;->isRuleMatchExV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/server/hips/intercept/Interception$RulesConvertor;)Z

    move-result v6

    if-nez v6, :cond_3e

    .line 2808
    goto :goto_16

    .line 2811
    :cond_3e
    new-instance v0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    invoke-direct {v0, v5}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;-><init>(Lcom/android/server/hips/intercept/Interception$RulesConvertor;)V

    move-object v3, v0

    .line 2812
    iput v4, v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mIndex:I
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_46} :catch_6d
    .catchall {:try_start_7 .. :try_end_46} :catchall_68

    .line 2819
    .end local v5  # "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :cond_46
    :try_start_46
    sget-object v0, Lcom/android/server/hips/intercept/Interception;->mBroadcastInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4f} :catch_50

    .line 2822
    :goto_4f
    goto :goto_98

    .line 2820
    :catch_50
    move-exception v0

    .line 2821
    .local v0, "e2":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_56
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2823
    .end local v0  # "e2":Ljava/lang/Exception;
    goto :goto_98

    .line 2818
    :catchall_68
    move-exception v0

    move v5, v4

    move-object v4, v3

    move-object v3, v0

    goto :goto_99

    .line 2815
    :catch_6d
    move-exception v0

    .line 2816
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "interceptByBroadcastRuleInner, E:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catchall {:try_start_6e .. :try_end_87} :catchall_68

    .line 2819
    .end local v0  # "e":Ljava/lang/Exception;
    :try_start_87
    sget-object v0, Lcom/android/server/hips/intercept/Interception;->mBroadcastInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_90} :catch_91

    goto :goto_4f

    .line 2820
    :catch_91
    move-exception v0

    .line 2821
    .local v0, "e2":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_56

    .line 2824
    .end local v0  # "e2":Ljava/lang/Exception;
    :goto_98
    return-object v3

    .line 2819
    .end local v3  # "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .local v4, "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .local v5, "index":I
    :goto_99
    :try_start_99
    sget-object v0, Lcom/android/server/hips/intercept/Interception;->mBroadcastInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_a2} :catch_a3

    .line 2822
    goto :goto_ba

    .line 2820
    :catch_a3
    move-exception v0

    .line 2821
    .restart local v0  # "e2":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2822
    .end local v0  # "e2":Ljava/lang/Exception;
    :goto_ba
    throw v3
.end method

.method private static interceptByProviderRuleInner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .registers 25
    .param p0, "processName"  # Ljava/lang/String;
    .param p1, "runType"  # Ljava/lang/String;
    .param p2, "callerPkg2"  # Ljava/lang/String;
    .param p3, "calleePkg"  # Ljava/lang/String;
    .param p4, "calleeClass"  # Ljava/lang/String;
    .param p5, "action"  # Ljava/lang/String;
    .param p6, "data"  # Ljava/lang/String;
    .param p7, "extras"  # Ljava/lang/String;
    .param p8, "isFgAction"  # Z

    .line 2831
    const-string/jumbo v1, "interceptByProviderRuleInner, E2:"

    const-string v2, "Interception"

    const/4 v3, 0x0

    .line 2832
    .local v3, "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    const/4 v4, -0x1

    .line 2834
    .local v4, "index":I
    :try_start_7
    sget-object v0, Lcom/android/server/hips/intercept/Interception;->mProviderInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2836
    sget-object v0, Lcom/android/server/hips/intercept/Interception;->mProviderInterceptionRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 2837
    .local v5, "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    add-int/lit8 v4, v4, 0x1

    .line 2838
    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p0

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move/from16 v14, p8

    move-object v15, v5

    invoke-static/range {v6 .. v15}, Lcom/android/server/hips/intercept/Interception;->isRuleMatchExV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/server/hips/intercept/Interception$RulesConvertor;)Z

    move-result v6

    if-nez v6, :cond_3e

    .line 2840
    goto :goto_16

    .line 2842
    :cond_3e
    new-instance v0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    invoke-direct {v0, v5}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;-><init>(Lcom/android/server/hips/intercept/Interception$RulesConvertor;)V

    move-object v3, v0

    .line 2843
    if-eqz v5, :cond_5b

    iget-object v0, v5, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCallerPkg:Ljava/lang/String;

    if-nez v0, :cond_5b

    iget-object v0, v5, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCalleePkg:Ljava/lang/String;

    if-nez v0, :cond_5b

    if-eqz p2, :cond_5b

    if-eqz p3, :cond_5b

    .line 2846
    invoke-virtual/range {p2 .. p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 2848
    const/4 v0, 0x0

    iput-boolean v0, v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mIntercept:Z

    .line 2850
    :cond_5b
    iput v4, v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mIndex:I
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_5d} :catch_84
    .catchall {:try_start_7 .. :try_end_5d} :catchall_7f

    .line 2857
    .end local v5  # "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :cond_5d
    :try_start_5d
    sget-object v0, Lcom/android/server/hips/intercept/Interception;->mProviderInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_66} :catch_67

    .line 2860
    :goto_66
    goto :goto_af

    .line 2858
    :catch_67
    move-exception v0

    .line 2859
    .local v0, "e2":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_6d
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2861
    .end local v0  # "e2":Ljava/lang/Exception;
    goto :goto_af

    .line 2856
    :catchall_7f
    move-exception v0

    move v5, v4

    move-object v4, v3

    move-object v3, v0

    goto :goto_b0

    .line 2853
    :catch_84
    move-exception v0

    .line 2854
    .local v0, "e":Ljava/lang/Exception;
    :try_start_85
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "interceptByProviderRuleInner, E:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catchall {:try_start_85 .. :try_end_9e} :catchall_7f

    .line 2857
    .end local v0  # "e":Ljava/lang/Exception;
    :try_start_9e
    sget-object v0, Lcom/android/server/hips/intercept/Interception;->mProviderInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a7} :catch_a8

    goto :goto_66

    .line 2858
    :catch_a8
    move-exception v0

    .line 2859
    .local v0, "e2":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_6d

    .line 2862
    .end local v0  # "e2":Ljava/lang/Exception;
    :goto_af
    return-object v3

    .line 2857
    .end local v3  # "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .local v4, "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .local v5, "index":I
    :goto_b0
    :try_start_b0
    sget-object v0, Lcom/android/server/hips/intercept/Interception;->mProviderInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b9} :catch_ba

    .line 2860
    goto :goto_d1

    .line 2858
    :catch_ba
    move-exception v0

    .line 2859
    .restart local v0  # "e2":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2860
    .end local v0  # "e2":Ljava/lang/Exception;
    :goto_d1
    throw v3
.end method

.method private static interceptByRuleInner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .registers 25
    .param p0, "processName"  # Ljava/lang/String;
    .param p1, "runType"  # Ljava/lang/String;
    .param p2, "callerPkg2"  # Ljava/lang/String;
    .param p3, "calleePkg"  # Ljava/lang/String;
    .param p4, "calleeClass"  # Ljava/lang/String;
    .param p5, "action"  # Ljava/lang/String;
    .param p6, "data"  # Ljava/lang/String;
    .param p7, "extras"  # Ljava/lang/String;
    .param p8, "isFgAction"  # Z

    .line 1243
    const-string/jumbo v1, "interceptByRuleInner, E2:"

    const-string v2, "Interception"

    const/4 v3, 0x0

    .line 1244
    .local v3, "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    const/4 v4, -0x1

    .line 1246
    .local v4, "index":I
    :try_start_7
    sget-object v0, Lcom/android/server/hips/intercept/Interception;->mInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1248
    sget-object v0, Lcom/android/server/hips/intercept/Interception;->mInterceptionRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_82

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 1249
    .local v5, "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    add-int/lit8 v4, v4, 0x1

    .line 1250
    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p0

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move/from16 v14, p8

    move-object v15, v5

    invoke-static/range {v6 .. v15}, Lcom/android/server/hips/intercept/Interception;->isRuleMatchExV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/server/hips/intercept/Interception$RulesConvertor;)Z

    move-result v6

    if-nez v6, :cond_3e

    .line 1252
    goto :goto_16

    .line 1254
    :cond_3e
    new-instance v0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    invoke-direct {v0, v5}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;-><init>(Lcom/android/server/hips/intercept/Interception$RulesConvertor;)V

    move-object v3, v0

    .line 1255
    if-eqz v5, :cond_80

    iget-object v0, v5, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCallerPkg:Ljava/lang/String;

    if-nez v0, :cond_80

    iget-object v0, v5, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCalleePkg:Ljava/lang/String;

    if-nez v0, :cond_80

    if-eqz p2, :cond_80

    if-eqz p3, :cond_80

    .line 1258
    invoke-virtual/range {p2 .. p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 1260
    const/4 v0, 0x0

    iput-boolean v0, v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mIntercept:Z

    .line 1261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "interceptByRuleInner, original rule: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " hitRule: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    :cond_80
    iput v4, v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mIndex:I
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_82} :catch_a9
    .catchall {:try_start_7 .. :try_end_82} :catchall_a4

    .line 1271
    .end local v5  # "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :cond_82
    :try_start_82
    sget-object v0, Lcom/android/server/hips/intercept/Interception;->mInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_8b} :catch_8c

    .line 1274
    :goto_8b
    goto :goto_d4

    .line 1272
    :catch_8c
    move-exception v0

    .line 1273
    .local v0, "e2":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_92
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    .end local v0  # "e2":Ljava/lang/Exception;
    goto :goto_d4

    .line 1270
    :catchall_a4
    move-exception v0

    move v5, v4

    move-object v4, v3

    move-object v3, v0

    goto :goto_d5

    .line 1267
    :catch_a9
    move-exception v0

    .line 1268
    .local v0, "e":Ljava/lang/Exception;
    :try_start_aa
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "interceptByRuleInner, E:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c3
    .catchall {:try_start_aa .. :try_end_c3} :catchall_a4

    .line 1271
    .end local v0  # "e":Ljava/lang/Exception;
    :try_start_c3
    sget-object v0, Lcom/android/server/hips/intercept/Interception;->mInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_cc} :catch_cd

    goto :goto_8b

    .line 1272
    :catch_cd
    move-exception v0

    .line 1273
    .local v0, "e2":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_92

    .line 1276
    .end local v0  # "e2":Ljava/lang/Exception;
    :goto_d4
    return-object v3

    .line 1271
    .end local v3  # "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .local v4, "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .local v5, "index":I
    :goto_d5
    :try_start_d5
    sget-object v0, Lcom/android/server/hips/intercept/Interception;->mInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_de} :catch_df

    .line 1274
    goto :goto_f6

    .line 1272
    :catch_df
    move-exception v0

    .line 1273
    .restart local v0  # "e2":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    .end local v0  # "e2":Ljava/lang/Exception;
    :goto_f6
    throw v3
.end method

.method private static interceptByServiceRuleInner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .registers 25
    .param p0, "processName"  # Ljava/lang/String;
    .param p1, "runType"  # Ljava/lang/String;
    .param p2, "callerPkg2"  # Ljava/lang/String;
    .param p3, "calleePkg"  # Ljava/lang/String;
    .param p4, "calleeClass"  # Ljava/lang/String;
    .param p5, "action"  # Ljava/lang/String;
    .param p6, "data"  # Ljava/lang/String;
    .param p7, "extras"  # Ljava/lang/String;
    .param p8, "isFgAction"  # Z

    .line 2759
    const-string/jumbo v1, "interceptByServiceRuleInner, E2:"

    const-string v2, "Interception"

    const/4 v3, 0x0

    .line 2760
    .local v3, "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    const/4 v4, -0x1

    .line 2762
    .local v4, "index":I
    :try_start_7
    sget-object v0, Lcom/android/server/hips/intercept/Interception;->mServiceInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2764
    sget-object v0, Lcom/android/server/hips/intercept/Interception;->mServiceInterceptionRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 2765
    .local v5, "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    add-int/lit8 v4, v4, 0x1

    .line 2766
    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p0

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move/from16 v14, p8

    move-object v15, v5

    invoke-static/range {v6 .. v15}, Lcom/android/server/hips/intercept/Interception;->isRuleMatchExV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/server/hips/intercept/Interception$RulesConvertor;)Z

    move-result v6

    if-nez v6, :cond_3e

    .line 2768
    goto :goto_16

    .line 2770
    :cond_3e
    new-instance v0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    invoke-direct {v0, v5}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;-><init>(Lcom/android/server/hips/intercept/Interception$RulesConvertor;)V

    move-object v3, v0

    .line 2771
    if-eqz v5, :cond_5b

    iget-object v0, v5, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCallerPkg:Ljava/lang/String;

    if-nez v0, :cond_5b

    iget-object v0, v5, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCalleePkg:Ljava/lang/String;

    if-nez v0, :cond_5b

    if-eqz p2, :cond_5b

    if-eqz p3, :cond_5b

    .line 2774
    invoke-virtual/range {p2 .. p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 2776
    const/4 v0, 0x0

    iput-boolean v0, v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mIntercept:Z

    .line 2780
    :cond_5b
    iput v4, v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mIndex:I
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_5d} :catch_84
    .catchall {:try_start_7 .. :try_end_5d} :catchall_7f

    .line 2787
    .end local v5  # "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :cond_5d
    :try_start_5d
    sget-object v0, Lcom/android/server/hips/intercept/Interception;->mServiceInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_66} :catch_67

    .line 2790
    :goto_66
    goto :goto_af

    .line 2788
    :catch_67
    move-exception v0

    .line 2789
    .local v0, "e2":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_6d
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2791
    .end local v0  # "e2":Ljava/lang/Exception;
    goto :goto_af

    .line 2786
    :catchall_7f
    move-exception v0

    move v5, v4

    move-object v4, v3

    move-object v3, v0

    goto :goto_b0

    .line 2783
    :catch_84
    move-exception v0

    .line 2784
    .local v0, "e":Ljava/lang/Exception;
    :try_start_85
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "interceptByServiceRuleInner, E:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catchall {:try_start_85 .. :try_end_9e} :catchall_7f

    .line 2787
    .end local v0  # "e":Ljava/lang/Exception;
    :try_start_9e
    sget-object v0, Lcom/android/server/hips/intercept/Interception;->mServiceInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a7} :catch_a8

    goto :goto_66

    .line 2788
    :catch_a8
    move-exception v0

    .line 2789
    .local v0, "e2":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_6d

    .line 2792
    .end local v0  # "e2":Ljava/lang/Exception;
    :goto_af
    return-object v3

    .line 2787
    .end local v3  # "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .local v4, "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .local v5, "index":I
    :goto_b0
    :try_start_b0
    sget-object v0, Lcom/android/server/hips/intercept/Interception;->mServiceInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b9} :catch_ba

    .line 2790
    goto :goto_d1

    .line 2788
    :catch_ba
    move-exception v0

    .line 2789
    .restart local v0  # "e2":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2790
    .end local v0  # "e2":Ljava/lang/Exception;
    :goto_d1
    throw v3
.end method

.method private static interceptSystemByRuleInner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .registers 25
    .param p0, "processName"  # Ljava/lang/String;
    .param p1, "runType"  # Ljava/lang/String;
    .param p2, "callerPkg2"  # Ljava/lang/String;
    .param p3, "calleePkg"  # Ljava/lang/String;
    .param p4, "calleeClass"  # Ljava/lang/String;
    .param p5, "action"  # Ljava/lang/String;
    .param p6, "data"  # Ljava/lang/String;
    .param p7, "extras"  # Ljava/lang/String;
    .param p8, "isFgAction"  # Z

    .line 2564
    const-string/jumbo v1, "interceptSystemByRuleInner, E2:"

    const-string v2, "Interception"

    const/4 v3, 0x0

    .line 2565
    .local v3, "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    const/4 v4, -0x1

    .line 2567
    .local v4, "index":I
    :try_start_7
    sget-object v0, Lcom/android/server/hips/intercept/Interception;->mSystemInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2569
    sget-object v0, Lcom/android/server/hips/intercept/Interception;->mSystemInterceptionRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 2570
    .local v5, "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    add-int/lit8 v4, v4, 0x1

    .line 2571
    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p0

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move/from16 v14, p8

    move-object v15, v5

    invoke-static/range {v6 .. v15}, Lcom/android/server/hips/intercept/Interception;->isRuleMatchExV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/server/hips/intercept/Interception$RulesConvertor;)Z

    move-result v6

    if-nez v6, :cond_3e

    .line 2573
    goto :goto_16

    .line 2575
    :cond_3e
    new-instance v0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    invoke-direct {v0, v5}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;-><init>(Lcom/android/server/hips/intercept/Interception$RulesConvertor;)V

    move-object v3, v0

    .line 2576
    iput v4, v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mIndex:I
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_46} :catch_6d
    .catchall {:try_start_7 .. :try_end_46} :catchall_68

    .line 2583
    .end local v5  # "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :cond_46
    :try_start_46
    sget-object v0, Lcom/android/server/hips/intercept/Interception;->mSystemInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4f} :catch_50

    .line 2586
    :goto_4f
    goto :goto_98

    .line 2584
    :catch_50
    move-exception v0

    .line 2585
    .local v0, "e2":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_56
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2587
    .end local v0  # "e2":Ljava/lang/Exception;
    goto :goto_98

    .line 2582
    :catchall_68
    move-exception v0

    move v5, v4

    move-object v4, v3

    move-object v3, v0

    goto :goto_99

    .line 2579
    :catch_6d
    move-exception v0

    .line 2580
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "interceptSystemByRuleInner, E:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catchall {:try_start_6e .. :try_end_87} :catchall_68

    .line 2583
    .end local v0  # "e":Ljava/lang/Exception;
    :try_start_87
    sget-object v0, Lcom/android/server/hips/intercept/Interception;->mSystemInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_90} :catch_91

    goto :goto_4f

    .line 2584
    :catch_91
    move-exception v0

    .line 2585
    .local v0, "e2":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_56

    .line 2588
    .end local v0  # "e2":Ljava/lang/Exception;
    :goto_98
    return-object v3

    .line 2583
    .end local v3  # "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .local v4, "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .local v5, "index":I
    :goto_99
    :try_start_99
    sget-object v0, Lcom/android/server/hips/intercept/Interception;->mSystemInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_a2} :catch_a3

    .line 2586
    goto :goto_ba

    .line 2584
    :catch_a3
    move-exception v0

    .line 2585
    .restart local v0  # "e2":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2586
    .end local v0  # "e2":Ljava/lang/Exception;
    :goto_ba
    throw v3
.end method

.method public static isCTA()Z
    .registers 2

    .line 1073
    sget-object v0, Landroid/os/BuildExt;->CTA:Ljava/lang/String;

    const-string v1, "cta"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isCalleeUserSetting(Ljava/lang/String;)Z
    .registers 6
    .param p0, "calleePkg"  # Ljava/lang/String;

    .line 3117
    const/4 v0, 0x0

    .line 3119
    .local v0, "ret":Z
    if-eqz p0, :cond_52

    :try_start_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_52

    .line 3120
    sget-object v1, Lcom/android/server/hips/intercept/Interception;->mUserSettingInterceptionRules:Ljava/util/List;

    monitor-enter v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c} :catch_33
    .catchall {:try_start_3 .. :try_end_c} :catchall_31

    .line 3121
    :try_start_c
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mUserSettingInterceptionRules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 3122
    .local v3, "rulesConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    iget-object v4, v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCalleePkg:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    iget-boolean v4, v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mIntercept:Z

    if-nez v4, :cond_2b

    .line 3124
    const/4 v0, 0x1

    .line 3126
    .end local v3  # "rulesConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :cond_2b
    goto :goto_12

    .line 3127
    :cond_2c
    monitor-exit v1

    goto :goto_52

    :catchall_2e
    move-exception v2

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_2e

    .end local v0  # "ret":Z
    .end local p0  # "calleePkg":Ljava/lang/String;
    :try_start_30
    throw v2
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_31} :catch_33
    .catchall {:try_start_30 .. :try_end_31} :catchall_31

    .line 3131
    .restart local v0  # "ret":Z
    .restart local p0  # "calleePkg":Ljava/lang/String;
    :catchall_31
    move-exception v1

    goto :goto_51

    .line 3129
    :catch_33
    move-exception v1

    .line 3130
    .local v1, "e":Ljava/lang/Exception;
    :try_start_34
    const-string v2, "Interception"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isCalleeUserSetting, E:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_34 .. :try_end_4f} :catchall_31

    .line 3132
    nop

    .end local v1  # "e":Ljava/lang/Exception;
    goto :goto_53

    .line 3131
    :goto_51
    throw v1

    .line 3132
    :cond_52
    :goto_52
    nop

    .line 3133
    :goto_53
    return v0
.end method

.method public static isIntercept(ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;ILcom/android/server/hips/intercept/Interception;IJZZ)Z
    .registers 43
    .param p0, "isFgAction"  # Z
    .param p1, "callerPkg"  # Ljava/lang/String;
    .param p2, "calleePkg"  # Ljava/lang/String;
    .param p3, "calleeUid"  # I
    .param p4, "processName"  # Ljava/lang/String;
    .param p5, "intent"  # Landroid/content/Intent;
    .param p6, "runType"  # Ljava/lang/String;
    .param p7, "realCallingPid"  # I
    .param p8, "interceptType"  # Lcom/android/server/hips/intercept/Interception;
    .param p9, "pid"  # I
    .param p10, "calleeStayTime"  # J
    .param p12, "isShellStarted"  # Z
    .param p13, "isRunning"  # Z

    .line 794
    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move/from16 v13, p3

    move-object/from16 v12, p6

    move-object/from16 v11, p8

    invoke-static/range {p2 .. p3}, Lcom/android/server/hips/utils/HipsUtils;->isProcessRunning(Ljava/lang/String;I)Z

    move-result v16

    .line 795
    .local v16, "isAlreadyRunning":Z
    if-eqz v16, :cond_14

    .line 796
    const/4 v0, 0x0

    move/from16 v17, v0

    .local v0, "startProc":Z
    goto :goto_17

    .line 798
    .end local v0  # "startProc":Z
    :cond_14
    const/4 v0, 0x1

    move/from16 v17, v0

    .line 800
    .local v17, "startProc":Z
    :goto_17
    const-string v0, ""

    .line 801
    .local v0, "calleeClass":Ljava/lang/String;
    if-eqz p5, :cond_2c

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 802
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v0

    goto :goto_2e

    .line 804
    :cond_2c
    move-object/from16 v18, v0

    .end local v0  # "calleeClass":Ljava/lang/String;
    .local v18, "calleeClass":Ljava/lang/String;
    :goto_2e
    const/4 v0, 0x0

    .line 805
    .local v0, "type":I
    const-string v1, "activity"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 806
    const/4 v0, 0x1

    .line 808
    :cond_38
    const-string/jumbo v2, "retrieve_service"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 809
    const/4 v0, 0x2

    .line 811
    :cond_42
    const-string v2, "broadcast"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 812
    const/4 v0, 0x3

    .line 814
    :cond_4b
    const-string/jumbo v2, "provider"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 815
    const/4 v0, 0x4

    .line 817
    :cond_55
    const-string v2, "backup"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 818
    const/4 v0, 0x5

    move v10, v0

    goto :goto_61

    .line 817
    :cond_60
    move v10, v0

    .line 821
    .end local v0  # "type":I
    .local v10, "type":I
    :goto_61
    sget-boolean v0, Lcom/android/server/hips/intercept/InterceptionManager;->INTERCEPT_ENABLE:Z

    const/16 v19, 0x0

    if-eqz v0, :cond_7a

    .line 822
    const/4 v1, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x12

    move/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, v18

    move-object/from16 v6, p4

    move v8, v10

    invoke-static/range {v1 .. v9}, Lcom/android/server/hips/intercept/InterceptionReason;->printReason(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 823
    return v19

    .line 827
    :cond_7a
    sget-boolean v0, Lcom/android/server/hips/intercept/Interception;->mIsCurrentInMp3Mode:Z

    const/4 v9, 0x1

    if-eqz v0, :cond_d9

    .line 828
    if-nez v12, :cond_84

    .line 829
    const-string v0, ""

    move-object v12, v0

    .line 832
    .end local p6  # "runType":Ljava/lang/String;
    .local v12, "runType":Ljava/lang/String;
    :cond_84
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 833
    return v19

    .line 836
    :cond_8b
    if-nez v14, :cond_90

    .line 837
    const-string v0, ""

    move-object v14, v0

    .line 840
    .end local p1  # "callerPkg":Ljava/lang/String;
    .local v14, "callerPkg":Ljava/lang/String;
    :cond_90
    if-nez v15, :cond_95

    .line 841
    const-string v0, ""

    move-object v15, v0

    .line 844
    .end local p2  # "calleePkg":Ljava/lang/String;
    .local v15, "calleePkg":Ljava/lang/String;
    :cond_95
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 845
    return v19

    .line 848
    :cond_9c
    const-string v0, "com.android.alarmclock"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d6

    .line 849
    const-string v0, "com.android.settings"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d3

    .line 850
    const-string v0, "com.meizu.media.music"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b7

    move-object/from16 p6, v12

    goto :goto_d8

    .line 854
    :cond_b7
    invoke-static {v15, v13}, Lcom/android/server/hips/utils/HipsUtils;->isProcessRunning(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 855
    return v19

    .line 858
    :cond_be
    const/4 v1, 0x1

    const/4 v7, 0x0

    const/16 v0, 0x13

    move/from16 v2, p0

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v18

    move-object/from16 v6, p4

    move v8, v10

    move-object/from16 p6, v12

    move v12, v9

    .end local v12  # "runType":Ljava/lang/String;
    .restart local p6  # "runType":Ljava/lang/String;
    move v9, v0

    invoke-static/range {v1 .. v9}, Lcom/android/server/hips/intercept/InterceptionReason;->printReason(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 860
    return v12

    .line 849
    .end local p6  # "runType":Ljava/lang/String;
    .restart local v12  # "runType":Ljava/lang/String;
    :cond_d3
    move-object/from16 p6, v12

    .end local v12  # "runType":Ljava/lang/String;
    .restart local p6  # "runType":Ljava/lang/String;
    goto :goto_d8

    .line 848
    .end local p6  # "runType":Ljava/lang/String;
    .restart local v12  # "runType":Ljava/lang/String;
    :cond_d6
    move-object/from16 p6, v12

    .line 851
    .end local v12  # "runType":Ljava/lang/String;
    .restart local p6  # "runType":Ljava/lang/String;
    :goto_d8
    return v19

    .line 869
    .end local v14  # "callerPkg":Ljava/lang/String;
    .end local v15  # "calleePkg":Ljava/lang/String;
    .restart local p1  # "callerPkg":Ljava/lang/String;
    .restart local p2  # "calleePkg":Ljava/lang/String;
    :cond_d9
    move v12, v9

    invoke-virtual {v11, v15}, Lcom/android/server/hips/intercept/Interception;->getInterceptionItemState(Ljava/lang/String;)I

    move-result v9

    .line 870
    .local v9, "mode":I
    if-ne v9, v12, :cond_15c

    .line 871
    if-ne v10, v12, :cond_111

    .line 872
    if-eqz v16, :cond_10b

    if-eqz v14, :cond_10b

    if-eqz v15, :cond_10b

    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10b

    .line 873
    const/4 v3, 0x1

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/server/hips/intercept/Interception;->getLastInterceptionEvent()Lcom/android/server/hips/intercept/InterceptionEvent;

    move-result-object v0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, v18

    move-object/from16 v5, p4

    move v6, v10

    move/from16 v7, p0

    move/from16 v20, v9

    .end local v9  # "mode":I
    .local v20, "mode":I
    move/from16 v9, v17

    move v12, v10

    .end local v10  # "type":I
    .local v12, "type":I
    move-object v10, v0

    invoke-static/range {v1 .. v10}, Lcom/android/server/hips/intercept/Interception;->activityCalleeStayTimeStats(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZZLcom/android/server/hips/intercept/InterceptionEvent;)V

    move/from16 v22, v12

    goto :goto_148

    .line 872
    .end local v12  # "type":I
    .end local v20  # "mode":I
    .restart local v9  # "mode":I
    .restart local v10  # "type":I
    :cond_10b
    move/from16 v20, v9

    move v12, v10

    .end local v9  # "mode":I
    .end local v10  # "type":I
    .restart local v12  # "type":I
    .restart local v20  # "mode":I
    move/from16 v22, v12

    goto :goto_148

    .line 876
    .end local v12  # "type":I
    .end local v20  # "mode":I
    .restart local v9  # "mode":I
    .restart local v10  # "type":I
    :cond_111
    move/from16 v20, v9

    move v12, v10

    .end local v9  # "mode":I
    .end local v10  # "type":I
    .restart local v12  # "type":I
    .restart local v20  # "mode":I
    if-eqz v16, :cond_146

    if-eqz v14, :cond_146

    if-eqz v15, :cond_146

    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_146

    .line 877
    new-instance v0, Lcom/android/server/hips/intercept/InterceptionEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 v10, 0x1

    const/16 v21, 0x0

    move-object v1, v0

    move v6, v12

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, v18

    move/from16 v11, p0

    move/from16 v22, v12

    .end local v12  # "type":I
    .local v22, "type":I
    move/from16 v12, v21

    move/from16 v13, v17

    invoke-direct/range {v1 .. v13}, Lcom/android/server/hips/intercept/InterceptionEvent;-><init>(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V

    .line 878
    .local v0, "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    invoke-static {}, Lcom/android/server/hips/intercept/InterceptionEventStats;->getInstance()Lcom/android/server/hips/intercept/InterceptionEventStats;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/hips/intercept/InterceptionEventStats;->addInterceptEvent(Lcom/android/server/hips/intercept/InterceptionEvent;)V

    goto :goto_148

    .line 876
    .end local v0  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    .end local v22  # "type":I
    .restart local v12  # "type":I
    :cond_146
    move/from16 v22, v12

    .line 881
    .end local v12  # "type":I
    .restart local v22  # "type":I
    :goto_148
    const/4 v1, 0x0

    const/4 v9, 0x1

    move/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, v18

    move-object/from16 v6, p4

    move/from16 v7, v17

    move/from16 v8, v22

    invoke-static/range {v1 .. v9}, Lcom/android/server/hips/intercept/InterceptionReason;->printReason(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 882
    return v19

    .line 884
    .end local v20  # "mode":I
    .end local v22  # "type":I
    .restart local v9  # "mode":I
    .restart local v10  # "type":I
    :cond_15c
    move/from16 v20, v9

    move/from16 v22, v10

    .end local v9  # "mode":I
    .end local v10  # "type":I
    .restart local v20  # "mode":I
    .restart local v22  # "type":I
    invoke-static/range {p2 .. p2}, Lcom/android/server/hips/intercept/Interception;->isCalleeUserSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d7

    .line 885
    move/from16 v13, v22

    .end local v22  # "type":I
    .local v13, "type":I
    if-ne v13, v12, :cond_192

    .line 886
    if-eqz v16, :cond_18f

    if-eqz v14, :cond_18f

    if-eqz v15, :cond_18f

    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18f

    .line 887
    const/4 v3, 0x1

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/server/hips/intercept/Interception;->getLastInterceptionEvent()Lcom/android/server/hips/intercept/InterceptionEvent;

    move-result-object v10

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, v18

    move-object/from16 v5, p4

    move v6, v13

    move/from16 v7, p0

    move/from16 v9, v17

    invoke-static/range {v1 .. v10}, Lcom/android/server/hips/intercept/Interception;->activityCalleeStayTimeStats(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZZLcom/android/server/hips/intercept/InterceptionEvent;)V

    move/from16 v22, v13

    goto :goto_1c3

    .line 886
    :cond_18f
    move/from16 v22, v13

    goto :goto_1c3

    .line 890
    :cond_192
    if-eqz v16, :cond_1c1

    if-eqz v14, :cond_1c1

    if-eqz v15, :cond_1c1

    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c1

    .line 891
    new-instance v0, Lcom/android/server/hips/intercept/InterceptionEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 v10, 0x1

    const/4 v12, 0x0

    move-object v1, v0

    move v6, v13

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, v18

    move/from16 v11, p0

    move/from16 v22, v13

    .end local v13  # "type":I
    .restart local v22  # "type":I
    move/from16 v13, v17

    invoke-direct/range {v1 .. v13}, Lcom/android/server/hips/intercept/InterceptionEvent;-><init>(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V

    .line 892
    .restart local v0  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    invoke-static {}, Lcom/android/server/hips/intercept/InterceptionEventStats;->getInstance()Lcom/android/server/hips/intercept/InterceptionEventStats;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/hips/intercept/InterceptionEventStats;->addInterceptEvent(Lcom/android/server/hips/intercept/InterceptionEvent;)V

    goto :goto_1c3

    .line 890
    .end local v0  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    .end local v22  # "type":I
    .restart local v13  # "type":I
    :cond_1c1
    move/from16 v22, v13

    .line 895
    .end local v13  # "type":I
    .restart local v22  # "type":I
    :goto_1c3
    const/4 v1, 0x0

    const/4 v9, 0x1

    move/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, v18

    move-object/from16 v6, p4

    move/from16 v7, v17

    move/from16 v8, v22

    invoke-static/range {v1 .. v9}, Lcom/android/server/hips/intercept/InterceptionReason;->printReason(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 896
    return v19

    .line 900
    :cond_1d7
    move/from16 v13, p3

    move-object/from16 v11, p8

    invoke-virtual {v11, v15, v13}, Lcom/android/server/hips/intercept/Interception;->isProtectedCallee(Ljava/lang/String;I)Z

    move-result v0

    const-string/jumbo v9, "sync"

    const-string/jumbo v10, "job"

    const/4 v8, 0x3

    const-string v7, "com.google.android.gms"

    const-string v6, "android"

    if-eqz v0, :cond_2f6

    .line 901
    move/from16 v5, v22

    .end local v22  # "type":I
    .local v5, "type":I
    if-ne v5, v12, :cond_21c

    .line 902
    if-eqz v16, :cond_217

    if-eqz v14, :cond_217

    if-eqz v15, :cond_217

    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_217

    .line 903
    const/4 v3, 0x3

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/server/hips/intercept/Interception;->getLastInterceptionEvent()Lcom/android/server/hips/intercept/InterceptionEvent;

    move-result-object v10

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, v18

    move v12, v5

    .end local v5  # "type":I
    .restart local v12  # "type":I
    move-object/from16 v5, p4

    move v6, v12

    move/from16 v7, p0

    move/from16 v9, v17

    invoke-static/range {v1 .. v10}, Lcom/android/server/hips/intercept/Interception;->activityCalleeStayTimeStats(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZZLcom/android/server/hips/intercept/InterceptionEvent;)V

    move/from16 v22, v12

    goto/16 :goto_2e2

    .line 902
    .end local v12  # "type":I
    .restart local v5  # "type":I
    :cond_217
    move v12, v5

    .end local v5  # "type":I
    .restart local v12  # "type":I
    move/from16 v22, v12

    goto/16 :goto_2e2

    .line 905
    .end local v12  # "type":I
    .restart local v5  # "type":I
    :cond_21c
    move v12, v5

    .end local v5  # "type":I
    .restart local v12  # "type":I
    if-ne v12, v8, :cond_2b3

    .line 906
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_237

    .line 907
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_237

    .line 908
    invoke-static/range {p1 .. p1}, Lcom/android/server/hips/utils/HipsUtils;->isSystemApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_237

    .line 909
    invoke-static/range {p1 .. p1}, Lcom/android/server/hips/utils/HipsUtils;->isHasSystemSignature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_253

    .line 910
    :cond_237
    invoke-static/range {p2 .. p2}, Lcom/android/server/hips/utils/HipsUtils;->isSystemApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b0

    .line 911
    invoke-static/range {p2 .. p2}, Lcom/android/server/hips/utils/HipsUtils;->isHasSystemSignature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2ad

    .line 912
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2aa

    .line 913
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_253

    move/from16 v22, v12

    goto/16 :goto_2e2

    .line 915
    :cond_253
    if-eqz v14, :cond_2a7

    if-eqz v15, :cond_2a7

    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a7

    if-eqz p5, :cond_2a7

    .line 916
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2a4

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27e

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27a

    goto :goto_27e

    :cond_27a
    move/from16 v22, v12

    goto/16 :goto_2e2

    .line 917
    :cond_27e
    :goto_27e
    new-instance v0, Lcom/android/server/hips/intercept/InterceptionEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 v10, 0x3

    const/16 v21, 0x0

    move-object v1, v0

    move v6, v12

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, v18

    move/from16 v11, p0

    move/from16 v22, v12

    .end local v12  # "type":I
    .restart local v22  # "type":I
    move/from16 v12, v21

    move/from16 v13, v17

    invoke-direct/range {v1 .. v13}, Lcom/android/server/hips/intercept/InterceptionEvent;-><init>(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V

    .line 918
    .restart local v0  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    invoke-static {}, Lcom/android/server/hips/intercept/InterceptionEventStats;->getInstance()Lcom/android/server/hips/intercept/InterceptionEventStats;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/hips/intercept/InterceptionEventStats;->addInterceptEvent(Lcom/android/server/hips/intercept/InterceptionEvent;)V

    .line 919
    .end local v0  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    goto :goto_2e2

    .line 916
    .end local v22  # "type":I
    .restart local v12  # "type":I
    :cond_2a4
    move/from16 v22, v12

    .end local v12  # "type":I
    .restart local v22  # "type":I
    goto :goto_2e2

    .line 915
    .end local v22  # "type":I
    .restart local v12  # "type":I
    :cond_2a7
    move/from16 v22, v12

    .end local v12  # "type":I
    .restart local v22  # "type":I
    goto :goto_2e2

    .line 912
    .end local v22  # "type":I
    .restart local v12  # "type":I
    :cond_2aa
    move/from16 v22, v12

    .end local v12  # "type":I
    .restart local v22  # "type":I
    goto :goto_2e2

    .line 911
    .end local v22  # "type":I
    .restart local v12  # "type":I
    :cond_2ad
    move/from16 v22, v12

    .end local v12  # "type":I
    .restart local v22  # "type":I
    goto :goto_2e2

    .line 910
    .end local v22  # "type":I
    .restart local v12  # "type":I
    :cond_2b0
    move/from16 v22, v12

    .end local v12  # "type":I
    .restart local v22  # "type":I
    goto :goto_2e2

    .line 922
    .end local v22  # "type":I
    .restart local v12  # "type":I
    :cond_2b3
    move/from16 v22, v12

    .end local v12  # "type":I
    .restart local v22  # "type":I
    if-eqz v16, :cond_2e2

    if-eqz v14, :cond_2e2

    if-eqz v15, :cond_2e2

    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e2

    .line 923
    new-instance v0, Lcom/android/server/hips/intercept/InterceptionEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 v10, 0x3

    const/4 v12, 0x0

    move-object v1, v0

    move/from16 v6, v22

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, v18

    move/from16 v11, p0

    move/from16 v13, v17

    invoke-direct/range {v1 .. v13}, Lcom/android/server/hips/intercept/InterceptionEvent;-><init>(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V

    .line 924
    .restart local v0  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    invoke-static {}, Lcom/android/server/hips/intercept/InterceptionEventStats;->getInstance()Lcom/android/server/hips/intercept/InterceptionEventStats;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/hips/intercept/InterceptionEventStats;->addInterceptEvent(Lcom/android/server/hips/intercept/InterceptionEvent;)V

    .line 927
    .end local v0  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    :cond_2e2
    :goto_2e2
    const/4 v1, 0x0

    const/4 v9, 0x3

    move/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, v18

    move-object/from16 v6, p4

    move/from16 v7, v17

    move/from16 v8, v22

    invoke-static/range {v1 .. v9}, Lcom/android/server/hips/intercept/InterceptionReason;->printReason(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 928
    return v19

    .line 931
    :cond_2f6
    const/4 v2, 0x0

    .line 933
    .local v2, "ctsRunning":Z
    :try_start_2f7
    invoke-static {}, Lcom/android/server/hips/utils/HipsUtils;->isCtsRunning()Z

    move-result v0
    :try_end_2fb
    .catch Ljava/lang/Exception; {:try_start_2f7 .. :try_end_2fb} :catch_2fc

    .line 936
    .end local v2  # "ctsRunning":Z
    .local v0, "ctsRunning":Z
    goto :goto_301

    .line 934
    .end local v0  # "ctsRunning":Z
    .restart local v2  # "ctsRunning":Z
    :catch_2fc
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 935
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    move v0, v2

    .line 937
    .end local v2  # "ctsRunning":Z
    .local v0, "ctsRunning":Z
    :goto_301
    if-eqz v0, :cond_317

    .line 938
    const/4 v1, 0x0

    const/4 v9, 0x5

    move/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, v18

    move-object/from16 v6, p4

    move/from16 v7, v17

    move/from16 v8, v22

    invoke-static/range {v1 .. v9}, Lcom/android/server/hips/intercept/InterceptionReason;->printReason(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 939
    return v19

    .line 942
    :cond_317
    sget-boolean v2, Lcom/android/server/hips/intercept/Interception;->mIsCTA:Z

    if-eqz v2, :cond_32f

    .line 943
    const/4 v1, 0x0

    const/4 v9, 0x6

    move/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, v18

    move-object/from16 v6, p4

    move/from16 v7, v17

    move/from16 v8, v22

    invoke-static/range {v1 .. v9}, Lcom/android/server/hips/intercept/InterceptionReason;->printReason(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 944
    return v19

    .line 949
    :cond_32f
    if-eqz p0, :cond_334

    const-string v2, "fg"

    goto :goto_336

    :cond_334
    const-string v2, "bg"

    :goto_336
    move-object/from16 v21, v2

    .line 950
    .local v21, "interaction":Ljava/lang/String;
    const-string v2, ""

    .line 951
    .local v2, "realCallingProcName":Ljava/lang/String;
    const-class v3, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isControllerAMonkey()Z

    move-result v3

    if-eqz v3, :cond_34e

    .line 952
    invoke-static/range {p9 .. p9}, Lcom/android/server/hips/intercept/Interception;->getProcessName(I)Ljava/lang/String;

    move-result-object v2

    move-object v13, v2

    goto :goto_34f

    .line 951
    :cond_34e
    move-object v13, v2

    .line 955
    .end local v2  # "realCallingProcName":Ljava/lang/String;
    .local v13, "realCallingProcName":Ljava/lang/String;
    :goto_34f
    const-string v2, "com.android.commands.monkey"

    if-eqz v13, :cond_371

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_371

    sget-boolean v3, Lcom/android/server/hips/intercept/InterceptionManager;->INTERCEPT_MONKEY:Z

    if-nez v3, :cond_371

    .line 956
    const/4 v1, 0x0

    const/4 v9, 0x7

    move/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, v18

    move-object/from16 v6, p4

    move/from16 v7, v17

    move/from16 v8, v22

    invoke-static/range {v1 .. v9}, Lcom/android/server/hips/intercept/InterceptionReason;->printReason(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 957
    return v19

    .line 960
    :cond_371
    move-object/from16 v11, p6

    if-eqz v11, :cond_3fe

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3fe

    sget v1, Lcom/android/server/hips/intercept/Interception;->mAdbStatus:I

    if-eqz v1, :cond_3fe

    if-eqz p12, :cond_3fe

    .line 961
    move/from16 v10, v22

    .end local v22  # "type":I
    .restart local v10  # "type":I
    if-ne v10, v12, :cond_3b3

    .line 962
    if-eqz v16, :cond_3ae

    if-eqz v14, :cond_3ae

    if-eqz v15, :cond_3ae

    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3ae

    .line 963
    const/16 v3, 0x8

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/server/hips/intercept/Interception;->getLastInterceptionEvent()Lcom/android/server/hips/intercept/InterceptionEvent;

    move-result-object v12

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, v18

    move-object/from16 v5, p4

    move v6, v10

    move/from16 v7, p0

    move/from16 v9, v17

    move/from16 v22, v10

    .end local v10  # "type":I
    .restart local v22  # "type":I
    move-object v10, v12

    invoke-static/range {v1 .. v10}, Lcom/android/server/hips/intercept/Interception;->activityCalleeStayTimeStats(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZZLcom/android/server/hips/intercept/InterceptionEvent;)V

    move-object/from16 v24, v13

    goto :goto_3e9

    .line 962
    .end local v22  # "type":I
    .restart local v10  # "type":I
    :cond_3ae
    move/from16 v22, v10

    .end local v10  # "type":I
    .restart local v22  # "type":I
    move-object/from16 v24, v13

    goto :goto_3e9

    .line 966
    .end local v22  # "type":I
    .restart local v10  # "type":I
    :cond_3b3
    move/from16 v22, v10

    .end local v10  # "type":I
    .restart local v22  # "type":I
    if-eqz v16, :cond_3e7

    if-eqz v14, :cond_3e7

    if-eqz v15, :cond_3e7

    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e7

    .line 967
    new-instance v23, Lcom/android/server/hips/intercept/InterceptionEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/16 v10, 0x8

    const/4 v12, 0x0

    move-object/from16 v1, v23

    move/from16 v6, v22

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, v18

    move/from16 v11, p0

    move-object/from16 v24, v13

    .end local v13  # "realCallingProcName":Ljava/lang/String;
    .local v24, "realCallingProcName":Ljava/lang/String;
    move/from16 v13, v17

    invoke-direct/range {v1 .. v13}, Lcom/android/server/hips/intercept/InterceptionEvent;-><init>(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V

    .line 968
    .local v1, "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    invoke-static {}, Lcom/android/server/hips/intercept/InterceptionEventStats;->getInstance()Lcom/android/server/hips/intercept/InterceptionEventStats;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/hips/intercept/InterceptionEventStats;->addInterceptEvent(Lcom/android/server/hips/intercept/InterceptionEvent;)V

    goto :goto_3e9

    .line 966
    .end local v1  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    .end local v24  # "realCallingProcName":Ljava/lang/String;
    .restart local v13  # "realCallingProcName":Ljava/lang/String;
    :cond_3e7
    move-object/from16 v24, v13

    .line 971
    .end local v13  # "realCallingProcName":Ljava/lang/String;
    .restart local v24  # "realCallingProcName":Ljava/lang/String;
    :goto_3e9
    const/4 v1, 0x0

    const/16 v9, 0x8

    move/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, v18

    move-object/from16 v6, p4

    move/from16 v7, v17

    move/from16 v8, v22

    invoke-static/range {v1 .. v9}, Lcom/android/server/hips/intercept/InterceptionReason;->printReason(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 972
    return v19

    .line 960
    .end local v24  # "realCallingProcName":Ljava/lang/String;
    .restart local v13  # "realCallingProcName":Ljava/lang/String;
    :cond_3fe
    move-object/from16 v24, v13

    .line 977
    .end local v13  # "realCallingProcName":Ljava/lang/String;
    .restart local v24  # "realCallingProcName":Ljava/lang/String;
    const/4 v11, -0x1

    .line 979
    .local v11, "isInterceptByRule":I
    if-eqz v14, :cond_5f9

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5f9

    .line 980
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44d

    .line 981
    const-string/jumbo v1, "system"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44d

    .line 982
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44d

    .line 983
    const-string v1, "com.android.systemui"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44d

    .line 984
    const-string v1, "com.flyme.systemuitools"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44d

    .line 985
    const-string v1, "com.meizu.flyme.launcher"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44d

    .line 986
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44d

    .line 987
    invoke-static/range {p1 .. p1}, Lcom/android/server/hips/utils/HipsUtils;->isSystemApp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_44d

    .line 988
    invoke-static/range {p1 .. p1}, Lcom/android/server/hips/utils/HipsUtils;->isHasSystemSignature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_449

    goto :goto_44d

    :cond_449
    move/from16 v25, v22

    goto/16 :goto_5fb

    .line 989
    :cond_44d
    :goto_44d
    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v13, v6

    move-object/from16 v6, p6

    move-object/from16 v25, v7

    move/from16 v7, p7

    move/from16 v8, v16

    invoke-static/range {v1 .. v8}, Lcom/android/server/hips/intercept/Interception;->isInterceptSystemByRule(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;IZ)I

    move-result v11

    .line 991
    if-ne v11, v12, :cond_576

    .line 992
    move/from16 v8, v22

    .end local v22  # "type":I
    .local v8, "type":I
    if-ne v8, v12, :cond_488

    .line 993
    const/4 v3, 0x4

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/server/hips/intercept/Interception;->getLastInterceptionEvent()Lcom/android/server/hips/intercept/InterceptionEvent;

    move-result-object v10

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, v18

    move-object/from16 v5, p4

    move v6, v8

    move/from16 v7, p0

    move v12, v8

    .end local v8  # "type":I
    .restart local v12  # "type":I
    move v8, v9

    move/from16 v9, v17

    invoke-static/range {v1 .. v10}, Lcom/android/server/hips/intercept/Interception;->activityCalleeStayTimeStats(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZZLcom/android/server/hips/intercept/InterceptionEvent;)V

    move/from16 v27, v11

    move/from16 v25, v12

    goto/16 :goto_562

    .line 994
    .end local v12  # "type":I
    .restart local v8  # "type":I
    :cond_488
    move v12, v8

    .end local v8  # "type":I
    .restart local v12  # "type":I
    const/4 v1, 0x3

    if-ne v12, v1, :cond_532

    .line 995
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a7

    .line 996
    move-object/from16 v1, v25

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a9

    .line 997
    invoke-static/range {p1 .. p1}, Lcom/android/server/hips/utils/HipsUtils;->isSystemApp(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4a9

    .line 998
    invoke-static/range {p1 .. p1}, Lcom/android/server/hips/utils/HipsUtils;->isHasSystemSignature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c7

    goto :goto_4a9

    .line 995
    :cond_4a7
    move-object/from16 v1, v25

    .line 999
    :cond_4a9
    :goto_4a9
    invoke-static/range {p2 .. p2}, Lcom/android/server/hips/utils/HipsUtils;->isSystemApp(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_52d

    .line 1000
    invoke-static/range {p2 .. p2}, Lcom/android/server/hips/utils/HipsUtils;->isHasSystemSignature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_528

    .line 1001
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_523

    .line 1002
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c7

    move/from16 v27, v11

    move/from16 v25, v12

    goto/16 :goto_562

    .line 1004
    :cond_4c7
    if-eqz v15, :cond_51e

    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51e

    if-eqz p5, :cond_51e

    .line 1005
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_519

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4f2

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4ec

    goto :goto_4f2

    :cond_4ec
    move/from16 v27, v11

    move/from16 v25, v12

    goto/16 :goto_562

    .line 1006
    :cond_4f2
    :goto_4f2
    new-instance v22, Lcom/android/server/hips/intercept/InterceptionEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 v10, 0x4

    const/4 v13, 0x0

    move-object/from16 v1, v22

    move v6, v12

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, v18

    move/from16 v27, v11

    .end local v11  # "isInterceptByRule":I
    .local v27, "isInterceptByRule":I
    move/from16 v11, p0

    move/from16 v25, v12

    .end local v12  # "type":I
    .local v25, "type":I
    move v12, v13

    move/from16 v13, v17

    invoke-direct/range {v1 .. v13}, Lcom/android/server/hips/intercept/InterceptionEvent;-><init>(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V

    .line 1007
    .restart local v1  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    invoke-static {}, Lcom/android/server/hips/intercept/InterceptionEventStats;->getInstance()Lcom/android/server/hips/intercept/InterceptionEventStats;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/hips/intercept/InterceptionEventStats;->addInterceptEvent(Lcom/android/server/hips/intercept/InterceptionEvent;)V

    .line 1008
    .end local v1  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    goto :goto_562

    .line 1005
    .end local v25  # "type":I
    .end local v27  # "isInterceptByRule":I
    .restart local v11  # "isInterceptByRule":I
    .restart local v12  # "type":I
    :cond_519
    move/from16 v27, v11

    move/from16 v25, v12

    .end local v11  # "isInterceptByRule":I
    .end local v12  # "type":I
    .restart local v25  # "type":I
    .restart local v27  # "isInterceptByRule":I
    goto :goto_562

    .line 1004
    .end local v25  # "type":I
    .end local v27  # "isInterceptByRule":I
    .restart local v11  # "isInterceptByRule":I
    .restart local v12  # "type":I
    :cond_51e
    move/from16 v27, v11

    move/from16 v25, v12

    .end local v11  # "isInterceptByRule":I
    .end local v12  # "type":I
    .restart local v25  # "type":I
    .restart local v27  # "isInterceptByRule":I
    goto :goto_562

    .line 1001
    .end local v25  # "type":I
    .end local v27  # "isInterceptByRule":I
    .restart local v11  # "isInterceptByRule":I
    .restart local v12  # "type":I
    :cond_523
    move/from16 v27, v11

    move/from16 v25, v12

    .end local v11  # "isInterceptByRule":I
    .end local v12  # "type":I
    .restart local v25  # "type":I
    .restart local v27  # "isInterceptByRule":I
    goto :goto_562

    .line 1000
    .end local v25  # "type":I
    .end local v27  # "isInterceptByRule":I
    .restart local v11  # "isInterceptByRule":I
    .restart local v12  # "type":I
    :cond_528
    move/from16 v27, v11

    move/from16 v25, v12

    .end local v11  # "isInterceptByRule":I
    .end local v12  # "type":I
    .restart local v25  # "type":I
    .restart local v27  # "isInterceptByRule":I
    goto :goto_562

    .line 999
    .end local v25  # "type":I
    .end local v27  # "isInterceptByRule":I
    .restart local v11  # "isInterceptByRule":I
    .restart local v12  # "type":I
    :cond_52d
    move/from16 v27, v11

    move/from16 v25, v12

    .end local v11  # "isInterceptByRule":I
    .end local v12  # "type":I
    .restart local v25  # "type":I
    .restart local v27  # "isInterceptByRule":I
    goto :goto_562

    .line 1010
    .end local v25  # "type":I
    .end local v27  # "isInterceptByRule":I
    .restart local v11  # "isInterceptByRule":I
    .restart local v12  # "type":I
    :cond_532
    move/from16 v27, v11

    move/from16 v25, v12

    .end local v11  # "isInterceptByRule":I
    .end local v12  # "type":I
    .restart local v25  # "type":I
    .restart local v27  # "isInterceptByRule":I
    if-eqz v16, :cond_562

    if-eqz v15, :cond_562

    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_562

    .line 1011
    new-instance v22, Lcom/android/server/hips/intercept/InterceptionEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 v10, 0x4

    const/4 v12, 0x0

    move-object/from16 v1, v22

    move/from16 v6, v25

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, v18

    move/from16 v11, p0

    move/from16 v13, v17

    invoke-direct/range {v1 .. v13}, Lcom/android/server/hips/intercept/InterceptionEvent;-><init>(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V

    .line 1012
    .restart local v1  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    invoke-static {}, Lcom/android/server/hips/intercept/InterceptionEventStats;->getInstance()Lcom/android/server/hips/intercept/InterceptionEventStats;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/hips/intercept/InterceptionEventStats;->addInterceptEvent(Lcom/android/server/hips/intercept/InterceptionEvent;)V

    .line 1015
    .end local v1  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    :cond_562
    :goto_562
    const/4 v1, 0x0

    const/4 v9, 0x4

    move/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, v18

    move-object/from16 v6, p4

    move/from16 v7, v17

    move/from16 v8, v25

    invoke-static/range {v1 .. v9}, Lcom/android/server/hips/intercept/InterceptionReason;->printReason(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 1016
    return v19

    .line 1017
    .end local v25  # "type":I
    .end local v27  # "isInterceptByRule":I
    .restart local v11  # "isInterceptByRule":I
    .restart local v22  # "type":I
    :cond_576
    move/from16 v27, v11

    move/from16 v25, v22

    .end local v11  # "isInterceptByRule":I
    .end local v22  # "type":I
    .restart local v25  # "type":I
    .restart local v27  # "isInterceptByRule":I
    move/from16 v13, v27

    const/4 v1, -0x1

    .end local v27  # "isInterceptByRule":I
    .local v13, "isInterceptByRule":I
    if-ne v13, v1, :cond_5ef

    .line 1018
    const/16 v19, 0x1

    .line 1020
    .local v19, "intercpet":Z
    move/from16 v11, v25

    .end local v25  # "type":I
    .local v11, "type":I
    if-ne v11, v12, :cond_5a1

    .line 1021
    const/16 v3, 0x14

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/server/hips/intercept/Interception;->getLastInterceptionEvent()Lcom/android/server/hips/intercept/InterceptionEvent;

    move-result-object v10

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, v18

    move-object/from16 v5, p4

    move v6, v11

    move/from16 v7, p0

    move/from16 v8, v19

    invoke-static/range {v1 .. v10}, Lcom/android/server/hips/intercept/Interception;->activityCalleeStayTimeStats(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZZLcom/android/server/hips/intercept/InterceptionEvent;)V

    move/from16 v25, v11

    move/from16 v26, v13

    goto :goto_5da

    .line 1023
    :cond_5a1
    if-eqz v16, :cond_5d6

    if-eqz v15, :cond_5d6

    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5d6

    .line 1024
    new-instance v22, Lcom/android/server/hips/intercept/InterceptionEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/16 v10, 0x14

    const/16 v23, 0x0

    move-object/from16 v1, v22

    move v6, v11

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, v18

    move v12, v11

    .end local v11  # "type":I
    .restart local v12  # "type":I
    move/from16 v11, p0

    move/from16 v25, v12

    .end local v12  # "type":I
    .restart local v25  # "type":I
    move/from16 v12, v19

    move/from16 v26, v13

    .end local v13  # "isInterceptByRule":I
    .local v26, "isInterceptByRule":I
    move/from16 v13, v23

    invoke-direct/range {v1 .. v13}, Lcom/android/server/hips/intercept/InterceptionEvent;-><init>(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V

    .line 1025
    .restart local v1  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    invoke-static {}, Lcom/android/server/hips/intercept/InterceptionEventStats;->getInstance()Lcom/android/server/hips/intercept/InterceptionEventStats;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/hips/intercept/InterceptionEventStats;->addInterceptEvent(Lcom/android/server/hips/intercept/InterceptionEvent;)V

    goto :goto_5da

    .line 1023
    .end local v1  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    .end local v25  # "type":I
    .end local v26  # "isInterceptByRule":I
    .restart local v11  # "type":I
    .restart local v13  # "isInterceptByRule":I
    :cond_5d6
    move/from16 v25, v11

    move/from16 v26, v13

    .line 1028
    .end local v11  # "type":I
    .end local v13  # "isInterceptByRule":I
    .restart local v25  # "type":I
    .restart local v26  # "isInterceptByRule":I
    :goto_5da
    const/4 v1, 0x1

    const/16 v9, 0x14

    move/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, v18

    move-object/from16 v6, p4

    move/from16 v7, v17

    move/from16 v8, v25

    invoke-static/range {v1 .. v9}, Lcom/android/server/hips/intercept/InterceptionReason;->printReason(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 1029
    return v19

    .line 1017
    .end local v19  # "intercpet":Z
    .end local v26  # "isInterceptByRule":I
    .restart local v13  # "isInterceptByRule":I
    :cond_5ef
    move/from16 v26, v13

    .end local v13  # "isInterceptByRule":I
    .restart local v26  # "isInterceptByRule":I
    move/from16 v28, v26

    move/from16 v26, v0

    move/from16 v0, v28

    goto/16 :goto_710

    .line 979
    .end local v25  # "type":I
    .end local v26  # "isInterceptByRule":I
    .local v11, "isInterceptByRule":I
    .restart local v22  # "type":I
    :cond_5f9
    move/from16 v25, v22

    .line 1032
    .end local v22  # "type":I
    .restart local v25  # "type":I
    :goto_5fb
    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v1 .. v7}, Lcom/android/server/hips/intercept/Interception;->isInterceptByRule(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v13

    .line 1035
    .end local v11  # "isInterceptByRule":I
    .restart local v13  # "isInterceptByRule":I
    if-ne v13, v12, :cond_690

    .line 1036
    move/from16 v11, v25

    .end local v25  # "type":I
    .local v11, "type":I
    if-ne v11, v12, :cond_642

    .line 1037
    if-eqz v16, :cond_63c

    if-eqz v14, :cond_63c

    if-eqz v15, :cond_63c

    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_63c

    .line 1038
    const/16 v3, 0xa

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/server/hips/intercept/Interception;->getLastInterceptionEvent()Lcom/android/server/hips/intercept/InterceptionEvent;

    move-result-object v10

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, v18

    move-object/from16 v5, p4

    move v6, v11

    move/from16 v7, p0

    move/from16 v9, v17

    invoke-static/range {v1 .. v10}, Lcom/android/server/hips/intercept/Interception;->activityCalleeStayTimeStats(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZZLcom/android/server/hips/intercept/InterceptionEvent;)V

    move/from16 v26, v0

    move/from16 v25, v11

    move v0, v13

    goto :goto_67b

    .line 1037
    :cond_63c
    move/from16 v26, v0

    move/from16 v25, v11

    move v0, v13

    goto :goto_67b

    .line 1041
    :cond_642
    if-eqz v16, :cond_676

    if-eqz v14, :cond_676

    if-eqz v15, :cond_676

    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_676

    .line 1042
    new-instance v22, Lcom/android/server/hips/intercept/InterceptionEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/16 v10, 0xa

    const/4 v12, 0x0

    move-object/from16 v1, v22

    move v6, v11

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, v18

    move/from16 v25, v11

    .end local v11  # "type":I
    .restart local v25  # "type":I
    move/from16 v11, p0

    move/from16 v26, v0

    move v0, v13

    .end local v13  # "isInterceptByRule":I
    .local v0, "isInterceptByRule":I
    .local v26, "ctsRunning":Z
    move/from16 v13, v17

    invoke-direct/range {v1 .. v13}, Lcom/android/server/hips/intercept/InterceptionEvent;-><init>(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V

    .line 1043
    .restart local v1  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    invoke-static {}, Lcom/android/server/hips/intercept/InterceptionEventStats;->getInstance()Lcom/android/server/hips/intercept/InterceptionEventStats;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/hips/intercept/InterceptionEventStats;->addInterceptEvent(Lcom/android/server/hips/intercept/InterceptionEvent;)V

    goto :goto_67b

    .line 1041
    .end local v1  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    .end local v25  # "type":I
    .end local v26  # "ctsRunning":Z
    .local v0, "ctsRunning":Z
    .restart local v11  # "type":I
    .restart local v13  # "isInterceptByRule":I
    :cond_676
    move/from16 v26, v0

    move/from16 v25, v11

    move v0, v13

    .line 1046
    .end local v11  # "type":I
    .end local v13  # "isInterceptByRule":I
    .local v0, "isInterceptByRule":I
    .restart local v25  # "type":I
    .restart local v26  # "ctsRunning":Z
    :goto_67b
    const/4 v1, 0x0

    const/16 v9, 0xa

    move/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, v18

    move-object/from16 v6, p4

    move/from16 v7, v17

    move/from16 v8, v25

    invoke-static/range {v1 .. v9}, Lcom/android/server/hips/intercept/InterceptionReason;->printReason(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 1047
    return v19

    .line 1048
    .end local v26  # "ctsRunning":Z
    .local v0, "ctsRunning":Z
    .restart local v13  # "isInterceptByRule":I
    :cond_690
    move/from16 v26, v0

    move v0, v13

    .end local v13  # "isInterceptByRule":I
    .local v0, "isInterceptByRule":I
    .restart local v26  # "ctsRunning":Z
    const/4 v1, -0x1

    if-ne v0, v1, :cond_710

    .line 1049
    const/16 v19, 0x1

    .line 1051
    .restart local v19  # "intercpet":Z
    move/from16 v13, v25

    .end local v25  # "type":I
    .local v13, "type":I
    if-ne v13, v12, :cond_6c5

    .line 1052
    if-eqz v16, :cond_6c2

    if-eqz v14, :cond_6c2

    if-eqz v15, :cond_6c2

    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6c2

    .line 1053
    const/16 v3, 0x16

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/server/hips/intercept/Interception;->getLastInterceptionEvent()Lcom/android/server/hips/intercept/InterceptionEvent;

    move-result-object v10

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, v18

    move-object/from16 v5, p4

    move v6, v13

    move/from16 v7, p0

    move/from16 v8, v19

    invoke-static/range {v1 .. v10}, Lcom/android/server/hips/intercept/Interception;->activityCalleeStayTimeStats(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZZLcom/android/server/hips/intercept/InterceptionEvent;)V

    move/from16 v25, v13

    goto :goto_6fb

    .line 1052
    :cond_6c2
    move/from16 v25, v13

    goto :goto_6fb

    .line 1056
    :cond_6c5
    if-eqz v16, :cond_6f9

    if-eqz v14, :cond_6f9

    if-eqz v15, :cond_6f9

    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6f9

    .line 1057
    new-instance v22, Lcom/android/server/hips/intercept/InterceptionEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/16 v10, 0x16

    const/16 v23, 0x0

    move-object/from16 v1, v22

    move v6, v13

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, v18

    move/from16 v11, p0

    move/from16 v12, v19

    move/from16 v25, v13

    .end local v13  # "type":I
    .restart local v25  # "type":I
    move/from16 v13, v23

    invoke-direct/range {v1 .. v13}, Lcom/android/server/hips/intercept/InterceptionEvent;-><init>(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V

    .line 1058
    .restart local v1  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    invoke-static {}, Lcom/android/server/hips/intercept/InterceptionEventStats;->getInstance()Lcom/android/server/hips/intercept/InterceptionEventStats;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/hips/intercept/InterceptionEventStats;->addInterceptEvent(Lcom/android/server/hips/intercept/InterceptionEvent;)V

    goto :goto_6fb

    .line 1056
    .end local v1  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    .end local v25  # "type":I
    .restart local v13  # "type":I
    :cond_6f9
    move/from16 v25, v13

    .line 1061
    .end local v13  # "type":I
    .restart local v25  # "type":I
    :goto_6fb
    const/4 v1, 0x1

    const/16 v9, 0x16

    move/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, v18

    move-object/from16 v6, p4

    move/from16 v7, v17

    move/from16 v8, v25

    invoke-static/range {v1 .. v9}, Lcom/android/server/hips/intercept/InterceptionReason;->printReason(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 1062
    return v19

    .line 1067
    .end local v19  # "intercpet":Z
    :cond_710
    :goto_710
    const/4 v9, 0x0

    move-object/from16 v1, p8

    move/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p4

    move/from16 v8, v25

    move/from16 v10, v16

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/hips/intercept/Interception;->isInterceptAsUsual(ZLjava/lang/String;Ljava/lang/String;ILandroid/content/Intent;Ljava/lang/String;IZZ)Z

    move-result v1

    .line 1069
    .local v1, "isInterceptAsUsual":Z
    return v1
.end method

.method private static isInterceptByActivityLocalRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 24
    .param p0, "runType"  # Ljava/lang/String;
    .param p1, "callerPkg2"  # Ljava/lang/String;
    .param p2, "calleePkg"  # Ljava/lang/String;
    .param p3, "processName"  # Ljava/lang/String;
    .param p4, "calleeClass"  # Ljava/lang/String;
    .param p5, "action"  # Ljava/lang/String;
    .param p6, "data"  # Ljava/lang/String;
    .param p7, "extras"  # Ljava/lang/String;
    .param p8, "isFgAction"  # Z

    .line 2869
    const/4 v1, 0x0

    .line 2870
    .local v1, "result":I
    const/4 v2, -0x1

    .line 2871
    .local v2, "index":I
    sget-object v3, Lcom/android/server/hips/intercept/Interception;->mLocalActivityInterceptionRules:Ljava/util/List;

    monitor-enter v3

    .line 2872
    :try_start_5
    sget-object v0, Lcom/android/server/hips/intercept/Interception;->mLocalActivityInterceptionRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 2873
    .local v4, "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    add-int/lit8 v2, v2, 0x1

    .line 2874
    move-object v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move/from16 v13, p8

    move-object v14, v4

    invoke-static/range {v5 .. v14}, Lcom/android/server/hips/intercept/Interception;->isRuleMatchExV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/server/hips/intercept/Interception$RulesConvertor;)Z

    move-result v5

    if-nez v5, :cond_32

    .line 2876
    goto :goto_b

    .line 2878
    :cond_32
    iget-boolean v0, v4, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mIntercept:Z

    if-eqz v0, :cond_4c

    .line 2879
    const/4 v1, -0x1

    .line 2880
    iget-object v0, v4, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCallerPkg:Ljava/lang/String;

    if-nez v0, :cond_4e

    iget-object v0, v4, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCalleePkg:Ljava/lang/String;

    if-nez v0, :cond_4e

    if-eqz p1, :cond_4e

    if-eqz p2, :cond_4e

    .line 2883
    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 2884
    const/4 v0, 0x1

    move v1, v0

    .end local v1  # "result":I
    .local v0, "result":I
    goto :goto_4e

    .line 2887
    .end local v0  # "result":I
    .restart local v1  # "result":I
    :cond_4c
    const/4 v0, 0x1

    .line 2890
    .end local v1  # "result":I
    .restart local v0  # "result":I
    move v1, v0

    .line 2892
    .end local v0  # "result":I
    .end local v4  # "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .restart local v1  # "result":I
    :cond_4e
    :goto_4e
    monitor-exit v3

    .line 2894
    return v1

    .line 2892
    :catchall_50
    move-exception v0

    monitor-exit v3
    :try_end_52
    .catchall {:try_start_5 .. :try_end_52} :catchall_50

    throw v0
.end method

.method private static isInterceptByBroadcastLocalRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 24
    .param p0, "runType"  # Ljava/lang/String;
    .param p1, "callerPkg2"  # Ljava/lang/String;
    .param p2, "calleePkg"  # Ljava/lang/String;
    .param p3, "processName"  # Ljava/lang/String;
    .param p4, "calleeClass"  # Ljava/lang/String;
    .param p5, "action"  # Ljava/lang/String;
    .param p6, "data"  # Ljava/lang/String;
    .param p7, "extras"  # Ljava/lang/String;
    .param p8, "isFgAction"  # Z

    .line 2933
    const/4 v1, 0x0

    .line 2934
    .local v1, "result":I
    const/4 v2, -0x1

    .line 2935
    .local v2, "index":I
    sget-object v3, Lcom/android/server/hips/intercept/Interception;->mLocalBroadcastInterceptionRules:Ljava/util/List;

    monitor-enter v3

    .line 2936
    :try_start_5
    sget-object v0, Lcom/android/server/hips/intercept/Interception;->mLocalBroadcastInterceptionRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 2937
    .local v4, "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    add-int/lit8 v2, v2, 0x1

    .line 2938
    move-object v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move/from16 v13, p8

    move-object v14, v4

    invoke-static/range {v5 .. v14}, Lcom/android/server/hips/intercept/Interception;->isRuleMatchExV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/server/hips/intercept/Interception$RulesConvertor;)Z

    move-result v5

    if-nez v5, :cond_32

    .line 2940
    goto :goto_b

    .line 2942
    :cond_32
    iget-boolean v0, v4, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mIntercept:Z

    if-eqz v0, :cond_39

    .line 2943
    const/4 v0, -0x1

    move v1, v0

    .end local v1  # "result":I
    .local v0, "result":I
    goto :goto_3b

    .line 2945
    .end local v0  # "result":I
    .restart local v1  # "result":I
    :cond_39
    const/4 v0, 0x1

    .line 2947
    .end local v1  # "result":I
    .restart local v0  # "result":I
    move v1, v0

    .line 2949
    .end local v0  # "result":I
    .end local v4  # "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .restart local v1  # "result":I
    :cond_3b
    :goto_3b
    monitor-exit v3

    .line 2951
    return v1

    .line 2949
    :catchall_3d
    move-exception v0

    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_5 .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method private static isInterceptByLocalRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 24
    .param p0, "runType"  # Ljava/lang/String;
    .param p1, "callerPkg2"  # Ljava/lang/String;
    .param p2, "calleePkg"  # Ljava/lang/String;
    .param p3, "processName"  # Ljava/lang/String;
    .param p4, "calleeClass"  # Ljava/lang/String;
    .param p5, "action"  # Ljava/lang/String;
    .param p6, "data"  # Ljava/lang/String;
    .param p7, "extras"  # Ljava/lang/String;
    .param p8, "isFgAction"  # Z

    .line 1283
    const/4 v1, 0x0

    .line 1284
    .local v1, "result":I
    const/4 v2, -0x1

    .line 1285
    .local v2, "index":I
    sget-object v3, Lcom/android/server/hips/intercept/Interception;->mLocalInterceptionRules:Ljava/util/List;

    monitor-enter v3

    .line 1286
    :try_start_5
    sget-object v0, Lcom/android/server/hips/intercept/Interception;->mLocalInterceptionRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 1287
    .local v4, "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    add-int/lit8 v2, v2, 0x1

    .line 1288
    move-object v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move/from16 v13, p8

    move-object v14, v4

    invoke-static/range {v5 .. v14}, Lcom/android/server/hips/intercept/Interception;->isRuleMatchExV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/server/hips/intercept/Interception$RulesConvertor;)Z

    move-result v5

    if-nez v5, :cond_32

    .line 1290
    goto :goto_b

    .line 1291
    :cond_32
    iget-boolean v0, v4, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mIntercept:Z

    if-eqz v0, :cond_4c

    .line 1292
    const/4 v1, -0x1

    .line 1293
    iget-object v0, v4, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCallerPkg:Ljava/lang/String;

    if-nez v0, :cond_4e

    iget-object v0, v4, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCalleePkg:Ljava/lang/String;

    if-nez v0, :cond_4e

    if-eqz p1, :cond_4e

    if-eqz p2, :cond_4e

    .line 1296
    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 1297
    const/4 v0, 0x1

    move v1, v0

    .end local v1  # "result":I
    .local v0, "result":I
    goto :goto_4e

    .line 1300
    .end local v0  # "result":I
    .restart local v1  # "result":I
    :cond_4c
    const/4 v0, 0x1

    .line 1302
    .end local v1  # "result":I
    .restart local v0  # "result":I
    move v1, v0

    .line 1304
    .end local v0  # "result":I
    .end local v4  # "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .restart local v1  # "result":I
    :cond_4e
    :goto_4e
    monitor-exit v3

    .line 1306
    return v1

    .line 1304
    :catchall_50
    move-exception v0

    monitor-exit v3
    :try_end_52
    .catchall {:try_start_5 .. :try_end_52} :catchall_50

    throw v0
.end method

.method private static isInterceptByProviderLocalRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 24
    .param p0, "runType"  # Ljava/lang/String;
    .param p1, "callerPkg2"  # Ljava/lang/String;
    .param p2, "calleePkg"  # Ljava/lang/String;
    .param p3, "processName"  # Ljava/lang/String;
    .param p4, "calleeClass"  # Ljava/lang/String;
    .param p5, "action"  # Ljava/lang/String;
    .param p6, "data"  # Ljava/lang/String;
    .param p7, "extras"  # Ljava/lang/String;
    .param p8, "isFgAction"  # Z

    .line 2958
    const/4 v1, 0x0

    .line 2959
    .local v1, "result":I
    const/4 v2, -0x1

    .line 2960
    .local v2, "index":I
    sget-object v3, Lcom/android/server/hips/intercept/Interception;->mLocalProviderInterceptionRules:Ljava/util/List;

    monitor-enter v3

    .line 2961
    :try_start_5
    sget-object v0, Lcom/android/server/hips/intercept/Interception;->mLocalProviderInterceptionRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 2962
    .local v4, "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    add-int/lit8 v2, v2, 0x1

    .line 2963
    move-object v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move/from16 v13, p8

    move-object v14, v4

    invoke-static/range {v5 .. v14}, Lcom/android/server/hips/intercept/Interception;->isRuleMatchExV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/server/hips/intercept/Interception$RulesConvertor;)Z

    move-result v5

    if-nez v5, :cond_32

    .line 2965
    goto :goto_b

    .line 2967
    :cond_32
    iget-boolean v0, v4, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mIntercept:Z

    if-eqz v0, :cond_4c

    .line 2968
    const/4 v1, -0x1

    .line 2969
    iget-object v0, v4, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCallerPkg:Ljava/lang/String;

    if-nez v0, :cond_4e

    iget-object v0, v4, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCalleePkg:Ljava/lang/String;

    if-nez v0, :cond_4e

    if-eqz p1, :cond_4e

    if-eqz p2, :cond_4e

    .line 2972
    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 2973
    const/4 v0, 0x1

    move v1, v0

    .end local v1  # "result":I
    .local v0, "result":I
    goto :goto_4e

    .line 2976
    .end local v0  # "result":I
    .restart local v1  # "result":I
    :cond_4c
    const/4 v0, 0x1

    .line 2979
    .end local v1  # "result":I
    .restart local v0  # "result":I
    move v1, v0

    .line 2981
    .end local v0  # "result":I
    .end local v4  # "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .restart local v1  # "result":I
    :cond_4e
    :goto_4e
    monitor-exit v3

    .line 2983
    return v1

    .line 2981
    :catchall_50
    move-exception v0

    monitor-exit v3
    :try_end_52
    .catchall {:try_start_5 .. :try_end_52} :catchall_50

    throw v0
.end method

.method private static isInterceptByRule(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;I)I
    .registers 32
    .param p0, "isFgAction"  # Z
    .param p1, "callerPkg"  # Ljava/lang/String;
    .param p2, "calleePkg"  # Ljava/lang/String;
    .param p3, "processName"  # Ljava/lang/String;
    .param p4, "intent"  # Landroid/content/Intent;
    .param p5, "runType"  # Ljava/lang/String;
    .param p6, "realCallingPid"  # I

    .line 1144
    move-object/from16 v9, p5

    const/4 v0, 0x0

    .line 1145
    .local v0, "callerPkg2":Ljava/lang/String;
    if-eqz p1, :cond_f

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_f

    .line 1146
    move-object/from16 v0, p1

    move-object v10, v0

    goto :goto_10

    .line 1149
    :cond_f
    move-object v10, v0

    .end local v0  # "callerPkg2":Ljava/lang/String;
    .local v10, "callerPkg2":Ljava/lang/String;
    :goto_10
    const/4 v0, 0x0

    .line 1150
    .local v0, "calleeClass":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1151
    .local v1, "action":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1152
    .local v2, "data":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1154
    .local v3, "extras":Ljava/lang/String;
    if-eqz p4, :cond_55

    .line 1155
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_2d

    .line 1156
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1157
    .end local p2  # "calleePkg":Ljava/lang/String;
    .local v4, "calleePkg":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2f

    .line 1155
    .end local v4  # "calleePkg":Ljava/lang/String;
    .restart local p2  # "calleePkg":Ljava/lang/String;
    :cond_2d
    move-object/from16 v4, p2

    .line 1160
    .end local p2  # "calleePkg":Ljava/lang/String;
    .restart local v4  # "calleePkg":Ljava/lang/String;
    :goto_2f
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_3d

    .line 1161
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1163
    :cond_3d
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_4b

    .line 1164
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1167
    :cond_4b
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    move-object v12, v0

    move-object v13, v1

    move-object v14, v2

    move-object v15, v3

    move-object v11, v4

    goto :goto_5b

    .line 1154
    .end local v4  # "calleePkg":Ljava/lang/String;
    .restart local p2  # "calleePkg":Ljava/lang/String;
    :cond_55
    move-object/from16 v11, p2

    move-object v12, v0

    move-object v13, v1

    move-object v14, v2

    move-object v15, v3

    .line 1170
    .end local v0  # "calleeClass":Ljava/lang/String;
    .end local v1  # "action":Ljava/lang/String;
    .end local v2  # "data":Ljava/lang/String;
    .end local v3  # "extras":Ljava/lang/String;
    .end local p2  # "calleePkg":Ljava/lang/String;
    .local v11, "calleePkg":Ljava/lang/String;
    .local v12, "calleeClass":Ljava/lang/String;
    .local v13, "action":Ljava/lang/String;
    .local v14, "data":Ljava/lang/String;
    .local v15, "extras":Ljava/lang/String;
    :goto_5b
    const/16 v16, 0x0

    .line 1171
    .local v16, "result":I
    const/16 v17, 0x0

    .line 1172
    .local v17, "isMatch":Z
    const/16 v18, 0x0

    .line 1174
    .local v18, "interception":Z
    const/16 v19, 0x0

    .line 1175
    .local v19, "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    const-string v8, "activity"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v7, "provider"

    const-string v6, "broadcast"

    const-string/jumbo v5, "retrieve_service"

    if-eqz v0, :cond_94

    .line 1176
    move-object/from16 v0, p3

    move-object/from16 v1, p5

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    move-object/from16 p2, v12

    move-object v12, v5

    .end local v12  # "calleeClass":Ljava/lang/String;
    .local p2, "calleeClass":Ljava/lang/String;
    move-object v5, v13

    move-object/from16 v20, v6

    move-object v6, v14

    move-object/from16 v21, v7

    move-object v7, v15

    move-object/from16 v22, v8

    move/from16 v8, p0

    invoke-static/range {v0 .. v8}, Lcom/android/server/hips/intercept/Interception;->interceptByActivityRuleInner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    move-result-object v0

    move-object/from16 v19, v0

    move-object/from16 v23, v20

    move-object/from16 v24, v21

    .end local v19  # "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .local v0, "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    goto/16 :goto_111

    .line 1178
    .end local v0  # "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .end local p2  # "calleeClass":Ljava/lang/String;
    .restart local v12  # "calleeClass":Ljava/lang/String;
    .restart local v19  # "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :cond_94
    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 p2, v12

    move-object v12, v5

    .end local v12  # "calleeClass":Ljava/lang/String;
    .restart local p2  # "calleeClass":Ljava/lang/String;
    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 1179
    move-object/from16 v0, p3

    move-object/from16 v1, p5

    move-object v2, v10

    move-object v3, v11

    move-object/from16 v4, p2

    move-object v5, v13

    move-object v6, v14

    move-object v7, v15

    move/from16 v8, p0

    invoke-static/range {v0 .. v8}, Lcom/android/server/hips/intercept/Interception;->interceptByServiceRuleInner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    move-result-object v0

    move-object/from16 v19, v0

    move-object/from16 v23, v20

    move-object/from16 v24, v21

    .end local v19  # "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .restart local v0  # "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    goto/16 :goto_111

    .line 1181
    .end local v0  # "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .restart local v19  # "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :cond_bc
    move-object/from16 v8, v20

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 1182
    move-object/from16 v0, p3

    move-object/from16 v1, p5

    move-object v2, v10

    move-object v3, v11

    move-object/from16 v4, p2

    move-object v5, v13

    move-object v6, v14

    move-object v7, v15

    move-object/from16 v23, v8

    move/from16 v8, p0

    invoke-static/range {v0 .. v8}, Lcom/android/server/hips/intercept/Interception;->interceptByBroadcastRuleInner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    move-result-object v0

    move-object/from16 v19, v0

    move-object/from16 v24, v21

    .end local v19  # "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .restart local v0  # "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    goto :goto_111

    .line 1184
    .end local v0  # "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .restart local v19  # "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :cond_dc
    move-object/from16 v23, v8

    move-object/from16 v8, v21

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 1185
    move-object/from16 v0, p3

    move-object/from16 v1, p5

    move-object v2, v10

    move-object v3, v11

    move-object/from16 v4, p2

    move-object v5, v13

    move-object v6, v14

    move-object v7, v15

    move-object/from16 v24, v8

    move/from16 v8, p0

    invoke-static/range {v0 .. v8}, Lcom/android/server/hips/intercept/Interception;->interceptByProviderRuleInner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    move-result-object v0

    move-object/from16 v19, v0

    .end local v19  # "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .restart local v0  # "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    goto :goto_111

    .line 1188
    .end local v0  # "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .restart local v19  # "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :cond_fc
    move-object/from16 v24, v8

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    move-object v2, v10

    move-object v3, v11

    move-object/from16 v4, p2

    move-object v5, v13

    move-object v6, v14

    move-object v7, v15

    move/from16 v8, p0

    invoke-static/range {v0 .. v8}, Lcom/android/server/hips/intercept/Interception;->interceptByRuleInner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    move-result-object v0

    move-object/from16 v19, v0

    .line 1192
    :goto_111
    if-nez v19, :cond_127

    .line 1193
    move-object/from16 v0, p3

    move-object/from16 v1, p5

    move-object v2, v10

    move-object v3, v11

    move-object/from16 v4, p2

    move-object v5, v13

    move-object v6, v14

    move-object v7, v15

    move/from16 v8, p0

    invoke-static/range {v0 .. v8}, Lcom/android/server/hips/intercept/Interception;->interceptByRuleInner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    move-result-object v19

    move-object/from16 v8, v19

    goto :goto_129

    .line 1192
    :cond_127
    move-object/from16 v8, v19

    .line 1197
    .end local v19  # "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .local v8, "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :goto_129
    if-eqz v8, :cond_13c

    .line 1198
    iget-boolean v0, v8, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mIntercept:Z

    if-eqz v0, :cond_133

    .line 1199
    const/4 v0, -0x1

    move/from16 v16, v0

    .end local v16  # "result":I
    .local v0, "result":I
    goto :goto_136

    .line 1201
    .end local v0  # "result":I
    .restart local v16  # "result":I
    :cond_133
    const/4 v0, 0x1

    move/from16 v16, v0

    .line 1203
    :goto_136
    const/16 v17, 0x1

    .line 1204
    iget-boolean v0, v8, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mIntercept:Z

    move/from16 v18, v0

    .line 1206
    :cond_13c
    const/16 v19, -0x1

    .line 1207
    .local v19, "localResult":I
    if-nez v17, :cond_1e7

    .line 1208
    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15e

    .line 1209
    move-object/from16 v0, p5

    move-object v1, v10

    move-object v2, v11

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object v5, v13

    move-object v6, v14

    move-object v7, v15

    move-object/from16 v20, v8

    .end local v8  # "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .local v20, "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    move/from16 v8, p0

    invoke-static/range {v0 .. v8}, Lcom/android/server/hips/intercept/Interception;->isInterceptByActivityLocalRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    move v12, v0

    .end local v19  # "localResult":I
    .local v0, "localResult":I
    goto/16 :goto_1c2

    .line 1211
    .end local v0  # "localResult":I
    .end local v20  # "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .restart local v8  # "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .restart local v19  # "localResult":I
    :cond_15e
    move-object/from16 v20, v8

    .end local v8  # "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .restart local v20  # "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17a

    .line 1212
    move-object/from16 v0, p5

    move-object v1, v10

    move-object v2, v11

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object v5, v13

    move-object v6, v14

    move-object v7, v15

    move/from16 v8, p0

    invoke-static/range {v0 .. v8}, Lcom/android/server/hips/intercept/Interception;->isInterceptByServiceLocalRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    move v12, v0

    .end local v19  # "localResult":I
    .restart local v0  # "localResult":I
    goto/16 :goto_1c2

    .line 1214
    .end local v0  # "localResult":I
    .restart local v19  # "localResult":I
    :cond_17a
    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_195

    .line 1215
    move-object/from16 v0, p5

    move-object v1, v10

    move-object v2, v11

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object v5, v13

    move-object v6, v14

    move-object v7, v15

    move/from16 v8, p0

    invoke-static/range {v0 .. v8}, Lcom/android/server/hips/intercept/Interception;->isInterceptByBroadcastLocalRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    move v12, v0

    .end local v19  # "localResult":I
    .restart local v0  # "localResult":I
    goto :goto_1c2

    .line 1217
    .end local v0  # "localResult":I
    .restart local v19  # "localResult":I
    :cond_195
    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b0

    .line 1218
    move-object/from16 v0, p5

    move-object v1, v10

    move-object v2, v11

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object v5, v13

    move-object v6, v14

    move-object v7, v15

    move/from16 v8, p0

    invoke-static/range {v0 .. v8}, Lcom/android/server/hips/intercept/Interception;->isInterceptByProviderLocalRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    move v12, v0

    .end local v19  # "localResult":I
    .restart local v0  # "localResult":I
    goto :goto_1c2

    .line 1221
    .end local v0  # "localResult":I
    .restart local v19  # "localResult":I
    :cond_1b0
    move-object/from16 v0, p5

    move-object v1, v10

    move-object v2, v11

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object v5, v13

    move-object v6, v14

    move-object v7, v15

    move/from16 v8, p0

    invoke-static/range {v0 .. v8}, Lcom/android/server/hips/intercept/Interception;->isInterceptByLocalRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    move v12, v0

    .line 1225
    .end local v19  # "localResult":I
    .local v12, "localResult":I
    :goto_1c2
    if-nez v12, :cond_1d6

    .line 1226
    move-object/from16 v0, p5

    move-object v1, v10

    move-object v2, v11

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object v5, v13

    move-object v6, v14

    move-object v7, v15

    move/from16 v8, p0

    invoke-static/range {v0 .. v8}, Lcom/android/server/hips/intercept/Interception;->isInterceptByLocalRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    move v12, v0

    .line 1230
    :cond_1d6
    if-nez v16, :cond_1eb

    if-eqz v12, :cond_1eb

    .line 1231
    const/16 v17, 0x1

    .line 1232
    const/4 v0, -0x1

    if-ne v12, v0, :cond_1e1

    const/4 v0, 0x1

    goto :goto_1e2

    :cond_1e1
    const/4 v0, 0x0

    :goto_1e2
    move/from16 v18, v0

    .line 1233
    move/from16 v16, v12

    goto :goto_1eb

    .line 1207
    .end local v12  # "localResult":I
    .end local v20  # "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .restart local v8  # "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .restart local v19  # "localResult":I
    :cond_1e7
    move-object/from16 v20, v8

    .end local v8  # "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .restart local v20  # "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    move/from16 v12, v19

    .line 1236
    .end local v19  # "localResult":I
    .restart local v12  # "localResult":I
    :cond_1eb
    :goto_1eb
    return v16
.end method

.method private static isInterceptByServiceLocalRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 24
    .param p0, "runType"  # Ljava/lang/String;
    .param p1, "callerPkg2"  # Ljava/lang/String;
    .param p2, "calleePkg"  # Ljava/lang/String;
    .param p3, "processName"  # Ljava/lang/String;
    .param p4, "calleeClass"  # Ljava/lang/String;
    .param p5, "action"  # Ljava/lang/String;
    .param p6, "data"  # Ljava/lang/String;
    .param p7, "extras"  # Ljava/lang/String;
    .param p8, "isFgAction"  # Z

    .line 2901
    const/4 v1, 0x0

    .line 2902
    .local v1, "result":I
    const/4 v2, -0x1

    .line 2903
    .local v2, "index":I
    sget-object v3, Lcom/android/server/hips/intercept/Interception;->mLocalServiceInterceptionRules:Ljava/util/List;

    monitor-enter v3

    .line 2904
    :try_start_5
    sget-object v0, Lcom/android/server/hips/intercept/Interception;->mLocalServiceInterceptionRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 2905
    .local v4, "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    add-int/lit8 v2, v2, 0x1

    .line 2906
    move-object v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move/from16 v13, p8

    move-object v14, v4

    invoke-static/range {v5 .. v14}, Lcom/android/server/hips/intercept/Interception;->isRuleMatchExV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/server/hips/intercept/Interception$RulesConvertor;)Z

    move-result v5

    if-nez v5, :cond_32

    .line 2908
    goto :goto_b

    .line 2910
    :cond_32
    iget-boolean v0, v4, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mIntercept:Z

    if-eqz v0, :cond_4c

    .line 2911
    const/4 v1, -0x1

    .line 2912
    iget-object v0, v4, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCallerPkg:Ljava/lang/String;

    if-nez v0, :cond_4e

    iget-object v0, v4, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCalleePkg:Ljava/lang/String;

    if-nez v0, :cond_4e

    if-eqz p1, :cond_4e

    if-eqz p2, :cond_4e

    .line 2915
    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 2916
    const/4 v0, 0x1

    move v1, v0

    .end local v1  # "result":I
    .local v0, "result":I
    goto :goto_4e

    .line 2919
    .end local v0  # "result":I
    .restart local v1  # "result":I
    :cond_4c
    const/4 v0, 0x1

    .line 2922
    .end local v1  # "result":I
    .restart local v0  # "result":I
    move v1, v0

    .line 2924
    .end local v0  # "result":I
    .end local v4  # "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .restart local v1  # "result":I
    :cond_4e
    :goto_4e
    monitor-exit v3

    .line 2926
    return v1

    .line 2924
    :catchall_50
    move-exception v0

    monitor-exit v3
    :try_end_52
    .catchall {:try_start_5 .. :try_end_52} :catchall_50

    throw v0
.end method

.method private static isInterceptSystemByLocalRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 24
    .param p0, "runType"  # Ljava/lang/String;
    .param p1, "callerPkg2"  # Ljava/lang/String;
    .param p2, "calleePkg"  # Ljava/lang/String;
    .param p3, "processName"  # Ljava/lang/String;
    .param p4, "calleeClass"  # Ljava/lang/String;
    .param p5, "action"  # Ljava/lang/String;
    .param p6, "data"  # Ljava/lang/String;
    .param p7, "extras"  # Ljava/lang/String;
    .param p8, "isFgAction"  # Z

    .line 2595
    const/4 v1, 0x0

    .line 2596
    .local v1, "result":I
    const/4 v2, -0x1

    .line 2597
    .local v2, "index":I
    sget-object v3, Lcom/android/server/hips/intercept/Interception;->mSystemLocalInterceptionRules:Ljava/util/List;

    monitor-enter v3

    .line 2598
    :try_start_5
    sget-object v0, Lcom/android/server/hips/intercept/Interception;->mSystemLocalInterceptionRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 2599
    .local v4, "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    add-int/lit8 v2, v2, 0x1

    .line 2600
    move-object v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move/from16 v13, p8

    move-object v14, v4

    invoke-static/range {v5 .. v14}, Lcom/android/server/hips/intercept/Interception;->isRuleMatchExV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/server/hips/intercept/Interception$RulesConvertor;)Z

    move-result v5

    if-nez v5, :cond_32

    .line 2602
    goto :goto_b

    .line 2604
    :cond_32
    if-eqz p1, :cond_3f

    if-eqz p2, :cond_3f

    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 2605
    const/4 v0, 0x1

    .line 2606
    .end local v1  # "result":I
    .local v0, "result":I
    move v1, v0

    goto :goto_48

    .line 2608
    .end local v0  # "result":I
    .restart local v1  # "result":I
    :cond_3f
    iget-boolean v0, v4, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mIntercept:Z

    if-eqz v0, :cond_46

    .line 2609
    const/4 v0, -0x1

    move v1, v0

    .end local v1  # "result":I
    .restart local v0  # "result":I
    goto :goto_48

    .line 2611
    .end local v0  # "result":I
    .restart local v1  # "result":I
    :cond_46
    const/4 v0, 0x1

    .line 2613
    .end local v1  # "result":I
    .restart local v0  # "result":I
    move v1, v0

    .line 2615
    .end local v0  # "result":I
    .end local v4  # "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .restart local v1  # "result":I
    :cond_48
    :goto_48
    monitor-exit v3

    .line 2617
    return v1

    .line 2615
    :catchall_4a
    move-exception v0

    monitor-exit v3
    :try_end_4c
    .catchall {:try_start_5 .. :try_end_4c} :catchall_4a

    throw v0
.end method

.method private static isInterceptSystemByRule(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;IZ)I
    .registers 32
    .param p0, "isFgAction"  # Z
    .param p1, "callerPkg"  # Ljava/lang/String;
    .param p2, "calleePkg"  # Ljava/lang/String;
    .param p3, "processName"  # Ljava/lang/String;
    .param p4, "intent"  # Landroid/content/Intent;
    .param p5, "runType"  # Ljava/lang/String;
    .param p6, "realCallingPid"  # I
    .param p7, "isAlreadyRunning"  # Z

    .line 2474
    move-object/from16 v0, p4

    const/4 v1, 0x0

    .line 2475
    .local v1, "callerPkg2":Ljava/lang/String;
    if-eqz p1, :cond_d

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_d

    .line 2476
    move-object/from16 v1, p1

    .line 2479
    :cond_d
    const/4 v2, 0x0

    .line 2480
    .local v2, "calleeClass":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2481
    .local v3, "action":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2482
    .local v4, "data":Ljava/lang/String;
    const/4 v5, 0x0

    .line 2484
    .local v5, "extras":Ljava/lang/String;
    if-eqz v0, :cond_52

    .line 2485
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_2a

    .line 2486
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 2487
    .end local p2  # "calleePkg":Ljava/lang/String;
    .local v6, "calleePkg":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    goto :goto_2c

    .line 2485
    .end local v6  # "calleePkg":Ljava/lang/String;
    .restart local p2  # "calleePkg":Ljava/lang/String;
    :cond_2a
    move-object/from16 v6, p2

    .line 2490
    .end local p2  # "calleePkg":Ljava/lang/String;
    .restart local v6  # "calleePkg":Ljava/lang/String;
    :goto_2c
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_3a

    .line 2491
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2493
    :cond_3a
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_48

    .line 2494
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2497
    :cond_48
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    move-object v12, v2

    move-object v13, v3

    move-object v14, v4

    move-object v15, v5

    move-object v11, v6

    goto :goto_58

    .line 2484
    .end local v6  # "calleePkg":Ljava/lang/String;
    .restart local p2  # "calleePkg":Ljava/lang/String;
    :cond_52
    move-object/from16 v11, p2

    move-object v12, v2

    move-object v13, v3

    move-object v14, v4

    move-object v15, v5

    .line 2500
    .end local v2  # "calleeClass":Ljava/lang/String;
    .end local v3  # "action":Ljava/lang/String;
    .end local v4  # "data":Ljava/lang/String;
    .end local v5  # "extras":Ljava/lang/String;
    .end local p2  # "calleePkg":Ljava/lang/String;
    .local v11, "calleePkg":Ljava/lang/String;
    .local v12, "calleeClass":Ljava/lang/String;
    .local v13, "action":Ljava/lang/String;
    .local v14, "data":Ljava/lang/String;
    .local v15, "extras":Ljava/lang/String;
    :goto_58
    const/16 v16, 0x0

    .line 2501
    .local v16, "result":I
    const/16 v17, 0x0

    .line 2502
    .local v17, "isMatch":Z
    const/16 v18, 0x0

    .line 2504
    .local v18, "interception":Z
    const/16 v19, 0x0

    .line 2505
    .local v19, "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object v4, v1

    move-object v5, v11

    move-object v6, v12

    move-object v7, v13

    move-object v8, v14

    move-object v9, v15

    move/from16 v10, p0

    invoke-static/range {v2 .. v10}, Lcom/android/server/hips/intercept/Interception;->interceptSystemByRuleInner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    move-result-object v10

    .line 2507
    .end local v19  # "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .local v10, "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    if-eqz v10, :cond_83

    .line 2508
    iget-boolean v2, v10, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mIntercept:Z

    if-eqz v2, :cond_7a

    .line 2509
    const/4 v2, -0x1

    move/from16 v16, v2

    .end local v16  # "result":I
    .local v2, "result":I
    goto :goto_7d

    .line 2511
    .end local v2  # "result":I
    .restart local v16  # "result":I
    :cond_7a
    const/4 v2, 0x1

    move/from16 v16, v2

    .line 2513
    :goto_7d
    const/16 v17, 0x1

    .line 2514
    iget-boolean v2, v10, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mIntercept:Z

    move/from16 v18, v2

    .line 2517
    :cond_83
    const/16 v19, 0x0

    .line 2518
    .local v19, "localResult":I
    const/16 v20, 0x1

    const/16 v21, 0x0

    if-nez v17, :cond_b5

    .line 2519
    move-object/from16 v2, p5

    move-object v3, v1

    move-object v4, v11

    move-object/from16 v5, p3

    move-object v6, v12

    move-object v7, v13

    move-object v8, v14

    move-object v9, v15

    move-object/from16 v22, v10

    .end local v10  # "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .local v22, "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    move/from16 v10, p0

    invoke-static/range {v2 .. v10}, Lcom/android/server/hips/intercept/Interception;->isInterceptSystemByLocalRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v2

    .line 2522
    .end local v19  # "localResult":I
    .local v2, "localResult":I
    if-nez v16, :cond_b2

    if-eqz v2, :cond_b2

    .line 2523
    const/16 v17, 0x1

    .line 2524
    const/4 v3, -0x1

    if-ne v2, v3, :cond_a9

    move/from16 v3, v20

    goto :goto_ab

    :cond_a9
    move/from16 v3, v21

    :goto_ab
    move/from16 v18, v3

    .line 2525
    move/from16 v16, v2

    move/from16 v19, v2

    goto :goto_b7

    .line 2529
    :cond_b2
    move/from16 v19, v2

    goto :goto_b7

    .line 2518
    .end local v2  # "localResult":I
    .end local v22  # "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .restart local v10  # "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .restart local v19  # "localResult":I
    :cond_b5
    move-object/from16 v22, v10

    .line 2529
    .end local v10  # "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .restart local v22  # "hitRule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :goto_b7
    const-string v2, "broadcast"

    move-object/from16 v10, p5

    invoke-virtual {v10, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d2

    .line 2530
    invoke-static {v11}, Lcom/android/server/hips/utils/HipsUtils;->isSystemApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_cd

    invoke-static {v11}, Lcom/android/server/hips/utils/HipsUtils;->isHasSystemSignature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d2

    :cond_cd
    if-nez v16, :cond_d2

    if-nez v19, :cond_d2

    .line 2532
    return v21

    .line 2535
    :cond_d2
    if-nez v16, :cond_11c

    if-nez v19, :cond_11c

    .line 2536
    invoke-static {v11}, Lcom/android/server/hips/utils/HipsUtils;->isSystemApp(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11c

    .line 2537
    invoke-static {v11}, Lcom/android/server/hips/utils/HipsUtils;->isHasSystemSignature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11c

    .line 2538
    iget-object v2, v0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v2}, Landroid/content/IntentExt;->getMeizuFlags()I

    move-result v2

    const/high16 v3, 0x400000

    and-int/2addr v2, v3

    if-eqz v2, :cond_f0

    move/from16 v2, v20

    goto :goto_f2

    :cond_f0
    move/from16 v2, v21

    :goto_f2
    move/from16 v23, v2

    .line 2540
    .local v23, "isFromJobService":Z
    iget-object v2, v0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v2}, Landroid/content/IntentExt;->getMeizuFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_ff

    goto :goto_101

    :cond_ff
    move/from16 v20, v21

    .line 2542
    .local v20, "isFromSyncService":Z
    :goto_101
    if-nez v23, :cond_105

    if-eqz v20, :cond_11c

    .line 2543
    :cond_105
    if-nez p7, :cond_11c

    .line 2544
    const/4 v2, 0x1

    const/4 v9, 0x2

    const/16 v21, 0x18

    move/from16 v3, p0

    move-object/from16 v4, p1

    move-object v5, v11

    move-object v6, v12

    move-object/from16 v7, p3

    move/from16 v8, p7

    move/from16 v10, v21

    invoke-static/range {v2 .. v10}, Lcom/android/server/hips/intercept/InterceptionReason;->printReason(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 2545
    const/16 v16, -0x1

    .line 2553
    .end local v20  # "isFromSyncService":Z
    .end local v23  # "isFromJobService":Z
    :cond_11c
    if-nez v16, :cond_122

    if-nez v19, :cond_122

    .line 2554
    const/16 v16, 0x1

    .line 2557
    :cond_122
    return v16
.end method

.method private isInterceptionItemsContainsKey(Ljava/lang/String;)Z
    .registers 8
    .param p1, "calleePkg"  # Ljava/lang/String;

    .line 591
    const-string/jumbo v0, "isInterceptionItemsContainsKey, E2:"

    const-string v1, "Interception"

    const/4 v2, 0x0

    .line 593
    .local v2, "ret":Z
    :try_start_6
    sget-object v3, Lcom/android/server/hips/intercept/Interception;->mInterceptionItemsRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 595
    sget-object v3, Lcom/android/server/hips/intercept/Interception;->mInterceptionItems:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_15} :catch_3a
    .catchall {:try_start_6 .. :try_end_15} :catchall_38

    move v2, v3

    .line 600
    :try_start_16
    sget-object v3, Lcom/android/server/hips/intercept/Interception;->mInterceptionItemsRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1f} :catch_20

    .line 603
    :goto_1f
    goto :goto_65

    .line 601
    :catch_20
    move-exception v3

    .line 602
    .local v3, "e2":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_26
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    .end local v3  # "e2":Ljava/lang/Exception;
    goto :goto_65

    .line 599
    :catchall_38
    move-exception v3

    goto :goto_66

    .line 596
    :catch_3a
    move-exception v3

    .line 597
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isInterceptionItemsContainsKey, E:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catchall {:try_start_3b .. :try_end_54} :catchall_38

    .line 600
    .end local v3  # "e":Ljava/lang/Exception;
    :try_start_54
    sget-object v3, Lcom/android/server/hips/intercept/Interception;->mInterceptionItemsRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_5d} :catch_5e

    goto :goto_1f

    .line 601
    :catch_5e
    move-exception v3

    .line 602
    .local v3, "e2":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_26

    .line 605
    .end local v3  # "e2":Ljava/lang/Exception;
    :goto_65
    return v2

    .line 600
    :goto_66
    :try_start_66
    sget-object v4, Lcom/android/server/hips/intercept/Interception;->mInterceptionItemsRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_6f} :catch_70

    .line 603
    goto :goto_87

    .line 601
    :catch_70
    move-exception v4

    .line 602
    .local v4, "e2":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    .end local v4  # "e2":Ljava/lang/Exception;
    :goto_87
    throw v3
.end method

.method private isInterceptionItemsEmpty()Z
    .registers 7

    .line 609
    const-string/jumbo v0, "isInterceptionItemsEmpty, E2:"

    const-string v1, "Interception"

    const/4 v2, 0x0

    .line 611
    .local v2, "ret":Z
    :try_start_6
    sget-object v3, Lcom/android/server/hips/intercept/Interception;->mInterceptionItemsRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 613
    sget-object v3, Lcom/android/server/hips/intercept/Interception;->mInterceptionItems:Ljava/util/Map;

    if-eqz v3, :cond_1e

    sget-object v3, Lcom/android/server/hips/intercept/Interception;->mInterceptionItems:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_19} :catch_44
    .catchall {:try_start_6 .. :try_end_19} :catchall_42

    if-nez v3, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v3, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 v3, 0x1

    :goto_1f
    move v2, v3

    .line 618
    :try_start_20
    sget-object v3, Lcom/android/server/hips/intercept/Interception;->mInterceptionItemsRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_29} :catch_2a

    .line 621
    :goto_29
    goto :goto_6f

    .line 619
    :catch_2a
    move-exception v3

    .line 620
    .local v3, "e2":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_30
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    .end local v3  # "e2":Ljava/lang/Exception;
    goto :goto_6f

    .line 617
    :catchall_42
    move-exception v3

    goto :goto_70

    .line 614
    :catch_44
    move-exception v3

    .line 615
    .local v3, "e":Ljava/lang/Exception;
    :try_start_45
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isInterceptionItemsEmpty, E:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catchall {:try_start_45 .. :try_end_5e} :catchall_42

    .line 618
    .end local v3  # "e":Ljava/lang/Exception;
    :try_start_5e
    sget-object v3, Lcom/android/server/hips/intercept/Interception;->mInterceptionItemsRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_67} :catch_68

    goto :goto_29

    .line 619
    :catch_68
    move-exception v3

    .line 620
    .local v3, "e2":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_30

    .line 623
    .end local v3  # "e2":Ljava/lang/Exception;
    :goto_6f
    return v2

    .line 618
    :goto_70
    :try_start_70
    sget-object v4, Lcom/android/server/hips/intercept/Interception;->mInterceptionItemsRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_79} :catch_7a

    .line 621
    goto :goto_91

    .line 619
    :catch_7a
    move-exception v4

    .line 620
    .local v4, "e2":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    .end local v4  # "e2":Ljava/lang/Exception;
    :goto_91
    throw v3
.end method

.method private static isPkgInRule(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p0, "pkgName"  # Ljava/lang/String;
    .param p1, "allRules"  # Ljava/lang/String;

    .line 780
    if-eqz p1, :cond_3b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calleePkg==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|||"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 781
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callerPkg==="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 782
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    :cond_39
    const/4 v0, 0x1

    goto :goto_3c

    :cond_3b
    const/4 v0, 0x0

    .line 780
    :goto_3c
    return v0
.end method

.method private static isRuleMatch(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 6
    .param p0, "item"  # Ljava/lang/String;
    .param p1, "rule"  # Ljava/lang/String;
    .param p2, "isContain"  # Z

    .line 1375
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 1376
    return v0

    .line 1378
    :cond_4
    const/4 v1, 0x0

    if-nez p0, :cond_8

    .line 1379
    return v1

    .line 1381
    :cond_8
    if-eqz p2, :cond_11

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1382
    return v0

    .line 1385
    :cond_11
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1386
    return v0

    .line 1391
    :cond_18
    return v1
.end method

.method private static isRuleMatchEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/hips/intercept/Interception$RulesConvertor;)Z
    .registers 26
    .param p0, "runType"  # Ljava/lang/String;
    .param p1, "callerPkg2"  # Ljava/lang/String;
    .param p2, "calleePkg"  # Ljava/lang/String;
    .param p3, "processName"  # Ljava/lang/String;
    .param p4, "calleeClass"  # Ljava/lang/String;
    .param p5, "action"  # Ljava/lang/String;
    .param p6, "data"  # Ljava/lang/String;
    .param p7, "extras"  # Ljava/lang/String;
    .param p8, "rule"  # Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 1313
    move-object/from16 v0, p8

    iget-object v1, v0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCalleePkg:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v3, p2

    invoke-static {v3, v1, v2}, Lcom/android/server/hips/intercept/Interception;->isRuleMatch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 1314
    .local v1, "ruleMatch2":Z
    if-nez v1, :cond_e

    .line 1315
    return v2

    .line 1317
    :cond_e
    iget-object v4, v0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCallerPkg:Ljava/lang/String;

    move-object/from16 v5, p1

    invoke-static {v5, v4, v2}, Lcom/android/server/hips/intercept/Interception;->isRuleMatch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    .line 1318
    .local v4, "ruleMatch1":Z
    if-nez v4, :cond_19

    .line 1319
    return v2

    .line 1321
    :cond_19
    iget-object v6, v0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCalleeClass:Ljava/lang/String;

    const/4 v7, 0x1

    move-object/from16 v8, p4

    invoke-static {v8, v6, v7}, Lcom/android/server/hips/intercept/Interception;->isRuleMatch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 1322
    .local v6, "ruleMatch4":Z
    if-nez v6, :cond_25

    .line 1323
    return v2

    .line 1325
    :cond_25
    iget-object v9, v0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mRunType:Ljava/lang/String;

    move-object/from16 v10, p0

    invoke-static {v10, v9, v2}, Lcom/android/server/hips/intercept/Interception;->isRuleMatch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    .line 1326
    .local v9, "ruleMatch0":Z
    if-nez v9, :cond_30

    .line 1327
    return v2

    .line 1329
    :cond_30
    iget-object v11, v0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mProcessName:Ljava/lang/String;

    move-object/from16 v12, p3

    invoke-static {v12, v11, v2}, Lcom/android/server/hips/intercept/Interception;->isRuleMatch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    .line 1330
    .local v11, "ruleMatch3":Z
    if-nez v11, :cond_3b

    .line 1331
    return v2

    .line 1333
    :cond_3b
    iget-object v13, v0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mAction:Ljava/lang/String;

    move-object/from16 v14, p5

    invoke-static {v14, v13, v2}, Lcom/android/server/hips/intercept/Interception;->isRuleMatch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v13

    .line 1334
    .local v13, "ruleMatch5":Z
    if-nez v13, :cond_46

    .line 1335
    return v2

    .line 1337
    :cond_46
    iget-object v15, v0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mData:Ljava/lang/String;

    move-object/from16 v2, p6

    invoke-static {v2, v15, v7}, Lcom/android/server/hips/intercept/Interception;->isRuleMatch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v15

    .line 1338
    .local v15, "ruleMatch6":Z
    if-nez v15, :cond_53

    .line 1339
    const/16 v16, 0x0

    return v16

    .line 1341
    :cond_53
    const/16 v16, 0x0

    iget-object v2, v0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mExtras:Ljava/lang/String;

    move-object/from16 v0, p7

    invoke-static {v0, v2, v7}, Lcom/android/server/hips/intercept/Interception;->isRuleMatch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 1342
    .local v2, "ruleMatch7":Z
    if-nez v2, :cond_60

    .line 1343
    return v16

    .line 1346
    :cond_60
    if-eqz v9, :cond_71

    if-eqz v4, :cond_71

    if-eqz v1, :cond_71

    if-eqz v11, :cond_71

    if-eqz v6, :cond_71

    if-eqz v13, :cond_71

    if-eqz v15, :cond_71

    if-eqz v2, :cond_71

    goto :goto_73

    :cond_71
    move/from16 v7, v16

    :goto_73
    return v7
.end method

.method private static isRuleMatchExV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/server/hips/intercept/Interception$RulesConvertor;)Z
    .registers 19
    .param p0, "runType"  # Ljava/lang/String;
    .param p1, "callerPkg2"  # Ljava/lang/String;
    .param p2, "calleePkg"  # Ljava/lang/String;
    .param p3, "processName"  # Ljava/lang/String;
    .param p4, "calleeClass"  # Ljava/lang/String;
    .param p5, "action"  # Ljava/lang/String;
    .param p6, "data"  # Ljava/lang/String;
    .param p7, "extras"  # Ljava/lang/String;
    .param p8, "isFgAction"  # Z
    .param p9, "rule"  # Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 1353
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p9

    invoke-static/range {v0 .. v8}, Lcom/android/server/hips/intercept/Interception;->isRuleMatchEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/hips/intercept/Interception$RulesConvertor;)Z

    move-result v0

    .line 1355
    .local v0, "isMatchV3":Z
    invoke-static/range {p9 .. p9}, Lcom/android/server/hips/intercept/Interception;->isV4NewlyAdded(Lcom/android/server/hips/intercept/Interception$RulesConvertor;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1356
    sget-boolean v1, Lcom/android/server/hips/intercept/InterceptionManager;->V4_ENABLE:Z

    if-eqz v1, :cond_31

    .line 1357
    const/4 v1, 0x0

    .line 1358
    .local v1, "interation":Ljava/lang/String;
    if-eqz p8, :cond_1f

    .line 1359
    const-string v1, "fg"

    goto :goto_21

    .line 1361
    :cond_1f
    const-string v1, "bg"

    .line 1364
    :goto_21
    move-object/from16 v2, p9

    iget-object v3, v2, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mInteraction:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/android/server/hips/intercept/Interception;->isRuleMatch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 1365
    .local v3, "ruleMatch8":Z
    if-eqz v0, :cond_2f

    if-eqz v3, :cond_2f

    const/4 v4, 0x1

    :cond_2f
    move v0, v4

    .line 1366
    .end local v1  # "interation":Ljava/lang/String;
    .end local v3  # "ruleMatch8":Z
    goto :goto_37

    .line 1367
    :cond_31
    move-object/from16 v2, p9

    const/4 v0, 0x0

    goto :goto_37

    .line 1355
    :cond_35
    move-object/from16 v2, p9

    .line 1370
    :goto_37
    return v0
.end method

.method private static isSupportRuleLength(I)Z
    .registers 2
    .param p0, "length"  # I

    .line 134
    const/16 v0, 0xe

    if-gt v0, p0, :cond_a

    const/16 v0, 0x14

    if-lt v0, p0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static isSupportRuleVersion(Ljava/lang/String;)Z
    .registers 4
    .param p0, "ruleVersion"  # Ljava/lang/String;

    .line 139
    const/4 v0, 0x4

    :try_start_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "version":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_e

    if-eqz v1, :cond_d

    .line 141
    const/4 v1, 0x1

    return v1

    .line 145
    .end local v0  # "version":Ljava/lang/String;
    :cond_d
    goto :goto_16

    .line 143
    :catch_e
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Interception"

    const-string v2, "Invalid version!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_16
    const/4 v0, 0x0

    return v0
.end method

.method private static isV4NewlyAdded(Lcom/android/server/hips/intercept/Interception$RulesConvertor;)Z
    .registers 3
    .param p0, "rule"  # Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 150
    if-eqz p0, :cond_f

    .line 151
    iget-object v0, p0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mInteraction:Ljava/lang/String;

    const-string/jumbo v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 152
    const/4 v0, 0x1

    return v0

    .line 155
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public static loadInterceptionRule(Ljava/util/ArrayList;Z)I
    .registers 51
    .param p1, "fromStorage"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    .line 199
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "Interception"

    if-nez p0, :cond_c

    .line 200
    const-string/jumbo v1, "setInterceptionRule the list is null, return -1."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v0, -0x1

    return v0

    .line 204
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .local v1, "usefulRulesSb":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .local v2, "currentRulesSb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 208
    .local v3, "usefulRulesCount":I
    const/4 v4, 0x0

    .line 209
    .local v4, "currentRulesCount":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v5, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v6, "systemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v7, "activityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v8, "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v9, "broadcastList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v10, "providerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_425

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 221
    .local v12, "rule":Ljava/lang/String;
    if-nez v12, :cond_66

    .line 222
    const-string/jumbo v13, "setInterceptionRule the rule is null, stop to add."

    invoke-static {v0, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    move-object/from16 v42, v1

    move-object/from16 v20, v2

    move/from16 v41, v3

    move/from16 v17, v4

    move-object/from16 v36, v5

    move-object/from16 v43, v6

    move-object/from16 v40, v7

    move-object/from16 v38, v8

    move-object/from16 v39, v9

    move-object/from16 v37, v10

    move-object/from16 v16, v11

    goto/16 :goto_27a

    .line 226
    :cond_66
    const-string v13, "\\|\\|\\|"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 227
    .local v13, "items":[Ljava/lang/String;
    if-nez v13, :cond_9b

    .line 228
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setInterceptionRule the items is null, stop to add. rule: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    move-object/from16 v42, v1

    move-object/from16 v20, v2

    move/from16 v41, v3

    move/from16 v17, v4

    move-object/from16 v36, v5

    move-object/from16 v43, v6

    move-object/from16 v40, v7

    move-object/from16 v38, v8

    move-object/from16 v39, v9

    move-object/from16 v37, v10

    move-object/from16 v16, v11

    goto/16 :goto_27a

    .line 232
    :cond_9b
    array-length v14, v13

    invoke-static {v14}, Lcom/android/server/hips/intercept/Interception;->isSupportRuleLength(I)Z

    move-result v14

    if-nez v14, :cond_d8

    .line 233
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setInterceptionRule the length("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v15, v13

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ") of the items is error, stop to add. rule: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    move-object/from16 v42, v1

    move-object/from16 v20, v2

    move/from16 v41, v3

    move/from16 v17, v4

    move-object/from16 v36, v5

    move-object/from16 v43, v6

    move-object/from16 v40, v7

    move-object/from16 v38, v8

    move-object/from16 v39, v9

    move-object/from16 v37, v10

    move-object/from16 v16, v11

    goto/16 :goto_27a

    .line 238
    :cond_d8
    new-instance v14, Landroid/util/ArrayMap;

    invoke-direct {v14}, Landroid/util/ArrayMap;-><init>()V

    .line 239
    .local v14, "realItem":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_de
    move-object/from16 v16, v11

    array-length v11, v13

    move/from16 v17, v4

    .end local v4  # "currentRulesCount":I
    .local v17, "currentRulesCount":I
    const/16 v18, 0x1

    if-ge v15, v11, :cond_142

    .line 240
    aget-object v11, v13, v15

    if-eqz v11, :cond_129

    aget-object v11, v13, v15

    const-string v4, "\\=\\=\\="

    invoke-virtual {v11, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_129

    aget-object v11, v13, v15

    .line 241
    invoke-virtual {v11, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    array-length v11, v11

    move-object/from16 v20, v2

    const/4 v2, 0x2

    .end local v2  # "currentRulesSb":Ljava/lang/StringBuilder;
    .local v20, "currentRulesSb":Ljava/lang/StringBuilder;
    if-eq v11, v2, :cond_102

    goto :goto_12b

    .line 247
    :cond_102
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 248
    .local v2, "key":Ljava/lang/Integer;
    aget-object v11, v13, v15

    invoke-virtual {v11, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v18

    .line 249
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_11d

    const-string v11, "*"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_11d

    .line 250
    const/4 v11, 0x0

    invoke-virtual {v14, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_120

    .line 252
    :cond_11d
    invoke-virtual {v14, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .end local v2  # "key":Ljava/lang/Integer;
    .end local v4  # "value":Ljava/lang/String;
    :goto_120
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v11, v16

    move/from16 v4, v17

    move-object/from16 v2, v20

    goto :goto_de

    .line 240
    .end local v20  # "currentRulesSb":Ljava/lang/StringBuilder;
    .local v2, "currentRulesSb":Ljava/lang/StringBuilder;
    :cond_129
    move-object/from16 v20, v2

    .line 242
    .end local v2  # "currentRulesSb":Ljava/lang/StringBuilder;
    .restart local v20  # "currentRulesSb":Ljava/lang/StringBuilder;
    :goto_12b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setInterceptionRule get the value for realItem error, stop to add. rule: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/4 v14, 0x0

    .line 244
    goto :goto_144

    .line 239
    .end local v20  # "currentRulesSb":Ljava/lang/StringBuilder;
    .restart local v2  # "currentRulesSb":Ljava/lang/StringBuilder;
    :cond_142
    move-object/from16 v20, v2

    .line 256
    .end local v2  # "currentRulesSb":Ljava/lang/StringBuilder;
    .end local v15  # "i":I
    .restart local v20  # "currentRulesSb":Ljava/lang/StringBuilder;
    :goto_144
    if-nez v14, :cond_16d

    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "realItem is null, stop to add. rule: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    move-object/from16 v42, v1

    move/from16 v41, v3

    move-object/from16 v36, v5

    move-object/from16 v43, v6

    move-object/from16 v40, v7

    move-object/from16 v38, v8

    move-object/from16 v39, v9

    move-object/from16 v37, v10

    goto/16 :goto_27a

    .line 261
    :cond_16d
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 262
    .local v2, "version":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/hips/intercept/Interception;->isSupportRuleVersion(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1a5

    .line 263
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "version is not supported, stop to add. rule: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    move-object/from16 v42, v1

    move/from16 v41, v3

    move-object/from16 v36, v5

    move-object/from16 v43, v6

    move-object/from16 v40, v7

    move-object/from16 v38, v8

    move-object/from16 v39, v9

    move-object/from16 v37, v10

    goto/16 :goto_27a

    .line 266
    :cond_1a5
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 267
    .local v4, "runType":Ljava/lang/String;
    const/4 v11, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v14, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 268
    .local v11, "callerPkg":Ljava/lang/String;
    const/4 v15, 0x3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 269
    .local v15, "calleePkg":Ljava/lang/String;
    const/16 v18, 0x4

    move-object/from16 v19, v13

    .end local v13  # "items":[Ljava/lang/String;
    .local v19, "items":[Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 270
    .local v13, "calleeClass":Ljava/lang/String;
    const/16 v18, 0x5

    move-object/from16 v36, v5

    .end local v5  # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v36, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 271
    .local v5, "processName":Ljava/lang/String;
    const/16 v18, 0x6

    move-object/from16 v37, v10

    .end local v10  # "providerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v37, "providerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v14, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 272
    .local v10, "action":Ljava/lang/String;
    const/16 v18, 0x7

    move-object/from16 v38, v8

    .end local v8  # "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v38, "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v14, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 273
    .local v8, "data":Ljava/lang/String;
    const/16 v18, 0x8

    move-object/from16 v39, v9

    .end local v9  # "broadcastList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v39, "broadcastList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v14, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 274
    .local v9, "extras":Ljava/lang/String;
    const/16 v18, 0x9

    move-object/from16 v40, v7

    .end local v7  # "activityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v40, "activityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v14, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 275
    .local v7, "interception":Ljava/lang/String;
    const/16 v18, 0xa

    move/from16 v41, v3

    .end local v3  # "usefulRulesCount":I
    .local v41, "usefulRulesCount":I
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 276
    .local v3, "interaction":Ljava/lang/String;
    const/16 v18, 0xc

    move-object/from16 v42, v1

    .end local v1  # "usefulRulesSb":Ljava/lang/StringBuilder;
    .local v42, "usefulRulesSb":Ljava/lang/StringBuilder;
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 277
    .local v1, "country":Ljava/lang/String;
    const/16 v18, 0xd

    move-object/from16 v43, v6

    .end local v6  # "systemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v43, "systemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 278
    .local v6, "sn":Ljava/lang/String;
    const/16 v18, 0xe

    move-object/from16 v44, v6

    .end local v6  # "sn":Ljava/lang/String;
    .local v44, "sn":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 281
    .local v6, "flyme":Ljava/lang/String;
    if-nez v11, :cond_292

    if-nez v15, :cond_292

    if-nez v13, :cond_292

    if-nez v5, :cond_292

    if-nez v10, :cond_292

    if-nez v8, :cond_292

    if-nez v9, :cond_292

    if-nez v3, :cond_292

    .line 283
    move-object/from16 v18, v14

    .end local v14  # "realItem":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local v18, "realItem":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v45, v6

    .end local v6  # "flyme":Ljava/lang/String;
    .local v45, "flyme":Ljava/lang/String;
    const-string v6, "all rule is null, stop to add. rule: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    nop

    .line 220
    .end local v11  # "callerPkg":Ljava/lang/String;
    .end local v12  # "rule":Ljava/lang/String;
    .end local v13  # "calleeClass":Ljava/lang/String;
    .end local v15  # "calleePkg":Ljava/lang/String;
    .end local v17  # "currentRulesCount":I
    .end local v18  # "realItem":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v19  # "items":[Ljava/lang/String;
    .end local v20  # "currentRulesSb":Ljava/lang/StringBuilder;
    .end local v36  # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .end local v37  # "providerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .end local v38  # "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .end local v39  # "broadcastList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .end local v40  # "activityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .end local v41  # "usefulRulesCount":I
    .end local v42  # "usefulRulesSb":Ljava/lang/StringBuilder;
    .end local v43  # "systemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .end local v44  # "sn":Ljava/lang/String;
    .end local v45  # "flyme":Ljava/lang/String;
    .local v1, "usefulRulesSb":Ljava/lang/StringBuilder;
    .local v2, "currentRulesSb":Ljava/lang/StringBuilder;
    .local v3, "usefulRulesCount":I
    .local v4, "currentRulesCount":I
    .local v5, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v6, "systemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v7, "activityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v8, "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v9, "broadcastList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v10, "providerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    :goto_27a
    move-object/from16 v11, v16

    move/from16 v4, v17

    move-object/from16 v2, v20

    move-object/from16 v5, v36

    move-object/from16 v10, v37

    move-object/from16 v8, v38

    move-object/from16 v9, v39

    move-object/from16 v7, v40

    move/from16 v3, v41

    move-object/from16 v1, v42

    move-object/from16 v6, v43

    .end local v1  # "usefulRulesSb":Ljava/lang/StringBuilder;
    .end local v2  # "currentRulesSb":Ljava/lang/StringBuilder;
    .end local v3  # "usefulRulesCount":I
    .end local v4  # "currentRulesCount":I
    .end local v5  # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .end local v6  # "systemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .end local v7  # "activityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .end local v8  # "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .end local v9  # "broadcastList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .end local v10  # "providerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .restart local v17  # "currentRulesCount":I
    .restart local v20  # "currentRulesSb":Ljava/lang/StringBuilder;
    .restart local v36  # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .restart local v37  # "providerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .restart local v38  # "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .restart local v39  # "broadcastList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .restart local v40  # "activityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .restart local v41  # "usefulRulesCount":I
    .restart local v42  # "usefulRulesSb":Ljava/lang/StringBuilder;
    .restart local v43  # "systemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    goto/16 :goto_3a

    .line 281
    .local v1, "country":Ljava/lang/String;
    .local v2, "version":Ljava/lang/String;
    .local v3, "interaction":Ljava/lang/String;
    .local v4, "runType":Ljava/lang/String;
    .local v5, "processName":Ljava/lang/String;
    .local v6, "flyme":Ljava/lang/String;
    .local v7, "interception":Ljava/lang/String;
    .local v8, "data":Ljava/lang/String;
    .local v9, "extras":Ljava/lang/String;
    .local v10, "action":Ljava/lang/String;
    .restart local v11  # "callerPkg":Ljava/lang/String;
    .restart local v12  # "rule":Ljava/lang/String;
    .restart local v13  # "calleeClass":Ljava/lang/String;
    .restart local v14  # "realItem":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v15  # "calleePkg":Ljava/lang/String;
    .restart local v19  # "items":[Ljava/lang/String;
    .restart local v44  # "sn":Ljava/lang/String;
    :cond_292
    move-object/from16 v45, v6

    move-object/from16 v18, v14

    .line 287
    .end local v6  # "flyme":Ljava/lang/String;
    .end local v14  # "realItem":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v18  # "realItem":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v45  # "flyme":Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/hips/utils/HipsUtils;->isSystemApp(Ljava/lang/String;)Z

    move-result v6

    const-string v14, " RulesConvertor: "

    if-nez v6, :cond_2ac

    .line 288
    invoke-static {v11}, Lcom/android/server/hips/utils/HipsUtils;->isHasSystemSignature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2a5

    goto :goto_2ac

    :cond_2a5
    move-object/from16 v46, v1

    move-object/from16 v47, v3

    move-object/from16 v1, v43

    goto :goto_2f6

    .line 289
    :cond_2ac
    :goto_2ac
    new-instance v6, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    move-object/from16 v21, v6

    move-object/from16 v22, v2

    move-object/from16 v23, v4

    move-object/from16 v24, v11

    move-object/from16 v25, v15

    move-object/from16 v26, v13

    move-object/from16 v27, v5

    move-object/from16 v28, v10

    move-object/from16 v29, v8

    move-object/from16 v30, v9

    move-object/from16 v31, v7

    move-object/from16 v32, v3

    move-object/from16 v33, v1

    move-object/from16 v34, v44

    move-object/from16 v35, v45

    invoke-direct/range {v21 .. v35}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .local v6, "systemConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    move-object/from16 v46, v1

    .end local v1  # "country":Ljava/lang/String;
    .local v46, "country":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v47, v3

    .end local v3  # "interaction":Ljava/lang/String;
    .local v47, "interaction":Ljava/lang/String;
    const-string v3, "add system rule: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    move-object/from16 v1, v43

    .end local v43  # "systemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v1, "systemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    .end local v6  # "systemConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :goto_2f6
    move-object/from16 v3, v42

    .end local v42  # "usefulRulesSb":Ljava/lang/StringBuilder;
    .local v3, "usefulRulesSb":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "###"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    add-int/lit8 v41, v41, 0x1

    .line 299
    const/16 v21, 0x0

    .line 300
    .local v21, "isCallerPkgInstalled":Z
    const/16 v22, 0x0

    .line 302
    .local v22, "isCalleePkgInstalled":Z
    if-eqz v11, :cond_30f

    .line 303
    invoke-static {v11}, Lcom/android/server/hips/utils/HipsUtils;->isPkgInstalled(Ljava/lang/String;)Z

    move-result v21

    move/from16 v42, v21

    goto :goto_311

    .line 302
    :cond_30f
    move/from16 v42, v21

    .line 306
    .end local v21  # "isCallerPkgInstalled":Z
    .local v42, "isCallerPkgInstalled":Z
    :goto_311
    if-eqz v15, :cond_31a

    .line 307
    invoke-static {v15}, Lcom/android/server/hips/utils/HipsUtils;->isPkgInstalled(Ljava/lang/String;)Z

    move-result v22

    move/from16 v43, v22

    goto :goto_31c

    .line 306
    :cond_31a
    move/from16 v43, v22

    .line 310
    .end local v22  # "isCalleePkgInstalled":Z
    .local v43, "isCalleePkgInstalled":Z
    :goto_31c
    if-nez v11, :cond_320

    if-eqz v15, :cond_33a

    .line 311
    :cond_320
    if-nez v42, :cond_33a

    if-nez v43, :cond_33a

    .line 312
    move-object v6, v1

    move-object v1, v3

    move-object/from16 v11, v16

    move/from16 v4, v17

    move-object/from16 v2, v20

    move-object/from16 v5, v36

    move-object/from16 v10, v37

    move-object/from16 v8, v38

    move-object/from16 v9, v39

    move-object/from16 v7, v40

    move/from16 v3, v41

    goto/16 :goto_3a

    .line 316
    :cond_33a
    new-instance v48, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    move-object/from16 v21, v48

    move-object/from16 v22, v2

    move-object/from16 v23, v4

    move-object/from16 v24, v11

    move-object/from16 v25, v15

    move-object/from16 v26, v13

    move-object/from16 v27, v5

    move-object/from16 v28, v10

    move-object/from16 v29, v8

    move-object/from16 v30, v9

    move-object/from16 v31, v7

    move-object/from16 v32, v47

    move-object/from16 v33, v46

    move-object/from16 v34, v44

    move-object/from16 v35, v45

    invoke-direct/range {v21 .. v35}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .local v21, "convertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    nop

    .end local v2  # "version":Ljava/lang/String;
    .local v22, "version":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v5

    .end local v5  # "processName":Ljava/lang/String;
    .local v23, "processName":Ljava/lang/String;
    const-string v5, "add third rule: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    if-eqz v4, :cond_39f

    const-string v2, "activity"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39f

    .line 323
    move-object/from16 v5, v21

    move-object/from16 v2, v40

    .end local v21  # "convertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .end local v40  # "activityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v2, "activityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v5, "convertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v25, v4

    move-object/from16 v21, v7

    move-object/from16 v24, v8

    move-object/from16 v4, v36

    move-object/from16 v8, v37

    move-object/from16 v7, v38

    move-object/from16 v14, v39

    goto/16 :goto_408

    .line 322
    .end local v2  # "activityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .end local v5  # "convertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .restart local v21  # "convertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .restart local v40  # "activityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    :cond_39f
    move-object/from16 v5, v21

    move-object/from16 v2, v40

    .line 324
    .end local v21  # "convertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .end local v40  # "activityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .restart local v2  # "activityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .restart local v5  # "convertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    if-eqz v4, :cond_3bf

    const-string v14, "broadcast"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3bf

    .line 325
    move-object/from16 v14, v39

    .end local v39  # "broadcastList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v14, "broadcastList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v25, v4

    move-object/from16 v21, v7

    move-object/from16 v24, v8

    move-object/from16 v4, v36

    move-object/from16 v8, v37

    move-object/from16 v7, v38

    goto :goto_408

    .line 324
    .end local v14  # "broadcastList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .restart local v39  # "broadcastList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    :cond_3bf
    move-object/from16 v14, v39

    .line 326
    .end local v39  # "broadcastList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .restart local v14  # "broadcastList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    if-eqz v4, :cond_3df

    move-object/from16 v21, v7

    .end local v7  # "interception":Ljava/lang/String;
    .local v21, "interception":Ljava/lang/String;
    const-string/jumbo v7, "retrieve_service"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3dc

    .line 327
    move-object/from16 v7, v38

    .end local v38  # "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v7, "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v25, v4

    move-object/from16 v24, v8

    move-object/from16 v4, v36

    move-object/from16 v8, v37

    goto :goto_408

    .line 326
    .end local v7  # "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .restart local v38  # "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    :cond_3dc
    move-object/from16 v7, v38

    .end local v38  # "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .restart local v7  # "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    goto :goto_3e3

    .end local v21  # "interception":Ljava/lang/String;
    .local v7, "interception":Ljava/lang/String;
    .restart local v38  # "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    :cond_3df
    move-object/from16 v21, v7

    move-object/from16 v7, v38

    .line 328
    .end local v38  # "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v7, "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .restart local v21  # "interception":Ljava/lang/String;
    :goto_3e3
    if-eqz v4, :cond_3fd

    move-object/from16 v24, v8

    .end local v8  # "data":Ljava/lang/String;
    .local v24, "data":Ljava/lang/String;
    const-string/jumbo v8, "provider"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3fa

    .line 329
    move-object/from16 v8, v37

    .end local v37  # "providerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v8, "providerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v25, v4

    move-object/from16 v4, v36

    goto :goto_408

    .line 328
    .end local v8  # "providerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .restart local v37  # "providerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    :cond_3fa
    move-object/from16 v8, v37

    .end local v37  # "providerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .restart local v8  # "providerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    goto :goto_401

    .end local v24  # "data":Ljava/lang/String;
    .local v8, "data":Ljava/lang/String;
    .restart local v37  # "providerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    :cond_3fd
    move-object/from16 v24, v8

    move-object/from16 v8, v37

    .line 331
    .end local v37  # "providerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v8, "providerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .restart local v24  # "data":Ljava/lang/String;
    :goto_401
    move-object/from16 v25, v4

    move-object/from16 v4, v36

    .end local v36  # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v4, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v25, "runType":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    :goto_408
    move-object/from16 v26, v5

    move-object/from16 v5, v20

    .end local v20  # "currentRulesSb":Ljava/lang/StringBuilder;
    .local v5, "currentRulesSb":Ljava/lang/StringBuilder;
    .local v26, "convertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 335
    nop

    .end local v9  # "extras":Ljava/lang/String;
    .end local v10  # "action":Ljava/lang/String;
    .end local v11  # "callerPkg":Ljava/lang/String;
    .end local v12  # "rule":Ljava/lang/String;
    .end local v13  # "calleeClass":Ljava/lang/String;
    .end local v15  # "calleePkg":Ljava/lang/String;
    .end local v18  # "realItem":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v19  # "items":[Ljava/lang/String;
    .end local v21  # "interception":Ljava/lang/String;
    .end local v22  # "version":Ljava/lang/String;
    .end local v23  # "processName":Ljava/lang/String;
    .end local v24  # "data":Ljava/lang/String;
    .end local v25  # "runType":Ljava/lang/String;
    .end local v26  # "convertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .end local v42  # "isCallerPkgInstalled":Z
    .end local v43  # "isCalleePkgInstalled":Z
    .end local v44  # "sn":Ljava/lang/String;
    .end local v45  # "flyme":Ljava/lang/String;
    .end local v46  # "country":Ljava/lang/String;
    .end local v47  # "interaction":Ljava/lang/String;
    add-int/lit8 v6, v17, 0x1

    .line 336
    .end local v17  # "currentRulesCount":I
    .local v6, "currentRulesCount":I
    move-object v10, v8

    move-object v9, v14

    move-object/from16 v11, v16

    move-object v8, v7

    move-object v7, v2

    move-object v2, v5

    move-object v5, v4

    move v4, v6

    move-object v6, v1

    move-object v1, v3

    move/from16 v3, v41

    goto/16 :goto_3a

    .line 339
    .end local v14  # "broadcastList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .end local v41  # "usefulRulesCount":I
    .local v1, "usefulRulesSb":Ljava/lang/StringBuilder;
    .local v2, "currentRulesSb":Ljava/lang/StringBuilder;
    .local v3, "usefulRulesCount":I
    .local v4, "currentRulesCount":I
    .local v5, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v6, "systemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v7, "activityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v8, "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v9, "broadcastList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v10, "providerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    :cond_425
    move/from16 v41, v3

    move/from16 v17, v4

    move-object v4, v5

    move-object v14, v9

    move-object v3, v1

    move-object v5, v2

    move-object v1, v6

    move-object v2, v7

    move-object v7, v8

    move-object v8, v10

    .end local v6  # "systemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .end local v9  # "broadcastList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .end local v10  # "providerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v1, "systemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v2, "activityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v3, "usefulRulesSb":Ljava/lang/StringBuilder;
    .local v4, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v5, "currentRulesSb":Ljava/lang/StringBuilder;
    .local v7, "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .local v8, "providerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .restart local v14  # "broadcastList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    .restart local v17  # "currentRulesCount":I
    .restart local v41  # "usefulRulesCount":I
    invoke-static {v1}, Lcom/android/server/hips/intercept/Interception;->sortAllInterceptionRules(Ljava/util/List;)V

    .line 340
    invoke-static {v1}, Lcom/android/server/hips/intercept/Interception;->updateInterceptionSystemRulesInner(Ljava/util/ArrayList;)V

    .line 342
    invoke-static {v2}, Lcom/android/server/hips/intercept/Interception;->sortAllInterceptionRules(Ljava/util/List;)V

    .line 343
    invoke-static {v2}, Lcom/android/server/hips/intercept/Interception;->updateInterceptionActivityRulesInner(Ljava/util/ArrayList;)V

    .line 344
    invoke-static {v7}, Lcom/android/server/hips/intercept/Interception;->sortAllInterceptionRules(Ljava/util/List;)V

    .line 345
    invoke-static {v7}, Lcom/android/server/hips/intercept/Interception;->updateInterceptionServiceRulesInner(Ljava/util/ArrayList;)V

    .line 346
    invoke-static {v14}, Lcom/android/server/hips/intercept/Interception;->sortAllInterceptionRules(Ljava/util/List;)V

    .line 347
    invoke-static {v14}, Lcom/android/server/hips/intercept/Interception;->updateInterceptionBroadcastRulesInner(Ljava/util/ArrayList;)V

    .line 348
    invoke-static {v8}, Lcom/android/server/hips/intercept/Interception;->sortAllInterceptionRules(Ljava/util/List;)V

    .line 349
    invoke-static {v8}, Lcom/android/server/hips/intercept/Interception;->updateInterceptionProviderRulesInner(Ljava/util/ArrayList;)V

    .line 352
    invoke-static {v4}, Lcom/android/server/hips/intercept/Interception;->sortAllInterceptionRules(Ljava/util/List;)V

    .line 353
    invoke-static {v4}, Lcom/android/server/hips/intercept/Interception;->updateInterceptionRulesInner(Ljava/util/ArrayList;)V

    .line 355
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setInterceptionRule set list successfully, currentRulesCount: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, v17

    .end local v17  # "currentRulesCount":I
    .local v9, "currentRulesCount":I
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " usefulRulesCount: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, v41

    .end local v41  # "usefulRulesCount":I
    .local v10, "usefulRulesCount":I
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "usefulRules":Ljava/lang/String;
    if-nez p1, :cond_489

    if-eqz v0, :cond_489

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_489

    .line 360
    const-string v6, "/data/system/V4_interception_rules"

    invoke-static {v0, v6}, Lcom/android/server/hips/utils/HipsUtils;->saveInfoToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_489
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 364
    .local v6, "currentRules":Ljava/lang/String;
    if-eqz v6, :cond_49a

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_49a

    .line 365
    const-string v11, "/data/system/current_V4_interception_rules"

    invoke-static {v6, v11}, Lcom/android/server/hips/utils/HipsUtils;->saveInfoToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :cond_49a
    return v10
.end method

.method private static readInterceptionItem()V
    .registers 12

    .line 733
    const-string v0, "/data/system/interception_items"

    invoke-static {v0}, Lcom/android/server/hips/utils/HipsUtils;->readInfoFromFile(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 734
    .local v0, "itemsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_9d

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_9d

    .line 735
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 736
    .local v1, "tempMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_97

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 737
    .local v3, "items":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readInterceptionItem items: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Interception"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    if-eqz v3, :cond_96

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_96

    .line 739
    const-string v4, "\\|\\|\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 740
    .local v4, "itemArray":[Ljava/lang/String;
    if-nez v4, :cond_51

    .line 741
    const-string/jumbo v6, "readInterceptionItem, the itemArray is null, stop to add."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    goto :goto_17

    .line 745
    :cond_51
    array-length v6, v4

    const/4 v7, 0x2

    if-eq v6, v7, :cond_71

    .line 746
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "readInterceptionItem, the length("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") of itemArray is error, stop to add."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    goto :goto_17

    .line 752
    :cond_71
    const/4 v6, 0x0

    aget-object v6, v4, v6

    .line 753
    .local v6, "item1":Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v7, v4, v7

    .line 755
    .local v7, "item2":Ljava/lang/String;
    if-eqz v6, :cond_96

    if-eqz v7, :cond_96

    .line 756
    move-object v8, v6

    .line 757
    .local v8, "key":Ljava/lang/String;
    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 759
    .local v9, "value":Ljava/lang/Integer;
    :try_start_81
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_89} :catch_8e

    .line 763
    .end local v9  # "value":Ljava/lang/Integer;
    .local v5, "value":Ljava/lang/Integer;
    nop

    .line 765
    invoke-interface {v1, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_96

    .line 760
    .end local v5  # "value":Ljava/lang/Integer;
    .restart local v9  # "value":Ljava/lang/Integer;
    :catch_8e
    move-exception v10

    .line 761
    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "readInterceptionItem, unable to convert string to int, stop to add."

    invoke-static {v5, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    goto :goto_17

    .line 768
    .end local v3  # "items":Ljava/lang/String;
    .end local v4  # "itemArray":[Ljava/lang/String;
    .end local v6  # "item1":Ljava/lang/String;
    .end local v7  # "item2":Ljava/lang/String;
    .end local v8  # "key":Ljava/lang/String;
    .end local v9  # "value":Ljava/lang/Integer;
    .end local v10  # "e":Ljava/lang/Exception;
    :cond_96
    :goto_96
    goto :goto_17

    .line 770
    :cond_97
    invoke-static {v1}, Lcom/android/server/hips/intercept/Interception;->updateInterceptionItemsInner(Ljava/util/Map;)V

    .line 773
    invoke-static {v1}, Lcom/android/server/am/AmsInjector;->setIntercept(Ljava/util/Map;)V

    .line 777
    .end local v1  # "tempMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_9d
    return-void
.end method

.method private static removeInterceptionRuleInnerStatic(Lcom/android/server/hips/intercept/Interception$RulesConvertor;)V
    .registers 6
    .param p0, "convertor"  # Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 2393
    const-string/jumbo v0, "removeInterceptionRuleInnerStatic, E2:"

    const-string v1, "Interception"

    :try_start_5
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 2394
    if-nez p0, :cond_37

    .line 2395
    const-string v2, "convertor is null, return!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_15} :catch_7c
    .catchall {:try_start_5 .. :try_end_15} :catchall_7a

    .line 2408
    :try_start_15
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1e} :catch_1f

    .line 2411
    goto :goto_36

    .line 2409
    :catch_1f
    move-exception v2

    .line 2410
    .local v2, "e2":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2396
    .end local v2  # "e2":Ljava/lang/Exception;
    :goto_36
    return-void

    .line 2398
    :cond_37
    :try_start_37
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mInterceptionRules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_58

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 2399
    .local v3, "rulesConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    if-eqz v3, :cond_57

    invoke-virtual {v3, p0}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->equals(Lcom/android/server/hips/intercept/Interception$RulesConvertor;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 2400
    sget-object v4, Lcom/android/server/hips/intercept/Interception;->mInterceptionRules:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_56} :catch_7c
    .catchall {:try_start_37 .. :try_end_56} :catchall_7a

    .line 2401
    goto :goto_3d

    .line 2403
    .end local v3  # "rulesConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :cond_57
    goto :goto_3d

    .line 2408
    :cond_58
    :try_start_58
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_61} :catch_62

    .line 2411
    :goto_61
    goto :goto_a7

    .line 2409
    :catch_62
    move-exception v2

    .line 2410
    .restart local v2  # "e2":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_68
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2412
    .end local v2  # "e2":Ljava/lang/Exception;
    goto :goto_a7

    .line 2407
    :catchall_7a
    move-exception v2

    goto :goto_a8

    .line 2404
    :catch_7c
    move-exception v2

    .line 2405
    .local v2, "e":Ljava/lang/Exception;
    :try_start_7d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeInterceptionRuleInnerStatic, E:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_96
    .catchall {:try_start_7d .. :try_end_96} :catchall_7a

    .line 2408
    .end local v2  # "e":Ljava/lang/Exception;
    :try_start_96
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_9f} :catch_a0

    goto :goto_61

    .line 2409
    :catch_a0
    move-exception v2

    .line 2410
    .local v2, "e2":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_68

    .line 2413
    .end local v2  # "e2":Ljava/lang/Exception;
    :goto_a7
    return-void

    .line 2408
    :goto_a8
    :try_start_a8
    sget-object v3, Lcom/android/server/hips/intercept/Interception;->mInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_b1} :catch_b2

    .line 2411
    goto :goto_c9

    .line 2409
    :catch_b2
    move-exception v3

    .line 2410
    .local v3, "e2":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2411
    .end local v3  # "e2":Ljava/lang/Exception;
    :goto_c9
    throw v2
.end method

.method private static removeRuleInnerStatic(Ljava/lang/String;)V
    .registers 35
    .param p0, "rule"  # Ljava/lang/String;

    .line 2242
    move-object/from16 v0, p0

    const-string v1, "Interception"

    if-nez v0, :cond_d

    .line 2243
    const-string/jumbo v2, "removeRuleInnerStatic the rule is null, stop to add."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    return-void

    .line 2247
    :cond_d
    const-string v2, "\\|\\|\\|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2248
    .local v2, "items":[Ljava/lang/String;
    if-nez v2, :cond_1c

    .line 2249
    const-string/jumbo v3, "removeRuleInnerStatic the items is null, stop to add."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    return-void

    .line 2253
    :cond_1c
    array-length v3, v2

    invoke-static {v3}, Lcom/android/server/hips/intercept/Interception;->isSupportRuleLength(I)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 2254
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeRuleInnerStatic the length("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") of the items is error, stop to add."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2256
    return-void

    .line 2259
    :cond_3f
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 2260
    .local v3, "realItem":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_45
    array-length v5, v2

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge v4, v5, :cond_8a

    .line 2261
    aget-object v5, v2, v4

    if-eqz v5, :cond_83

    aget-object v5, v2, v4

    const-string v8, "\\=\\=\\="

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_83

    aget-object v5, v2, v4

    .line 2262
    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-eq v5, v6, :cond_62

    goto :goto_83

    .line 2268
    :cond_62
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2269
    .local v5, "key":Ljava/lang/Integer;
    aget-object v6, v2, v4

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v7

    .line 2270
    .local v6, "value":Ljava/lang/String;
    if-eqz v6, :cond_7d

    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7d

    .line 2271
    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_80

    .line 2273
    :cond_7d
    invoke-virtual {v3, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2260
    .end local v5  # "key":Ljava/lang/Integer;
    .end local v6  # "value":Ljava/lang/String;
    :goto_80
    add-int/lit8 v4, v4, 0x1

    goto :goto_45

    .line 2263
    :cond_83
    :goto_83
    const-string/jumbo v5, "removeRuleInnerStatic get the value for realItem error, stop to add."

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2264
    const/4 v3, 0x0

    .line 2277
    .end local v4  # "i":I
    :cond_8a
    if-nez v3, :cond_93

    .line 2278
    const-string/jumbo v4, "realItem is null, ingore!"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    return-void

    .line 2282
    :cond_93
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2283
    .local v4, "version":Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/hips/intercept/Interception;->isSupportRuleVersion(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_bf

    .line 2284
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is not support, ignore!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    return-void

    .line 2287
    :cond_bf
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2288
    .local v5, "runType":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2289
    .local v6, "callerPkg":Ljava/lang/String;
    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2290
    .local v7, "calleePkg":Ljava/lang/String;
    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v23, v8

    check-cast v23, Ljava/lang/String;

    .line 2291
    .local v23, "calleeClass":Ljava/lang/String;
    const/4 v8, 0x5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v24, v8

    check-cast v24, Ljava/lang/String;

    .line 2292
    .local v24, "processName":Ljava/lang/String;
    const/4 v8, 0x6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v25, v8

    check-cast v25, Ljava/lang/String;

    .line 2293
    .local v25, "action":Ljava/lang/String;
    const/4 v8, 0x7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v26, v8

    check-cast v26, Ljava/lang/String;

    .line 2294
    .local v26, "data":Ljava/lang/String;
    const/16 v8, 0x8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v27, v8

    check-cast v27, Ljava/lang/String;

    .line 2295
    .local v27, "extras":Ljava/lang/String;
    const/16 v8, 0x9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v28, v8

    check-cast v28, Ljava/lang/String;

    .line 2296
    .local v28, "interception":Ljava/lang/String;
    const/16 v8, 0xa

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v29, v8

    check-cast v29, Ljava/lang/String;

    .line 2297
    .local v29, "interaction":Ljava/lang/String;
    const/16 v8, 0xc

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v30, v8

    check-cast v30, Ljava/lang/String;

    .line 2298
    .local v30, "country":Ljava/lang/String;
    const/16 v8, 0xd

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v31, v8

    check-cast v31, Ljava/lang/String;

    .line 2299
    .local v31, "sn":Ljava/lang/String;
    const/16 v8, 0xe

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v32, v8

    check-cast v32, Ljava/lang/String;

    .line 2302
    .local v32, "flyme":Ljava/lang/String;
    if-nez v6, :cond_17c

    if-nez v7, :cond_17c

    if-nez v23, :cond_17c

    if-nez v24, :cond_17c

    if-nez v25, :cond_17c

    if-nez v26, :cond_17c

    if-nez v27, :cond_17c

    if-nez v29, :cond_17c

    .line 2304
    const-string v8, "all items are null, skip this rule, should never happen!"

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    return-void

    .line 2308
    :cond_17c
    new-instance v33, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    move-object/from16 v8, v33

    move-object v9, v4

    move-object v10, v5

    move-object v11, v6

    move-object v12, v7

    move-object/from16 v13, v23

    move-object/from16 v14, v24

    move-object/from16 v15, v25

    move-object/from16 v16, v26

    move-object/from16 v17, v27

    move-object/from16 v18, v28

    move-object/from16 v19, v29

    move-object/from16 v20, v30

    move-object/from16 v21, v31

    move-object/from16 v22, v32

    invoke-direct/range {v8 .. v22}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2311
    .local v8, "convertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    invoke-static {v8}, Lcom/android/server/hips/intercept/Interception;->removeInterceptionRuleInnerStatic(Lcom/android/server/hips/intercept/Interception$RulesConvertor;)V

    .line 2313
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "removeRuleInnerStatic: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    return-void
.end method

.method private static removeRuleStatic(Ljava/lang/String;)V
    .registers 5
    .param p0, "rule"  # Ljava/lang/String;

    .line 2226
    if-nez p0, :cond_b

    .line 2227
    const-string v0, "Interception"

    const-string/jumbo v1, "remove rule is null, ignore!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2228
    return-void

    .line 2230
    :cond_b
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2231
    .local v0, "itemArray":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2232
    .local v1, "itemBuilder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    array-length v3, v0

    if-ge v2, v3, :cond_28

    .line 2233
    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|||"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2232
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 2235
    .end local v2  # "i":I
    :cond_28
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2237
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2238
    .local v2, "newRule":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/hips/intercept/Interception;->removeRuleInnerStatic(Ljava/lang/String;)V

    .line 2239
    return-void
.end method

.method public static setInterceptionTimeStamp(J)V
    .registers 2
    .param p0, "timeStamp"  # J

    .line 1104
    sput-wide p0, Lcom/android/server/hips/intercept/Interception;->mInterceptionTimeStamp:J

    .line 1105
    return-void
.end method

.method public static setLastInterceptionEvent(Lcom/android/server/hips/intercept/InterceptionEvent;)V
    .registers 1
    .param p0, "event"  # Lcom/android/server/hips/intercept/InterceptionEvent;

    .line 3185
    sput-object p0, Lcom/android/server/hips/intercept/Interception;->mLastEvent:Lcom/android/server/hips/intercept/InterceptionEvent;

    .line 3186
    return-void
.end method

.method public static sortAllInterceptionRules(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/hips/intercept/Interception$RulesConvertor;",
            ">;)V"
        }
    .end annotation

    .line 3176
    .local p0, "listRules":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    new-instance v0, Lcom/android/server/hips/intercept/Interception$2;

    invoke-direct {v0}, Lcom/android/server/hips/intercept/Interception$2;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3182
    return-void
.end method

.method public static updateAdbStatus(I)V
    .registers 1
    .param p0, "adb"  # I

    .line 2179
    sput p0, Lcom/android/server/hips/intercept/Interception;->mAdbStatus:I

    .line 2180
    return-void
.end method

.method public static updateAirInterceptionRule(Ljava/lang/String;)V
    .registers 6
    .param p0, "allRules"  # Ljava/lang/String;

    .line 3155
    const-string v0, "Interception"

    if-eqz p0, :cond_39

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_b

    goto :goto_39

    .line 3160
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3162
    .local v1, "rulesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_10
    invoke-static {p0}, Lcom/android/server/hips/utils/HipsUtils;->splitInfoFromLoadedFile(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_14} :catch_16

    move-object v1, v0

    .line 3165
    goto :goto_2c

    .line 3163
    :catch_16
    move-exception v2

    .line 3164
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAirInterceptionRules splitInfoFromLoadedFile exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3167
    .end local v2  # "e":Ljava/lang/Exception;
    :goto_2c
    if-eqz v1, :cond_38

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_38

    .line 3170
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/android/server/hips/intercept/Interception;->loadInterceptionRule(Ljava/util/ArrayList;Z)I

    .line 3173
    :cond_38
    return-void

    .line 3156
    .end local v1  # "rulesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_39
    :goto_39
    const-string v1, "air rule is null, please check it!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3157
    return-void
.end method

.method public static updateAirInterceptionRules()V
    .registers 4

    .line 3137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3141
    .local v0, "rulesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_5
    const-string v1, "/data/system/interception.conf"

    .line 3143
    .local v1, "rulesFilePath":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/hips/utils/HipsUtils;->loadAllFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3144
    .local v2, "allRules":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/hips/utils/HipsUtils;->splitInfoFromLoadedFile(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_11

    move-object v0, v3

    .line 3147
    .end local v1  # "rulesFilePath":Ljava/lang/String;
    .end local v2  # "allRules":Ljava/lang/String;
    goto :goto_29

    .line 3145
    :catch_11
    move-exception v1

    .line 3146
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateAirInterceptionRules, can not update the interception rules!!: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Interception"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3149
    .end local v1  # "e":Ljava/lang/Exception;
    :goto_29
    if-eqz v0, :cond_35

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_35

    .line 3150
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/hips/intercept/Interception;->loadInterceptionRule(Ljava/util/ArrayList;Z)I

    .line 3152
    :cond_35
    return-void
.end method

.method public static updateInterceptRule(Ljava/lang/String;Z)V
    .registers 10
    .param p0, "pkgName"  # Ljava/lang/String;
    .param p1, "isAdd"  # Z

    .line 2438
    const-string v0, "Interception"

    if-eqz p0, :cond_69

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_69

    .line 2443
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2444
    .local v1, "rulesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, ""

    .line 2447
    .local v2, "newRule":Ljava/lang/String;
    :try_start_12
    const-string v3, "/data/system/V4_interception_rules"

    .line 2449
    .local v3, "rulesFilePath":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/hips/utils/HipsUtils;->loadAllFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2450
    .local v4, "allRules":Ljava/lang/String;
    invoke-static {p0, v4}, Lcom/android/server/hips/intercept/Interception;->isPkgInRule(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 2451
    invoke-static {v4}, Lcom/android/server/hips/utils/HipsUtils;->splitInfoFromLoadedFile(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    move-object v1, v5

    .line 2452
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_27
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_45

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2453
    .local v6, "rule":Ljava/lang/String;
    invoke-virtual {v6, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_44

    .line 2454
    move-object v2, v6

    .line 2455
    if-eqz p1, :cond_40

    .line 2456
    invoke-static {v2}, Lcom/android/server/hips/intercept/Interception;->addRuleStatic(Ljava/lang/String;)V

    goto :goto_27

    .line 2458
    :cond_40
    invoke-static {v2}, Lcom/android/server/hips/intercept/Interception;->removeRuleStatic(Ljava/lang/String;)V

    .line 2460
    goto :goto_27

    .line 2462
    .end local v6  # "rule":Ljava/lang/String;
    :cond_44
    goto :goto_27

    :cond_45
    goto :goto_60

    .line 2464
    :cond_46
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateInterceptRules, the all rules do not contain the pkg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", stop to update!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_60} :catch_61

    .line 2469
    .end local v3  # "rulesFilePath":Ljava/lang/String;
    .end local v4  # "allRules":Ljava/lang/String;
    :goto_60
    goto :goto_68

    .line 2467
    :catch_61
    move-exception v3

    .line 2468
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "updateInterceptRules, can not update the interception rules!!"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2470
    .end local v3  # "e":Ljava/lang/Exception;
    :goto_68
    return-void

    .line 2439
    .end local v1  # "rulesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2  # "newRule":Ljava/lang/String;
    :cond_69
    :goto_69
    const-string/jumbo v1, "updateInterceptRule, the pkgName is null or empty, return."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2440
    return-void
.end method

.method private static updateInterceptionActivityRulesInner(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/hips/intercept/Interception$RulesConvertor;",
            ">;)V"
        }
    .end annotation

    .line 2641
    .local p0, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    const-string/jumbo v0, "updateInterceptionActivityRulesInner, E2:"

    const-string v1, "Interception"

    :try_start_5
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mActivityInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 2643
    if-nez p0, :cond_17

    .line 2644
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object p0, v2

    .line 2646
    :cond_17
    sput-object p0, Lcom/android/server/hips/intercept/Interception;->mActivityInterceptionRules:Ljava/util/List;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_19} :catch_3d
    .catchall {:try_start_5 .. :try_end_19} :catchall_3b

    .line 2651
    :try_start_19
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mActivityInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_22} :catch_23

    .line 2654
    :goto_22
    goto :goto_68

    .line 2652
    :catch_23
    move-exception v2

    .line 2653
    .local v2, "e2":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_29
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2655
    .end local v2  # "e2":Ljava/lang/Exception;
    goto :goto_68

    .line 2650
    :catchall_3b
    move-exception v2

    goto :goto_69

    .line 2647
    :catch_3d
    move-exception v2

    .line 2648
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateInterceptionActivityRulesInner, E:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_3e .. :try_end_57} :catchall_3b

    .line 2651
    .end local v2  # "e":Ljava/lang/Exception;
    :try_start_57
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mActivityInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_60} :catch_61

    goto :goto_22

    .line 2652
    :catch_61
    move-exception v2

    .line 2653
    .local v2, "e2":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_29

    .line 2656
    .end local v2  # "e2":Ljava/lang/Exception;
    :goto_68
    return-void

    .line 2651
    :goto_69
    :try_start_69
    sget-object v3, Lcom/android/server/hips/intercept/Interception;->mActivityInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_72} :catch_73

    .line 2654
    goto :goto_8a

    .line 2652
    :catch_73
    move-exception v3

    .line 2653
    .local v3, "e2":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2654
    .end local v3  # "e2":Ljava/lang/Exception;
    :goto_8a
    throw v2
.end method

.method private static updateInterceptionBroadcastRulesInner(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/hips/intercept/Interception$RulesConvertor;",
            ">;)V"
        }
    .end annotation

    .line 2679
    .local p0, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    const-string/jumbo v0, "updateInterceptionBroadcastRulesInner, E2:"

    const-string v1, "Interception"

    :try_start_5
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mBroadcastInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 2681
    if-nez p0, :cond_17

    .line 2682
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object p0, v2

    .line 2684
    :cond_17
    sput-object p0, Lcom/android/server/hips/intercept/Interception;->mBroadcastInterceptionRules:Ljava/util/List;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_19} :catch_3d
    .catchall {:try_start_5 .. :try_end_19} :catchall_3b

    .line 2689
    :try_start_19
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mBroadcastInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_22} :catch_23

    .line 2692
    :goto_22
    goto :goto_68

    .line 2690
    :catch_23
    move-exception v2

    .line 2691
    .local v2, "e2":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_29
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2693
    .end local v2  # "e2":Ljava/lang/Exception;
    goto :goto_68

    .line 2688
    :catchall_3b
    move-exception v2

    goto :goto_69

    .line 2685
    :catch_3d
    move-exception v2

    .line 2686
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateInterceptionBroadcastRulesInner, E:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_3e .. :try_end_57} :catchall_3b

    .line 2689
    .end local v2  # "e":Ljava/lang/Exception;
    :try_start_57
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mBroadcastInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_60} :catch_61

    goto :goto_22

    .line 2690
    :catch_61
    move-exception v2

    .line 2691
    .local v2, "e2":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_29

    .line 2694
    .end local v2  # "e2":Ljava/lang/Exception;
    :goto_68
    return-void

    .line 2689
    :goto_69
    :try_start_69
    sget-object v3, Lcom/android/server/hips/intercept/Interception;->mBroadcastInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_72} :catch_73

    .line 2692
    goto :goto_8a

    .line 2690
    :catch_73
    move-exception v3

    .line 2691
    .local v3, "e2":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    .end local v3  # "e2":Ljava/lang/Exception;
    :goto_8a
    throw v2
.end method

.method public static updateInterceptionItem(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"  # Landroid/content/Context;

    .line 627
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.meizu.safe.alphame.data"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 628
    const-string v1, "com.meizu.safe"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Lcom/android/server/hips/intercept/Interception$1;

    invoke-direct {v1, p0}, Lcom/android/server/hips/intercept/Interception$1;-><init>(Landroid/content/Context;)V

    .line 710
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 627
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 711
    return-void
.end method

.method private static updateInterceptionItemsInner(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 715
    .local p0, "tempMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string/jumbo v0, "updateInterceptionItemsInner, E2:"

    const-string v1, "Interception"

    :try_start_5
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mInterceptionItemsRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 717
    if-nez p0, :cond_16

    .line 718
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object p0, v2

    .line 720
    :cond_16
    sput-object p0, Lcom/android/server/hips/intercept/Interception;->mInterceptionItems:Ljava/util/Map;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_18} :catch_3c
    .catchall {:try_start_5 .. :try_end_18} :catchall_3a

    .line 725
    :try_start_18
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mInterceptionItemsRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_21} :catch_22

    .line 728
    :goto_21
    goto :goto_67

    .line 726
    :catch_22
    move-exception v2

    .line 727
    .local v2, "e2":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_28
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    .end local v2  # "e2":Ljava/lang/Exception;
    goto :goto_67

    .line 724
    :catchall_3a
    move-exception v2

    goto :goto_68

    .line 721
    :catch_3c
    move-exception v2

    .line 722
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateInterceptionItemsInner, E:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_3d .. :try_end_56} :catchall_3a

    .line 725
    .end local v2  # "e":Ljava/lang/Exception;
    :try_start_56
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mInterceptionItemsRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5f} :catch_60

    goto :goto_21

    .line 726
    :catch_60
    move-exception v2

    .line 727
    .local v2, "e2":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_28

    .line 730
    .end local v2  # "e2":Ljava/lang/Exception;
    :goto_67
    return-void

    .line 725
    :goto_68
    :try_start_68
    sget-object v3, Lcom/android/server/hips/intercept/Interception;->mInterceptionItemsRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_71} :catch_72

    .line 728
    goto :goto_89

    .line 726
    :catch_72
    move-exception v3

    .line 727
    .local v3, "e2":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    .end local v3  # "e2":Ljava/lang/Exception;
    :goto_89
    throw v2
.end method

.method private static updateInterceptionProviderRulesInner(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/hips/intercept/Interception$RulesConvertor;",
            ">;)V"
        }
    .end annotation

    .line 2698
    .local p0, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    const-string/jumbo v0, "updateInterceptionProviderRulesInner, E2:"

    const-string v1, "Interception"

    :try_start_5
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mProviderInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 2700
    if-nez p0, :cond_17

    .line 2701
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object p0, v2

    .line 2703
    :cond_17
    sput-object p0, Lcom/android/server/hips/intercept/Interception;->mProviderInterceptionRules:Ljava/util/List;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_19} :catch_3d
    .catchall {:try_start_5 .. :try_end_19} :catchall_3b

    .line 2708
    :try_start_19
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mProviderInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_22} :catch_23

    .line 2711
    :goto_22
    goto :goto_68

    .line 2709
    :catch_23
    move-exception v2

    .line 2710
    .local v2, "e2":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_29
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2712
    .end local v2  # "e2":Ljava/lang/Exception;
    goto :goto_68

    .line 2707
    :catchall_3b
    move-exception v2

    goto :goto_69

    .line 2704
    :catch_3d
    move-exception v2

    .line 2705
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateInterceptionProviderRulesInner, E:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_3e .. :try_end_57} :catchall_3b

    .line 2708
    .end local v2  # "e":Ljava/lang/Exception;
    :try_start_57
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mProviderInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_60} :catch_61

    goto :goto_22

    .line 2709
    :catch_61
    move-exception v2

    .line 2710
    .local v2, "e2":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_29

    .line 2713
    .end local v2  # "e2":Ljava/lang/Exception;
    :goto_68
    return-void

    .line 2708
    :goto_69
    :try_start_69
    sget-object v3, Lcom/android/server/hips/intercept/Interception;->mProviderInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_72} :catch_73

    .line 2711
    goto :goto_8a

    .line 2709
    :catch_73
    move-exception v3

    .line 2710
    .local v3, "e2":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2711
    .end local v3  # "e2":Ljava/lang/Exception;
    :goto_8a
    throw v2
.end method

.method public static updateInterceptionRule(Ljava/lang/String;Z)V
    .registers 2
    .param p0, "pkgName"  # Ljava/lang/String;
    .param p1, "isReadAllRules"  # Z

    .line 195
    return-void
.end method

.method private static updateInterceptionRulesInner(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/hips/intercept/Interception$RulesConvertor;",
            ">;)V"
        }
    .end annotation

    .line 373
    .local p0, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    const-string/jumbo v0, "updateInterceptionRulesInner, E2:"

    const-string v1, "Interception"

    :try_start_5
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 375
    if-nez p0, :cond_17

    .line 376
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object p0, v2

    .line 378
    :cond_17
    sput-object p0, Lcom/android/server/hips/intercept/Interception;->mInterceptionRules:Ljava/util/List;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_19} :catch_3d
    .catchall {:try_start_5 .. :try_end_19} :catchall_3b

    .line 383
    :try_start_19
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_22} :catch_23

    .line 386
    :goto_22
    goto :goto_68

    .line 384
    :catch_23
    move-exception v2

    .line 385
    .local v2, "e2":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_29
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    .end local v2  # "e2":Ljava/lang/Exception;
    goto :goto_68

    .line 382
    :catchall_3b
    move-exception v2

    goto :goto_69

    .line 379
    :catch_3d
    move-exception v2

    .line 380
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateInterceptionRulesInner, E:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_3e .. :try_end_57} :catchall_3b

    .line 383
    .end local v2  # "e":Ljava/lang/Exception;
    :try_start_57
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_60} :catch_61

    goto :goto_22

    .line 384
    :catch_61
    move-exception v2

    .line 385
    .local v2, "e2":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_29

    .line 388
    .end local v2  # "e2":Ljava/lang/Exception;
    :goto_68
    return-void

    .line 383
    :goto_69
    :try_start_69
    sget-object v3, Lcom/android/server/hips/intercept/Interception;->mInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_72} :catch_73

    .line 386
    goto :goto_8a

    .line 384
    :catch_73
    move-exception v3

    .line 385
    .local v3, "e2":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    .end local v3  # "e2":Ljava/lang/Exception;
    :goto_8a
    throw v2
.end method

.method private static updateInterceptionServiceRulesInner(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/hips/intercept/Interception$RulesConvertor;",
            ">;)V"
        }
    .end annotation

    .line 2660
    .local p0, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    const-string/jumbo v0, "updateInterceptionServiceRulesInner, E2:"

    const-string v1, "Interception"

    :try_start_5
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mServiceInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 2662
    if-nez p0, :cond_17

    .line 2663
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object p0, v2

    .line 2665
    :cond_17
    sput-object p0, Lcom/android/server/hips/intercept/Interception;->mServiceInterceptionRules:Ljava/util/List;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_19} :catch_3d
    .catchall {:try_start_5 .. :try_end_19} :catchall_3b

    .line 2670
    :try_start_19
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mServiceInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_22} :catch_23

    .line 2673
    :goto_22
    goto :goto_68

    .line 2671
    :catch_23
    move-exception v2

    .line 2672
    .local v2, "e2":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_29
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2674
    .end local v2  # "e2":Ljava/lang/Exception;
    goto :goto_68

    .line 2669
    :catchall_3b
    move-exception v2

    goto :goto_69

    .line 2666
    :catch_3d
    move-exception v2

    .line 2667
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateInterceptionServiceRulesInner, E:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_3e .. :try_end_57} :catchall_3b

    .line 2670
    .end local v2  # "e":Ljava/lang/Exception;
    :try_start_57
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mServiceInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_60} :catch_61

    goto :goto_22

    .line 2671
    :catch_61
    move-exception v2

    .line 2672
    .local v2, "e2":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_29

    .line 2675
    .end local v2  # "e2":Ljava/lang/Exception;
    :goto_68
    return-void

    .line 2670
    :goto_69
    :try_start_69
    sget-object v3, Lcom/android/server/hips/intercept/Interception;->mServiceInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_72} :catch_73

    .line 2673
    goto :goto_8a

    .line 2671
    :catch_73
    move-exception v3

    .line 2672
    .local v3, "e2":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2673
    .end local v3  # "e2":Ljava/lang/Exception;
    :goto_8a
    throw v2
.end method

.method private static updateInterceptionSystemRulesInner(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/hips/intercept/Interception$RulesConvertor;",
            ">;)V"
        }
    .end annotation

    .line 2622
    .local p0, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    const-string/jumbo v0, "updateInterceptionSystemRulesInner, E2:"

    const-string v1, "Interception"

    :try_start_5
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mSystemInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 2624
    if-nez p0, :cond_17

    .line 2625
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object p0, v2

    .line 2627
    :cond_17
    sput-object p0, Lcom/android/server/hips/intercept/Interception;->mSystemInterceptionRules:Ljava/util/List;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_19} :catch_3d
    .catchall {:try_start_5 .. :try_end_19} :catchall_3b

    .line 2632
    :try_start_19
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mSystemInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_22} :catch_23

    .line 2635
    :goto_22
    goto :goto_68

    .line 2633
    :catch_23
    move-exception v2

    .line 2634
    .local v2, "e2":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_29
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2636
    .end local v2  # "e2":Ljava/lang/Exception;
    goto :goto_68

    .line 2631
    :catchall_3b
    move-exception v2

    goto :goto_69

    .line 2628
    :catch_3d
    move-exception v2

    .line 2629
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateInterceptionSystemRulesInner, E:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_3e .. :try_end_57} :catchall_3b

    .line 2632
    .end local v2  # "e":Ljava/lang/Exception;
    :try_start_57
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mSystemInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_60} :catch_61

    goto :goto_22

    .line 2633
    :catch_61
    move-exception v2

    .line 2634
    .local v2, "e2":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_29

    .line 2637
    .end local v2  # "e2":Ljava/lang/Exception;
    :goto_68
    return-void

    .line 2632
    :goto_69
    :try_start_69
    sget-object v3, Lcom/android/server/hips/intercept/Interception;->mSystemInterceptionRulesRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_72} :catch_73

    .line 2635
    goto :goto_8a

    .line 2633
    :catch_73
    move-exception v3

    .line 2634
    .local v3, "e2":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2635
    .end local v3  # "e2":Ljava/lang/Exception;
    :goto_8a
    throw v2
.end method

.method public static writeAppInterceptionRule(Ljava/lang/String;I)V
    .registers 34
    .param p0, "pkgName"  # Ljava/lang/String;
    .param p1, "perm"  # I

    .line 3087
    move-object/from16 v15, p0

    move/from16 v14, p1

    sget-object v16, Lcom/android/server/hips/intercept/Interception;->mUserSettingInterceptionRules:Ljava/util/List;

    monitor-enter v16

    .line 3088
    :try_start_7
    sget-object v0, Lcom/android/server/hips/intercept/Interception;->mUserSettingInterceptionRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_a8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 3089
    .local v1, "rulesConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    if-eqz v15, :cond_a6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_a6

    iget-object v3, v1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCalleePkg:Ljava/lang/String;

    .line 3090
    invoke-virtual {v3, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a6

    .line 3091
    new-instance v0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    iget-object v3, v1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mVersion:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mRunType:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCallerPkg:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCalleePkg:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCalleeClass:Ljava/lang/String;

    iget-object v8, v1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mProcessName:Ljava/lang/String;

    iget-object v9, v1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mAction:Ljava/lang/String;

    iget-object v10, v1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mData:Ljava/lang/String;

    iget-object v11, v1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mExtras:Ljava/lang/String;

    .line 3094
    if-ne v14, v2, :cond_43

    const-string v2, "false"

    goto :goto_46

    :cond_43
    const-string/jumbo v2, "true"

    :goto_46
    move-object/from16 v27, v2

    iget-object v2, v1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mInteraction:Ljava/lang/String;

    iget-object v12, v1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCountry:Ljava/lang/String;

    iget-object v13, v1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mSn:Ljava/lang/String;
    :try_end_4e
    .catchall {:try_start_7 .. :try_end_4e} :catchall_125

    :try_start_4e
    iget-object v14, v1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mFlyme:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    move-object/from16 v28, v2

    move-object/from16 v29, v12

    move-object/from16 v30, v13

    move-object/from16 v31, v14

    invoke-direct/range {v17 .. v31}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3096
    .local v0, "userSettingConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mUserSettingInterceptionRules:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3097
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mUserSettingInterceptionRules:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3098
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mUserSettingInterceptionRules:Ljava/util/List;

    invoke-static {v2}, Lcom/android/server/hips/intercept/Interception;->sortAllInterceptionRules(Ljava/util/List;)V

    .line 3099
    const-string v2, "Interception"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeAppInterceptionRule, package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " permission: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_93
    .catchall {:try_start_4e .. :try_end_93} :catchall_a1

    move/from16 v14, p1

    :try_start_95
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3100
    monitor-exit v16

    return-void

    .line 3113
    .end local v0  # "userSettingConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .end local v1  # "rulesConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :catchall_a1
    move-exception v0

    move/from16 v4, p1

    goto/16 :goto_127

    .line 3102
    :cond_a6
    goto/16 :goto_d

    .line 3103
    :cond_a8
    if-eqz v15, :cond_121

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_121

    .line 3104
    new-instance v0, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    const-string v3, "4"

    const-string/jumbo v4, "null"

    const-string/jumbo v5, "null"

    const-string/jumbo v6, "null"

    const-string/jumbo v7, "null"

    const-string/jumbo v8, "null"

    const-string/jumbo v9, "null"

    const-string/jumbo v10, "null"

    .line 3107
    if-ne v14, v2, :cond_ce

    const-string v1, "false"

    goto :goto_d1

    :cond_ce
    const-string/jumbo v1, "true"

    :goto_d1
    move-object v11, v1

    const-string/jumbo v12, "null"

    const-string/jumbo v13, "null"

    const-string/jumbo v17, "null"

    const-string/jumbo v18, "null"
    :try_end_de
    .catchall {:try_start_95 .. :try_end_de} :catchall_125

    move-object v1, v0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object/from16 v5, p0

    move-object/from16 v14, v17

    move-object/from16 v15, v18

    :try_start_e8
    invoke-direct/range {v1 .. v15}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3109
    .restart local v0  # "userSettingConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    sget-object v1, Lcom/android/server/hips/intercept/Interception;->mUserSettingInterceptionRules:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3110
    sget-object v1, Lcom/android/server/hips/intercept/Interception;->mUserSettingInterceptionRules:Ljava/util/List;

    invoke-static {v1}, Lcom/android/server/hips/intercept/Interception;->sortAllInterceptionRules(Ljava/util/List;)V

    .line 3111
    const-string v1, "Interception"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeAppInterceptionRule, package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_102
    .catchall {:try_start_e8 .. :try_end_102} :catchall_11b

    move-object/from16 v3, p0

    :try_start_104
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " permission: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_10c
    .catchall {:try_start_104 .. :try_end_10c} :catchall_119

    move/from16 v4, p1

    :try_start_10e
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_123

    .line 3113
    .end local v0  # "userSettingConvertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :catchall_119
    move-exception v0

    goto :goto_11e

    :catchall_11b
    move-exception v0

    move-object/from16 v3, p0

    :goto_11e
    move/from16 v4, p1

    goto :goto_128

    .line 3103
    :cond_121
    move v4, v14

    move-object v3, v15

    .line 3113
    :goto_123
    monitor-exit v16

    .line 3114
    return-void

    .line 3113
    :catchall_125
    move-exception v0

    move v4, v14

    :goto_127
    move-object v3, v15

    :goto_128
    monitor-exit v16
    :try_end_129
    .catchall {:try_start_10e .. :try_end_129} :catchall_12a

    throw v0

    :catchall_12a
    move-exception v0

    goto :goto_128
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .registers 14
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "args"  # [Ljava/lang/String;

    .line 1427
    const/4 v0, 0x0

    .line 1428
    .local v0, "isMatch":Z
    const/4 v1, -0x1

    .line 1429
    .local v1, "index":I
    array-length v2, p2

    const/4 v3, 0x1

    if-le v2, v3, :cond_7c3

    .line 1430
    aget-object v2, p2, v3

    const-string v4, "help"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 1431
    const/4 v0, 0x1

    .line 1432
    const-string v2, "adb shell dumpsys activity intercept help"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1433
    const-string v2, "adb shell dumpsys activity intercept V4 [on/off]"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1434
    const-string v2, "adb shell dumpsys activity intercept"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1435
    const-string v2, "adb shell dumpsys activity intercept reset"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1436
    const-string v2, "adb shell dumpsys activity intercept version"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1437
    const-string v2, "adb shell dumpsys activity intercept rules"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1438
    const-string v2, "adb shell dumpsys activity intercept freeze [on/off]"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1439
    const-string v2, "adb shell dumpsys activity intercept debug [on/off]"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1440
    const-string v2, "adb shell dumpsys activity intercept debug_rules [on/off]"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1441
    const-string v2, "adb shell dumpsys activity intercept details [on/off]"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1442
    const-string v2, "adb shell dumpsys activity intercept details_framework_br [on/off]"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1443
    const-string v2, "adb shell dumpsys activity intercept enable [on/off]"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1444
    const-string v2, "adb shell dumpsys activity intercept monkey [on/off] "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1445
    const-string v2, "adb shell dumpsys activity intercept delay [time] "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1446
    const-string v2, "adb shell dumpsys activity intercept userset [packageName] [permission]"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1447
    const-string v2, "adb shell dumpsys activity intercept userget [packageName]"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1448
    const-string v2, "adb shell dumpsys activity intercept cloudset [path/file]"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_7c3

    .line 1449
    :cond_68
    aget-object v2, p2, v3

    const-string/jumbo v4, "version"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 1450
    const/4 v0, 0x1

    .line 1451
    const-string v2, "    Version:4"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_7c3

    .line 1452
    :cond_7b
    aget-object v2, p2, v3

    const-string/jumbo v4, "rules"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v2, :cond_596

    .line 1453
    const/4 v0, 0x1

    .line 1454
    array-length v2, p2

    if-le v2, v4, :cond_a8

    aget-object v2, p2, v5

    const-string v3, "add"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 1455
    aget-object v2, p2, v4

    if-eqz v2, :cond_a8

    aget-object v2, p2, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_a8

    .line 1456
    aget-object v2, p2, v4

    invoke-direct {p0, v2}, Lcom/android/server/hips/intercept/Interception;->addRule(Ljava/lang/String;)V

    .line 1457
    return v0

    .line 1461
    :cond_a8
    array-length v2, p2

    if-le v2, v4, :cond_c8

    aget-object v2, p2, v5

    const-string/jumbo v3, "local"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c8

    .line 1462
    aget-object v2, p2, v4

    if-eqz v2, :cond_c8

    aget-object v2, p2, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_c8

    .line 1463
    aget-object v2, p2, v4

    invoke-direct {p0, v2}, Lcom/android/server/hips/intercept/Interception;->addLocalRule(Ljava/lang/String;)V

    .line 1464
    return v0

    .line 1467
    :cond_c8
    const-string v2, "\n    User Setting rules:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1468
    const/4 v1, -0x1

    .line 1469
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mUserSettingInterceptionRules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "\nV4_"

    const-string v5, "\nV2_"

    const-string v6, ":    "

    if-eqz v3, :cond_12c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 1470
    .local v3, "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    add-int/lit8 v1, v1, 0x1

    .line 1471
    invoke-static {v3}, Lcom/android/server/hips/intercept/Interception;->isV4NewlyAdded(Lcom/android/server/hips/intercept/Interception$RulesConvertor;)Z

    move-result v7

    if-nez v7, :cond_10b

    .line 1472
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_12b

    .line 1474
    :cond_10b
    sget-boolean v5, Lcom/android/server/hips/intercept/InterceptionManager;->V4_ENABLE:Z

    if-eqz v5, :cond_12b

    .line 1475
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1478
    .end local v3  # "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :cond_12b
    :goto_12b
    goto :goto_d4

    .line 1479
    :cond_12c
    const-string v2, "\n    Air Activity rules:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1480
    const/4 v1, -0x1

    .line 1481
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mActivityInterceptionRules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_138
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 1482
    .restart local v3  # "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    add-int/lit8 v1, v1, 0x1

    .line 1483
    invoke-static {v3}, Lcom/android/server/hips/intercept/Interception;->isV4NewlyAdded(Lcom/android/server/hips/intercept/Interception$RulesConvertor;)Z

    move-result v7

    if-nez v7, :cond_169

    .line 1484
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_189

    .line 1486
    :cond_169
    sget-boolean v7, Lcom/android/server/hips/intercept/InterceptionManager;->V4_ENABLE:Z

    if-eqz v7, :cond_189

    .line 1487
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1490
    .end local v3  # "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :cond_189
    :goto_189
    goto :goto_138

    .line 1491
    :cond_18a
    const-string v2, "\n    Air Service rules:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1492
    const/4 v1, -0x1

    .line 1493
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mServiceInterceptionRules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_196
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 1494
    .restart local v3  # "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    add-int/lit8 v1, v1, 0x1

    .line 1495
    invoke-static {v3}, Lcom/android/server/hips/intercept/Interception;->isV4NewlyAdded(Lcom/android/server/hips/intercept/Interception$RulesConvertor;)Z

    move-result v7

    if-nez v7, :cond_1c7

    .line 1496
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1e7

    .line 1498
    :cond_1c7
    sget-boolean v7, Lcom/android/server/hips/intercept/InterceptionManager;->V4_ENABLE:Z

    if-eqz v7, :cond_1e7

    .line 1499
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1502
    .end local v3  # "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :cond_1e7
    :goto_1e7
    goto :goto_196

    .line 1503
    :cond_1e8
    const-string v2, "\n    Air Broadcast rules:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1504
    const/4 v1, -0x1

    .line 1505
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mBroadcastInterceptionRules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_246

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 1506
    .restart local v3  # "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    add-int/lit8 v1, v1, 0x1

    .line 1507
    invoke-static {v3}, Lcom/android/server/hips/intercept/Interception;->isV4NewlyAdded(Lcom/android/server/hips/intercept/Interception$RulesConvertor;)Z

    move-result v7

    if-nez v7, :cond_225

    .line 1508
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_245

    .line 1510
    :cond_225
    sget-boolean v7, Lcom/android/server/hips/intercept/InterceptionManager;->V4_ENABLE:Z

    if-eqz v7, :cond_245

    .line 1511
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1514
    .end local v3  # "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :cond_245
    :goto_245
    goto :goto_1f4

    .line 1515
    :cond_246
    const-string v2, "\n    Air Provider rules:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1516
    const/4 v1, -0x1

    .line 1517
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mProviderInterceptionRules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_252
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 1518
    .restart local v3  # "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    add-int/lit8 v1, v1, 0x1

    .line 1519
    invoke-static {v3}, Lcom/android/server/hips/intercept/Interception;->isV4NewlyAdded(Lcom/android/server/hips/intercept/Interception$RulesConvertor;)Z

    move-result v7

    if-nez v7, :cond_283

    .line 1520
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2a3

    .line 1522
    :cond_283
    sget-boolean v7, Lcom/android/server/hips/intercept/InterceptionManager;->V4_ENABLE:Z

    if-eqz v7, :cond_2a3

    .line 1523
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1526
    .end local v3  # "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :cond_2a3
    :goto_2a3
    goto :goto_252

    .line 1527
    :cond_2a4
    const-string v2, "\n    Air rules:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1528
    const/4 v1, -0x1

    .line 1529
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mInterceptionRules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2b0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_302

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 1530
    .restart local v3  # "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    add-int/lit8 v1, v1, 0x1

    .line 1531
    invoke-static {v3}, Lcom/android/server/hips/intercept/Interception;->isV4NewlyAdded(Lcom/android/server/hips/intercept/Interception$RulesConvertor;)Z

    move-result v7

    if-nez v7, :cond_2e1

    .line 1532
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_301

    .line 1534
    :cond_2e1
    sget-boolean v7, Lcom/android/server/hips/intercept/InterceptionManager;->V4_ENABLE:Z

    if-eqz v7, :cond_301

    .line 1535
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1538
    .end local v3  # "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :cond_301
    :goto_301
    goto :goto_2b0

    .line 1539
    :cond_302
    const-string v2, "\n    Local Activity rules:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1540
    const/4 v1, -0x1

    .line 1541
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mLocalActivityInterceptionRules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_30e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_360

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 1542
    .restart local v3  # "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    add-int/lit8 v1, v1, 0x1

    .line 1543
    invoke-static {v3}, Lcom/android/server/hips/intercept/Interception;->isV4NewlyAdded(Lcom/android/server/hips/intercept/Interception$RulesConvertor;)Z

    move-result v7

    if-nez v7, :cond_33f

    .line 1544
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_35f

    .line 1546
    :cond_33f
    sget-boolean v7, Lcom/android/server/hips/intercept/InterceptionManager;->V4_ENABLE:Z

    if-eqz v7, :cond_35f

    .line 1547
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1550
    .end local v3  # "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :cond_35f
    :goto_35f
    goto :goto_30e

    .line 1551
    :cond_360
    const-string v2, "\n    Local Service rules:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1552
    const/4 v1, -0x1

    .line 1553
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mLocalServiceInterceptionRules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_36c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3be

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 1554
    .restart local v3  # "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    add-int/lit8 v1, v1, 0x1

    .line 1555
    invoke-static {v3}, Lcom/android/server/hips/intercept/Interception;->isV4NewlyAdded(Lcom/android/server/hips/intercept/Interception$RulesConvertor;)Z

    move-result v7

    if-nez v7, :cond_39d

    .line 1556
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3bd

    .line 1558
    :cond_39d
    sget-boolean v7, Lcom/android/server/hips/intercept/InterceptionManager;->V4_ENABLE:Z

    if-eqz v7, :cond_3bd

    .line 1559
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1562
    .end local v3  # "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :cond_3bd
    :goto_3bd
    goto :goto_36c

    .line 1563
    :cond_3be
    const-string v2, "\n    Local Broadcast rules:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1564
    const/4 v1, -0x1

    .line 1565
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mLocalBroadcastInterceptionRules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3ca
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 1566
    .restart local v3  # "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    add-int/lit8 v1, v1, 0x1

    .line 1567
    invoke-static {v3}, Lcom/android/server/hips/intercept/Interception;->isV4NewlyAdded(Lcom/android/server/hips/intercept/Interception$RulesConvertor;)Z

    move-result v7

    if-nez v7, :cond_3fb

    .line 1568
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_41b

    .line 1570
    :cond_3fb
    sget-boolean v7, Lcom/android/server/hips/intercept/InterceptionManager;->V4_ENABLE:Z

    if-eqz v7, :cond_41b

    .line 1571
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1574
    .end local v3  # "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :cond_41b
    :goto_41b
    goto :goto_3ca

    .line 1575
    :cond_41c
    const-string v2, "\n    Local Provider rules:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1576
    const/4 v1, -0x1

    .line 1577
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mLocalProviderInterceptionRules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_428
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 1578
    .restart local v3  # "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    add-int/lit8 v1, v1, 0x1

    .line 1579
    invoke-static {v3}, Lcom/android/server/hips/intercept/Interception;->isV4NewlyAdded(Lcom/android/server/hips/intercept/Interception$RulesConvertor;)Z

    move-result v7

    if-nez v7, :cond_459

    .line 1580
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_479

    .line 1582
    :cond_459
    sget-boolean v7, Lcom/android/server/hips/intercept/InterceptionManager;->V4_ENABLE:Z

    if-eqz v7, :cond_479

    .line 1583
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1586
    .end local v3  # "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :cond_479
    :goto_479
    goto :goto_428

    .line 1587
    :cond_47a
    const-string v2, "\n    Local rules:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1588
    const/4 v1, -0x1

    .line 1589
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mLocalInterceptionRules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_486
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 1590
    .restart local v3  # "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    add-int/lit8 v1, v1, 0x1

    .line 1591
    invoke-static {v3}, Lcom/android/server/hips/intercept/Interception;->isV4NewlyAdded(Lcom/android/server/hips/intercept/Interception$RulesConvertor;)Z

    move-result v7

    if-nez v7, :cond_4b7

    .line 1592
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4d7

    .line 1594
    :cond_4b7
    sget-boolean v7, Lcom/android/server/hips/intercept/InterceptionManager;->V4_ENABLE:Z

    if-eqz v7, :cond_4d7

    .line 1595
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1598
    .end local v3  # "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :cond_4d7
    :goto_4d7
    goto :goto_486

    .line 1599
    :cond_4d8
    const-string v2, "\n    sytem Air rules:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1600
    const/4 v1, -0x1

    .line 1601
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mSystemInterceptionRules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4e4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_536

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 1602
    .restart local v3  # "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    add-int/lit8 v1, v1, 0x1

    .line 1603
    invoke-static {v3}, Lcom/android/server/hips/intercept/Interception;->isV4NewlyAdded(Lcom/android/server/hips/intercept/Interception$RulesConvertor;)Z

    move-result v7

    if-nez v7, :cond_515

    .line 1604
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_535

    .line 1606
    :cond_515
    sget-boolean v7, Lcom/android/server/hips/intercept/InterceptionManager;->V4_ENABLE:Z

    if-eqz v7, :cond_535

    .line 1607
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1610
    .end local v3  # "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :cond_535
    :goto_535
    goto :goto_4e4

    .line 1611
    :cond_536
    const-string v2, "\n    System Local rules:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1612
    const/4 v1, -0x1

    .line 1613
    sget-object v2, Lcom/android/server/hips/intercept/Interception;->mSystemLocalInterceptionRules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_542
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_594

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 1614
    .restart local v3  # "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    add-int/lit8 v1, v1, 0x1

    .line 1615
    invoke-static {v3}, Lcom/android/server/hips/intercept/Interception;->isV4NewlyAdded(Lcom/android/server/hips/intercept/Interception$RulesConvertor;)Z

    move-result v7

    if-nez v7, :cond_573

    .line 1616
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_593

    .line 1618
    :cond_573
    sget-boolean v7, Lcom/android/server/hips/intercept/InterceptionManager;->V4_ENABLE:Z

    if-eqz v7, :cond_593

    .line 1619
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1622
    .end local v3  # "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :cond_593
    :goto_593
    goto :goto_542

    :cond_594
    goto/16 :goto_7c3

    .line 1624
    :cond_596
    aget-object v2, p2, v3

    const-string v6, "debug_rules"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v7, "    DEBUG_INTERCEPT_RULES:"

    const-string/jumbo v8, "on"

    if-eqz v2, :cond_5c6

    aget-object v2, p2, v5

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c6

    .line 1625
    const/4 v0, 0x1

    .line 1626
    sput-boolean v3, Lcom/android/server/hips/intercept/InterceptionManager;->DEBUG_INTERCEPT_RULES:Z

    .line 1627
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/hips/intercept/InterceptionManager;->DEBUG_INTERCEPT_RULES:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_7c3

    .line 1628
    :cond_5c6
    aget-object v2, p2, v3

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string/jumbo v6, "off"

    const/4 v9, 0x0

    if-eqz v2, :cond_5f3

    aget-object v2, p2, v5

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f3

    .line 1629
    const/4 v0, 0x1

    .line 1630
    sput-boolean v9, Lcom/android/server/hips/intercept/InterceptionManager;->DEBUG_INTERCEPT_RULES:Z

    .line 1631
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/hips/intercept/InterceptionManager;->DEBUG_INTERCEPT_RULES:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_7c3

    .line 1632
    :cond_5f3
    aget-object v2, p2, v3

    const-string v7, "details"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v10, "    DEBUG_DETAIL_ENABLE:"

    if-eqz v2, :cond_620

    aget-object v2, p2, v5

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_620

    .line 1633
    const/4 v0, 0x1

    .line 1634
    sput-boolean v3, Lcom/android/server/hips/intercept/InterceptionManager;->DEBUG_DETAIL_ENABLE:Z

    .line 1635
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/hips/intercept/InterceptionManager;->DEBUG_DETAIL_ENABLE:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_7c3

    .line 1636
    :cond_620
    aget-object v2, p2, v3

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_649

    aget-object v2, p2, v5

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_649

    .line 1637
    const/4 v0, 0x1

    .line 1638
    sput-boolean v9, Lcom/android/server/hips/intercept/InterceptionManager;->DEBUG_DETAIL_ENABLE:Z

    .line 1639
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/hips/intercept/InterceptionManager;->DEBUG_DETAIL_ENABLE:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_7c3

    .line 1640
    :cond_649
    aget-object v2, p2, v3

    const-string v7, "V4"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_676

    aget-object v2, p2, v5

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_676

    .line 1641
    const/4 v0, 0x1

    .line 1642
    sput-boolean v3, Lcom/android/server/hips/intercept/InterceptionManager;->V4_ENABLE:Z

    .line 1643
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    V4_ENABLE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/hips/intercept/InterceptionManager;->V4_ENABLE:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_7c3

    .line 1644
    :cond_676
    aget-object v2, p2, v3

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a1

    aget-object v2, p2, v5

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a1

    .line 1645
    const/4 v0, 0x1

    .line 1646
    sput-boolean v9, Lcom/android/server/hips/intercept/InterceptionManager;->V4_ENABLE:Z

    .line 1647
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    V4_ENABLE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/hips/intercept/InterceptionManager;->V4_ENABLE:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_7c3

    .line 1648
    :cond_6a1
    aget-object v2, p2, v3

    const-string v7, "enable"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6ce

    aget-object v2, p2, v5

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6ce

    .line 1649
    const/4 v0, 0x1

    .line 1650
    sput-boolean v3, Lcom/android/server/hips/intercept/InterceptionManager;->INTERCEPT_ENABLE:Z

    .line 1651
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    INTERCEPT_ENABLE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/hips/intercept/InterceptionManager;->INTERCEPT_ENABLE:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_7c3

    .line 1652
    :cond_6ce
    aget-object v2, p2, v3

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f9

    aget-object v2, p2, v5

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f9

    .line 1653
    const/4 v0, 0x1

    .line 1654
    sput-boolean v9, Lcom/android/server/hips/intercept/InterceptionManager;->INTERCEPT_ENABLE:Z

    .line 1655
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    INTERCEPT_ENABLE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/hips/intercept/InterceptionManager;->INTERCEPT_ENABLE:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_7c3

    .line 1656
    :cond_6f9
    aget-object v2, p2, v3

    const-string/jumbo v6, "monkey"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_719

    aget-object v2, p2, v5

    const-string/jumbo v6, "intercept"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_719

    .line 1657
    const/4 v0, 0x1

    .line 1658
    sput-boolean v9, Lcom/android/server/hips/intercept/InterceptionManager;->INTERCEPT_MONKEY:Z

    .line 1659
    const-string v2, "    INTERCEPT MONKEY intercept"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_7c3

    .line 1660
    :cond_719
    aget-object v2, p2, v3

    const-string/jumbo v6, "monkey"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_739

    aget-object v2, p2, v5

    const-string/jumbo v6, "pass"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_739

    .line 1661
    const/4 v0, 0x1

    .line 1662
    sput-boolean v3, Lcom/android/server/hips/intercept/InterceptionManager;->INTERCEPT_MONKEY:Z

    .line 1663
    const-string v2, "    INTERCEPT MONKEY pass"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_7c3

    .line 1664
    :cond_739
    aget-object v2, p2, v3

    const-string v6, "delay"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_767

    .line 1665
    const/4 v0, 0x1

    .line 1666
    aget-object v2, p2, v5

    if-eqz v2, :cond_7c3

    .line 1667
    aget-object v2, p2, v5

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Lcom/android/server/hips/intercept/Interception;->DELAY_TIME:J

    .line 1668
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    INTERCEPT delay "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/android/server/hips/intercept/Interception;->DELAY_TIME:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7c3

    .line 1670
    :cond_767
    aget-object v2, p2, v3

    const-string/jumbo v6, "userset"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_797

    .line 1671
    const/4 v0, 0x1

    .line 1672
    aget-object v2, p2, v5

    if-eqz v2, :cond_7c3

    aget-object v2, p2, v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7c3

    aget-object v2, p2, v4

    if-eqz v2, :cond_7c3

    aget-object v2, p2, v4

    .line 1673
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7c3

    .line 1674
    aget-object v2, p2, v5

    aget-object v3, p2, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/hips/intercept/Interception;->writeAppInterceptionRule(Ljava/lang/String;I)V

    goto :goto_7c3

    .line 1676
    :cond_797
    aget-object v2, p2, v3

    const-string/jumbo v4, "userget"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a9

    .line 1677
    const/4 v0, 0x1

    .line 1678
    aget-object v2, p2, v5

    invoke-static {v2}, Lcom/android/server/hips/intercept/Interception;->getAppInterceptionRule(Ljava/lang/String;)I

    goto :goto_7c3

    .line 1680
    :cond_7a9
    aget-object v2, p2, v3

    const-string v3, "cloudset"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c3

    .line 1681
    const/4 v0, 0x1

    .line 1682
    aget-object v2, p2, v5

    if-eqz v2, :cond_7c3

    aget-object v2, p2, v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7c3

    .line 1683
    invoke-static {}, Lcom/android/server/hips/intercept/Interception;->updateAirInterceptionRules()V

    .line 1688
    :cond_7c3
    :goto_7c3
    return v0
.end method

.method public getInterceptionItemState(Ljava/lang/String;)I
    .registers 4
    .param p1, "calleePkg"  # Ljava/lang/String;

    .line 556
    invoke-direct {p0}, Lcom/android/server/hips/intercept/Interception;->isInterceptionItemsEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 557
    return v1

    .line 560
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/hips/intercept/Interception;->isInterceptionItemsContainsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 561
    return v1

    .line 564
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/server/hips/intercept/Interception;->getInterceptionItemByKey(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 565
    .local v0, "state":Ljava/lang/Integer;
    if-eqz v0, :cond_1a

    .line 566
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 569
    :cond_1a
    return v1
.end method

.method protected isCalleeRunning(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "calleePkg"  # Ljava/lang/String;
    .param p2, "calleeUid"  # I

    .line 1136
    invoke-static {p1, p2}, Lcom/android/server/hips/utils/HipsUtils;->isProcessRunning(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1137
    const/4 v0, 0x1

    return v0

    .line 1139
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isInterceptAsUsual(ZLjava/lang/String;Ljava/lang/String;ILandroid/content/Intent;Ljava/lang/String;IZZ)Z
.end method

.method protected isProtectedCallee(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "calleePkg"  # Ljava/lang/String;
    .param p2, "calleeUid"  # I

    .line 1123
    invoke-static {p1}, Lcom/android/server/hips/utils/HipsUtils;->isSystemApp(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 1124
    return v1

    .line 1127
    :cond_8
    invoke-static {p1}, Lcom/android/server/hips/utils/HipsUtils;->isHasSystemSignature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1128
    return v1

    .line 1131
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method protected isProtectedCaller(Ljava/lang/String;)Z
    .registers 4
    .param p1, "callerPkg"  # Ljava/lang/String;

    .line 1112
    const-string v0, "com.android.systemui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1113
    const-string v0, "com.flyme.systemuitools"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1114
    invoke-static {p1}, Lcom/android/server/hips/utils/HipsUtils;->isSystemApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1115
    invoke-static {p1}, Lcom/android/server/hips/utils/HipsUtils;->isHasSystemSignature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_1f

    .line 1119
    :cond_1d
    const/4 v0, 0x0

    return v0

    .line 1116
    :cond_1f
    :goto_1f
    sget-boolean v0, Lcom/android/server/hips/intercept/InterceptionManager;->DEBUG_INTERCEPTION:Z

    if-eqz v0, :cond_3f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isProtectedCaller the calleePkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is protected package."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Interception"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    :cond_3f
    const/4 v0, 0x1

    return v0
.end method
