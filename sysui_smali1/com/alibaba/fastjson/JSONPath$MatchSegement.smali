.class Lcom/alibaba/fastjson/JSONPath$MatchSegement;
.super Ljava/lang/Object;
.source "JSONPath.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MatchSegement"
.end annotation


# instance fields
.field private final containsValues:[Ljava/lang/String;

.field private final endsWithValue:Ljava/lang/String;

.field private final minLength:I

.field private final not:Z

.field private final propertyName:Ljava/lang/String;

.field private final startsWithValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V
    .registers 6

    .line 1691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1692
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->propertyName:Ljava/lang/String;

    .line 1693
    iput-object p2, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->startsWithValue:Ljava/lang/String;

    .line 1694
    iput-object p3, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->endsWithValue:Ljava/lang/String;

    .line 1695
    iput-object p4, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->containsValues:[Ljava/lang/String;

    .line 1696
    iput-boolean p5, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->not:Z

    const/4 p1, 0x0

    if-eqz p2, :cond_16

    .line 1700
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p1

    goto :goto_17

    :cond_16
    move p2, p1

    :goto_17
    if-eqz p3, :cond_1e

    .line 1704
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p2, p3

    :cond_1e
    if-eqz p4, :cond_2d

    .line 1708
    array-length p3, p4

    :goto_21
    if-ge p1, p3, :cond_2d

    aget-object p5, p4, p1

    .line 1709
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p5

    add-int/2addr p2, p5

    add-int/lit8 p1, p1, 0x1

    goto :goto_21

    .line 1713
    :cond_2d
    iput p2, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->minLength:I

    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 8

    .line 1717
    iget-object p2, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->propertyName:Ljava/lang/String;

    const/4 p3, 0x0

    invoke-virtual {p1, p4, p2, p3}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_a

    return p3

    .line 1723
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1725
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    iget p4, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->minLength:I

    if-ge p2, p4, :cond_19

    .line 1726
    iget-boolean p0, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->not:Z

    return p0

    .line 1730
    :cond_19
    iget-object p2, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->startsWithValue:Ljava/lang/String;

    if-eqz p2, :cond_2e

    .line 1731
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_26

    .line 1732
    iget-boolean p0, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->not:Z

    return p0

    .line 1734
    :cond_26
    iget-object p2, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->startsWithValue:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p3

    goto :goto_2f

    :cond_2e
    move p2, p3

    .line 1737
    :goto_2f
    iget-object p4, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->containsValues:[Ljava/lang/String;

    if-eqz p4, :cond_4a

    .line 1738
    array-length v0, p4

    :goto_34
    if-ge p3, v0, :cond_4a

    aget-object v1, p4, p3

    .line 1739
    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p2

    const/4 v2, -0x1

    if-ne p2, v2, :cond_42

    .line 1741
    iget-boolean p0, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->not:Z

    return p0

    .line 1743
    :cond_42
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr p2, v1

    add-int/lit8 p3, p3, 0x1

    goto :goto_34

    .line 1747
    :cond_4a
    iget-object p2, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->endsWithValue:Ljava/lang/String;

    if-eqz p2, :cond_57

    .line 1748
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_57

    .line 1749
    iget-boolean p0, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->not:Z

    return p0

    .line 1753
    :cond_57
    iget-boolean p0, p0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;->not:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
