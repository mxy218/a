.class Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$1;
.super Ljava/lang/Object;
.source "MzDonotDisturbScheduleList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$RuleWithId;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private key(Landroid/app/AutomaticZenRule;)Ljava/lang/String;
    .registers 3

    .line 102
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_19

    .line 103
    :cond_c
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x2

    goto :goto_19

    :cond_18
    const/4 p0, 0x3

    .line 105
    :goto_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public compare(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$RuleWithId;Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$RuleWithId;)I
    .registers 11

    .line 77
    iget-object v0, p1, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$RuleWithId;->rule:Landroid/app/AutomaticZenRule;

    .line 78
    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    .line 79
    iget-object v1, p2, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$RuleWithId;->rule:Landroid/app/AutomaticZenRule;

    .line 80
    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v1

    if-eqz v0, :cond_31

    if-eqz v1, :cond_31

    .line 82
    iget v2, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3c

    mul-long/2addr v2, v4

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    int-to-long v6, v0

    add-long/2addr v2, v6

    .line 84
    iget v0, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    int-to-long v6, v0

    mul-long/2addr v6, v4

    iget v0, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    int-to-long v0, v0

    add-long/2addr v6, v0

    .line 86
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-eqz v0, :cond_31

    return v0

    .line 92
    :cond_31
    iget-object v0, p1, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$RuleWithId;->rule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getCreationTime()J

    move-result-wide v0

    iget-object v2, p2, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$RuleWithId;->rule:Landroid/app/AutomaticZenRule;

    .line 93
    invoke-virtual {v2}, Landroid/app/AutomaticZenRule;->getCreationTime()J

    move-result-wide v2

    .line 92
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-eqz v0, :cond_44

    return v0

    .line 98
    :cond_44
    iget-object p1, p1, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$RuleWithId;->rule:Landroid/app/AutomaticZenRule;

    invoke-direct {p0, p1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$1;->key(Landroid/app/AutomaticZenRule;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p2, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$RuleWithId;->rule:Landroid/app/AutomaticZenRule;

    invoke-direct {p0, p2}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$1;->key(Landroid/app/AutomaticZenRule;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 74
    check-cast p1, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$RuleWithId;

    check-cast p2, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$RuleWithId;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$1;->compare(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$RuleWithId;Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$RuleWithId;)I

    move-result p0

    return p0
.end method
