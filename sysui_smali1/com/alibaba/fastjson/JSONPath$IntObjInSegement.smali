.class Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;
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
    name = "IntObjInSegement"
.end annotation


# instance fields
.field private final not:Z

.field private final propertyName:Ljava/lang/String;

.field private final values:[Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Long;Z)V
    .registers 4

    .line 1532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1533
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->propertyName:Ljava/lang/String;

    .line 1534
    iput-object p2, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->values:[Ljava/lang/Long;

    .line 1535
    iput-boolean p3, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->not:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 8

    .line 1539
    iget-object p2, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->propertyName:Ljava/lang/String;

    const/4 p3, 0x0

    invoke-virtual {p1, p4, p2, p3}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1d

    .line 1542
    iget-object p1, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->values:[Ljava/lang/Long;

    array-length p2, p1

    :goto_c
    if-ge p3, p2, :cond_1a

    aget-object p4, p1, p3

    if-nez p4, :cond_17

    .line 1544
    iget-boolean p0, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->not:Z

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_17
    add-int/lit8 p3, p3, 0x1

    goto :goto_c

    .line 1548
    :cond_1a
    iget-boolean p0, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->not:Z

    return p0

    .line 1551
    :cond_1d
    instance-of p2, p1, Ljava/lang/Number;

    if-eqz p2, :cond_41

    .line 1552
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    .line 1553
    iget-object p4, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->values:[Ljava/lang/Long;

    array-length v0, p4

    :goto_2a
    if-ge p3, v0, :cond_41

    aget-object v1, p4, p3

    if-nez v1, :cond_31

    goto :goto_3e

    .line 1558
    :cond_31
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_3e

    .line 1559
    iget-boolean p0, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->not:Z

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_3e
    :goto_3e
    add-int/lit8 p3, p3, 0x1

    goto :goto_2a

    .line 1564
    :cond_41
    iget-boolean p0, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->not:Z

    return p0
.end method
