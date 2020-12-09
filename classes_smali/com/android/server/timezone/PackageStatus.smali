.class final Lcom/android/server/timezone/PackageStatus;
.super Ljava/lang/Object;
.source "PackageStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timezone/PackageStatus$CheckStatus;
    }
.end annotation


# static fields
.field static final CHECK_COMPLETED_FAILURE:I = 0x3

.field static final CHECK_COMPLETED_SUCCESS:I = 0x2

.field static final CHECK_STARTED:I = 0x1


# instance fields
.field final mCheckStatus:I

.field final mVersions:Lcom/android/server/timezone/PackageVersions;


# direct methods
.method constructor <init>(ILcom/android/server/timezone/PackageVersions;)V
    .registers 5

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/android/server/timezone/PackageStatus;->mCheckStatus:I

    .line 49
    const/4 v0, 0x1

    if-lt p1, v0, :cond_19

    const/4 v0, 0x3

    if-gt p1, v0, :cond_19

    .line 52
    if-eqz p2, :cond_10

    .line 55
    iput-object p2, p0, Lcom/android/server/timezone/PackageStatus;->mVersions:Lcom/android/server/timezone/PackageVersions;

    .line 56
    return-void

    .line 53
    :cond_10
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "versions == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_19
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown checkStatus "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 60
    if-ne p0, p1, :cond_4

    .line 61
    const/4 p1, 0x1

    return p1

    .line 63
    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_24

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_12

    goto :goto_24

    .line 67
    :cond_12
    check-cast p1, Lcom/android/server/timezone/PackageStatus;

    .line 69
    iget v1, p0, Lcom/android/server/timezone/PackageStatus;->mCheckStatus:I

    iget v2, p1, Lcom/android/server/timezone/PackageStatus;->mCheckStatus:I

    if-eq v1, v2, :cond_1b

    .line 70
    return v0

    .line 72
    :cond_1b
    iget-object v0, p0, Lcom/android/server/timezone/PackageStatus;->mVersions:Lcom/android/server/timezone/PackageVersions;

    iget-object p1, p1, Lcom/android/server/timezone/PackageStatus;->mVersions:Lcom/android/server/timezone/PackageVersions;

    invoke-virtual {v0, p1}, Lcom/android/server/timezone/PackageVersions;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 64
    :cond_24
    :goto_24
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 77
    iget v0, p0, Lcom/android/server/timezone/PackageStatus;->mCheckStatus:I

    .line 78
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/server/timezone/PackageStatus;->mVersions:Lcom/android/server/timezone/PackageVersions;

    invoke-virtual {v1}, Lcom/android/server/timezone/PackageVersions;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 79
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageStatus{mCheckStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/timezone/PackageStatus;->mCheckStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mVersions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timezone/PackageStatus;->mVersions:Lcom/android/server/timezone/PackageVersions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
