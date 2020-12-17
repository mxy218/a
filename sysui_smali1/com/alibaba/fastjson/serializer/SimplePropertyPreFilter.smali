.class public Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;
.super Ljava/lang/Object;
.source "SimplePropertyPreFilter.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/PropertyPreFilter;


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final excludes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final includes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private maxLevel:I


# direct methods
.method public varargs constructor <init>(Ljava/lang/Class;[Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;->includes:Ljava/util/Set;

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;->excludes:Ljava/util/Set;

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;->maxLevel:I

    .line 34
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;->clazz:Ljava/lang/Class;

    .line 35
    array-length p1, p2

    :goto_17
    if-ge v0, p1, :cond_25

    aget-object v1, p2, v0

    if-eqz v1, :cond_22

    .line 37
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;->includes:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_25
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;-><init>(Ljava/lang/Class;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x1

    if-nez p2, :cond_4

    return v0

    .line 73
    :cond_4
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;->clazz:Ljava/lang/Class;

    if-eqz v1, :cond_f

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f

    return v0

    .line 77
    :cond_f
    iget-object p2, p0, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;->excludes:Ljava/util/Set;

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_19

    return v1

    .line 81
    :cond_19
    iget p2, p0, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;->maxLevel:I

    if-lez p2, :cond_2b

    .line 83
    iget-object p1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    move p2, v1

    :goto_20
    if-eqz p1, :cond_2b

    add-int/2addr p2, v0

    .line 86
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;->maxLevel:I

    if-le p2, v2, :cond_28

    return v1

    .line 89
    :cond_28
    iget-object p1, p1, Lcom/alibaba/fastjson/serializer/SerialContext;->parent:Lcom/alibaba/fastjson/serializer/SerialContext;

    goto :goto_20

    .line 93
    :cond_2b
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;->includes:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-eqz p1, :cond_3d

    iget-object p0, p0, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;->includes:Ljava/util/Set;

    invoke-interface {p0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3c

    goto :goto_3d

    :cond_3c
    return v1

    :cond_3d
    :goto_3d
    return v0
.end method

.method public getClazz()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 57
    iget-object p0, p0, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;->clazz:Ljava/lang/Class;

    return-object p0
.end method

.method public getExcludes()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object p0, p0, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;->excludes:Ljava/util/Set;

    return-object p0
.end method

.method public getIncludes()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object p0, p0, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;->includes:Ljava/util/Set;

    return-object p0
.end method

.method public getMaxLevel()I
    .registers 1

    .line 46
    iget p0, p0, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;->maxLevel:I

    return p0
.end method

.method public setMaxLevel(I)V
    .registers 2

    .line 53
    iput p1, p0, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;->maxLevel:I

    return-void
.end method
