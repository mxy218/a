.class Lcom/google/common/collect/Iterators$12;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Iterators;->singletonIterator(Ljava/lang/Object;)Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field done:Z

.field final synthetic val$value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 1073
    iput-object p1, p0, Lcom/google/common/collect/Iterators$12;->val$value:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 1

    .line 1077
    iget-boolean p0, p0, Lcom/google/common/collect/Iterators$12;->done:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1081
    iget-boolean v0, p0, Lcom/google/common/collect/Iterators$12;->done:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    .line 1084
    iput-boolean v0, p0, Lcom/google/common/collect/Iterators$12;->done:Z

    .line 1085
    iget-object p0, p0, Lcom/google/common/collect/Iterators$12;->val$value:Ljava/lang/Object;

    return-object p0

    .line 1082
    :cond_a
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
