.class Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
.super Ljava/lang/Object;
.source "PackageDynamicCodeLoading.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/dex/PackageDynamicCodeLoading;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageDynamicCode"
.end annotation


# instance fields
.field final mFileUsageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 518
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->mFileUsageMap:Ljava/util/Map;

    .line 519
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/dex/PackageDynamicCodeLoading$1;)V
    .registers 2

    .line 510
    invoke-direct {p0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;)V
    .registers 6

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->mFileUsageMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->mFileUsageMap:Ljava/util/Map;

    .line 523
    iget-object p1, p1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->mFileUsageMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 524
    new-instance v1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;-><init>(Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$1;)V

    .line 525
    iget-object v2, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->mFileUsageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    goto :goto_1a

    .line 527
    :cond_3e
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$1;)V
    .registers 3

    .line 510
    invoke-direct {p0, p1}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;-><init>(Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;Ljava/lang/String;CILjava/lang/String;)Z
    .registers 5

    .line 510
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->add(Ljava/lang/String;CILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;I)Z
    .registers 2

    .line 510
    invoke-direct {p0, p1}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->removeUser(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;Ljava/lang/String;I)Z
    .registers 3

    .line 510
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->removeFile(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;Ljava/util/Map;Ljava/util/Set;)V
    .registers 3

    .line 510
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->syncData(Ljava/util/Map;Ljava/util/Set;)V

    return-void
.end method

.method private add(Ljava/lang/String;CILjava/lang/String;)Z
    .registers 9

    .line 530
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->mFileUsageMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;

    .line 531
    if-nez v0, :cond_27

    .line 532
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->mFileUsageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x64

    const/4 v2, 0x0

    if-lt v0, v1, :cond_16

    .line 533
    return v2

    .line 535
    :cond_16
    new-instance v0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    aput-object p4, v3, v2

    const/4 p4, 0x0

    invoke-direct {v0, p2, p3, v3, p4}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;-><init>(CI[Ljava/lang/String;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$1;)V

    .line 536
    iget-object p2, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->mFileUsageMap:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    return v1

    .line 539
    :cond_27
    iget p2, v0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mUserId:I

    if-ne p2, p3, :cond_32

    .line 547
    iget-object p1, v0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mLoadingPackages:Ljava/util/Set;

    invoke-interface {p1, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 542
    :cond_32
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot change userId for \'"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' from "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mUserId:I

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private removeFile(Ljava/lang/String;I)Z
    .registers 4

    .line 565
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->mFileUsageMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;

    .line 566
    if-eqz v0, :cond_16

    iget v0, v0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mUserId:I

    if-eq v0, p2, :cond_f

    goto :goto_16

    .line 569
    :cond_f
    iget-object p2, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->mFileUsageMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    const/4 p1, 0x1

    return p1

    .line 567
    :cond_16
    :goto_16
    const/4 p1, 0x0

    return p1
.end method

.method private removeUser(I)Z
    .registers 5

    .line 552
    nop

    .line 553
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->mFileUsageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 554
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 555
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;

    .line 556
    iget v2, v2, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mUserId:I

    if-ne v2, p1, :cond_20

    .line 557
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 558
    const/4 v1, 0x1

    .line 560
    :cond_20
    goto :goto_c

    .line 561
    :cond_21
    return v1
.end method

.method private syncData(Ljava/util/Map;Ljava/util/Set;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 576
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->mFileUsageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 577
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 578
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;

    .line 579
    iget v2, v1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mUserId:I

    .line 580
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 581
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_59

    .line 585
    :cond_26
    iget-object v3, v1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mLoadingPackages:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 586
    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 587
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 588
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 589
    if-eqz v4, :cond_4a

    .line 590
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4d

    .line 591
    :cond_4a
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 593
    :cond_4d
    goto :goto_2c

    .line 594
    :cond_4e
    iget-object v1, v1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mLoadingPackages:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 595
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 598
    :cond_59
    :goto_59
    goto :goto_a

    .line 599
    :cond_5a
    return-void
.end method
