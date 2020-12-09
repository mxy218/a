.class Lcom/android/server/content/SyncManager$PrintTable;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PrintTable"
.end annotation


# instance fields
.field private final mCols:I

.field private mTable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .registers 3

    .line 3982
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3979
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    .line 3983
    iput p1, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    .line 3984
    return-void
.end method

.method private printRow(Ljava/io/PrintWriter;[Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 10

    .line 4033
    array-length v0, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_23

    .line 4034
    aget-object v3, p2, v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aget-object v5, p3, v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 4035
    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4033
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 4037
    :cond_23
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4038
    return-void
.end method


# virtual methods
.method public getNumRows()I
    .registers 2

    .line 4041
    iget-object v0, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method varargs set(II[Ljava/lang/Object;)V
    .registers 9

    .line 3987
    array-length v0, p3

    add-int/2addr v0, p2

    iget v1, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    if-gt v0, v1, :cond_45

    .line 3991
    iget-object v0, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_c
    const-string v1, ""

    const/4 v2, 0x0

    if-gt v0, p1, :cond_27

    .line 3992
    iget v3, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    new-array v3, v3, [Ljava/lang/String;

    .line 3993
    iget-object v4, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3994
    nop

    :goto_1b
    iget v4, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    if-ge v2, v4, :cond_24

    .line 3995
    aput-object v1, v3, v2

    .line 3994
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 3991
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 3998
    :cond_27
    iget-object v0, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 3999
    nop

    :goto_30
    array-length v0, p3

    if-ge v2, v0, :cond_44

    .line 4000
    aget-object v0, p3, v2

    .line 4001
    add-int v3, p2, v2

    if-nez v0, :cond_3b

    move-object v0, v1

    goto :goto_3f

    :cond_3b
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3f
    aput-object v0, p1, v3

    .line 3999
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 4003
    :cond_44
    return-void

    .line 3988
    :cond_45
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Table only has "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " columns. can\'t set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p3, p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " at column "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method writeTo(Ljava/io/PrintWriter;)V
    .registers 10

    .line 4006
    iget v0, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    new-array v0, v0, [Ljava/lang/String;

    .line 4007
    nop

    .line 4008
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_8
    iget v4, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    const/4 v5, 0x1

    if-ge v2, v4, :cond_43

    .line 4009
    nop

    .line 4010
    iget-object v4, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v6, v1

    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    .line 4011
    aget-object v7, v7, v2

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    .line 4012
    if-le v7, v6, :cond_2e

    .line 4013
    move v6, v7

    .line 4015
    :cond_2e
    goto :goto_15

    .line 4016
    :cond_2f
    add-int/2addr v3, v6

    .line 4017
    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "%%-%ds"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    .line 4008
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 4019
    :cond_43
    sub-int/2addr v4, v5

    const-string v2, "%s"

    aput-object v2, v0, v4

    .line 4020
    iget-object v2, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v2}, Lcom/android/server/content/SyncManager$PrintTable;->printRow(Ljava/io/PrintWriter;[Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4021
    iget v2, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    sub-int/2addr v2, v5

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v3, v2

    .line 4022
    nop

    :goto_5a
    if-ge v1, v3, :cond_64

    .line 4023
    const-string v2, "-"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4022
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    .line 4025
    :cond_64
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4026
    iget-object v1, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_6d
    if-ge v5, v1, :cond_7d

    .line 4027
    iget-object v2, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 4028
    invoke-direct {p0, p1, v0, v2}, Lcom/android/server/content/SyncManager$PrintTable;->printRow(Ljava/io/PrintWriter;[Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4026
    add-int/lit8 v5, v5, 0x1

    goto :goto_6d

    .line 4030
    :cond_7d
    return-void
.end method
