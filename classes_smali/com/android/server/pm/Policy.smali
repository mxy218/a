.class final Lcom/android/server/pm/Policy;
.super Ljava/lang/Object;
.source "SELinuxMMAC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/Policy$PolicyBuilder;
    }
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

.field private final mSeinfo:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/Policy$PolicyBuilder;)V
    .registers 3

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    invoke-static {p1}, Lcom/android/server/pm/Policy$PolicyBuilder;->access$000(Lcom/android/server/pm/Policy$PolicyBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/Policy;->mSeinfo:Ljava/lang/String;

    .line 417
    invoke-static {p1}, Lcom/android/server/pm/Policy$PolicyBuilder;->access$100(Lcom/android/server/pm/Policy$PolicyBuilder;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/Policy;->mCerts:Ljava/util/Set;

    .line 418
    invoke-static {p1}, Lcom/android/server/pm/Policy$PolicyBuilder;->access$200(Lcom/android/server/pm/Policy$PolicyBuilder;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/Policy;->mPkgMap:Ljava/util/Map;

    .line 419
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/Policy$PolicyBuilder;Lcom/android/server/pm/Policy$1;)V
    .registers 3

    .line 408
    invoke-direct {p0, p1}, Lcom/android/server/pm/Policy;-><init>(Lcom/android/server/pm/Policy$PolicyBuilder;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/pm/Policy;)Ljava/util/Set;
    .registers 1

    .line 408
    iget-object p0, p0, Lcom/android/server/pm/Policy;->mCerts:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/pm/Policy;)Ljava/lang/String;
    .registers 1

    .line 408
    iget-object p0, p0, Lcom/android/server/pm/Policy;->mSeinfo:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/pm/Policy;)Ljava/util/Map;
    .registers 1

    .line 408
    iget-object p0, p0, Lcom/android/server/pm/Policy;->mPkgMap:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public getInnerPackages()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 447
    iget-object v0, p0, Lcom/android/server/pm/Policy;->mPkgMap:Ljava/util/Map;

    return-object v0
.end method

.method public getMatchedSeInfo(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;
    .registers 6

    .line 504
    iget-object v0, p0, Lcom/android/server/pm/Policy;->mCerts:Ljava/util/Set;

    const/4 v1, 0x0

    new-array v2, v1, [Landroid/content/pm/Signature;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/Signature;

    .line 505
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    sget-object v3, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    if-eq v2, v3, :cond_2b

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v2, v2, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    .line 506
    invoke-static {v0, v2}, Landroid/content/pm/Signature;->areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 509
    array-length v2, v0

    const/4 v3, 0x1

    if-gt v2, v3, :cond_29

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageParser$SigningDetails;->hasCertificate(Landroid/content/pm/Signature;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 510
    :cond_29
    const/4 p1, 0x0

    return-object p1

    .line 516
    :cond_2b
    iget-object v0, p0, Lcom/android/server/pm/Policy;->mPkgMap:Ljava/util/Map;

    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 517
    if-eqz p1, :cond_38

    .line 518
    return-object p1

    .line 522
    :cond_38
    iget-object p1, p0, Lcom/android/server/pm/Policy;->mSeinfo:Ljava/lang/String;

    return-object p1
.end method

.method public getSignatures()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation

    .line 428
    iget-object v0, p0, Lcom/android/server/pm/Policy;->mCerts:Ljava/util/Set;

    return-object v0
.end method

.method public hasGlobalSeinfo()Z
    .registers 2

    .line 456
    iget-object v0, p0, Lcom/android/server/pm/Policy;->mSeinfo:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public hasInnerPackages()Z
    .registers 2

    .line 437
    iget-object v0, p0, Lcom/android/server/pm/Policy;->mPkgMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 462
    iget-object v1, p0, Lcom/android/server/pm/Policy;->mCerts:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/Signature;

    .line 463
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cert="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/16 v5, 0xb

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "... "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    goto :goto_b

    .line 466
    :cond_3c
    iget-object v1, p0, Lcom/android/server/pm/Policy;->mSeinfo:Ljava/lang/String;

    if-eqz v1, :cond_57

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "seinfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/Policy;->mSeinfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    :cond_57
    iget-object v1, p0, Lcom/android/server/pm/Policy;->mPkgMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_61
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_92

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 471
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/Policy;->mPkgMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    goto :goto_61

    .line 474
    :cond_92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
