.class public Lcom/android/settings/notification/ZenRuleInfo;
.super Ljava/lang/Object;
.source "ZenRuleInfo.java"


# instance fields
.field public configurationActivity:Landroid/content/ComponentName;

.field public defaultConditionId:Landroid/net/Uri;

.field public id:Ljava/lang/String;

.field public isSystem:Z

.field public packageLabel:Ljava/lang/CharSequence;

.field public packageName:Ljava/lang/String;

.field public ruleInstanceLimit:I

.field public serviceComponent:Landroid/content/ComponentName;

.field public settingsAction:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lcom/android/settings/notification/ZenRuleInfo;->ruleInstanceLimit:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_b1

    .line 10
    const-class v2, Lcom/android/settings/notification/ZenRuleInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_11

    goto/16 :goto_b1

    .line 12
    :cond_11
    check-cast p1, Lcom/android/settings/notification/ZenRuleInfo;

    .line 14
    iget-boolean v2, p0, Lcom/android/settings/notification/ZenRuleInfo;->isSystem:Z

    iget-boolean v3, p1, Lcom/android/settings/notification/ZenRuleInfo;->isSystem:Z

    if-eq v2, v3, :cond_1a

    return v1

    .line 15
    :cond_1a
    iget v2, p0, Lcom/android/settings/notification/ZenRuleInfo;->ruleInstanceLimit:I

    iget v3, p1, Lcom/android/settings/notification/ZenRuleInfo;->ruleInstanceLimit:I

    if-eq v2, v3, :cond_21

    return v1

    .line 16
    :cond_21
    iget-object v2, p0, Lcom/android/settings/notification/ZenRuleInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_2e

    iget-object v3, p1, Lcom/android/settings/notification/ZenRuleInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    goto :goto_32

    :cond_2e
    iget-object v2, p1, Lcom/android/settings/notification/ZenRuleInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_33

    :goto_32
    return v1

    .line 18
    :cond_33
    iget-object v2, p0, Lcom/android/settings/notification/ZenRuleInfo;->title:Ljava/lang/String;

    if-eqz v2, :cond_40

    iget-object v3, p1, Lcom/android/settings/notification/ZenRuleInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    goto :goto_44

    :cond_40
    iget-object v2, p1, Lcom/android/settings/notification/ZenRuleInfo;->title:Ljava/lang/String;

    if-eqz v2, :cond_45

    :goto_44
    return v1

    .line 19
    :cond_45
    iget-object v2, p0, Lcom/android/settings/notification/ZenRuleInfo;->settingsAction:Ljava/lang/String;

    if-eqz v2, :cond_52

    iget-object v3, p1, Lcom/android/settings/notification/ZenRuleInfo;->settingsAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_57

    goto :goto_56

    :cond_52
    iget-object v2, p1, Lcom/android/settings/notification/ZenRuleInfo;->settingsAction:Ljava/lang/String;

    if-eqz v2, :cond_57

    :goto_56
    return v1

    .line 21
    :cond_57
    iget-object v2, p0, Lcom/android/settings/notification/ZenRuleInfo;->configurationActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_64

    iget-object v3, p1, Lcom/android/settings/notification/ZenRuleInfo;->configurationActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_69

    goto :goto_68

    :cond_64
    iget-object v2, p1, Lcom/android/settings/notification/ZenRuleInfo;->configurationActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_69

    :goto_68
    return v1

    .line 23
    :cond_69
    iget-object v2, p0, Lcom/android/settings/notification/ZenRuleInfo;->defaultConditionId:Landroid/net/Uri;

    if-eqz v2, :cond_76

    iget-object v3, p1, Lcom/android/settings/notification/ZenRuleInfo;->defaultConditionId:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7b

    goto :goto_7a

    :cond_76
    iget-object v2, p1, Lcom/android/settings/notification/ZenRuleInfo;->defaultConditionId:Landroid/net/Uri;

    if-eqz v2, :cond_7b

    :goto_7a
    return v1

    .line 25
    :cond_7b
    iget-object v2, p0, Lcom/android/settings/notification/ZenRuleInfo;->serviceComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_88

    iget-object v3, p1, Lcom/android/settings/notification/ZenRuleInfo;->serviceComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8d

    goto :goto_8c

    :cond_88
    iget-object v2, p1, Lcom/android/settings/notification/ZenRuleInfo;->serviceComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_8d

    :goto_8c
    return v1

    .line 27
    :cond_8d
    iget-object v2, p0, Lcom/android/settings/notification/ZenRuleInfo;->id:Ljava/lang/String;

    if-eqz v2, :cond_9a

    iget-object v3, p1, Lcom/android/settings/notification/ZenRuleInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9f

    goto :goto_9e

    :cond_9a
    iget-object v2, p1, Lcom/android/settings/notification/ZenRuleInfo;->id:Ljava/lang/String;

    if-eqz v2, :cond_9f

    :goto_9e
    return v1

    .line 29
    :cond_9f
    iget-object p0, p0, Lcom/android/settings/notification/ZenRuleInfo;->packageLabel:Ljava/lang/CharSequence;

    if-eqz p0, :cond_aa

    iget-object p1, p1, Lcom/android/settings/notification/ZenRuleInfo;->packageLabel:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_b0

    .line 30
    :cond_aa
    iget-object p0, p1, Lcom/android/settings/notification/ZenRuleInfo;->packageLabel:Ljava/lang/CharSequence;

    if-nez p0, :cond_af

    goto :goto_b0

    :cond_af
    move v0, v1

    :goto_b0
    return v0

    :cond_b1
    :goto_b1
    return v1
.end method
