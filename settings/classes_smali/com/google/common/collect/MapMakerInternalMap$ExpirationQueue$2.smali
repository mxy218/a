.class Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue$2;
.super Lcom/google/common/collect/AbstractSequentialIterator;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractSequentialIterator<",
        "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .registers 3

    .line 3354
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue$2;->this$0:Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;

    invoke-direct {p0, p2}, Lcom/google/common/collect/AbstractSequentialIterator;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected computeNext(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3357
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNextExpirable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object p1

    .line 3358
    iget-object p0, p0, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue$2;->this$0:Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;

    iget-object p0, p0, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;->head:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    if-ne p1, p0, :cond_b

    const/4 p1, 0x0

    :cond_b
    return-object p1
.end method

.method protected bridge synthetic computeNext(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 3354
    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue$2;->computeNext(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object p0

    return-object p0
.end method
