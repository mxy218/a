.class public final Landroid/net/shared/ParcelableUtil;
.super Ljava/lang/Object;
.source "ParcelableUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromParcelableArray([Ljava/lang/Object;Ljava/util/function/Function;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ParcelableType:",
            "Ljava/lang/Object;",
            "BaseType:",
            "Ljava/lang/Object;",
            ">([TParcelableType;",
            "Ljava/util/function/Function<",
            "TParcelableType;TBaseType;>;)",
            "Ljava/util/ArrayList<",
            "TBaseType;>;"
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 58
    array-length v1, p0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_16

    aget-object v3, p0, v2

    .line 59
    invoke-interface {p1, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 61
    :cond_16
    return-object v0
.end method

.method public static toParcelableArray(Ljava/util/Collection;Ljava/util/function/Function;Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ParcelableType:",
            "Ljava/lang/Object;",
            "BaseType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TBaseType;>;",
            "Ljava/util/function/Function<",
            "TBaseType;TParcelableType;>;",
            "Ljava/lang/Class<",
            "TParcelableType;>;)[TParcelableType;"
        }
    .end annotation

    .line 42
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    .line 43
    nop

    .line 44
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 45
    invoke-interface {p1, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p2, v0

    .line 46
    add-int/lit8 v0, v0, 0x1

    .line 47
    goto :goto_10

    .line 48
    :cond_23
    return-object p2
.end method
