.class public Lcom/android/server/notification/ZenModeConditions;
.super Ljava/lang/Object;
.source "ZenModeConditions.java"

# interfaces
.implements Lcom/android/server/notification/ConditionProviders$Callback;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "ZenModeHelper"


# instance fields
.field private final mConditionProviders:Lcom/android/server/notification/ConditionProviders;

.field private final mHelper:Lcom/android/server/notification/ZenModeHelper;

.field protected final mSubscriptions:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/net/Uri;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ConditionProviders;)V
    .registers 4

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    .line 48
    iput-object p1, p0, Lcom/android/server/notification/ZenModeConditions;->mHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 49
    iput-object p2, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    .line 50
    iget-object p1, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    const-string p2, "countdown"

    invoke-virtual {p1, p2}, Lcom/android/server/notification/ConditionProviders;->isSystemProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 51
    iget-object p1, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    new-instance p2, Lcom/android/server/notification/CountdownConditionProvider;

    invoke-direct {p2}, Lcom/android/server/notification/CountdownConditionProvider;-><init>()V

    invoke-virtual {p1, p2}, Lcom/android/server/notification/ConditionProviders;->addSystemProvider(Lcom/android/server/notification/SystemConditionProviderService;)V

    .line 53
    :cond_22
    iget-object p1, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    const-string/jumbo p2, "schedule"

    invoke-virtual {p1, p2}, Lcom/android/server/notification/ConditionProviders;->isSystemProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_37

    .line 54
    iget-object p1, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    new-instance p2, Lcom/android/server/notification/ScheduleConditionProvider;

    invoke-direct {p2}, Lcom/android/server/notification/ScheduleConditionProvider;-><init>()V

    invoke-virtual {p1, p2}, Lcom/android/server/notification/ConditionProviders;->addSystemProvider(Lcom/android/server/notification/SystemConditionProviderService;)V

    .line 56
    :cond_37
    iget-object p1, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    const-string p2, "event"

    invoke-virtual {p1, p2}, Lcom/android/server/notification/ConditionProviders;->isSystemProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 57
    iget-object p1, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    new-instance p2, Lcom/android/server/notification/EventConditionProvider;

    invoke-direct {p2}, Lcom/android/server/notification/EventConditionProvider;-><init>()V

    invoke-virtual {p1, p2}, Lcom/android/server/notification/ConditionProviders;->addSystemProvider(Lcom/android/server/notification/SystemConditionProviderService;)V

    .line 59
    :cond_4b
    iget-object p1, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {p1, p0}, Lcom/android/server/notification/ConditionProviders;->setCallback(Lcom/android/server/notification/ConditionProviders$Callback;)V

    .line 60
    return-void
.end method

