.class Lcom/google/common/collect/Iterators$11;
.super Lcom/google/common/collect/AbstractIndexedListIterator;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Iterators;->forArray([Ljava/lang/Object;III)Lcom/google/common/collect/UnmodifiableListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIndexedListIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$array:[Ljava/lang/Object;

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(II[Ljava/lang/Object;I)V
    .registers 5

    .line 1058
    iput-object p3, p0, Lcom/google/common/collect/Iterators$11;->val$array:[Ljava/lang/Object;

    iput p4, p0, Lcom/google/common/collect/Iterators$11;->val$offset:I

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/AbstractIndexedListIterator;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected get(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1060
    iget-object v0, p0, Lcom/google/common/collect/Iterators$11;->val$array:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/common/collect/Iterators$11;->val$offset:I

    add-int/2addr p0, p1

    aget-object p0, v0, p0

    return-object p0
.end method
