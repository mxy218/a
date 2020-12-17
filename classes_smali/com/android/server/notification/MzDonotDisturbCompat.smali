.class public Lcom/android/server/notification/MzDonotDisturbCompat;
.super Ljava/lang/Object;
.source "MzDonotDisturbCompat.java"


# static fields
.field private static ACTION_CLEAR_AUTOMATIC_RULE:Ljava/lang/String; = null

.field private static final ACTION_START_DND:Ljava/lang/String; = "meizu.intent.action.DO_NOT_DISTURB_START"

.field private static final ACTION_STOP_DND:Ljava/lang/String; = "meizu.intent.action.DO_NOT_DISTURB_END"

.field private static final ACTION_UPDATE_AUTOMATIC_RULE:Ljava/lang/String; = "meizu.intent.action.DO_NOT_DISTURB_UPDATE_RULE"

.field private static final DBG:Z

.field private static final KEY_OP_TYPE_EXTRA:Ljava/lang/String; = "key_op_type_extra"

.field private static KEY_PACKAGE_NAME_EXTRA:Ljava/lang/String; = null

.field private static final KEY_RULE_END_HOUR:Ljava/lang/String; = "key_rule_end_hour"

.field private static final KEY_RULE_END_MINTUE:Ljava/lang/String; = "key_rule_end_mintue"

.field private static final KEY_RULE_NAME:Ljava/lang/String; = "key_rule_name"

.field private static final KEY_RULE_REPEAT_DAYS:Ljava/lang/String; = "key_rule_repeat_days"

.field private static final KEY_RULE_START_HOUR:Ljava/lang/String; = "key_rule_start_hour"

.field private static final KEY_RULE_START_MINTUE:Ljava/lang/String; = "key_rule_start_mintue"

.field private static final MSG_CLEAR_AUTOMATIC_RULES:I = 0x3

.field private static final MSG_DISABLE_MANUAL_RULE:I = 0x1

.field private static final MSG_ENABLE_MANUAL_RULE:I = 0x0

.field private static final MSG_UPDATE_AUTOMATIC_RULE:I = 0x2

.field private static final OP_ADD:I = 0x0

.field private static final OP_MODIFY:I = 0x2

.field private static final OP_REMOVE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MzDonotDisturbCompat"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHandle:Landroid/os/Handler;

