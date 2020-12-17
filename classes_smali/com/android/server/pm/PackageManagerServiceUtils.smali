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
    .registers 3
    .param p0, "x0"  # Ljava/lang/Throwable;
    .param p1, "x1"  # Ljava/lang/AutoCloseable;

    .line 340
    if-eqz p0, :cond_b

    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    goto :goto_e

    :catchall_6
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

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
    .registers 9
    .param p4, "packageManagerService"  # Lcom/android/server/pm/PackageManagerService;
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
    .local p0, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/pm/PackageParser$Package;>;"
    .local p1, "result":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    .local p2, "packages":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    .local p3, "sortTemp":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
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
    .local v1, "pkg":Landroid/content/pm/PackageParser$Package;
    invoke-interface {p0, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 143
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    .end local v1  # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_19
    goto :goto_4

    .line 147
    :cond_1a
    invoke-static {p3, p4}, Lcom/android/server/pm/PackageManagerServiceUtils;->sortPackagesByUsageDate(Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    .line 148
    invoke-interface {p2, p3}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 150
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .line 151
    .restart local v1  # "pkg":Landroid/content/pm/PackageParser$Package;
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 153
    nop

    .line 154
    invoke-virtual {p4, v1}, Lcom/android/server/pm/PackageManagerService;->findSharedNonSystemLibraries(Landroid/content/pm/PackageParser$Package;)Ljava/util/List;

    move-result-object v2

    .line 155
    .local v2, "deps":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_47

    .line 156
    invoke-interface {v2, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 157
    invoke-interface {p1, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 158
    invoke-interface {p2, v2}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 160
    .end local v1  # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v2  # "deps":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    :cond_47
    goto :goto_24

    .line 162
    :cond_48
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 163
    return-void
.end method

.method public static calculateInstalledSize(Ljava/lang/String;Ljava/lang/String;)J
    .registers 6
    .param p0, "packagePath"  # Ljava/lang/String;
    .param p1, "abiOverride"  # Ljava/lang/String;

    .line 788
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 791
    .local v0, "packageFile":Ljava/io/File;
    const/4 v1, 0x0

    :try_start_6
    invoke-static {v0, v1}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v1

    .line 792
    .local v1, "pkg":Landroid/content/pm/PackageParser$PackageLite;
    invoke-static {v1, p1}, Lcom/android/internal/content/PackageHelper;->calculateInstalledSize(Landroid/content/pm/PackageParser$PackageLite;Ljava/lang/String;)J

    move-result-wide v2
    :try_end_e
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_6 .. :try_end_e} :catch_f
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_e} :catch_f

    return-wide v2

    .line 793
    .end local v1  # "pkg":Landroid/content/pm/PackageParser$PackageLite;
    :catch_f
    move-exception v1

    .line 794
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to calculate installed size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public static checkISA(Ljava/lang/String;)Z
    .registers 7
    .param p0, "isa"  # Ljava/lang/String;

    .line 302
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_18

    aget-object v4, v0, v3

    .line 303
    .local v4, "abi":Ljava/lang/String;
    invoke-static {v4}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 304
    const/4 v0, 0x1

    return v0

    .line 302
    .end local v4  # "abi":Ljava/lang/String;
    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 307
    :cond_18
    return v2
.end method

.method public static compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    .registers 9
    .param p0, "s1"  # [Landroid/content/pm/Signature;
    .param p1, "s2"  # [Landroid/content/pm/Signature;

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
    const/4 v0, -0x2

    return v0

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
    aget-object v0, p0, v2

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

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
    .local v0, "set1":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/Signature;>;"
    array-length v1, p0

    move v4, v2

    :goto_2a
    if-ge v4, v1, :cond_34

    aget-object v5, p0, v4

    .line 444
    .local v5, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 443
    .end local v5  # "sig":Landroid/content/pm/Signature;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 446
    :cond_34
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 447
    .local v1, "set2":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/Signature;>;"
    array-length v4, p1

    move v5, v2

    :goto_3b
    if-ge v5, v4, :cond_45

    aget-object v6, p1, v5

    .line 448
    .local v6, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 447
    .end local v6  # "sig":Landroid/content/pm/Signature;
    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    .line 451
    :cond_45
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 452
    return v2

    .line 454
    :cond_4c
    return v3
.end method

.method public static compressedFileExists(Ljava/lang/String;)Z
    .registers 3
    .param p0, "codePath"  # Ljava/lang/String;

    .line 730
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->getCompressedFiles(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    .line 731
    .local v0, "compressedFiles":[Ljava/io/File;
    if-eqz v0, :cond_b

    array-length v1, v0

    if-lez v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1
.end method

.method private static copyFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .registers 7
    .param p0, "sourcePath"  # Ljava/lang/String;
    .param p1, "targetDir"  # Ljava/io/File;
    .param p2, "targetName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 871
    invoke-static {p2}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

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
    .local v0, "targetFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sget v2, Landroid/system/OsConstants;->O_RDWR:I

    sget v3, Landroid/system/OsConstants;->O_CREAT:I

    or-int/2addr v2, v3

    const/16 v3, 0x1a4

    invoke-static {v1, v2, v3}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v1

    .line 879
    .local v1, "targetFd":Ljava/io/FileDescriptor;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 880
    const/4 v2, 0x0

    .line 882
    .local v2, "source":Ljava/io/FileInputStream;
    :try_start_40
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 883
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/os/FileUtils;->copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)J
    :try_end_4d
    .catchall {:try_start_40 .. :try_end_4d} :catchall_52

    .line 885
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 886
    nop

    .line 887
    return-void

    .line 885
    :catchall_52
    move-exception v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3

    .line 872
    .end local v0  # "targetFile":Ljava/io/File;
    .end local v1  # "targetFd":Ljava/io/FileDescriptor;
    .end local v2  # "source":Ljava/io/FileInputStream;
    :cond_57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid filename: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static copyPackage(Ljava/lang/String;Ljava/io/File;)I
    .registers 8
    .param p0, "packagePath"  # Ljava/lang/String;
    .param p1, "targetDir"  # Ljava/io/File;

    .line 848
    if-nez p0, :cond_4

    .line 849
    const/4 v0, -0x3

    return v0

    .line 853
    :cond_4
    :try_start_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 854
    .local v0, "packageFile":Ljava/io/File;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v2

    .line 855
    .local v2, "pkg":Landroid/content/pm/PackageParser$PackageLite;
    iget-object v3, v2, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    const-string v4, "base.apk"

    invoke-static {v3, p1, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->copyFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 856
    iget-object v3, v2, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    .line 857
    nop

    .local v1, "i":I
    :goto_1e
    iget-object v3, v2, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_48

    .line 858
    iget-object v3, v2, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    aget-object v3, v3, v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "split_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".apk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, p1, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->copyFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    :try_end_45
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_4 .. :try_end_45} :catch_4a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_45} :catch_4a
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_45} :catch_4a

    .line 857
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 862
    .end local v1  # "i":I
    :cond_48
    const/4 v1, 0x1

    return v1

    .line 863
    .end local v0  # "packageFile":Ljava/io/File;
    .end local v2  # "pkg":Landroid/content/pm/PackageParser$PackageLite;
    :catch_4a
    move-exception v0

    .line 864
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to copy package at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    const/4 v1, -0x4

    return v1
.end method

.method public static decompressFile(Ljava/io/File;Ljava/io/File;)I
    .registers 7
    .param p0, "srcFile"  # Ljava/io/File;
    .param p1, "dstFile"  # Ljava/io/File;
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
    .local v0, "fileIn":Ljava/io/InputStream;
    nop

    .line 673
    :try_start_35
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_58

    .line 671
    .local v2, "fileOut":Ljava/io/OutputStream;
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

    .end local v0  # "fileIn":Ljava/io/InputStream;
    .end local v2  # "fileOut":Ljava/io/OutputStream;
    .end local p0  # "srcFile":Ljava/io/File;
    .end local p1  # "dstFile":Ljava/io/File;
    :try_start_52
    throw v3
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_53

    .line 678
    .restart local v0  # "fileIn":Ljava/io/InputStream;
    .restart local v2  # "fileOut":Ljava/io/OutputStream;
    .restart local p0  # "srcFile":Ljava/io/File;
    .restart local p1  # "dstFile":Ljava/io/File;
    :catchall_53
    move-exception v4

    :try_start_54
    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v0  # "fileIn":Ljava/io/InputStream;
    .end local p0  # "srcFile":Ljava/io/File;
    .end local p1  # "dstFile":Ljava/io/File;
    throw v4
    :try_end_58
    .catchall {:try_start_54 .. :try_end_58} :catchall_58

    .line 671
    .end local v2  # "fileOut":Ljava/io/OutputStream;
    .restart local v0  # "fileIn":Ljava/io/InputStream;
    .restart local p0  # "srcFile":Ljava/io/File;
    .restart local p1  # "dstFile":Ljava/io/File;
    :catchall_58
    move-exception v2

    .end local v0  # "fileIn":Ljava/io/InputStream;
    .end local p0  # "srcFile":Ljava/io/File;
    .end local p1  # "dstFile":Ljava/io/File;
    :try_start_59
    throw v2
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_5a

    .line 678
    .restart local v0  # "fileIn":Ljava/io/InputStream;
    .restart local p0  # "srcFile":Ljava/io/File;
    .restart local p1  # "dstFile":Ljava/io/File;
    :catchall_5a
    move-exception v3

    :try_start_5b
    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local p0  # "srcFile":Ljava/io/File;
    .end local p1  # "dstFile":Ljava/io/File;
    throw v3
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5f} :catch_5f

    .end local v0  # "fileIn":Ljava/io/InputStream;
    .restart local p0  # "srcFile":Ljava/io/File;
    .restart local p1  # "dstFile":Ljava/io/File;
    :catch_5f
    move-exception v0

    .line 679
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to decompress file; src: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 679
    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 683
    .end local v0  # "e":Ljava/io/IOException;
    const/16 v0, -0x6e

    return v0
