.class Lcom/google/common/collect/ImmutableMapKeySet$1;
.super Lcom/google/common/collect/ImmutableAsList;
.source "ImmutableMapKeySet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableMapKeySet;->createAsList()Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableAsList<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ImmutableMapKeySet;

.field final synthetic val$entryList:Lcom/google/common/collect/ImmutableList;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMapKeySet;Lcom/google/common/collect/ImmutableList;)V
    .registers 3

    .line 59
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMapKeySet$1;->this$0:Lcom/google/common/collect/ImmutableMapKeySet;

    iput-object p2, p0, Lcom/google/common/collect/ImmutableMapKeySet$1;->val$entryList:Lcom/google/common/collect/ImmutableList;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableAsList;-><init>()V

    return-void
.end method


# virtual methods
.method delegateCollection()Lcom/google/common/collect/ImmutableCollection;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection<",
            "TK;>;"
        }
    .end annotation

    .line 68
    iget-object p0, p0, Lcom/google/common/collect/ImmutableMapKeySet$1;->this$0:Lcom/google/common/collect/ImmutableMapKeySet;

    return-object p0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 63
    iget-object p0, p0, Lcom/google/common/collect/ImmutableMapKeySet$1;->val$entryList:Lcom/google/common/collect/ImmutableList;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
