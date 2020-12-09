.class public final Lcom/android/server/pm/Policy$PolicyBuilder;
.super Ljava/lang/Object;
.source "SELinuxMMAC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/Policy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PolicyBuilder"
.end annotation


# instance fields
.field private final mCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private final mPkgMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSeinfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 540
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mCerts:Ljava/util/Set;

    .line 541
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mPkgMap:Ljava/util/Map;

    .line 542
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/Policy$PolicyBuilder;)Ljava/lang/String;
    .registers 1

    .line 533
    iget-object p0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mSeinfo:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/pm/Policy$PolicyBuilder;)Ljava/util/Set;
    .registers 1

    .line 533
    iget-object p0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mCerts:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/pm/Policy$PolicyBuilder;)Ljava/util/Map;
    .registers 1

    .line 533
    iget-object p0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mPkgMap:Ljava/util/Map;

    return-object p0
.end method

.method private validateValue(Ljava/lang/String;)Z
    .registers 4

    .line 632
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 633
    return v0

    .line 636
    :cond_4
    const-string v1, "\\A[\\.\\w]+\\z"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 637
    return v0

    .line 640
    :cond_d
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public addInnerPackageMapOrThrow(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;
    .registers 4

    .line 605
    invoke-direct {p0, p1}, Lcom/android/server/pm/Policy$PolicyBuilder;->validateValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 609
    invoke-direct {p0, p2}, Lcom/android/server/pm/Policy$PolicyBuilder;->validateValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 614
    iget-object v0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mPkgMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 615
    if-eqz v0, :cond_26

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_26

    .line 616
    :cond_1d
    nop

    .line 617
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Conflicting seinfo value found"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 620
    :cond_26
    :goto_26
    iget-object v0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mPkgMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    return-object p0

    .line 610
    :cond_2c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid seinfo value "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 611
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 606
    :cond_43
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid package name "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 607
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public addSignature(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;
    .registers 4

    .line 555
    if-eqz p1, :cond_d

    .line 560
    iget-object v0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mCerts:Ljava/util/Set;

    new-instance v1, Landroid/content/pm/Signature;

    invoke-direct {v1, p1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 561
    return-object p0

    .line 556
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid signature value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 557
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Lcom/android/server/pm/Policy;
    .registers 4

    .line 659
    new-instance v0, Lcom/android/server/pm/Policy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/Policy;-><init>(Lcom/android/server/pm/Policy$PolicyBuilder;Lcom/android/server/pm/Policy$1;)V

    .line 661
    invoke-static {v0}, Lcom/android/server/pm/Policy;->access$400(Lcom/android/server/pm/Policy;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 665
    invoke-static {v0}, Lcom/android/server/pm/Policy;->access$500(Lcom/android/server/pm/Policy;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    invoke-static {v0}, Lcom/android/server/pm/Policy;->access$600(Lcom/android/server/pm/Policy;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    xor-int/2addr v1, v2

    if-eqz v1, :cond_25

    .line 671
    return-object v0

    .line 666
    :cond_25
    nop

    .line 668
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only seinfo tag XOR package tags are allowed within a signer stanza."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 662
    :cond_2e
    nop

    .line 663
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing certs with signer tag. Expecting at least one."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setGlobalSeinfoOrThrow(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;
    .registers 4

    .line 576
    invoke-direct {p0, p1}, Lcom/android/server/pm/Policy$PolicyBuilder;->validateValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 581
    iget-object v0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mSeinfo:Ljava/lang/String;

    if-eqz v0, :cond_1a

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_1a

    .line 582
    :cond_11
    nop

    .line 583
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Duplicate seinfo tag found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 586
    :cond_1a
    :goto_1a
    iput-object p1, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mSeinfo:Ljava/lang/String;

    .line 587
    return-object p0

    .line 577
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid seinfo value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 578
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
