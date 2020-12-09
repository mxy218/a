.class final Lcom/android/server/timezone/CheckToken;
.super Ljava/lang/Object;
.source "CheckToken.java"


# instance fields
.field final mOptimisticLockId:I

.field final mPackageVersions:Lcom/android/server/timezone/PackageVersions;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 2

    .line 51
    if-eqz p0, :cond_b

    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    goto :goto_e

    :catchall_6
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_b
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_e
    return-void
.end method

.method constructor <init>(ILcom/android/server/timezone/PackageVersions;)V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/android/server/timezone/CheckToken;->mOptimisticLockId:I

    .line 39
    if-eqz p2, :cond_a

    .line 42
    iput-object p2, p0, Lcom/android/server/timezone/CheckToken;->mPackageVersions:Lcom/android/server/timezone/PackageVersions;

    .line 43
    return-void

    .line 40
    :cond_a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "packageVersions == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static fromByteArray([B)Lcom/android/server/timezone/CheckToken;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 59
    new-instance p0, Ljava/io/DataInputStream;

    invoke-direct {p0, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 60
    :try_start_a
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 61
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    .line 62
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    .line 63
    new-instance v5, Lcom/android/server/timezone/CheckToken;

    new-instance v6, Lcom/android/server/timezone/PackageVersions;

    invoke-direct {v6, v1, v2, v3, v4}, Lcom/android/server/timezone/PackageVersions;-><init>(JJ)V

    invoke-direct {v5, v0, v6}, Lcom/android/server/timezone/CheckToken;-><init>(ILcom/android/server/timezone/PackageVersions;)V
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_25

    .line 64
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/android/server/timezone/CheckToken;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 63
    return-object v5

    .line 59
    :catchall_25
    move-exception v0

    :try_start_26
    throw v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_27

    .line 64
    :catchall_27
    move-exception v1

    invoke-static {v0, p0}, Lcom/android/server/timezone/CheckToken;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 69
    if-ne p0, p1, :cond_4

    .line 70
    const/4 p1, 0x1

    return p1

    .line 72
    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_24

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_12

    goto :goto_24

    .line 76
    :cond_12
    check-cast p1, Lcom/android/server/timezone/CheckToken;

    .line 78
    iget v1, p0, Lcom/android/server/timezone/CheckToken;->mOptimisticLockId:I

    iget v2, p1, Lcom/android/server/timezone/CheckToken;->mOptimisticLockId:I

    if-eq v1, v2, :cond_1b

    .line 79
    return v0

    .line 81
    :cond_1b
    iget-object v0, p0, Lcom/android/server/timezone/CheckToken;->mPackageVersions:Lcom/android/server/timezone/PackageVersions;

    iget-object p1, p1, Lcom/android/server/timezone/CheckToken;->mPackageVersions:Lcom/android/server/timezone/PackageVersions;

    invoke-virtual {v0, p1}, Lcom/android/server/timezone/PackageVersions;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 73
    :cond_24
    :goto_24
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 86
    iget v0, p0, Lcom/android/server/timezone/CheckToken;->mOptimisticLockId:I

    .line 87
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/server/timezone/CheckToken;->mPackageVersions:Lcom/android/server/timezone/PackageVersions;

    invoke-virtual {v1}, Lcom/android/server/timezone/PackageVersions;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 88
    return v0
.end method

.method toByteArray()[B
    .registers 6

    .line 46
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 47
    :try_start_7
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_30

    const/4 v2, 0x0

    .line 48
    :try_start_d
    iget v3, p0, Lcom/android/server/timezone/CheckToken;->mOptimisticLockId:I

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 49
    iget-object v3, p0, Lcom/android/server/timezone/CheckToken;->mPackageVersions:Lcom/android/server/timezone/PackageVersions;

    iget-wide v3, v3, Lcom/android/server/timezone/PackageVersions;->mUpdateAppVersion:J

    invoke-virtual {v1, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 50
    iget-object v3, p0, Lcom/android/server/timezone/CheckToken;->mPackageVersions:Lcom/android/server/timezone/PackageVersions;

    iget-wide v3, v3, Lcom/android/server/timezone/PackageVersions;->mDataAppVersion:J

    invoke-virtual {v1, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_29

    .line 51
    :try_start_20
    invoke-static {v2, v1}, Lcom/android/server/timezone/CheckToken;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_30

    .line 53
    nop

    .line 54
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 47
    :catchall_29
    move-exception v0

    :try_start_2a
    throw v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_2b

    .line 51
    :catchall_2b
    move-exception v2

    :try_start_2c
    invoke-static {v0, v1}, Lcom/android/server/timezone/CheckToken;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_30} :catch_30

    :catch_30
    move-exception v0

    .line 52
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to write into a ByteArrayOutputStream"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Token{mOptimisticLockId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/timezone/CheckToken;->mOptimisticLockId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPackageVersions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timezone/CheckToken;->mPackageVersions:Lcom/android/server/timezone/PackageVersions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
