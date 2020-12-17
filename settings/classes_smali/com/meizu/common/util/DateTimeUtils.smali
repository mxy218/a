.class public Lcom/meizu/common/util/DateTimeUtils;
.super Ljava/lang/Object;
.source "DateTimeUtils.java"


# direct methods
.method public static getWeek(Landroid/content/Context;III)Ljava/lang/String;
    .registers 5

    .line 548
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 549
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    const/4 p1, 0x7

    .line 550
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 552
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/meizu/common/R$array;->mc_custom_weekday:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    if-ltz p1, :cond_21

    .line 553
    array-length p2, p0

    if-lt p1, p2, :cond_1e

    goto :goto_21

    .line 556
    :cond_1e
    aget-object p0, p0, p1

    return-object p0

    :cond_21
    :goto_21
    const-string p0, ""

    return-object p0
.end method
