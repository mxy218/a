.class Lcom/alibaba/fastjson/JSONPath$StringInSegement;
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
    name = "StringInSegement"
.end annotation


# instance fields
.field private final not:Z

.field private final propertyName:Ljava/lang/String;

.field private final values:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Z)V
    .registers 4

    .line 1574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1575
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$StringInSegement;->propertyName:Ljava/lang/String;

    .line 1576
    iput-object p2, p0, Lcom/alibaba/fastjson/JSONPath$StringInSegement;->values:[Ljava/lang/String;

    .line 1577
    iput-boolean p3, p0, Lcom/alibaba/fastjson/JSONPath$StringInSegement;->not:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6

    .line 1581
    iget-object p2, p0, Lcom/alibaba/fastjson/JSONPath$StringInSegement;->propertyName:Ljava/lang/String;

    const/4 p3, 0x0

    invoke-virtual {p1, p4, p2, p3}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    .line 1583
    iget-object p2, p0, Lcom/alibaba/fastjson/JSONPath$StringInSegement;->values:[Ljava/lang/String;

    array-length p4, p2

    :goto_a
    if-ge p3, p4, :cond_25

    aget-object v0, p2, p3

    if-ne v0, p1, :cond_15

    .line 1585
    iget-boolean p0, p0, Lcom/alibaba/fastjson/JSONPath$StringInSegement;->not:Z

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_15
    if-eqz v0, :cond_22

    .line 1586
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1587
    iget-boolean p0, p0, Lcom/alibaba/fastjson/JSONPath$StringInSegement;->not:Z

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_22
    add-int/lit8 p3, p3, 0x1

    goto :goto_a

    .line 1591
    :cond_25
    iget-boolean p0, p0, Lcom/alibaba/fastjson/JSONPath$StringInSegement;->not:Z

    return p0
.end method
