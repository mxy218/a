.class final Lcom/google/common/collect/ImmutableEnumMap;
.super Lcom/google/common/collect/ImmutableMap;
.source "ImmutableEnumMap.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ImmutableEnumMap$EnumSerializedForm;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Enum<",
        "TK;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final transient delegate:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/EnumMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/common/collect/ImmutableEnumMap;->delegate:Ljava/util/EnumMap;

    .line 54
    invoke-virtual {p1}, Ljava/util/EnumMap;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/EnumMap;Lcom/google/common/collect/ImmutableEnumMap$1;)V
    .registers 3

    .line 36
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableEnumMap;-><init>(Ljava/util/EnumMap;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/ImmutableEnumMap;)Ljava/util/EnumMap;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/google/common/collect/ImmutableEnumMap;->delegate:Ljava/util/EnumMap;

    return-object p0
.end method

.method static asImmutable(Ljava/util/EnumMap;)Lcom/google/common/collect/ImmutableMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Enum<",
            "TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/EnumMap<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Ljava/util/EnumMap;->size()I

    move-result v0

    if-eqz v0, :cond_26

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    .line 46
    new-instance v0, Lcom/google/common/collect/ImmutableEnumMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableEnumMap;-><init>(Ljava/util/EnumMap;)V

    return-object v0

    .line 42
    :cond_f
    invoke-virtual {p0}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/Iterables;->getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 43
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0

    .line 40
    :cond_26
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 90
    iget-object p0, p0, Lcom/google/common/collect/ImmutableEnumMap;->delegate:Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method createEntrySet()Lcom/google/common/collect/ImmutableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 100
    new-instance v0, Lcom/google/common/collect/ImmutableEnumMap$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableEnumMap$2;-><init>(Lcom/google/common/collect/ImmutableEnumMap;)V

    return-object v0
.end method

.method createKeySet()Lcom/google/common/collect/ImmutableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TK;>;"
        }
    .end annotation

    .line 59
    new-instance v0, Lcom/google/common/collect/ImmutableEnumMap$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableEnumMap$1;-><init>(Lcom/google/common/collect/ImmutableEnumMap;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 95
    iget-object p0, p0, Lcom/google/common/collect/ImmutableEnumMap;->delegate:Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method isPartialView()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public size()I
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/google/common/collect/ImmutableEnumMap;->delegate:Ljava/util/EnumMap;

    invoke-virtual {p0}, Ljava/util/EnumMap;->size()I

    move-result p0

    return p0
.end method

.method writeReplace()Ljava/lang/Object;
    .registers 2

    .line 134
    new-instance v0, Lcom/google/common/collect/ImmutableEnumMap$EnumSerializedForm;

    iget-object p0, p0, Lcom/google/common/collect/ImmutableEnumMap;->delegate:Ljava/util/EnumMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableEnumMap$EnumSerializedForm;-><init>(Ljava/util/EnumMap;)V

    return-object v0
.end method
