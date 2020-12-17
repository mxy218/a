.class Lcom/alibaba/fastjson/JSONPath$MultiPropertySegement;
.super Ljava/lang/Object;
.source "JSONPath.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$Segement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MultiPropertySegement"
.end annotation


# instance fields
.field private final propertyNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .registers 2

    .line 1310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1311
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegement;->propertyNames:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 1315
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegement;->propertyNames:[Ljava/lang/String;

    array-length v0, v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1317
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegement;->propertyNames:[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_1b

    aget-object v2, p0, v1

    const/4 v3, 0x1

    .line 1318
    invoke-virtual {p1, p3, v2, v3}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v2

    .line 1319
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1b
    return-object p2
.end method
