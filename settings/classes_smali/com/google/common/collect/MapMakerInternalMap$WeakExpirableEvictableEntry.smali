.class final Lcom/google/common/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;
.super Lcom/google/common/collect/MapMakerInternalMap$WeakEntry;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WeakExpirableEvictableEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/MapMakerInternalMap$WeakEntry<",
        "TK;TV;>;",
        "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field nextEvictable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field nextExpirable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field previousEvictable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field previousExpirable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field volatile time:J


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .registers 5
    .param p4  # Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;TK;I",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1611
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/MapMakerInternalMap$WeakEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    const-wide p1, 0x7fffffffffffffffL

    .line 1616
    iput-wide p1, p0, Lcom/google/common/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;->time:J

    .line 1629
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;->nextExpirable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1642
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;->previousExpirable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1657
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;->nextEvictable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1670
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;->previousEvictable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-void
.end method


# virtual methods
.method public getExpirationTime()J
    .registers 3

    .line 1620
    iget-wide v0, p0, Lcom/google/common/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;->time:J

    return-wide v0
.end method

.method public getNextEvictable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1661
    iget-object p0, p0, Lcom/google/common/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;->nextEvictable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-object p0
.end method

.method public getNextExpirable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1633
    iget-object p0, p0, Lcom/google/common/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;->nextExpirable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-object p0
.end method

.method public getPreviousEvictable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1674
    iget-object p0, p0, Lcom/google/common/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;->previousEvictable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-object p0
.end method

.method public getPreviousExpirable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1646
    iget-object p0, p0, Lcom/google/common/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;->previousExpirable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-object p0
.end method

.method public setExpirationTime(J)V
    .registers 3

    .line 1625
    iput-wide p1, p0, Lcom/google/common/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;->time:J

    return-void
.end method

.method public setNextEvictable(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1666
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;->nextEvictable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-void
.end method

.method public setNextExpirable(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1638
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;->nextExpirable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-void
.end method

.method public setPreviousEvictable(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1679
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;->previousEvictable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-void
.end method

.method public setPreviousExpirable(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1651
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;->previousExpirable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-void
.end method