.end method

.method public static deriveAbiOverride(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;
    .registers 4
    .param p0, "abiOverride"  # Ljava/lang/String;
    .param p1, "settings"  # Lcom/android/server/pm/PackageSetting;

    .line 396
    const/4 v0, 0x0

    .line 397
    .local v0, "cpuAbiOverride":Ljava/lang/String;
    const-string v1, "-"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 398
    const/4 v0, 0x0

    goto :goto_13

    .line 399
    :cond_b
    if-eqz p0, :cond_f

    .line 400
    move-object v0, p0

    goto :goto_13

    .line 401
    :cond_f
    if-eqz p1, :cond_13

    .line 402
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    .line 404
    :cond_13
    :goto_13
    return-object v0
.end method

.method public static dumpCriticalInfo(Landroid/util/proto/ProtoOutputStream;)V
    .registers 6
    .param p0, "proto"  # Landroid/util/proto/ProtoOutputStream;

    .line 334
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getSettingsProblemFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_35

    .line 335
    .local v0, "in":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    move-object v2, v1

    .line 336
    .local v2, "line":Ljava/lang/String;
    :goto_10
    :try_start_10
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    if-eqz v3, :cond_2a

    .line 337
    const-string/jumbo v3, "ignored: updated version"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_21

    goto :goto_10

    .line 338
    :cond_21
    const-wide v3, 0x20900000007L

    invoke-virtual {p0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_2e

    goto :goto_10

    .line 340
    .end local v2  # "line":Ljava/lang/String;
    :cond_2a
    :try_start_2a
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_35

    .line 341
    .end local v0  # "in":Ljava/io/BufferedReader;
    goto :goto_36

    .line 334
    .restart local v0  # "in":Ljava/io/BufferedReader;
    :catchall_2e
    move-exception v1

    .end local v0  # "in":Ljava/io/BufferedReader;
    .end local p0  # "proto":Landroid/util/proto/ProtoOutputStream;
    :try_start_2f
    throw v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_30

    .line 340
    .restart local v0  # "in":Ljava/io/BufferedReader;
    .restart local p0  # "proto":Landroid/util/proto/ProtoOutputStream;
    :catchall_30
    move-exception v2

    :try_start_31
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local p0  # "proto":Landroid/util/proto/ProtoOutputStream;
    throw v2
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_35} :catch_35

    .end local v0  # "in":Ljava/io/BufferedReader;
    .restart local p0  # "proto":Landroid/util/proto/ProtoOutputStream;
    :catch_35
    move-exception v0

    .line 342
    :goto_36
    return-void
.end method

.method public static dumpCriticalInfo(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p0, "pw"  # Ljava/io/PrintWriter;
    .param p1, "msg"  # Ljava/lang/String;

    .line 345
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getSettingsProblemFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_35

    .line 346
    .local v0, "in":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    move-object v2, v1

    .line 347
    .local v2, "line":Ljava/lang/String;
    :goto_10
    :try_start_10
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    if-eqz v3, :cond_2a

    .line 348
    const-string/jumbo v3, "ignored: updated version"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_21

    goto :goto_10

    .line 349
    :cond_21
    if-eqz p1, :cond_26

    .line 350
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 352
    :cond_26
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_2e

    goto :goto_10

    .line 354
    .end local v2  # "line":Ljava/lang/String;
    :cond_2a
    :try_start_2a
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_35

    .line 355
    .end local v0  # "in":Ljava/io/BufferedReader;
    goto :goto_36

    .line 345
    .restart local v0  # "in":Ljava/io/BufferedReader;
    :catchall_2e
    move-exception v1

    .end local v0  # "in":Ljava/io/BufferedReader;
    .end local p0  # "pw":Ljava/io/PrintWriter;
    .end local p1  # "msg":Ljava/lang/String;
    :try_start_2f
    throw v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_30

    .line 354
    .restart local v0  # "in":Ljava/io/BufferedReader;
    .restart local p0  # "pw":Ljava/io/PrintWriter;
    .restart local p1  # "msg":Ljava/lang/String;
    :catchall_30
    move-exception v2

    :try_start_31
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local p0  # "pw":Ljava/io/PrintWriter;
    .end local p1  # "msg":Ljava/lang/String;
    throw v2
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_35} :catch_35

    .end local v0  # "in":Ljava/io/BufferedReader;
    .restart local p0  # "pw":Ljava/io/PrintWriter;
    .restart local p1  # "msg":Ljava/lang/String;
    :catch_35
    move-exception v0

    .line 356
    :goto_36
    return-void
.end method

.method public static enforceShellRestriction(Ljava/lang/String;II)V
    .registers 6
    .param p0, "restriction"  # Ljava/lang/String;
    .param p1, "callingUid"  # I
    .param p2, "userHandle"  # I

    .line 378
    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_4b

    .line 379
    if-ltz p2, :cond_26

    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    .line 380
    invoke-virtual {v0, p0, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_26

    .line 382
    :cond_f
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shell does not have permission to access user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_26
    :goto_26
    if-gez p2, :cond_4b

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to check shell permission for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    .line 386
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 385
    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_4b
    return-void
.end method

.method public static getCompressedFiles(Ljava/lang/String;)[Ljava/io/File;
    .registers 10
    .param p0, "codePath"  # Ljava/lang/String;

    .line 687
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 688
    .local v0, "stubCodePath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 703
    .local v1, "stubName":Ljava/lang/String;
    const-string v2, "-Stub"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 704
    .local v3, "idx":I
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

    move-result-object v2

    .line 709
    .local v2, "stubParentDir":Ljava/io/File;
    const-string v5, "PackageManager"

    if-nez v2, :cond_3b

    .line 710
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to determine stub parent dir for codePath: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    return-object v4

    .line 714
    :cond_3b
    new-instance v4, Ljava/io/File;

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 715
    .local v4, "compressedPath":Ljava/io/File;
    new-instance v6, Lcom/android/server/pm/PackageManagerServiceUtils$1;

    invoke-direct {v6}, Lcom/android/server/pm/PackageManagerServiceUtils$1;-><init>()V

    invoke-virtual {v4, v6}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v6

    .line 722
    .local v6, "files":[Ljava/io/File;
    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    if-eqz v7, :cond_77

    if-eqz v6, :cond_77

    array-length v7, v6

    if-lez v7, :cond_77

    .line 723
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCompressedFiles["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_77
    return-object v6

    .line 705
    .end local v2  # "stubParentDir":Ljava/io/File;
    .end local v4  # "compressedPath":Ljava/io/File;
    .end local v6  # "files":[Ljava/io/File;
    :cond_78
    :goto_78
    return-object v4
.end method

.method public static getLastModifiedTime(Landroid/content/pm/PackageParser$Package;)J
    .registers 9
    .param p0, "pkg"  # Landroid/content/pm/PackageParser$Package;

    .line 311
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 312
    .local v0, "srcFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_12

    .line 313
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    return-wide v1

    .line 315
    :cond_12
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 316
    .local v1, "baseFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 317
    .local v2, "maxModifiedTime":J
    iget-object v4, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    if-eqz v4, :cond_3c

    .line 318
    iget-object v4, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_26
    if-ltz v4, :cond_3c

    .line 319
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 320
    .local v5, "splitFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 318
    .end local v5  # "splitFile":Ljava/io/File;
    add-int/lit8 v4, v4, -0x1

    goto :goto_26

    .line 323
    .end local v4  # "i":I
    :cond_3c
    return-wide v2
.end method

.method public static getMinimalPackageInfo(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;
    .registers 15
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "packagePath"  # Ljava/lang/String;
    .param p2, "flags"  # I
    .param p3, "abiOverride"  # Ljava/lang/String;

    .line 739
    new-instance v0, Landroid/content/pm/PackageInfoLite;

    invoke-direct {v0}, Landroid/content/pm/PackageInfoLite;-><init>()V

    .line 740
    .local v0, "ret":Landroid/content/pm/PackageInfoLite;
    const/4 v1, -0x2

    const-string v2, "PackageManager"

    if-nez p1, :cond_21

    .line 741
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid package file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    iput v1, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 743
    return-object v0

    .line 746
    :cond_21
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 750
    .local v3, "packageFile":Ljava/io/File;
    const/4 v4, 0x0

    :try_start_27
    invoke-static {v3, v4}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v4

    .line 751
    .local v4, "pkg":Landroid/content/pm/PackageParser$PackageLite;
    invoke-static {v4, p3}, Lcom/android/internal/content/PackageHelper;->calculateInstalledSize(Landroid/content/pm/PackageParser$PackageLite;Ljava/lang/String;)J

    move-result-wide v8
    :try_end_2f
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_27 .. :try_end_2f} :catch_61
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2f} :catch_61

    .line 762
    .local v8, "sizeBytes":J
    nop

    .line 764
    iget-object v6, v4, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    iget v7, v4, Landroid/content/pm/PackageParser$PackageLite;->installLocation:I

    move-object v5, p0

    move v10, p2

    invoke-static/range {v5 .. v10}, Lcom/android/internal/content/PackageHelper;->resolveInstallLocation(Landroid/content/Context;Ljava/lang/String;IJI)I

    move-result v1

    .line 767
    .local v1, "recommendedInstallLocation":I
    iget-object v2, v4, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 768
    iget-object v2, v4, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/PackageInfoLite;->splitNames:[Ljava/lang/String;

    .line 769
    iget v2, v4, Landroid/content/pm/PackageParser$PackageLite;->versionCode:I

    iput v2, v0, Landroid/content/pm/PackageInfoLite;->versionCode:I

    .line 770
    iget v2, v4, Landroid/content/pm/PackageParser$PackageLite;->versionCodeMajor:I

    iput v2, v0, Landroid/content/pm/PackageInfoLite;->versionCodeMajor:I

    .line 771
    iget v2, v4, Landroid/content/pm/PackageParser$PackageLite;->baseRevisionCode:I

    iput v2, v0, Landroid/content/pm/PackageInfoLite;->baseRevisionCode:I

    .line 772
    iget-object v2, v4, Landroid/content/pm/PackageParser$PackageLite;->splitRevisionCodes:[I

    iput-object v2, v0, Landroid/content/pm/PackageInfoLite;->splitRevisionCodes:[I

    .line 773
    iget v2, v4, Landroid/content/pm/PackageParser$PackageLite;->installLocation:I

    iput v2, v0, Landroid/content/pm/PackageInfoLite;->installLocation:I

    .line 774
    iget-object v2, v4, Landroid/content/pm/PackageParser$PackageLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    iput-object v2, v0, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    .line 775
    iput v1, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 776
    iget-boolean v2, v4, Landroid/content/pm/PackageParser$PackageLite;->multiArch:Z

    iput-boolean v2, v0, Landroid/content/pm/PackageInfoLite;->multiArch:Z

    .line 778
    return-object v0

    .line 752
    .end local v1  # "recommendedInstallLocation":I
    .end local v4  # "pkg":Landroid/content/pm/PackageParser$PackageLite;
    .end local v8  # "sizeBytes":J
    :catch_61
    move-exception v4

    .line 753
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse package at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_88

    .line 756
    const/4 v1, -0x6

    iput v1, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    goto :goto_8a

    .line 758
    :cond_88
    iput v1, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 761
    :goto_8a
    return-object v0
.end method

.method private static getPackageNamesForIntent(Landroid/content/Intent;I)Landroid/util/ArraySet;
    .registers 7
    .param p0, "intent"  # Landroid/content/Intent;
    .param p1, "userId"  # I
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
    const/4 v0, 0x0

    .line 105
    .local v0, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, p0, v2, v3, p1}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 106
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_11

    move-object v0, v1

    .line 108
    goto :goto_12

    .line 107
    :catch_11
    move-exception v1

    .line 109
    :goto_12
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 110
    .local v1, "pkgNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v0, :cond_31

    .line 111
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 112
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 113
    .end local v3  # "ri":Landroid/content/pm/ResolveInfo;
    goto :goto_1d

    .line 115
    :cond_31
    return-object v1
.end method

.method public static getPackagesForDexopt(Ljava/util/Collection;Lcom/android/server/pm/PackageManagerService;)Ljava/util/List;
    .registers 3
    .param p1, "packageManagerService"  # Lcom/android/server/pm/PackageManagerService;
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
    .local p0, "packages":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_DEXOPT:Z

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackagesForDexopt(Ljava/util/Collection;Lcom/android/server/pm/PackageManagerService;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getPackagesForDexopt(Ljava/util/Collection;Lcom/android/server/pm/PackageManagerService;Z)Ljava/util/List;
    .registers 16
    .param p1, "packageManagerService"  # Lcom/android/server/pm/PackageManagerService;
    .param p2, "debug"  # Z
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
    .local p0, "packages":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 178
    .local v0, "remainingPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Package;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 179
    .local v1, "result":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/content/pm/PackageParser$Package;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 182
    .local v2, "sortTemp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Package;>;"
    sget-object v3, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$QMV-UHbRIK26QMZL5iM27MchX7U;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$QMV-UHbRIK26QMZL5iM27MchX7U;

    invoke-static {v3, v1, v0, v2, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->applyPackageFilter(Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    .line 186
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.PRE_BOOT_COMPLETED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    .local v3, "intent":Landroid/content/Intent;
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackageNamesForIntent(Landroid/content/Intent;I)Landroid/util/ArraySet;

    move-result-object v4

    .line 188
    .local v4, "pkgNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v5, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$nPt0Hym3GvYeWA2vwfOLFDxZmCE;

    invoke-direct {v5, v4}, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$nPt0Hym3GvYeWA2vwfOLFDxZmCE;-><init>(Landroid/util/ArraySet;)V

    invoke-static {v5, v1, v0, v2, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->applyPackageFilter(Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    .line 192
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object v5

    .line 193
    .local v5, "dexManager":Lcom/android/server/pm/dex/DexManager;
    new-instance v6, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$fMBP3pPR7BB2hICieRxkdNG-3H8;

    invoke-direct {v6, v5}, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$fMBP3pPR7BB2hICieRxkdNG-3H8;-><init>(Lcom/android/server/pm/dex/DexManager;)V

    invoke-static {v6, v1, v0, v2, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->applyPackageFilter(Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    .line 201
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    const-string v7, "PackageManager"

    if-nez v6, :cond_8e

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->isHistoricalPackageUsageAvailable()Z

    move-result v6

    if-eqz v6, :cond_8e

    .line 202
    if-eqz p2, :cond_4d

    .line 203
    const-string v6, "Looking at historical package use"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_4d
    sget-object v6, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$whx96xO50U3fax1NRe1upTcx9jc;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$whx96xO50U3fax1NRe1upTcx9jc;

    invoke-static {v0, v6}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Package;

    .line 209
    .local v6, "lastUsed":Landroid/content/pm/PackageParser$Package;
    if-eqz p2, :cond_72

    .line 210
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Taking package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " as reference in time use"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_72
    nop

    .line 213
    invoke-virtual {v6}, Landroid/content/pm/PackageParser$Package;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v8

    .line 215
    .local v8, "estimatedPreviousSystemUseTime":J
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-eqz v10, :cond_88

    .line 216
    const-wide/32 v10, 0x240c8400

    sub-long v10, v8, v10

    .line 217
    .local v10, "cutoffTime":J
    new-instance v12, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$p5q19y4-2x-i747j_hTNL1EMzt0;

    .end local v10  # "cutoffTime":J
    .local v12, "remainingPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/pm/PackageParser$Package;>;"
    invoke-direct {v12, v10, v11}, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$p5q19y4-2x-i747j_hTNL1EMzt0;-><init>(J)V

    .line 219
    goto :goto_8a

    .line 221
    .end local v12  # "remainingPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/pm/PackageParser$Package;>;"
    :cond_88
    sget-object v12, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$Fz3elZ0VmMMv9-wl_G3AN15dUU8;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$Fz3elZ0VmMMv9-wl_G3AN15dUU8;

    .line 223
    .restart local v12  # "remainingPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/pm/PackageParser$Package;>;"
    :goto_8a
    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->sortPackagesByUsageDate(Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    .line 224
    .end local v6  # "lastUsed":Landroid/content/pm/PackageParser$Package;
    .end local v8  # "estimatedPreviousSystemUseTime":J
    goto :goto_90

    .line 226
    .end local v12  # "remainingPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/pm/PackageParser$Package;>;"
    :cond_8e
    sget-object v12, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$hVRkjdaFuAMTY9J9JQ7JyWMYCHA;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$hVRkjdaFuAMTY9J9JQ7JyWMYCHA;

    .line 228
    .restart local v12  # "remainingPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/pm/PackageParser$Package;>;"
    :goto_90
    invoke-static {v12, v1, v0, v2, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->applyPackageFilter(Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    .line 231
    if-eqz p2, :cond_c5

    .line 232
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Packages to be dexopted: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->packagesToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Packages skipped from dexopt: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->packagesToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_c5
    return-object v1
.end method

.method private static getSettingsProblemFile()Ljava/io/File;
    .registers 4

    .line 327
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 328
    .local v0, "dataDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 329
    .local v1, "systemDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "uiderrors.txt"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 330
    .local v2, "fname":Ljava/io/File;
    return-object v2
.end method

.method static isApkVerificationForced(Lcom/android/server/pm/PackageSetting;)Z
    .registers 2
    .param p0, "disabledPs"  # Lcom/android/server/pm/PackageSetting;

    .line 570
    if-eqz p0, :cond_16

    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 571
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->isApkVerityEnabled()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->isLegacyApkVerityEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 570
    :goto_17
    return v0
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
    .registers 7
    .param p0, "installFlags"  # I
    .param p1, "applicationFlags"  # I

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
    .local v0, "downgradeRequested":Z
    :goto_9
    if-nez v0, :cond_c

    .line 827
    return v2

    .line 829
    :cond_c
    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v3, :cond_17

    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_15

    goto :goto_17

    :cond_15
    move v3, v2

    goto :goto_18

    :cond_17
    :goto_17
    move v3, v1

    .line 832
    .local v3, "isDebuggable":Z
    :goto_18
    if-eqz v3, :cond_1b

    .line 833
    return v1

    .line 835
    :cond_1b
    const/high16 v4, 0x100000

    and-int/2addr v4, p0

    if-eqz v4, :cond_21

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
    .registers 16
    .param p0, "firstInstallTime"  # J
    .param p2, "currentTimeInMillis"  # J
    .param p4, "thresholdTimeinMillis"  # J
    .param p6, "packageUseInfo"  # Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .param p7, "latestPackageUseTimeInMillis"  # J
    .param p9, "latestForegroundPackageUseTimeInMillis"  # J

    .line 251
    sub-long v0, p2, p0

    cmp-long v0, v0, p4

    const/4 v1, 0x0

    if-gez v0, :cond_8

    .line 252
    return v1

    .line 256
    :cond_8
    sub-long v2, p2, p9

    cmp-long v0, v2, p4

    const/4 v2, 0x1

    if-gez v0, :cond_11

    move v0, v2

    goto :goto_12

    :cond_11
    move v0, v1

    .line 260
    .local v0, "isActiveInForeground":Z
    :goto_12
    if-eqz v0, :cond_15

    .line 261
    return v1

    .line 266
    :cond_15
    sub-long v3, p2, p7

    cmp-long v3, v3, p4

    if-gez v3, :cond_23

    .line 269
    invoke-virtual {p6}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->isAnyCodePathUsedByOtherApps()Z

    move-result v3

    if-eqz v3, :cond_23

    move v3, v2

    goto :goto_24

    :cond_23
    move v3, v1

    .line 271
    .local v3, "isActiveInBackgroundAndUsedByOtherPackages":Z
    :goto_24
    if-nez v3, :cond_27

    move v1, v2

    :cond_27
    return v1
.end method

.method static synthetic lambda$getPackagesForDexopt$1(Landroid/content/pm/PackageParser$Package;)Z
    .registers 2
    .param p0, "pkg"  # Landroid/content/pm/PackageParser$Package;

    .line 182
    iget-boolean v0, p0, Landroid/content/pm/PackageParser$Package;->coreApp:Z

    return v0
.end method

.method static synthetic lambda$getPackagesForDexopt$2(Landroid/util/ArraySet;Landroid/content/pm/PackageParser$Package;)Z
    .registers 3
    .param p0, "pkgNames"  # Landroid/util/ArraySet;
    .param p1, "pkg"  # Landroid/content/pm/PackageParser$Package;

    .line 188
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getPackagesForDexopt$3(Lcom/android/server/pm/dex/DexManager;Landroid/content/pm/PackageParser$Package;)Z
    .registers 3
    .param p0, "dexManager"  # Lcom/android/server/pm/dex/DexManager;
    .param p1, "pkg"  # Landroid/content/pm/PackageParser$Package;

    .line 194
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/dex/DexManager;->getPackageUseInfoOrDefault(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->isAnyCodePathUsedByOtherApps()Z

    move-result v0

    .line 194
    return v0
.end method

.method static synthetic lambda$getPackagesForDexopt$4(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;)I
    .registers 6
    .param p0, "pkg1"  # Landroid/content/pm/PackageParser$Package;
    .param p1, "pkg2"  # Landroid/content/pm/PackageParser$Package;

    .line 207
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v0

    .line 208
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v2

    .line 207
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$getPackagesForDexopt$5(JLandroid/content/pm/PackageParser$Package;)Z
    .registers 5
    .param p0, "cutoffTime"  # J
    .param p2, "pkg"  # Landroid/content/pm/PackageParser$Package;

    .line 218
    invoke-virtual {p2}, Landroid/content/pm/PackageParser$Package;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v0

    cmp-long v0, v0, p0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method static synthetic lambda$getPackagesForDexopt$6(Landroid/content/pm/PackageParser$Package;)Z
    .registers 2
    .param p0, "pkg"  # Landroid/content/pm/PackageParser$Package;

    .line 221
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$getPackagesForDexopt$7(Landroid/content/pm/PackageParser$Package;)Z
    .registers 2
    .param p0, "pkg"  # Landroid/content/pm/PackageParser$Package;

    .line 226
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$sortPackagesByUsageDate$0(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;)I
    .registers 6
    .param p0, "pkg1"  # Landroid/content/pm/PackageParser$Package;
    .param p1, "pkg2"  # Landroid/content/pm/PackageParser$Package;

    .line 128
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v0

    .line 129
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v2

    .line 128
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public static logCriticalInfo(ILjava/lang/String;)V
    .registers 10
    .param p0, "priority"  # I
    .param p1, "msg"  # Ljava/lang/String;

    .line 359
    const-string v0, "PackageManager"

    invoke-static {p0, v0, p1}, Landroid/util/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-static {p1}, Lcom/android/server/EventLogTags;->writePmCriticalInfo(Ljava/lang/String;)V

    .line 362
    :try_start_8
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getSettingsProblemFile()Ljava/io/File;

    move-result-object v0

    .line 363
    .local v0, "fname":Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 364
    .local v1, "out":Ljava/io/FileOutputStream;
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v2, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 365
    .local v2, "pw":Ljava/io/PrintWriter;
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 366
    .local v3, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 367
    .local v4, "dateString":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 368
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 369
    nop

    .line 370
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1fc

    .line 369
    const/4 v7, -0x1

    invoke-static {v5, v6, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_4e} :catch_50

    .line 374
    nop

    .end local v0  # "fname":Ljava/io/File;
    .end local v1  # "out":Ljava/io/FileOutputStream;
    .end local v2  # "pw":Ljava/io/PrintWriter;
    .end local v3  # "formatter":Ljava/text/SimpleDateFormat;
    .end local v4  # "dateString":Ljava/lang/String;
    goto :goto_51

    .line 373
    :catch_50
    move-exception v0

    .line 375
    :goto_51
    return-void
.end method

.method private static matchSignatureInSystem(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)Z
    .registers 8
    .param p0, "pkgSetting"  # Lcom/android/server/pm/PackageSetting;
    .param p1, "disabledPkgSetting"  # Lcom/android/server/pm/PackageSetting;

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

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v2, v2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v4, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v4, v4, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    const/16 v5, 0x8

    .line 531
    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v2

    if-eqz v2, :cond_27

    goto :goto_3e

    .line 536
    :cond_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated system app mismatches cert on /system: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
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
    move-exception v2

    .line 541
    .local v2, "e":Landroid/content/pm/PackageParser$PackageParserException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to collect cert for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    invoke-virtual {v2}, Landroid/content/pm/PackageParser$PackageParserException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 541
    invoke-static {v1, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 543
    return v0
.end method

.method private static matchSignaturesCompat(Ljava/lang/String;Lcom/android/server/pm/PackageSignatures;Landroid/content/pm/PackageParser$SigningDetails;)Z
    .registers 14
    .param p0, "packageName"  # Ljava/lang/String;
    .param p1, "packageSignatures"  # Lcom/android/server/pm/PackageSignatures;
    .param p2, "parsedSignatures"  # Landroid/content/pm/PackageParser$SigningDetails;

    .line 465
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 466
    .local v0, "existingSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/Signature;>;"
    iget-object v1, p1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v1, v1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_c
    if-ge v4, v2, :cond_16

    aget-object v5, v1, v4

    .line 467
    .local v5, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 466
    .end local v5  # "sig":Landroid/content/pm/Signature;
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 469
    :cond_16
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 470
    .local v1, "scannedCompatSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/Signature;>;"
    iget-object v2, p2, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v2

    move v5, v3

    :goto_1f
    if-ge v5, v4, :cond_3c

    aget-object v6, v2, v5

    .line 472
    .local v6, "sig":Landroid/content/pm/Signature;
    :try_start_23
    invoke-virtual {v6}, Landroid/content/pm/Signature;->getChainSignatures()[Landroid/content/pm/Signature;

    move-result-object v7

    .line 473
    .local v7, "chainSignatures":[Landroid/content/pm/Signature;
    array-length v8, v7

    move v9, v3

    :goto_29
    if-ge v9, v8, :cond_34

    aget-object v10, v7, v9

    .line 474
    .local v10, "chainSig":Landroid/content/pm/Signature;
    invoke-virtual {v1, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_23 .. :try_end_30} :catch_35

    .line 473
    nop

    .end local v10  # "chainSig":Landroid/content/pm/Signature;
    add-int/lit8 v9, v9, 0x1

    goto :goto_29

    .line 478
    .end local v7  # "chainSignatures":[Landroid/content/pm/Signature;
    :cond_34
    goto :goto_39

    .line 476
    :catch_35
    move-exception v7

    .line 477
    .local v7, "e":Ljava/security/cert/CertificateEncodingException;
    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 470
    .end local v6  # "sig":Landroid/content/pm/Signature;
    .end local v7  # "e":Ljava/security/cert/CertificateEncodingException;
    :goto_39
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 481
    :cond_3c
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 483
    iput-object p2, p1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 484
    const/4 v2, 0x1

    return v2

    .line 485
    :cond_46
    invoke-virtual {p2}, Landroid/content/pm/PackageParser$SigningDetails;->hasPastSigningCertificates()Z

    move-result v2

    if-eqz v2, :cond_66

    .line 490
    const/4 v2, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Existing package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " has flattened signing certificate chain. Unable to install newer version with rotated signing certificate."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 494
    :cond_66
    return v3
.end method

.method private static matchSignaturesRecover(Ljava/lang/String;Landroid/content/pm/PackageParser$SigningDetails;Landroid/content/pm/PackageParser$SigningDetails;I)Z
    .registers 8
    .param p0, "packageName"  # Ljava/lang/String;
    .param p1, "existingSignatures"  # Landroid/content/pm/PackageParser$SigningDetails;
    .param p2, "parsedSignatures"  # Landroid/content/pm/PackageParser$SigningDetails;
    .param p3, "flags"  # I
        .annotation build Landroid/content/pm/PackageParser$SigningDetails$CertCapabilities;
        .end annotation
    .end param

    .line 502
    const/4 v0, 0x0

    .line 504
    .local v0, "msg":Ljava/lang/String;
    const/4 v1, 0x4

    :try_start_2
    invoke-virtual {p2, p1, p3}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapabilityRecover(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 505
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recovered effectively matching certificates for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_1c
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_1c} :catch_1f

    .line 507
    const/4 v1, 0x1

    return v1

    .line 511
    :cond_1e
    goto :goto_24

    .line 509
    :catch_1f
    move-exception v2

    .line 510
    .local v2, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 512
    .end local v2  # "e":Ljava/security/cert/CertificateException;
    :goto_24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to recover certificates for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 514
    const/4 v1, 0x0

    return v1
.end method

.method public static packagesToString(Ljava/util/Collection;)Ljava/lang/String;
    .registers 5
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
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 289
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_20

    .line 290
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    :cond_20
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .end local v2  # "pkg":Landroid/content/pm/PackageParser$Package;
    goto :goto_9

    .line 294
    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static realpath(Ljava/io/File;)Ljava/lang/String;
    .registers 3
    .param p0, "path"  # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->realpath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 281
    :catch_9
    move-exception v0

    .line 282
    .local v0, "ee":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public static sortPackagesByUsageDate(Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V
    .registers 3
    .param p1, "packageManagerService"  # Lcom/android/server/pm/PackageManagerService;
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
    .local p0, "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->isHistoricalPackageUsageAvailable()Z

    move-result v0

    if-nez v0, :cond_7

    .line 124
    return-void

    .line 127
    :cond_7
    sget-object v0, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$ePZ6rsJ05hJ2glmOqcq1_jX6J8w;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$ePZ6rsJ05hJ2glmOqcq1_jX6J8w;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 130
    return-void
.end method

.method public static verifySignatures(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageParser$SigningDetails;ZZ)Z
    .registers 13
    .param p0, "pkgSetting"  # Lcom/android/server/pm/PackageSetting;
    .param p1, "disabledPkgSetting"  # Lcom/android/server/pm/PackageSetting;
    .param p2, "parsedSignatures"  # Landroid/content/pm/PackageParser$SigningDetails;
    .param p3, "compareCompat"  # Z
    .param p4, "compareRecover"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 583
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 584
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 585
    .local v1, "compatMatch":Z
    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v2, v2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v2, v2, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    const-string v3, "Package "

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_7b

    .line 588
    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v2, v2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {p2, v2, v5}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v2

    const/16 v6, 0x8

    if-nez v2, :cond_28

    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v2, v2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 591
    invoke-virtual {v2, p2, v6}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v2

    if-eqz v2, :cond_26

    goto :goto_28

    :cond_26
    move v2, v4

    goto :goto_29

    :cond_28
    :goto_28
    move v2, v5

    .line 594
    .local v2, "match":Z
    :goto_29
    if-nez v2, :cond_34

    if-eqz p3, :cond_34

    .line 595
    iget-object v7, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-static {v0, v7, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesCompat(Ljava/lang/String;Lcom/android/server/pm/PackageSignatures;Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v2

    .line 597
    move v1, v2

    .line 599
    :cond_34
    if-nez v2, :cond_51

    if-eqz p4, :cond_51

    .line 600
    iget-object v7, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v7, v7, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-static {v0, v7, p2, v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesRecover(Ljava/lang/String;Landroid/content/pm/PackageParser$SigningDetails;Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v7

    if-nez v7, :cond_4f

    iget-object v7, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v7, v7, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 605
    invoke-static {v0, p2, v7, v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesRecover(Ljava/lang/String;Landroid/content/pm/PackageParser$SigningDetails;Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v6

    if-eqz v6, :cond_4d

    goto :goto_4f

    :cond_4d
    move v6, v4

    goto :goto_50

    :cond_4f
    :goto_4f
    move v6, v5

    :goto_50
    move v2, v6

    .line 612
    :cond_51
    if-nez v2, :cond_5d

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->isApkVerificationForced(Lcom/android/server/pm/PackageSetting;)Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 613
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignatureInSystem(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)Z

    move-result v2

    .line 616
    :cond_5d
    if-eqz v2, :cond_60

    goto :goto_7b

    .line 617
    :cond_60
    new-instance v4, Lcom/android/server/pm/PackageManagerException;

    const/4 v5, -0x7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " signatures do not match previously installed version; ignoring!"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 623
    .end local v2  # "match":Z
    :cond_7b
    :goto_7b
    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v2, :cond_fb

    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v2, v2, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v2, v2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    sget-object v6, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    if-eq v2, v6, :cond_fb

    .line 632
    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v2, v2, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v2, v2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 633
    const/4 v6, 0x2

    invoke-virtual {p2, v2, v6}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v2

    if-nez v2, :cond_a5

    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v2, v2, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v2, v2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 636
    invoke-virtual {v2, p2, v6}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v2

    if-eqz v2, :cond_a3

    goto :goto_a5

    :cond_a3
    move v2, v4

    goto :goto_a6

    :cond_a5
    :goto_a5
    move v2, v5

    .line 639
    .restart local v2  # "match":Z
    :goto_a6
    if-nez v2, :cond_b2

    if-eqz p3, :cond_b2

    .line 640
    iget-object v7, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v7, v7, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-static {v0, v7, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesCompat(Ljava/lang/String;Lcom/android/server/pm/PackageSignatures;Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v2

    .line 643
    :cond_b2
    if-nez v2, :cond_d1

    if-eqz p4, :cond_d1

    .line 644
    iget-object v7, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v7, v7, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v7, v7, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 645
    invoke-static {v0, v7, p2, v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesRecover(Ljava/lang/String;Landroid/content/pm/PackageParser$SigningDetails;Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v7

    if-nez v7, :cond_ce

    iget-object v7, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v7, v7, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v7, v7, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 649
    invoke-static {v0, p2, v7, v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesRecover(Ljava/lang/String;Landroid/content/pm/PackageParser$SigningDetails;Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v6

    if-eqz v6, :cond_cf

    :cond_ce
    move v4, v5

    :cond_cf
    move v2, v4

    .line 653
    or-int/2addr v1, v2

    .line 655
    :cond_d1
    if-eqz v2, :cond_d4

    goto :goto_fb

    .line 656
    :cond_d4
    new-instance v4, Lcom/android/server/pm/PackageManagerException;

    const/4 v5, -0x8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has no signatures that match those in shared user "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v3, v3, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; ignoring!"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 662
    .end local v2  # "match":Z
    :cond_fb
    :goto_fb
    return v1
.end method
