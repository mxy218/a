.class public Lcom/alibaba/fastjson/JSONPath$FilterSegement;
.super Ljava/lang/Object;
.source "JSONPath.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$Segement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilterSegement"
.end annotation


# instance fields
.field private final filter:Lcom/alibaba/fastjson/JSONPath$Filter;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V
    .registers 2

    .line 1837
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1838
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$FilterSegement;->filter:Lcom/alibaba/fastjson/JSONPath$Filter;

    return-void
.end method


# virtual methods
.method public eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    const/4 v0, 0x0

    if-nez p3, :cond_4

    return-object v0

    .line 1847
    :cond_4
    new-instance v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 1849
    instance-of v2, p3, Ljava/lang/Iterable;

    if-eqz v2, :cond_2b

    .line 1850
    move-object v0, p3

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1851
    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1852
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1854
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath$FilterSegement;->filter:Lcom/alibaba/fastjson/JSONPath$Filter;

    invoke-interface {v3, p1, p2, p3, v2}, Lcom/alibaba/fastjson/JSONPath$Filter;->apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1855
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_2a
    return-object v1

    .line 1862
    :cond_2b
    iget-object p0, p0, Lcom/alibaba/fastjson/JSONPath$FilterSegement;->filter:Lcom/alibaba/fastjson/JSONPath$Filter;

    invoke-interface {p0, p1, p2, p3, p3}, Lcom/alibaba/fastjson/JSONPath$Filter;->apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    return-object p3

    :cond_34
    return-object v0
.end method
