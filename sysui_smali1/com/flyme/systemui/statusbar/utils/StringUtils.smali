.class public Lcom/flyme/systemui/statusbar/utils/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method public static equals(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_a

    if-nez p1, :cond_5

    goto :goto_a

    .line 38
    :cond_5
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_a
    :goto_a
    if-nez p0, :cond_10

    if-nez p1, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public static join([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    if-eqz p0, :cond_2f

    .line 10
    array-length v0, p0

    if-lez v0, :cond_2f

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 12
    :goto_b
    array-length v2, p0

    if-ge v1, v2, :cond_2a

    if-nez v1, :cond_13

    .line 13
    aget-object v2, p0, v1

    goto :goto_24

    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 15
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2f
    const/4 p0, 0x0

    return-object p0
.end method
