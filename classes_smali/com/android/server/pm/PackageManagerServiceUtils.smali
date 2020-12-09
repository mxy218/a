.class public Lcom/android/server/pm/PackageManagerServiceUtils;
.super Ljava/lang/Object;
.source "PackageManagerServiceUtils.java"


# static fields
.field private static final FSVERITY_DISABLED:I = 0x0

.field private static final FSVERITY_ENABLED:I = 0x2

.field private static final FSVERITY_LEGACY:I = 0x1

.field private static final SEVEN_DAYS_IN_MILLISECONDS:J = 0x240c8400L


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 2

    .line 340
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

.method public constructor <init>()V
    .registers 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyPackageFilter(Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Ljava/util/Collection<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Ljava/util/Collection<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService;",
            ")V"
        }
    .end annotation

    .line 141
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .line 142
    invoke-interface {p0, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 143
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_19
    goto :goto_4

    .line 147
    :cond_1a
    invoke-static {p3, p4}, Lcom/android/server/pm/PackageManagerServiceUtils;->sortPackagesByUsageDate(Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    .line 148
    invoke-interface {p2, p3}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 150
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_24
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 151
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 153
    nop

    .line 154
    invoke-virtual {p4, v0}, Lcom/android/server/pm/PackageManagerService;->findSharedNonSystemLibraries(Landroid/content/pm/PackageParser$Package;)Ljava/util/List;

    move-result-object v0

    .line 155
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_47

    .line 156
    invoke-interface {v0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 157
    invoke-interface {p1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 158
    invoke-interface {p2, v0}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 160
    :cond_47
    goto :goto_24

    .line 162
    :cond_48
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 163
    return-void
.end method

.method public static calculateInstalledSize(Ljava/lang/String;Ljava/lang/String;)J
    .registers 3

    .line 788
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 791
    const/4 p0, 0x0

    :try_start_6
    invoke-static {v0, p0}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object p0

    .line 792
    invoke-static {p0, p1}, Lcom/android/internal/content/PackageHelper;->calculateInstalledSize(Landroid/content/pm/PackageParser$PackageLite;Ljava/lang/String;)J

    move-result-wide p0
    :try_end_e
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_6 .. :try_end_e} :catch_f
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_e} :catch_f

    return-wide p0

    .line 793
    :catch_f
    move-exception p0

    .line 794
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to calculate installed size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public static checkISA(Ljava/lang/String;)Z
    .registers 6

    .line 302
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_18

    aget-object v4, v0, v3

    .line 303
    invoke-static {v4}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 304
    const/4 p0, 0x1

    return p0

    .line 302
    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 307
    :cond_18
    return v2
.end method

.method public static compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    .registers 8

    .line 421
    const/4 v0, 0x1

    if-nez p0, :cond_8

    .line 422
    if-nez p1, :cond_6

    .line 423
    goto :goto_7

    .line 424
    :cond_6
    const/4 v0, -0x1

    .line 422
    :goto_7
    return v0

    .line 427
    :cond_8
    if-nez p1, :cond_c

    .line 428
    const/4 p0, -0x2

    return p0

    .line 431
    :cond_c
    array-length v1, p0

    array-length v2, p1

    const/4 v3, -0x3

    if-eq v1, v2, :cond_12

    .line 432
    return v3

    .line 436
    :cond_12
    array-length v1, p0

    const/4 v2, 0x0

    if-ne v1, v0, :cond_23

    .line 437
    aget-object p0, p0, v2

    aget-object p1, p1, v2

    invoke-virtual {p0, p1}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    .line 438
    goto :goto_22

    .line 439
    :cond_21
    move v2, v3

    .line 437
    :goto_22
    return v2

    .line 442
    :cond_23
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 443
    array-length v1, p0

    move v4, v2

    :goto_2a
    if-ge v4, v1, :cond_34

    aget-object v5, p0, v4

    .line 444
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 443
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 446
    :cond_34
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 447
    array-length v1, p1

    move v4, v2

    :goto_3b
    if-ge v4, v1, :cond_45

    aget-object v5, p1, v4

    .line 448
    invoke-virtual {p0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 447
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    .line 451
    :cond_45
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4c

    .line 452
    return v2

    .line 454
    :cond_4c
    return v3
.end method

.method public static compressedFileExists(Ljava/lang/String;)Z
    .registers 1

    .line 730
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->getCompressedFiles(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p0

    .line 731
    if-eqz p0, :cond_b

    array-length p0, p0

    if-lez p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method private static copyFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 871
    invoke-static {p2}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Copying "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 877
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    sget p2, Landroid/system/OsConstants;->O_RDWR:I

    sget v1, Landroid/system/OsConstants;->O_CREAT:I

    or-int/2addr p2, v1

    const/16 v1, 0x1a4

    invoke-static {p1, p2, v1}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object p1

    .line 879
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 880
    const/4 p2, 0x0

    .line 882
    :try_start_40
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_54

    .line 883
    :try_start_45
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/os/FileUtils;->copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)J
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_51

    .line 885
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 886
    nop

    .line 887
    return-void

    .line 885
    :catchall_51
    move-exception p0

    move-object p2, v0

    goto :goto_55

    :catchall_54
    move-exception p0

    :goto_55
    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0

    .line 872
    :cond_59
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid filename: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static copyPackage(Ljava/lang/String;Ljava/io/File;)I
    .registers 7

    .line 848
    if-nez p0, :cond_4

    .line 849
    const/4 p0, -0x3

    return p0

    .line 853
    :cond_4
    :try_start_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 854
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0

    .line 855
    iget-object v2, v0, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    const-string v3, "base.apk"

    invoke-static {v2, p1, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->copyFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 856
    iget-object v2, v0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    .line 857
    nop

    :goto_1e
    iget-object v2, v0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_48

    .line 858
    iget-object v2, v0, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    aget-object v2, v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "split_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->copyFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    :try_end_45
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_4 .. :try_end_45} :catch_4a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_45} :catch_4a
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_45} :catch_4a

    .line 857
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 862
    :cond_48
    const/4 p0, 0x1

    return p0

    .line 863
    :catch_4a
    move-exception p1

    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to copy package at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    const/4 p0, -0x4

    return p0
.end method

.method public static decompressFile(Ljava/io/File;Ljava/io/File;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 666
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    const-string v1, ", dst: "

    if-eqz v0, :cond_2a

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decompress file; src: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 667
    const-string v2, "PackageManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :cond_2a
    :try_start_2a
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_34} :catch_5f

    .line 671
    nop

    .line 673
    :try_start_35
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_58

    .line 671
    nop

    .line 675
    :try_start_3c
    invoke-static {v0, v2}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 676
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1a4

    invoke-static {v3, v4}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_48
    .catchall {:try_start_3c .. :try_end_48} :catchall_51

    .line 677
    const/4 v3, 0x1

    .line 678
    const/4 v4, 0x0

    :try_start_4a
    invoke-static {v4, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_58

    :try_start_4d
    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_5f

    .line 677
    return v3

    .line 671
    :catchall_51
    move-exception v3

    :try_start_52
    throw v3
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_53

    .line 678
    :catchall_53
    move-exception v4

    :try_start_54
    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v4
    :try_end_58
    .catchall {:try_start_54 .. :try_end_58} :catchall_58

    .line 671
    :catchall_58
    move-exception v2

    :try_start_59
    throw v2
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_5a

    .line 678
    :catchall_5a
    move-exception v3

    :try_start_5b
    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5f} :catch_5f

    :catch_5f
    move-exception v0

    .line 679
    const/4 v0, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to decompress file; src: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 679
    invoke-static {v0, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 683
    const/16 p0, -0x6e

    return p0
.end method

.method public static deriveAbiOverride(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;
    .registers 4

    .line 396
    nop

    .line 397
    const-string v0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 398
    move-object p0, v1

    goto :goto_15

    .line 399
    :cond_c
    if-eqz p0, :cond_f

    .line 400
    goto :goto_15

    .line 401
    :cond_f
    if-eqz p1, :cond_14

    .line 402
    iget-object p0, p1, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    goto :goto_15

    .line 401
    :cond_14
    move-object p0, v1

    .line 404
    :goto_15
    return-object p0
.end method

.method public static dumpCriticalInfo(Landroid/util/proto/ProtoOutputStream;)V
    .registers 6

    .line 334
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getSettingsProblemFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_33

    const/4 v1, 0x0

    .line 335
    nop

    .line 336
    :goto_10
    :try_start_10
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 337
    const-string v3, "ignored: updated version"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1f

    goto :goto_10

    .line 338
    :cond_1f
    const-wide v3, 0x20900000007L

    invoke-virtual {p0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V
    :try_end_27
    .catchall {:try_start_10 .. :try_end_27} :catchall_2c

    goto :goto_10

    .line 340
    :cond_28
    :try_start_28
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_33

    .line 341
    goto :goto_34

    .line 334
    :catchall_2c
    move-exception p0

    :try_start_2d
    throw p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2e

    .line 340
    :catchall_2e
    move-exception v1

    :try_start_2f
    invoke-static {p0, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v1
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_33} :catch_33

    :catch_33
    move-exception p0

    .line 342
    :goto_34
    return-void
.end method

.method public static dumpCriticalInfo(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    .line 345
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getSettingsProblemFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_33

    const/4 v1, 0x0

    .line 346
    nop

    .line 347
    :goto_10
    :try_start_10
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 348
    const-string v3, "ignored: updated version"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1f

    goto :goto_10

    .line 349
    :cond_1f
    if-eqz p1, :cond_24

    .line 350
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 352
    :cond_24
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_10 .. :try_end_27} :catchall_2c

    goto :goto_10

    .line 354
    :cond_28
    :try_start_28
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_33

    .line 355
    goto :goto_34

    .line 345
    :catchall_2c
    move-exception p0

    :try_start_2d
    throw p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2e

    .line 354
    :catchall_2e
    move-exception p1

    :try_start_2f
    invoke-static {p0, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw p1
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_33} :catch_33

    :catch_33
    move-exception p0

    .line 356
    :goto_34
    return-void
.end method

.method public static enforceShellRestriction(Ljava/lang/String;II)V
    .registers 4

    .line 378
    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_4b

    .line 379
    if-ltz p2, :cond_26

    sget-object p1, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    .line 380
    invoke-virtual {p1, p0, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_f

    goto :goto_26

    .line 382
    :cond_f
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Shell does not have permission to access user "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 384
    :cond_26
    :goto_26
    if-gez p2, :cond_4b

    .line 385
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unable to check shell permission for user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\n\t"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x3

    .line 386
    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 385
    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_4b
    return-void
.end method

.method public static getCompressedFiles(Ljava/lang/String;)[Ljava/io/File;
    .registers 7

    .line 687
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 688
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 703
    const-string v2, "-Stub"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 704
    const/4 v4, 0x0

    if-ltz v3, :cond_78

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    if-eq v5, v2, :cond_1e

    goto :goto_78

    .line 708
    :cond_1e
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 709
    const-string v2, "PackageManager"

    if-nez v0, :cond_3b

    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to determine stub parent dir for codePath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    return-object v4

    .line 714
    :cond_3b
    new-instance v4, Ljava/io/File;

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 715
    new-instance v0, Lcom/android/server/pm/PackageManagerServiceUtils$1;

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerServiceUtils$1;-><init>()V

    invoke-virtual {v4, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 722
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    if-eqz v1, :cond_77

    if-eqz v0, :cond_77

    array-length v1, v0

    if-lez v1, :cond_77

    .line 723
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCompressedFiles["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_77
    return-object v0

    .line 705
    :cond_78
    :goto_78
    return-object v4
.end method

.method public static getLastModifiedTime(Landroid/content/pm/PackageParser$Package;)J
    .registers 6

    .line 311
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_12

    .line 313
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0

    .line 315
    :cond_12
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 317
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    if-eqz v2, :cond_3c

    .line 318
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    :goto_26
    if-ltz v2, :cond_3c

    .line 319
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 318
    add-int/lit8 v2, v2, -0x1

    goto :goto_26

    .line 323
    :cond_3c
    return-wide v0
.end method

.method public static getMinimalPackageInfo(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;
    .registers 15

    .line 739
    new-instance v0, Landroid/content/pm/PackageInfoLite;

    invoke-direct {v0}, Landroid/content/pm/PackageInfoLite;-><init>()V

    .line 740
    const/4 v1, -0x2

    const-string v2, "PackageManager"

    if-nez p1, :cond_21

    .line 741
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid package file "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    iput v1, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 743
    return-object v0

    .line 746
    :cond_21
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 750
    const/4 v4, 0x0

    :try_start_27
    invoke-static {v3, v4}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v4

    .line 751
    invoke-static {v4, p3}, Lcom/android/internal/content/PackageHelper;->calculateInstalledSize(Landroid/content/pm/PackageParser$PackageLite;Ljava/lang/String;)J

    move-result-wide v8
    :try_end_2f
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_27 .. :try_end_2f} :catch_61
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2f} :catch_61

    .line 762
    nop

    .line 764
    iget-object v6, v4, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    iget v7, v4, Landroid/content/pm/PackageParser$PackageLite;->installLocation:I

    move-object v5, p0

    move v10, p2

    invoke-static/range {v5 .. v10}, Lcom/android/internal/content/PackageHelper;->resolveInstallLocation(Landroid/content/Context;Ljava/lang/String;IJI)I

    move-result p0

    .line 767
    iget-object p1, v4, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    iput-object p1, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 768
    iget-object p1, v4, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    iput-object p1, v0, Landroid/content/pm/PackageInfoLite;->splitNames:[Ljava/lang/String;

    .line 769
    iget p1, v4, Landroid/content/pm/PackageParser$PackageLite;->versionCode:I

    iput p1, v0, Landroid/content/pm/PackageInfoLite;->versionCode:I

    .line 770
    iget p1, v4, Landroid/content/pm/PackageParser$PackageLite;->versionCodeMajor:I

    iput p1, v0, Landroid/content/pm/PackageInfoLite;->versionCodeMajor:I

    .line 771
    iget p1, v4, Landroid/content/pm/PackageParser$PackageLite;->baseRevisionCode:I

    iput p1, v0, Landroid/content/pm/PackageInfoLite;->baseRevisionCode:I

    .line 772
    iget-object p1, v4, Landroid/content/pm/PackageParser$PackageLite;->splitRevisionCodes:[I

    iput-object p1, v0, Landroid/content/pm/PackageInfoLite;->splitRevisionCodes:[I

    .line 773
    iget p1, v4, Landroid/content/pm/PackageParser$PackageLite;->installLocation:I

    iput p1, v0, Landroid/content/pm/PackageInfoLite;->installLocation:I

    .line 774
    iget-object p1, v4, Landroid/content/pm/PackageParser$PackageLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    iput-object p1, v0, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    .line 775
    iput p0, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 776
    iget-boolean p0, v4, Landroid/content/pm/PackageParser$PackageLite;->multiArch:Z

    iput-boolean p0, v0, Landroid/content/pm/PackageInfoLite;->multiArch:Z

    .line 778
    return-object v0

    .line 752
    :catch_61
    move-exception p0

    .line 753
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to parse package at "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_88

    .line 756
    const/4 p0, -0x6

    iput p0, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    goto :goto_8a

    .line 758
    :cond_88
    iput v1, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 761
    :goto_8a
    return-object v0
.end method

.method private static getPackageNamesForIntent(Landroid/content/Intent;I)Landroid/util/ArraySet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 103
    nop

    .line 105
    const/4 v0, 0x0

    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v0, v2, p1}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    .line 106
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_f} :catch_10

    .line 108
    goto :goto_11

    .line 107
    :catch_10
    move-exception p0

    .line 109
    :goto_11
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 110
    if-eqz v0, :cond_30

    .line 111
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 112
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 113
    goto :goto_1c

    .line 115
    :cond_30
    return-object p0
.end method

.method public static getPackagesForDexopt(Ljava/util/Collection;Lcom/android/server/pm/PackageManagerService;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation

    .line 170
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackagesForDexopt(Ljava/util/Collection;Lcom/android/server/pm/PackageManagerService;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getPackagesForDexopt(Ljava/util/Collection;Lcom/android/server/pm/PackageManagerService;Z)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 178
    new-instance p0, Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 179
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 182
    sget-object v2, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$QMV-UHbRIK26QMZL5iM27MchX7U;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$QMV-UHbRIK26QMZL5iM27MchX7U;

    invoke-static {v2, p0, v0, v1, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->applyPackageFilter(Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    .line 186
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PRE_BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackageNamesForIntent(Landroid/content/Intent;I)Landroid/util/ArraySet;

    move-result-object v2

    .line 188
    new-instance v3, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$nPt0Hym3GvYeWA2vwfOLFDxZmCE;

    invoke-direct {v3, v2}, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$nPt0Hym3GvYeWA2vwfOLFDxZmCE;-><init>(Landroid/util/ArraySet;)V

    invoke-static {v3, p0, v0, v1, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->applyPackageFilter(Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    .line 192
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object v2

    .line 193
    new-instance v3, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$fMBP3pPR7BB2hICieRxkdNG-3H8;

    invoke-direct {v3, v2}, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$fMBP3pPR7BB2hICieRxkdNG-3H8;-><init>(Lcom/android/server/pm/dex/DexManager;)V

    invoke-static {v3, p0, v0, v1, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->applyPackageFilter(Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    .line 201
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const-string v3, "PackageManager"

    if-nez v2, :cond_8d

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->isHistoricalPackageUsageAvailable()Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 202
    if-eqz p2, :cond_4d

    .line 203
    const-string v2, "Looking at historical package use"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_4d
    sget-object v2, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$whx96xO50U3fax1NRe1upTcx9jc;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$whx96xO50U3fax1NRe1upTcx9jc;

    invoke-static {v0, v2}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 209
    if-eqz p2, :cond_72

    .line 210
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Taking package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " as reference in time use"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_72
    nop

    .line 213
    invoke-virtual {v2}, Landroid/content/pm/PackageParser$Package;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v4

    .line 215
    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_87

    .line 216
    const-wide/32 v6, 0x240c8400

    sub-long/2addr v4, v6

    .line 217
    new-instance v2, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$p5q19y4-2x-i747j_hTNL1EMzt0;

    invoke-direct {v2, v4, v5}, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$p5q19y4-2x-i747j_hTNL1EMzt0;-><init>(J)V

    .line 219
    goto :goto_89

    .line 221
    :cond_87
    sget-object v2, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$Fz3elZ0VmMMv9-wl_G3AN15dUU8;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$Fz3elZ0VmMMv9-wl_G3AN15dUU8;

    .line 223
    :goto_89
    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->sortPackagesByUsageDate(Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    .line 224
    goto :goto_8f

    .line 226
    :cond_8d
    sget-object v2, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$hVRkjdaFuAMTY9J9JQ7JyWMYCHA;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$hVRkjdaFuAMTY9J9JQ7JyWMYCHA;

    .line 228
    :goto_8f
    invoke-static {v2, p0, v0, v1, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->applyPackageFilter(Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    .line 231
    if-eqz p2, :cond_c4

    .line 232
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Packages to be dexopted: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->packagesToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Packages skipped from dexopt: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->packagesToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_c4
    return-object p0
.end method

.method private static getSettingsProblemFile()Ljava/io/File;
    .registers 3

    .line 327
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 328
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 329
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "uiderrors.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 330
    return-object v0
.end method

.method static isApkVerificationForced(Lcom/android/server/pm/PackageSetting;)Z
    .registers 1

    .line 570
    if-eqz p0, :cond_16

    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result p0

    if-eqz p0, :cond_16

    .line 571
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->isApkVerityEnabled()Z

    move-result p0

    if-nez p0, :cond_14

    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->isLegacyApkVerityEnabled()Z

    move-result p0

    if-eqz p0, :cond_16

    :cond_14
    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    .line 570
    :goto_17
    return p0
.end method

.method static isApkVerityEnabled()Z
    .registers 3

    .line 561
    const/4 v0, 0x0

    const-string/jumbo v1, "ro.apk_verity.mode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public static isDowngradePermitted(II)Z
    .registers 5

    .line 824
    and-int/lit16 v0, p0, 0x80

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    .line 826
    :goto_9
    if-nez v0, :cond_c

    .line 827
    return v2

    .line 829
    :cond_c
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_17

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_15

    goto :goto_17

    :cond_15
    move p1, v2

    goto :goto_18

    :cond_17
    :goto_17
    move p1, v1

    .line 832
    :goto_18
    if-eqz p1, :cond_1b

    .line 833
    return v1

    .line 835
    :cond_1b
    const/high16 p1, 0x100000

    and-int/2addr p0, p1

    if-eqz p0, :cond_21

    goto :goto_22

    :cond_21
    move v1, v2

    :goto_22
    return v1
.end method

.method static isLegacyApkVerityEnabled()Z
    .registers 3

    .line 565
    const/4 v0, 0x0

    const-string/jumbo v1, "ro.apk_verity.mode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    move v0, v2

    :cond_c
    return v0
.end method

.method public static isUnusedSinceTimeInMillis(JJJLcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;JJ)Z
    .registers 11

    .line 251
    sub-long p0, p2, p0

    cmp-long p0, p0, p4

    const/4 p1, 0x0

    if-gez p0, :cond_8

    .line 252
    return p1

    .line 256
    :cond_8
    sub-long p9, p2, p9

    cmp-long p0, p9, p4

    const/4 p9, 0x1

    if-gez p0, :cond_11

    move p0, p9

    goto :goto_12

    :cond_11
    move p0, p1

    .line 260
    :goto_12
    if-eqz p0, :cond_15

    .line 261
    return p1

    .line 266
    :cond_15
    sub-long/2addr p2, p7

    cmp-long p0, p2, p4

    if-gez p0, :cond_22

    .line 269
    invoke-virtual {p6}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->isAnyCodePathUsedByOtherApps()Z

    move-result p0

    if-eqz p0, :cond_22

    move p1, p9

    goto :goto_23

    :cond_22
    nop

    .line 271
    :goto_23
    xor-int/lit8 p0, p1, 0x1

    return p0
.end method

.method static synthetic lambda$getPackagesForDexopt$1(Landroid/content/pm/PackageParser$Package;)Z
    .registers 1

    .line 182
    iget-boolean p0, p0, Landroid/content/pm/PackageParser$Package;->coreApp:Z

    return p0
.end method

.method static synthetic lambda$getPackagesForDexopt$2(Landroid/util/ArraySet;Landroid/content/pm/PackageParser$Package;)Z
    .registers 2

    .line 188
    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$getPackagesForDexopt$3(Lcom/android/server/pm/dex/DexManager;Landroid/content/pm/PackageParser$Package;)Z
    .registers 2

    .line 194
    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/dex/DexManager;->getPackageUseInfoOrDefault(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object p0

    .line 195
    invoke-virtual {p0}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->isAnyCodePathUsedByOtherApps()Z

    move-result p0

    .line 194
    return p0
.end method

.method static synthetic lambda$getPackagesForDexopt$4(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;)I
    .registers 4

    .line 207
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v0

    .line 208
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide p0

    .line 207
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$getPackagesForDexopt$5(JLandroid/content/pm/PackageParser$Package;)Z
    .registers 5

    .line 218
    invoke-virtual {p2}, Landroid/content/pm/PackageParser$Package;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v0

    cmp-long p0, v0, p0

    if-ltz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method static synthetic lambda$getPackagesForDexopt$6(Landroid/content/pm/PackageParser$Package;)Z
    .registers 1

    .line 221
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$getPackagesForDexopt$7(Landroid/content/pm/PackageParser$Package;)Z
    .registers 1

    .line 226
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$sortPackagesByUsageDate$0(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;)I
    .registers 4

    .line 128
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v0

    .line 129
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide p0

    .line 128
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public static logCriticalInfo(ILjava/lang/String;)V
    .registers 7

    .line 359
    const-string v0, "PackageManager"

    invoke-static {p0, v0, p1}, Landroid/util/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-static {p1}, Lcom/android/server/EventLogTags;->writePmCriticalInfo(Ljava/lang/String;)V

    .line 362
    :try_start_8
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getSettingsProblemFile()Ljava/io/File;

    move-result-object p0

    .line 363
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 364
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v1, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 365
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 366
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 367
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 368
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 369
    nop

    .line 370
    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x1fc

    .line 369
    const/4 v0, -0x1

    invoke-static {p0, p1, v0, v0}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_4e} :catch_4f

    .line 374
    goto :goto_50

    .line 373
    :catch_4f
    move-exception p0

    .line 375
    :goto_50
    return-void
.end method

.method private static matchSignatureInSystem(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)Z
    .registers 7

    .line 527
    const/4 v0, 0x0

    const/4 v1, 0x6

    :try_start_2
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Z)V

    .line 528
    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v2, v2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v4, v4, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {v2, v4, v3}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v2

    if-nez v2, :cond_3e

    iget-object p1, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object p1, p1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v2, v2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    const/16 v4, 0x8

    .line 531
    invoke-virtual {p1, v2, v4}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result p1

    if-eqz p1, :cond_27

    goto :goto_3e

    .line 536
    :cond_27
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updated system app mismatches cert on /system: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_3d
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_2 .. :try_end_3d} :catch_3f

    .line 538
    return v0

    .line 534
    :cond_3e
    :goto_3e
    return v3

    .line 540
    :catch_3f
    move-exception p1

    .line 541
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to collect cert for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$PackageParserException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 541
    invoke-static {v1, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 543
    return v0
.end method

.method private static matchSignaturesCompat(Ljava/lang/String;Lcom/android/server/pm/PackageSignatures;Landroid/content/pm/PackageParser$SigningDetails;)Z
    .registers 14

    .line 465
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 466
    iget-object v1, p1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v1, v1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_c
    if-ge v4, v2, :cond_16

    aget-object v5, v1, v4

    .line 467
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 466
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 469
    :cond_16
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 470
    iget-object v2, p2, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v2

    move v5, v3

    :goto_1f
    if-ge v5, v4, :cond_3b

    aget-object v6, v2, v5

    .line 472
    :try_start_23
    invoke-virtual {v6}, Landroid/content/pm/Signature;->getChainSignatures()[Landroid/content/pm/Signature;

    move-result-object v7

    .line 473
    array-length v8, v7

    move v9, v3

    :goto_29
    if-ge v9, v8, :cond_33

    aget-object v10, v7, v9

    .line 474
    invoke-virtual {v1, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_23 .. :try_end_30} :catch_34

    .line 473
    add-int/lit8 v9, v9, 0x1

    goto :goto_29

    .line 478
    :cond_33
    goto :goto_38

    .line 476
    :catch_34
    move-exception v7

    .line 477
    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 470
    :goto_38
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 481
    :cond_3b
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 483
    iput-object p2, p1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 484
    const/4 p0, 0x1

    return p0

    .line 485
    :cond_45
    invoke-virtual {p2}, Landroid/content/pm/PackageParser$SigningDetails;->hasPastSigningCertificates()Z

    move-result p1

    if-eqz p1, :cond_65

    .line 490
    const/4 p1, 0x4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Existing package "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " has flattened signing certificate chain. Unable to install newer version with rotated signing certificate."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 494
    :cond_65
    return v3
.end method

.method private static matchSignaturesRecover(Ljava/lang/String;Landroid/content/pm/PackageParser$SigningDetails;Landroid/content/pm/PackageParser$SigningDetails;I)Z
    .registers 5
    .param p3  # I
        .annotation build Landroid/content/pm/PackageParser$SigningDetails$CertCapabilities;
        .end annotation
    .end param

    .line 502
    nop

    .line 504
    const/4 v0, 0x4

    :try_start_2
    invoke-virtual {p2, p1, p3}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapabilityRecover(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 505
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Recovered effectively matching certificates for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_1c
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_1c} :catch_20

    .line 507
    const/4 p0, 0x1

    return p0

    .line 511
    :cond_1e
    const/4 p1, 0x0

    goto :goto_25

    .line 509
    :catch_20
    move-exception p1

    .line 510
    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 512
    :goto_25
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to recover certificates for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 514
    const/4 p0, 0x0

    return p0
.end method

.method public static packagesToString(Ljava/util/Collection;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .line 289
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_20

    .line 290
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    :cond_20
    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    goto :goto_9

    .line 294
    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static realpath(Ljava/io/File;)Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/system/Os;->realpath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    .line 281
    :catch_9
    move-exception p0

    .line 282
    invoke-virtual {p0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public static sortPackagesByUsageDate(Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService;",
            ")V"
        }
    .end annotation

    .line 123
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->isHistoricalPackageUsageAvailable()Z

    move-result p1

    if-nez p1, :cond_7

    .line 124
    return-void

    .line 127
    :cond_7
    sget-object p1, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$ePZ6rsJ05hJ2glmOqcq1_jX6J8w;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$ePZ6rsJ05hJ2glmOqcq1_jX6J8w;

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 130
    return-void
.end method

.method public static verifySignatures(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageParser$SigningDetails;ZZ)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 583
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 584
    nop

    .line 585
    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v1, v1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v1, v1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    const-string v2, "Package "

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_7c

    .line 588
    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v1, v1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {p2, v1, v4}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v1

    const/16 v5, 0x8

    if-nez v1, :cond_28

    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v1, v1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 591
    invoke-virtual {v1, p2, v5}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v1

    if-eqz v1, :cond_26

    goto :goto_28

    :cond_26
    move v1, v3

    goto :goto_29

    :cond_28
    :goto_28
    move v1, v4

    .line 594
    :goto_29
    if-nez v1, :cond_35

    if-eqz p3, :cond_35

    .line 595
    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-static {v0, v1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesCompat(Ljava/lang/String;Lcom/android/server/pm/PackageSignatures;Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v1

    .line 597
    move v6, v1

    goto :goto_36

    .line 599
    :cond_35
    move v6, v3

    :goto_36
    if-nez v1, :cond_52

    if-eqz p4, :cond_52

    .line 600
    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v1, v1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-static {v0, v1, p2, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesRecover(Ljava/lang/String;Landroid/content/pm/PackageParser$SigningDetails;Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v1

    if-nez v1, :cond_51

    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v1, v1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 605
    invoke-static {v0, p2, v1, v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesRecover(Ljava/lang/String;Landroid/content/pm/PackageParser$SigningDetails;Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v1

    if-eqz v1, :cond_4f

    goto :goto_51

    :cond_4f
    move v1, v3

    goto :goto_52

    :cond_51
    :goto_51
    move v1, v4

    .line 612
    :cond_52
    :goto_52
    if-nez v1, :cond_5e

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->isApkVerificationForced(Lcom/android/server/pm/PackageSetting;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 613
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignatureInSystem(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)Z

    move-result v1

    .line 616
    :cond_5e
    if-eqz v1, :cond_61

    goto :goto_7d

    .line 617
    :cond_61
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const/4 p1, -0x7

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " signatures do not match previously installed version; ignoring!"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 585
    :cond_7c
    move v6, v3

    .line 623
    :goto_7d
    iget-object p1, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz p1, :cond_101

    iget-object p1, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object p1, p1, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object p1, p1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    sget-object v1, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    if-eq p1, v1, :cond_101

    .line 632
    iget-object p1, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object p1, p1, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object p1, p1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 633
    const/4 v1, 0x2

    invoke-virtual {p2, p1, v1}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result p1

    if-nez p1, :cond_a7

    iget-object p1, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object p1, p1, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object p1, p1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 636
    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result p1

    if-eqz p1, :cond_a5

    goto :goto_a7

    :cond_a5
    move p1, v3

    goto :goto_a8

    :cond_a7
    :goto_a7
    move p1, v4

    .line 639
    :goto_a8
    if-nez p1, :cond_b4

    if-eqz p3, :cond_b4

    .line 640
    iget-object p1, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object p1, p1, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-static {v0, p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesCompat(Ljava/lang/String;Lcom/android/server/pm/PackageSignatures;Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result p1

    .line 643
    :cond_b4
    if-nez p1, :cond_d7

    if-eqz p4, :cond_d7

    .line 644
    iget-object p1, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object p1, p1, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object p1, p1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 645
    invoke-static {v0, p1, p2, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesRecover(Ljava/lang/String;Landroid/content/pm/PackageParser$SigningDetails;Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result p1

    if-nez p1, :cond_d3

    iget-object p1, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object p1, p1, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object p1, p1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 649
    invoke-static {v0, p2, p1, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesRecover(Ljava/lang/String;Landroid/content/pm/PackageParser$SigningDetails;Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result p1

    if-eqz p1, :cond_d1

    goto :goto_d3

    :cond_d1
    move p1, v3

    goto :goto_d4

    :cond_d3
    :goto_d3
    move p1, v4

    .line 653
    :goto_d4
    or-int p2, v6, p1

    move v6, p2

    .line 655
    :cond_d7
    if-eqz p1, :cond_da

    goto :goto_101

    .line 656
    :cond_da
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    const/4 p2, -0x8

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " has no signatures that match those in shared user "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object p0, p0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; ignoring!"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 662
    :cond_101
    :goto_101
    return v6
.end method
