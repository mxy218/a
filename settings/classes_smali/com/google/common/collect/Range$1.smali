.class Lcom/google/common/collect/Range$1;
.super Ljava/lang/Object;
.source "Range.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Range;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function<",
        "Lcom/google/common/collect/Range;",
        "Lcom/google/common/collect/Cut;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Cut;
    .registers 2

    .line 120
    iget-object p0, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 117
    check-cast p1, Lcom/google/common/collect/Range;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Range$1;->apply(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Cut;

    move-result-object p0

    return-object p0
.end method
