.class final Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;
.super Lcom/google/common/collect/ImmutableMapEntry;
.source "RegularImmutableBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/RegularImmutableBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NonTerminalBiMapEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMapEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final nextInKeyBucket:Lcom/google/common/collect/ImmutableMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final nextInValueBucket:Lcom/google/common/collect/ImmutableMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMapEntry;Lcom/google/common/collect/ImmutableMapEntry;Lcom/google/common/collect/ImmutableMapEntry;)V
    .registers 4
    .param p2  # Lcom/google/common/collect/ImmutableMapEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Lcom/google/common/collect/ImmutableMapEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMapEntry<",
            "TK;TV;>;",
            "Lcom/google/common/collect/ImmutableMapEntry<",
            "TK;TV;>;",
            "Lcom/google/common/collect/ImmutableMapEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 163
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableMapEntry;-><init>(Lcom/google/common/collect/ImmutableMapEntry;)V

    .line 164
    iput-object p2, p0, Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;->nextInKeyBucket:Lcom/google/common/collect/ImmutableMapEntry;

    .line 165
    iput-object p3, p0, Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;->nextInValueBucket:Lcom/google/common/collect/ImmutableMapEntry;

    return-void
.end method


# virtual methods
.method getNextInKeyBucket()Lcom/google/common/collect/ImmutableMapEntry;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 171
    iget-object p0, p0, Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;->nextInKeyBucket:Lcom/google/common/collect/ImmutableMapEntry;

    return-object p0
.end method

.method getNextInValueBucket()Lcom/google/common/collect/ImmutableMapEntry;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 177
    iget-object p0, p0, Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;->nextInValueBucket:Lcom/google/common/collect/ImmutableMapEntry;

    return-object p0
.end method
