.class final Lcom/android/server/timezone/PackageVersions;
.super Ljava/lang/Object;
.source "PackageVersions.java"


# instance fields
.field final mDataAppVersion:J

.field final mUpdateAppVersion:J


# direct methods
.method constructor <init>(JJ)V
    .registers 5

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide p1, p0, Lcom/android/server/timezone/PackageVersions;->mUpdateAppVersion:J

    .line 29
    iput-wide p3, p0, Lcom/android/server/timezone/PackageVersions;->mDataAppVersion:J

    .line 30
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .line 34
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 35
    return v0

    .line 37
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_28

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_28

    .line 41
    :cond_12
    check-cast p1, Lcom/android/server/timezone/PackageVersions;

    .line 43
    iget-wide v2, p0, Lcom/android/server/timezone/PackageVersions;->mUpdateAppVersion:J

    iget-wide v4, p1, Lcom/android/server/timezone/PackageVersions;->mUpdateAppVersion:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1d

    .line 44
    return v1

    .line 46
    :cond_1d
    iget-wide v2, p0, Lcom/android/server/timezone/PackageVersions;->mDataAppVersion:J

    iget-wide v4, p1, Lcom/android/server/timezone/PackageVersions;->mDataAppVersion:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_26

    goto :goto_27

    :cond_26
    move v0, v1

    :goto_27
    return v0

    .line 38
    :cond_28
    :goto_28
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 51
    iget-wide v0, p0, Lcom/android/server/timezone/PackageVersions;->mUpdateAppVersion:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    .line 52
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/android/server/timezone/PackageVersions;->mDataAppVersion:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 53
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageVersions{mUpdateAppVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/timezone/PackageVersions;->mUpdateAppVersion:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mDataAppVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/timezone/PackageVersions;->mDataAppVersion:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
