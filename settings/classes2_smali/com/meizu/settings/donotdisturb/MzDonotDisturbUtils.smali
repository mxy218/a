.class public Lcom/meizu/settings/donotdisturb/MzDonotDisturbUtils;
.super Ljava/lang/Object;
.source "MzDonotDisturbUtils.java"


# static fields
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


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v0, 0x7

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 28
    fill-array-data v2, :array_78

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_80

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_88

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_90

    const/4 v5, 0x3

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_98

    const/4 v5, 0x4

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_a0

    const/4 v5, 0x5

    aput-object v2, v0, v5

    new-array v1, v1, [I

    fill-array-data v1, :array_a8

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbUtils;->WEEK_DAYS_ARRAYS:[[I

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbUtils;->WEEK_DAY_BIT_SET_INDEX_TO_VALUE:Ljava/util/HashMap;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbUtils;->WEEK_DAY_VALUE_TO_BIT_SET_INDEX:Ljava/util/HashMap;

    move v0, v3

    .line 49
    :goto_4c
    sget-object v1, Lcom/meizu/settings/donotdisturb/MzDonotDisturbUtils;->WEEK_DAYS_ARRAYS:[[I

    array-length v2, v1

    if-ge v0, v2, :cond_76

    .line 50
    aget-object v2, v1, v0

    aget v2, v2, v3

    .line 51
    aget-object v1, v1, v0

    aget v1, v1, v4

    .line 52
    sget-object v5, Lcom/meizu/settings/donotdisturb/MzDonotDisturbUtils;->WEEK_DAY_BIT_SET_INDEX_TO_VALUE:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v5, Lcom/meizu/settings/donotdisturb/MzDonotDisturbUtils;->WEEK_DAY_VALUE_TO_BIT_SET_INDEX:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    :cond_76
    return-void

    nop

    :array_78
    .array-data 4
        0x6
        0x1
    .end array-data

    :array_80
    .array-data 4
        0x5
        0x7
    .end array-data

    :array_88
    .array-data 4
        0x4
        0x6
    .end array-data

    :array_90
    .array-data 4
        0x3
        0x5
    .end array-data

    :array_98
    .array-data 4
        0x2
        0x4
    .end array-data

    :array_a0
    .array-data 4
        0x1
        0x3
    .end array-data

    :array_a8
    .array-data 4
        0x0
        0x2
    .end array-data
.end method

.method public static binaryToRepeatDay(I)[I
    .registers 5

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    const/4 v3, 0x6

    if-gt v2, v3, :cond_1a

    shr-int v3, p0, v2

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_17

    .line 90
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 94
    :cond_1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [I

    .line 95
    :goto_20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3b

    .line 96
    sget-object v2, Lcom/meizu/settings/donotdisturb/MzDonotDisturbUtils;->WEEK_DAY_BIT_SET_INDEX_TO_VALUE:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 97
    aput v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_3b
    return-object p0
.end method

.method public static getCalendarDayFromBitIndex(I)I
    .registers 2

    .line 107
    sget-object v0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbUtils;->WEEK_DAY_BIT_SET_INDEX_TO_VALUE:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static isScheduleOnExist(Landroid/content/Context;)Z
    .registers 4

    .line 151
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;->loadScheduleRules(Landroid/app/NotificationManager;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_14

    .line 152
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    move v2, v0

    goto :goto_15

    :cond_14
    move v2, v1

    :goto_15
    if-eqz v2, :cond_30

    .line 155
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$RuleWithId;

    .line 156
    iget-object v2, v2, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList$RuleWithId;->rule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v2}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_31

    :cond_30
    move v0, v1

    :goto_31
    return v0
.end method

.method public static repeatDayToBinary([I)I
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 71
    :cond_4
    array-length v1, p0

    move v2, v0

    :goto_6
    if-ge v0, v1, :cond_21

    aget v3, p0, v0

    .line 72
    sget-object v4, Lcom/meizu/settings/donotdisturb/MzDonotDisturbUtils;->WEEK_DAY_VALUE_TO_BIT_SET_INDEX:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    shl-int v3, v4, v3

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_21
    return v2
.end method

.method public static startDoNotDisturb(Landroid/content/Context;)V
    .registers 4

    .line 58
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "MzDonotDisturbPreferenceFragment"

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public static stopDoNotDisturb(Landroid/content/Context;)V
    .registers 4

    .line 63
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "MzDonotDisturbPreferenceFragment"

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method
