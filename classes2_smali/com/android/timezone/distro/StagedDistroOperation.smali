.class public Lcom/android/timezone/distro/StagedDistroOperation;
.super Ljava/lang/Object;
.source "StagedDistroOperation.java"


# static fields
.field private static final UNINSTALL_STAGED:Lcom/android/timezone/distro/StagedDistroOperation;


# instance fields
.field public final distroVersion:Lcom/android/timezone/distro/DistroVersion;

.field public final isUninstall:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 24
    new-instance v0, Lcom/android/timezone/distro/StagedDistroOperation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/timezone/distro/StagedDistroOperation;-><init>(ZLcom/android/timezone/distro/DistroVersion;)V

    sput-object v0, Lcom/android/timezone/distro/StagedDistroOperation;->UNINSTALL_STAGED:Lcom/android/timezone/distro/StagedDistroOperation;

    return-void
.end method

.method private constructor <init>(ZLcom/android/timezone/distro/DistroVersion;)V
    .registers 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean p1, p0, Lcom/android/timezone/distro/StagedDistroOperation;->isUninstall:Z

    .line 32
    iput-object p2, p0, Lcom/android/timezone/distro/StagedDistroOperation;->distroVersion:Lcom/android/timezone/distro/DistroVersion;

    .line 33
    return-void
.end method

.method public static install(Lcom/android/timezone/distro/DistroVersion;)Lcom/android/timezone/distro/StagedDistroOperation;
    .registers 3

    .line 36
    if-eqz p0, :cond_9

    .line 39
    new-instance v0, Lcom/android/timezone/distro/StagedDistroOperation;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/timezone/distro/StagedDistroOperation;-><init>(ZLcom/android/timezone/distro/DistroVersion;)V

    return-object v0

    .line 37
    :cond_9
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "distroVersion==null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static uninstall()Lcom/android/timezone/distro/StagedDistroOperation;
    .registers 1

    .line 43
    sget-object v0, Lcom/android/timezone/distro/StagedDistroOperation;->UNINSTALL_STAGED:Lcom/android/timezone/distro/StagedDistroOperation;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 48
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 49
    return v0

    .line 51
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2d

    .line 55
    :cond_12
    check-cast p1, Lcom/android/timezone/distro/StagedDistroOperation;

    .line 57
    iget-boolean v2, p0, Lcom/android/timezone/distro/StagedDistroOperation;->isUninstall:Z

    iget-boolean v3, p1, Lcom/android/timezone/distro/StagedDistroOperation;->isUninstall:Z

    if-eq v2, v3, :cond_1b

    .line 58
    return v1

    .line 60
    :cond_1b
    iget-object v2, p0, Lcom/android/timezone/distro/StagedDistroOperation;->distroVersion:Lcom/android/timezone/distro/DistroVersion;

    if-eqz v2, :cond_26

    iget-object p1, p1, Lcom/android/timezone/distro/StagedDistroOperation;->distroVersion:Lcom/android/timezone/distro/DistroVersion;

    invoke-virtual {v2, p1}, Lcom/android/timezone/distro/DistroVersion;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2c

    .line 61
    :cond_26
    iget-object p1, p1, Lcom/android/timezone/distro/StagedDistroOperation;->distroVersion:Lcom/android/timezone/distro/DistroVersion;

    if-nez p1, :cond_2b

    goto :goto_2c

    :cond_2b
    move v0, v1

    .line 60
    :goto_2c
    return v0

    .line 52
    :cond_2d
    :goto_2d
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 66
    iget-boolean v0, p0, Lcom/android/timezone/distro/StagedDistroOperation;->isUninstall:Z

    .line 67
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/timezone/distro/StagedDistroOperation;->distroVersion:Lcom/android/timezone/distro/DistroVersion;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/android/timezone/distro/DistroVersion;->hashCode()I

    move-result v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    add-int/2addr v0, v1

    .line 68
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StagedDistroOperation{isUninstall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/timezone/distro/StagedDistroOperation;->isUninstall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", distroVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/timezone/distro/StagedDistroOperation;->distroVersion:Lcom/android/timezone/distro/DistroVersion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