.field private mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/notification/MzDonotDisturbCompat;->DBG:Z

    .line 48
    const-string/jumbo v0, "meizu.intent.action.DO_NOT_DISTURB_CLEAR_RULES"

    sput-object v0, Lcom/android/server/notification/MzDonotDisturbCompat;->ACTION_CLEAR_AUTOMATIC_RULE:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, "key_package_name_extra"

    sput-object v0, Lcom/android/server/notification/MzDonotDisturbCompat;->KEY_PACKAGE_NAME_EXTRA:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/notification/ZenModeHelper;)V
    .registers 4
    .param p1, "c"  # Landroid/content/Context;
    .param p2, "zenModeHelper"  # Lcom/android/server/notification/ZenModeHelper;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/android/server/notification/MzDonotDisturbCompat$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/MzDonotDisturbCompat$1;-><init>(Lcom/android/server/notification/MzDonotDisturbCompat;)V

    iput-object v0, p0, Lcom/android/server/notification/MzDonotDisturbCompat;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 82
    new-instance v0, Lcom/android/server/notification/MzDonotDisturbCompat$2;

    invoke-direct {v0, p0}, Lcom/android/server/notification/MzDonotDisturbCompat$2;-><init>(Lcom/android/server/notification/MzDonotDisturbCompat;)V

    iput-object v0, p0, Lcom/android/server/notification/MzDonotDisturbCompat;->mHandle:Landroid/os/Handler;

    .line 114
    iput-object p1, p0, Lcom/android/server/notification/MzDonotDisturbCompat;->mContext:Landroid/content/Context;

    .line 115
    iput-object p2, p0, Lcom/android/server/notification/MzDonotDisturbCompat;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/notification/MzDonotDisturbCompat;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/MzDonotDisturbCompat;

    .line 25
    iget-object v0, p0, Lcom/android/server/notification/MzDonotDisturbCompat;->mHandle:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 25
    sget-object v0, Lcom/android/server/notification/MzDonotDisturbCompat;->ACTION_CLEAR_AUTOMATIC_RULE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Z
    .registers 1

    .line 25
    sget-boolean v0, Lcom/android/server/notification/MzDonotDisturbCompat;->DBG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/notification/MzDonotDisturbCompat;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/notification/MzDonotDisturbCompat;

    .line 25
    invoke-direct {p0}, Lcom/android/server/notification/MzDonotDisturbCompat;->handleEnableManualRule()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/notification/MzDonotDisturbCompat;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/notification/MzDonotDisturbCompat;

    .line 25
    invoke-direct {p0}, Lcom/android/server/notification/MzDonotDisturbCompat;->handleDisableManualRule()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/notification/MzDonotDisturbCompat;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/MzDonotDisturbCompat;
    .param p1, "x1"  # Landroid/content/Intent;

    .line 25
    invoke-direct {p0, p1}, Lcom/android/server/notification/MzDonotDisturbCompat;->handleUpdateAutomaticRule(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/notification/MzDonotDisturbCompat;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/MzDonotDisturbCompat;
    .param p1, "x1"  # Landroid/content/Intent;

    .line 25
    invoke-direct {p0, p1}, Lcom/android/server/notification/MzDonotDisturbCompat;->handleClearAutomaticRule(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/notification/MzDonotDisturbCompat;)Lcom/android/server/notification/ZenModeHelper;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/MzDonotDisturbCompat;

    .line 25
    iget-object v0, p0, Lcom/android/server/notification/MzDonotDisturbCompat;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    return-object v0
.end method

.method private buildInfoFromIntent(Landroid/content/Intent;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    .registers 9
    .param p1, "intent"  # Landroid/content/Intent;

    .line 232
    const/4 v0, -0x1

    const-string/jumbo v1, "key_rule_start_hour"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 233
    .local v1, "startHour":I
    const-string/jumbo v2, "key_rule_start_mintue"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 234
    .local v2, "startMinute":I
    const-string/jumbo v3, "key_rule_end_hour"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 235
    .local v3, "endHour":I
    const-string/jumbo v4, "key_rule_end_mintue"

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 236
    .local v4, "endMinute":I
    const-string/jumbo v5, "key_rule_repeat_days"

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 237
    .local v0, "repeatDays":I
    sget-boolean v5, Lcom/android/server/notification/MzDonotDisturbCompat;->DBG:Z

    if-eqz v5, :cond_5e

    .line 238
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buildInfoFromIntent startHour = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " startMinute = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " endHour = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " endMinute = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " repeatDays = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MzDonotDisturbCompat"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_5e
    if-ltz v1, :cond_7d

    if-ltz v2, :cond_7d

    if-ltz v3, :cond_7d

    if-ltz v4, :cond_7d

    if-gez v0, :cond_69

    goto :goto_7d

    .line 250
    :cond_69
    new-instance v5, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {v5}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    .line 251
    .local v5, "info":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    iput v1, v5, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    .line 252
    iput v2, v5, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    .line 253
    iput v3, v5, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 254
    iput v4, v5, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    .line 255
    invoke-static {v0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->binaryToRepeatDay(I)[I

    move-result-object v6

    iput-object v6, v5, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 256
    return-object v5

    .line 248
    .end local v5  # "info":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    :cond_7d
    :goto_7d
    const/4 v5, 0x0

    return-object v5
.end method

.method public static createAutomaticZenRule(Ljava/lang/String;Landroid/net/Uri;)Landroid/app/AutomaticZenRule;
    .registers 9
    .param p0, "ruleName"  # Ljava/lang/String;
    .param p1, "conditionId"  # Landroid/net/Uri;

    .line 176
    new-instance v6, Landroid/app/AutomaticZenRule;

    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getScheduleConditionProvider()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v4, 0x2

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Landroid/app/AutomaticZenRule;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/net/Uri;IZ)V

    return-object v6
.end method

.method private doAdd(Landroid/service/notification/ZenModeConfig;Landroid/content/Intent;)V
    .registers 8
    .param p1, "config"  # Landroid/service/notification/ZenModeConfig;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 164
    invoke-direct {p0, p2}, Lcom/android/server/notification/MzDonotDisturbCompat;->buildInfoFromIntent(Landroid/content/Intent;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    .line 165
    .local v0, "info":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    const-string v1, "MzDonotDisturbCompat"

    if-eqz v0, :cond_24

    if-eqz p1, :cond_24

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    if-nez v2, :cond_f

    goto :goto_24

    .line 169
    :cond_f
    const-string/jumbo v2, "key_rule_name"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/notification/MzDonotDisturbCompat;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 172
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/notification/MzDonotDisturbCompat;->createAutomaticZenRule(Ljava/lang/String;Landroid/net/Uri;)Landroid/app/AutomaticZenRule;

    move-result-object v4

    .line 171
    invoke-virtual {v3, v4, v1}, Lcom/android/server/notification/ZenModeHelper;->addAutomaticZenRule(Landroid/app/AutomaticZenRule;Ljava/lang/String;)Ljava/lang/String;

    .line 173
    return-void

    .line 166
    .end local v2  # "name":Ljava/lang/String;
    :cond_24
    :goto_24
    const-string v2, "doAdd info is null,return"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-void
.end method

.method private doModify(Landroid/service/notification/ZenModeConfig;Landroid/content/Intent;)V
    .registers 9
    .param p1, "config"  # Landroid/service/notification/ZenModeConfig;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 182
    const-string/jumbo v0, "key_rule_name"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "name":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/notification/MzDonotDisturbCompat;->getZenRuleId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "id":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/notification/MzDonotDisturbCompat;->getAutomaticZenRuleById(Ljava/lang/String;)Landroid/app/AutomaticZenRule;

    move-result-object v2

    .line 185
    .local v2, "ruleToUpdate":Landroid/app/AutomaticZenRule;
    const-string v3, "MzDonotDisturbCompat"

    if-nez v2, :cond_19

    .line 186
    const-string v4, "doModify can not find zen rule, return"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-void

    .line 189
    :cond_19
    invoke-direct {p0, p2}, Lcom/android/server/notification/MzDonotDisturbCompat;->buildInfoFromIntent(Landroid/content/Intent;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v4

    .line 190
    .local v4, "info":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    if-nez v4, :cond_25

    .line 191
    const-string v5, "doModify can not build info,return"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void

    .line 194
    :cond_25
    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/AutomaticZenRule;->setConditionId(Landroid/net/Uri;)V

    .line 195
    iget-object v5, p0, Lcom/android/server/notification/MzDonotDisturbCompat;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v5, v1, v2, v3}, Lcom/android/server/notification/ZenModeHelper;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Ljava/lang/String;)Z

    .line 196
    return-void
.end method

.method private doRemove(Landroid/service/notification/ZenModeConfig;Landroid/content/Intent;)V
    .registers 10
    .param p1, "config"  # Landroid/service/notification/ZenModeConfig;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 217
    const-string v0, "MzDonotDisturbCompat"

    if-eqz p1, :cond_3c

    iget-object v1, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    if-nez v1, :cond_9

    goto :goto_3c

    .line 221
    :cond_9
    const-string/jumbo v1, "key_rule_name"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 223
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    if-ge v3, v2, :cond_3b

    .line 224
    iget-object v4, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 225
    .local v4, "tmpName":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 226
    iget-object v5, p0, Lcom/android/server/notification/MzDonotDisturbCompat;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    iget-object v6, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v6, v6, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Lcom/android/server/notification/ZenModeHelper;->removeAutomaticZenRule(Ljava/lang/String;Ljava/lang/String;)Z

    .line 223
    .end local v4  # "tmpName":Ljava/lang/String;
    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 229
    .end local v3  # "i":I
    :cond_3b
    return-void

    .line 218
    .end local v1  # "name":Ljava/lang/String;
    .end local v2  # "size":I
    :cond_3c
    :goto_3c
    const-string v1, "doRemove config or config.automaticRules null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return-void
.end method

.method private getAutomaticZenRuleById(Ljava/lang/String;)Landroid/app/AutomaticZenRule;
    .registers 4
    .param p1, "id"  # Ljava/lang/String;

    .line 209
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 210
    const-string v0, "MzDonotDisturbCompat"

    const-string v1, "getAutomaticZenRuleById id is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v0, 0x0

    return-object v0

    .line 213
    :cond_f
    iget-object v0, p0, Lcom/android/server/notification/MzDonotDisturbCompat;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;

    move-result-object v0

    return-object v0
.end method

.method private getZenRuleId(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "name"  # Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lcom/android/server/notification/MzDonotDisturbCompat;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getZenRules()Ljava/util/List;

    move-result-object v0

    .line 200
    .local v0, "zenRules":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/ZenModeConfig$ZenRule;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 201
    .local v2, "entry":Landroid/service/notification/ZenModeConfig$ZenRule;
    if-eqz v2, :cond_23

    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 202
    iget-object v1, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    return-object v1

    .line 204
    .end local v2  # "entry":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_23
    goto :goto_a

    .line 205
    :cond_24
    const/4 v1, 0x0

    return-object v1
.end method

.method private handleClearAutomaticRule(Landroid/content/Intent;)V
    .registers 10
    .param p1, "intent"  # Landroid/content/Intent;

    .line 260
    sget-object v0, Lcom/android/server/notification/MzDonotDisturbCompat;->KEY_PACKAGE_NAME_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "MzDonotDisturbCompat"

    if-eqz v1, :cond_14

    .line 262
    const-string v1, "handleClearAutomaticRule packageName is null, return"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return-void

    .line 265
    :cond_14
    iget-object v1, p0, Lcom/android/server/notification/MzDonotDisturbCompat;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 266
    .local v1, "config":Landroid/service/notification/ZenModeConfig;
    if-eqz v1, :cond_6d

    iget-object v3, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    if-nez v3, :cond_21

    goto :goto_6d

    .line 270
    :cond_21
    iget-object v3, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 271
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_28
    if-ge v4, v3, :cond_6c

    .line 272
    iget-object v5, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v5, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 273
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_69

    .line 274
    sget-boolean v6, Lcom/android/server/notification/MzDonotDisturbCompat;->DBG:Z

    if-eqz v6, :cond_5a

    .line 275
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleClearAutomaticRule packageName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",   name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_5a
    iget-object v6, p0, Lcom/android/server/notification/MzDonotDisturbCompat;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    iget-object v7, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v6, v7, v2}, Lcom/android/server/notification/ZenModeHelper;->removeAutomaticZenRule(Ljava/lang/String;Ljava/lang/String;)Z

    .line 271
    .end local v5  # "name":Ljava/lang/String;
    :cond_69
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 281
    .end local v4  # "i":I
    :cond_6c
    return-void

    .line 267
    .end local v3  # "size":I
    :cond_6d
    :goto_6d
    const-string v3, "handleClearAutomaticRule config or config.automaticRules null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    return-void
.end method

.method private handleDisableManualRule()V
    .registers 5

    .line 133
    iget-object v0, p0, Lcom/android/server/notification/MzDonotDisturbCompat;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "MzDonotDisturbCompat"

    invoke-virtual {v0, v2, v1, v1, v3}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method private handleEnableManualRule()V
    .registers 5

    .line 128
    iget-object v0, p0, Lcom/android/server/notification/MzDonotDisturbCompat;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "MzDonotDisturbCompat"

    invoke-virtual {v0, v2, v1, v1, v3}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method private handleUpdateAutomaticRule(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"  # Landroid/content/Intent;

    .line 137
    iget-object v0, p0, Lcom/android/server/notification/MzDonotDisturbCompat;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 138
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    if-nez v0, :cond_10

    .line 139
    const-string v1, "MzDonotDisturbCompat"

    const-string v2, "handleUpdateAutomaticRule config is null,return"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void

    .line 142
    :cond_10
    const/4 v1, -0x1

    const-string/jumbo v2, "key_op_type_extra"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 143
    .local v1, "op":I
    const-string/jumbo v2, "key_rule_name"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "name":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3e

    if-gez v1, :cond_28

    goto :goto_3e

    .line 148
    :cond_28
    if-eqz v1, :cond_39

    const/4 v3, 0x1

    if-eq v1, v3, :cond_35

    const/4 v3, 0x2

    if-eq v1, v3, :cond_31

    goto :goto_3d

    .line 153
    :cond_31
    invoke-direct {p0, v0, p1}, Lcom/android/server/notification/MzDonotDisturbCompat;->doModify(Landroid/service/notification/ZenModeConfig;Landroid/content/Intent;)V

    .line 154
    goto :goto_3d

    .line 156
    :cond_35
    invoke-direct {p0, v0, p1}, Lcom/android/server/notification/MzDonotDisturbCompat;->doRemove(Landroid/service/notification/ZenModeConfig;Landroid/content/Intent;)V

    .line 157
    goto :goto_3d

    .line 150
    :cond_39
    invoke-direct {p0, v0, p1}, Lcom/android/server/notification/MzDonotDisturbCompat;->doAdd(Landroid/service/notification/ZenModeConfig;Landroid/content/Intent;)V

    .line 151
    nop

    .line 161
    :goto_3d
    return-void

    .line 146
    :cond_3e
    :goto_3e
    return-void
.end method


# virtual methods
.method public onSystemReady()V
    .registers 4

    .line 119
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 120
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "meizu.intent.action.DO_NOT_DISTURB_START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string/jumbo v1, "meizu.intent.action.DO_NOT_DISTURB_END"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    const-string/jumbo v1, "meizu.intent.action.DO_NOT_DISTURB_UPDATE_RULE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    sget-object v1, Lcom/android/server/notification/MzDonotDisturbCompat;->ACTION_CLEAR_AUTOMATIC_RULE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/android/server/notification/MzDonotDisturbCompat;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/notification/MzDonotDisturbCompat;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 125
    return-void
.end method