.method private evaluateRule(Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/util/ArraySet;Landroid/content/ComponentName;Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            "Landroid/util/ArraySet<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/content/ComponentName;",
            "Z)V"
        }
    .end annotation

    .line 125
    if-eqz p1, :cond_130

    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-nez v0, :cond_8

    goto/16 :goto_130

    .line 126
    :cond_8
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_d

    return-void

    .line 127
    :cond_d
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 128
    nop

    .line 129
    iget-object v1, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v1}, Lcom/android/server/notification/ConditionProviders;->getSystemProviders()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/SystemConditionProviderService;

    .line 130
    invoke-virtual {v4, v0}, Lcom/android/server/notification/SystemConditionProviderService;->isValidConditionId(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_43

    .line 131
    iget-object v3, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v4}, Lcom/android/server/notification/SystemConditionProviderService;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/server/notification/SystemConditionProviderService;->asInterface()Landroid/service/notification/IConditionProvider;

    move-result-object v7

    invoke-virtual {v3, v6, v0, v7}, Lcom/android/server/notification/ConditionProviders;->ensureRecordExists(Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/IConditionProvider;)V

    .line 132
    invoke-virtual {v4}, Lcom/android/server/notification/SystemConditionProviderService;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 133
    move v3, v5

    .line 135
    :cond_43
    goto :goto_1c

    .line 137
    :cond_44
    if-nez v3, :cond_7d

    .line 138
    iget-object v1, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    iget-object v4, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v4}, Lcom/android/server/notification/ConditionProviders;->findConditionProvider(Landroid/content/ComponentName;)Landroid/service/notification/IConditionProvider;

    move-result-object v1

    .line 139
    sget-boolean v4, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    if-eqz v4, :cond_74

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ensure external rule exists: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_5f

    goto :goto_60

    :cond_5f
    move v5, v2

    :goto_60
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ZenModeHelper"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_74
    if-eqz v1, :cond_7d

    .line 141
    iget-object v4, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    iget-object v5, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/server/notification/ConditionProviders;->ensureRecordExists(Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/IConditionProvider;)V

    .line 145
    :cond_7d
    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    if-nez v1, :cond_a0

    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    if-nez v1, :cond_a0

    .line 146
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No component found for automatic rule: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ZenModeHelper"

    invoke-static {p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iput-boolean v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 148
    return-void

    .line 150
    :cond_a0
    if-eqz p2, :cond_a5

    .line 151
    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_a5
    if-eqz p4, :cond_fb

    if-eqz p3, :cond_b1

    iget-object p2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {p3, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b3

    :cond_b1
    if-eqz v3, :cond_fb

    .line 157
    :cond_b3
    sget-boolean p2, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    if-eqz p2, :cond_cf

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Subscribing to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ZenModeHelper"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_cf
    iget-object p2, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    iget-object p3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    iget-object p4, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {p2, p3, p4}, Lcom/android/server/notification/ConditionProviders;->subscribeIfNecessary(Landroid/content/ComponentName;Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_ec

    .line 159
    iget-object p2, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    monitor-enter p2

    .line 160
    :try_start_de
    iget-object p3, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    iget-object p4, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {p3, p4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    monitor-exit p2

    goto :goto_fb

    :catchall_e9
    move-exception p1

    monitor-exit p2
    :try_end_eb
    .catchall {:try_start_de .. :try_end_eb} :catchall_e9

    throw p1

    .line 163
    :cond_ec
    const/4 p2, 0x0

    iput-object p2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 164
    sget-boolean p2, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    if-eqz p2, :cond_fb

    const-string p2, "ZenModeHelper"

    const-string/jumbo p3, "zmc failed to subscribe"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_fb
    :goto_fb
    iget-object p2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    if-eqz p2, :cond_12f

    iget-object p2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-nez p2, :cond_12f

    .line 169
    iget-object p2, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    iget-object p3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    iget-object p4, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {p2, p3, p4}, Lcom/android/server/notification/ConditionProviders;->findCondition(Landroid/content/ComponentName;Landroid/net/Uri;)Landroid/service/notification/Condition;

    move-result-object p2

    iput-object p2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 170
    iget-object p2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-eqz p2, :cond_12f

    sget-boolean p2, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    if-eqz p2, :cond_12f

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Found existing condition for: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ZenModeHelper"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_12f
    return-void

    .line 125
    :cond_130
    :goto_130
    return-void
.end method

.method private updateSnoozing(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .registers 4

    .line 176
    const/4 v0, 0x0

    if-eqz p1, :cond_2d

    iget-boolean v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    if-eqz v1, :cond_2d

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig$ZenRule;->isTrueOrUnknown()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 177
    iput-boolean v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 178
    sget-boolean v0, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Snoozing reset for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ZenModeHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_2b
    const/4 p1, 0x1

    return p1

    .line 181
    :cond_2d
    return v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3

    .line 63
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mSubscriptions="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method public evaluateConfig(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Z)V
    .registers 8

    .line 68
    if-nez p1, :cond_3

    return-void

    .line 69
    :cond_3
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    iget-object v0, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-eqz v0, :cond_23

    iget-object v0, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 70
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;->isTrueOrUnknown()Z

    move-result v0

    if-nez v0, :cond_23

    .line 71
    sget-boolean v0, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    if-eqz v0, :cond_21

    const-string v0, "ZenModeHelper"

    const-string v2, "evaluateConfig: clearing manual rule"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_21
    iput-object v1, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 74
    :cond_23
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 75
    iget-object v2, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {p0, v2, v0, v1, p3}, Lcom/android/server/notification/ZenModeConditions;->evaluateRule(Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/util/ArraySet;Landroid/content/ComponentName;Z)V

    .line 76
    iget-object p1, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_37
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 77
    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    if-eqz v2, :cond_4d

    .line 78
    invoke-direct {p0, v1, v0, p2, p3}, Lcom/android/server/notification/ZenModeConditions;->evaluateRule(Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/util/ArraySet;Landroid/content/ComponentName;Z)V

    .line 79
    invoke-direct {p0, v1}, Lcom/android/server/notification/ZenModeConditions;->updateSnoozing(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    .line 81
    :cond_4d
    goto :goto_37

    .line 83
    :cond_4e
    iget-object p1, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    monitor-enter p1

    .line 84
    :try_start_51
    iget-object p2, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    .line 85
    add-int/lit8 p2, p2, -0x1

    :goto_59
    if-ltz p2, :cond_80

    .line 86
    iget-object v1, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 87
    iget-object v2, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 88
    if-eqz p3, :cond_7d

    .line 89
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7d

    .line 90
    iget-object v3, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v3, v2, v1}, Lcom/android/server/notification/ConditionProviders;->unsubscribeIfNecessary(Landroid/content/ComponentName;Landroid/net/Uri;)V

    .line 91
    iget-object v1, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 85
    :cond_7d
    add-int/lit8 p2, p2, -0x1

    goto :goto_59

    .line 95
    :cond_80
    monitor-exit p1

    .line 96
    return-void

    .line 95
    :catchall_82
    move-exception p2

    monitor-exit p1
    :try_end_84
    .catchall {:try_start_51 .. :try_end_84} :catchall_82

    throw p2
.end method

.method public onBootComplete()V
    .registers 1

    .line 101
    return-void
.end method

.method public onConditionChanged(Landroid/net/Uri;Landroid/service/notification/Condition;)V
    .registers 5

    .line 116
    sget-boolean v0, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onConditionChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZenModeHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_23
    iget-object v0, p0, Lcom/android/server/notification/ZenModeConditions;->mHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 118
    if-nez v0, :cond_2c

    return-void

    .line 119
    :cond_2c
    iget-object v0, p0, Lcom/android/server/notification/ZenModeConditions;->mHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/ZenModeHelper;->setAutomaticZenRuleState(Landroid/net/Uri;Landroid/service/notification/Condition;)V

    .line 120
    return-void
.end method

.method public onServiceAdded(Landroid/content/ComponentName;)V
    .registers 5

    .line 110
    sget-boolean v0, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServiceAdded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZenModeHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_1b
    iget-object v0, p0, Lcom/android/server/notification/ZenModeConditions;->mHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    const-string/jumbo v2, "zmc.onServiceAdded"

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/notification/ZenModeHelper;->setConfig(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public onUserSwitched()V
    .registers 1

    .line 106
    return-void
.end method
