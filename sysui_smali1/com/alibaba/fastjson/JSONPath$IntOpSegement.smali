.class Lcom/alibaba/fastjson/JSONPath$IntOpSegement;
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
    name = "IntOpSegement"
.end annotation


# instance fields
.field private final op:Lcom/alibaba/fastjson/JSONPath$Operator;

.field private final propertyName:Ljava/lang/String;

.field private final value:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JLcom/alibaba/fastjson/JSONPath$Operator;)V
    .registers 5

    .line 1601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1602
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->propertyName:Ljava/lang/String;

    .line 1603
    iput-wide p2, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    .line 1604
    iput-object p4, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 9

    .line 1608
    iget-object p2, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->propertyName:Ljava/lang/String;

    const/4 p3, 0x0

    invoke-virtual {p1, p4, p2, p3}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_a

    return p3

    .line 1614
    :cond_a
    instance-of p2, p1, Ljava/lang/Number;

    if-nez p2, :cond_f

    return p3

    .line 1618
    :cond_f
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    .line 1620
    iget-object p4, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    const/4 v1, 0x1

    if-ne p4, v0, :cond_24

    .line 1621
    iget-wide v2, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    cmp-long p0, p1, v2

    if-nez p0, :cond_23

    move p3, v1

    :cond_23
    return p3

    .line 1622
    :cond_24
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne p4, v0, :cond_30

    .line 1623
    iget-wide v2, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    cmp-long p0, p1, v2

    if-eqz p0, :cond_2f

    move p3, v1

    :cond_2f
    return p3

    .line 1624
    :cond_30
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->GE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne p4, v0, :cond_3c

    .line 1625
    iget-wide v2, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    cmp-long p0, p1, v2

    if-ltz p0, :cond_3b

    move p3, v1

    :cond_3b
    return p3

    .line 1626
    :cond_3c
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->GT:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne p4, v0, :cond_48

    .line 1627
    iget-wide v2, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    cmp-long p0, p1, v2

    if-lez p0, :cond_47

    move p3, v1

    :cond_47
    return p3

    .line 1628
    :cond_48
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->LE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne p4, v0, :cond_54

    .line 1629
    iget-wide v2, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    cmp-long p0, p1, v2

    if-gtz p0, :cond_53

    move p3, v1

    :cond_53
    return p3

    .line 1630
    :cond_54
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->LT:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne p4, v0, :cond_5f

    .line 1631
    iget-wide v2, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    cmp-long p0, p1, v2

    if-gez p0, :cond_5f

    move p3, v1

    :cond_5f
    return p3
.end method
