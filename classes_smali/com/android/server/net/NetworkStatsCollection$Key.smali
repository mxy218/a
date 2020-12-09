.class Lcom/android/server/net/NetworkStatsCollection$Key;
.super Ljava/lang/Object;
.source "NetworkStatsCollection.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/server/net/NetworkStatsCollection$Key;",
        ">;"
    }
.end annotation


# instance fields
.field private final hashCode:I

.field public final ident:Lcom/android/server/net/NetworkIdentitySet;

.field public final set:I

.field public final tag:I

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkIdentitySet;III)V
    .registers 7

    .line 783
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 784
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    .line 785
    iput p2, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    .line 786
    iput p3, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    .line 787
    iput p4, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    .line 788
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->hashCode:I

    .line 789
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/server/net/NetworkStatsCollection$Key;)I
    .registers 4

    .line 808
    nop

    .line 809
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    if-eqz v0, :cond_e

    iget-object v1, p1, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    if-eqz v1, :cond_e

    .line 810
    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkIdentitySet;->compareTo(Lcom/android/server/net/NetworkIdentitySet;)I

    move-result v0

    goto :goto_f

    .line 812
    :cond_e
    const/4 v0, 0x0

    :goto_f
    if-nez v0, :cond_19

    .line 813
    iget v0, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    iget v1, p1, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 815
    :cond_19
    if-nez v0, :cond_23

    .line 816
    iget v0, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    iget v1, p1, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 818
    :cond_23
    if-nez v0, :cond_2d

    .line 819
    iget v0, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    iget p1, p1, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 821
    :cond_2d
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 775
    check-cast p1, Lcom/android/server/net/NetworkStatsCollection$Key;

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkStatsCollection$Key;->compareTo(Lcom/android/server/net/NetworkStatsCollection$Key;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 798
    instance-of v0, p1, Lcom/android/server/net/NetworkStatsCollection$Key;

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    .line 799
    check-cast p1, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 800
    iget v0, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    iget v2, p1, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    if-ne v0, v2, :cond_25

    iget v0, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    iget v2, p1, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    if-ne v0, v2, :cond_25

    iget v0, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    iget v2, p1, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    iget-object p1, p1, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    .line 801
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    const/4 v1, 0x1

    goto :goto_26

    :cond_25
    nop

    .line 800
    :goto_26
    return v1

    .line 803
    :cond_27
    return v1
.end method

.method public hashCode()I
    .registers 2

    .line 793
    iget v0, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->hashCode:I

    return v0
.end method
