.class Lcom/google/common/collect/RegularImmutableBiMap$1;
.super Lcom/google/common/collect/ImmutableMapEntrySet;
.source "RegularImmutableBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/RegularImmutableBiMap;->createEntrySet()Lcom/google/common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableMapEntrySet<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/RegularImmutableBiMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableBiMap;)V
    .registers 2

    .line 204
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableBiMap$1;->this$0:Lcom/google/common/collect/RegularImmutableBiMap;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMapEntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method createAsList()Lcom/google/common/collect/ImmutableList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 217
    new-instance v0, Lcom/google/common/collect/RegularImmutableAsList;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableBiMap$1;->this$0:Lcom/google/common/collect/RegularImmutableBiMap;

    invoke-static {v1}, Lcom/google/common/collect/RegularImmutableBiMap;->access$000(Lcom/google/common/collect/RegularImmutableBiMap;)[Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/RegularImmutableAsList;-><init>(Lcom/google/common/collect/ImmutableCollection;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public hashCode()I
    .registers 1

    .line 227
    iget-object p0, p0, Lcom/google/common/collect/RegularImmutableBiMap$1;->this$0:Lcom/google/common/collect/RegularImmutableBiMap;

    invoke-static {p0}, Lcom/google/common/collect/RegularImmutableBiMap;->access$100(Lcom/google/common/collect/RegularImmutableBiMap;)I

    move-result p0

    return p0
.end method

.method isHashCodeFast()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 212
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableCollection;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 1

    .line 204
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableBiMap$1;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p0

    return-object p0
.end method

.method map()Lcom/google/common/collect/ImmutableMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 207
    iget-object p0, p0, Lcom/google/common/collect/RegularImmutableBiMap$1;->this$0:Lcom/google/common/collect/RegularImmutableBiMap;

    return-object p0
.end method
