.class Lcom/alibaba/fastjson/JSONPath$StringOpSegement;
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
    name = "StringOpSegement"
.end annotation


# instance fields
.field private final op:Lcom/alibaba/fastjson/JSONPath$Operator;

.field private final propertyName:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONPath$Operator;)V
    .registers 4

    .line 1794
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1795
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;->propertyName:Ljava/lang/String;

    .line 1796
    iput-object p2, p0, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;->value:Ljava/lang/String;

    .line 1797
    iput-object p3, p0, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6

    .line 1801
    iget-object p2, p0, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;->propertyName:Ljava/lang/String;

    const/4 p3, 0x0

    invoke-virtual {p1, p4, p2, p3}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    .line 1803
    iget-object p2, p0, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    sget-object p4, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne p2, p4, :cond_14

    .line 1804
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;->value:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 1805
    :cond_14
    sget-object p4, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    const/4 v0, 0x1

    if-ne p2, p4, :cond_21

    .line 1806
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;->value:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_21
    if-nez p1, :cond_24

    return p3

    .line 1813
    :cond_24
    iget-object p2, p0, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;->value:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    .line 1814
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    sget-object p2, Lcom/alibaba/fastjson/JSONPath$Operator;->GE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne p0, p2, :cond_38

    if-gtz p1, :cond_37

    move p3, v0

    :cond_37
    return p3

    .line 1816
    :cond_38
    sget-object p2, Lcom/alibaba/fastjson/JSONPath$Operator;->GT:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne p0, p2, :cond_40

    if-gez p1, :cond_3f

    move p3, v0

    :cond_3f
    return p3

    .line 1818
    :cond_40
    sget-object p2, Lcom/alibaba/fastjson/JSONPath$Operator;->LE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne p0, p2, :cond_48

    if-ltz p1, :cond_47

    move p3, v0

    :cond_47
    return p3

    .line 1820
    :cond_48
    sget-object p2, Lcom/alibaba/fastjson/JSONPath$Operator;->LT:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne p0, p2, :cond_4f

    if-lez p1, :cond_4f

    move p3, v0

    :cond_4f
    return p3
.end method
