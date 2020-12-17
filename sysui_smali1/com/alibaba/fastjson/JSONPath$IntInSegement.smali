.class Lcom/alibaba/fastjson/JSONPath$IntInSegement;
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
    name = "IntInSegement"
.end annotation


# instance fields
.field private final not:Z

.field private final propertyName:Ljava/lang/String;

.field private final values:[J


# direct methods
.method public constructor <init>(Ljava/lang/String;[JZ)V
    .registers 4

    .line 1468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1469
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$IntInSegement;->propertyName:Ljava/lang/String;

    .line 1470
    iput-object p2, p0, Lcom/alibaba/fastjson/JSONPath$IntInSegement;->values:[J

    .line 1471
    iput-boolean p3, p0, Lcom/alibaba/fastjson/JSONPath$IntInSegement;->not:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 8

    .line 1475
    iget-object p2, p0, Lcom/alibaba/fastjson/JSONPath$IntInSegement;->propertyName:Ljava/lang/String;

    const/4 p3, 0x0

    invoke-virtual {p1, p4, p2, p3}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_a

    return p3

    .line 1481
    :cond_a
    instance-of p2, p1, Ljava/lang/Number;

    if-eqz p2, :cond_27

    .line 1482
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    .line 1483
    iget-object p4, p0, Lcom/alibaba/fastjson/JSONPath$IntInSegement;->values:[J

    array-length v0, p4

    :goto_17
    if-ge p3, v0, :cond_27

    aget-wide v1, p4, p3

    cmp-long v1, v1, p1

    if-nez v1, :cond_24

    .line 1485
    iget-boolean p0, p0, Lcom/alibaba/fastjson/JSONPath$IntInSegement;->not:Z

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_24
    add-int/lit8 p3, p3, 0x1

    goto :goto_17

    .line 1490
    :cond_27
    iget-boolean p0, p0, Lcom/alibaba/fastjson/JSONPath$IntInSegement;->not:Z

    return p0
.end method
