.class public final Lcom/android/server/pm/dex/DexoptUtils;
.super Ljava/lang/Object;
.source "DexoptUtils.java"


# static fields
.field private static final SHARED_LIBRARY_LOADER_TYPE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "DexoptUtils"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    invoke-static {}, Lcom/android/internal/os/ClassLoaderFactory;->getPathClassLoaderName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/dex/DexoptUtils;->SHARED_LIBRARY_LOADER_TYPE:Ljava/lang/String;

    .line 34
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 293
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 294
    nop

    .line 295
    invoke-static {p1}, Lcom/android/internal/os/ClassLoaderFactory;->isPathClassLoaderName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 296
    const-string p1, "PCL"

    goto :goto_2c

    .line 297
    :cond_d
    invoke-static {p1}, Lcom/android/internal/os/ClassLoaderFactory;->isDelegateLastClassLoaderName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 298
    const-string p1, "DLC"

    goto :goto_2c

    .line 300
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported classLoaderName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DexoptUtils"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :goto_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static encodeClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static encodeClassLoaderChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 320
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p1

    .line 321
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    return-object p0

    .line 322
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static encodeClasspath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 283
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1b

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1b
    return-object p1
.end method

.method private static encodeClasspath([Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 265
    if-eqz p0, :cond_27

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_27

    .line 268
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    array-length v1, p0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_22

    aget-object v3, p0, v2

    .line 270
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_1c

    .line 271
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    :cond_1c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 275
    :cond_22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 266
    :cond_27
    :goto_27
    const-string p0, ""

    return-object p0
.end method

.method private static encodeSharedLibraries(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 246
    nop

    .line 247
    nop

    .line 248
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string/jumbo v0, "{"

    const/4 v1, 0x1

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/SharedLibraryInfo;

    .line 249
    if-nez v1, :cond_29

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    :cond_29
    const/4 v1, 0x0

    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/pm/dex/DexoptUtils;->encodeSharedLibrary(Landroid/content/pm/SharedLibraryInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    goto :goto_a

    .line 255
    :cond_3e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 256
    return-object p0
.end method

.method private static encodeSharedLibrary(Landroid/content/pm/SharedLibraryInfo;)Ljava/lang/String;
    .registers 3

    .line 235
    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getAllCodePaths()Ljava/util/List;

    move-result-object v0

    .line 236
    nop

    .line 237
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClasspath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/pm/dex/DexoptUtils;->SHARED_LIBRARY_LOADER_TYPE:Ljava/lang/String;

    .line 236
    invoke-static {v0, v1}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/pm/dex/DexoptUtils;->encodeSharedLibraries(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    :cond_38
    return-object v0
.end method

.method public static getClassLoaderContext(Landroid/content/pm/SharedLibraryInfo;)Ljava/lang/String;
    .registers 3

    .line 180
    nop

    .line 181
    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_12

    .line 182
    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/pm/dex/DexoptUtils;->encodeSharedLibraries(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    goto :goto_13

    .line 181
    :cond_12
    move-object p0, v1

    .line 184
    :goto_13
    sget-object v0, Lcom/android/server/pm/dex/DexoptUtils;->SHARED_LIBRARY_LOADER_TYPE:Ljava/lang/String;

    invoke-static {v1, v0, p0}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getClassLoaderContexts(Landroid/content/pm/ApplicationInfo;Ljava/util/List;[Z)[Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;[Z)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 72
    nop

    .line 73
    const-string v0, ""

    if-eqz p1, :cond_a

    .line 74
    invoke-static {p1}, Lcom/android/server/pm/dex/DexoptUtils;->encodeSharedLibraries(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    goto :goto_b

    .line 73
    :cond_a
    move-object p1, v0

    .line 77
    :goto_b
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1e

    .line 81
    new-array p0, v4, [Ljava/lang/String;

    aput-object v1, p0, v3

    return-object p0

    .line 87
    :cond_1e
    invoke-static {p0}, Lcom/android/server/pm/dex/DexoptUtils;->getSplitRelativeCodePaths(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    move-result-object v2

    .line 91
    new-instance v5, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 92
    nop

    .line 97
    array-length v6, v2

    add-int/2addr v6, v4

    new-array v6, v6, [Ljava/lang/String;

    .line 98
    aget-boolean v7, p2, v3

    const/4 v8, 0x0

    if-eqz v7, :cond_3a

    goto :goto_3b

    :cond_3a
    move-object v1, v8

    :goto_3b
    aput-object v1, v6, v3

    .line 100
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->requestsIsolatedSplitLoading()Z

    move-result v1

    if-eqz v1, :cond_af

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    if-nez v1, :cond_48

    goto :goto_af

    .line 132
    :cond_48
    array-length v1, v2

    new-array v1, v1, [Ljava/lang/String;

    .line 133
    nop

    :goto_4c
    array-length v7, v2

    if-ge v3, v7, :cond_5e

    .line 134
    aget-object v7, v2, v3

    iget-object v9, p0, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-static {v7, v9}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v3

    .line 133
    add-int/lit8 v3, v3, 0x1

    goto :goto_4c

    .line 137
    :cond_5e
    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 139
    iget-object v3, p0, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    .line 144
    move v5, v4

    :goto_67
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v5, v7, :cond_7b

    .line 145
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 146
    aget-boolean v9, p2, v7

    if-eqz v9, :cond_78

    .line 148
    invoke-static {v7, v1, v3, v6, v2}, Lcom/android/server/pm/dex/DexoptUtils;->getParentDependencies(I[Ljava/lang/String;Landroid/util/SparseArray;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    :cond_78
    add-int/lit8 v5, v5, 0x1

    goto :goto_67

    .line 156
    :cond_7b
    nop

    :goto_7c
    array-length v1, v6

    if-ge v4, v1, :cond_cf

    .line 157
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    add-int/lit8 v2, v4, -0x1

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    aget-boolean v2, p2, v4

    if-eqz v2, :cond_aa

    .line 161
    aget-object v2, v6, v4

    if-nez v2, :cond_92

    .line 162
    goto :goto_a7

    .line 164
    :cond_92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v6, v4

    .line 163
    invoke-static {v1, v3}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoaderChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_a7
    aput-object v1, v6, v4

    goto :goto_ac

    .line 168
    :cond_aa
    aput-object v8, v6, v4

    .line 156
    :goto_ac
    add-int/lit8 v4, v4, 0x1

    goto :goto_7c

    .line 104
    :cond_af
    :goto_af
    nop

    .line 105
    nop

    :goto_b1
    array-length v0, v6

    if-ge v4, v0, :cond_ce

    .line 106
    aget-boolean v0, p2, v4

    if-eqz v0, :cond_c1

    .line 107
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    invoke-static {v5, v0, p1}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v4

    goto :goto_c3

    .line 110
    :cond_c1
    aput-object v8, v6, v4

    .line 119
    :goto_c3
    add-int/lit8 v0, v4, -0x1

    aget-object v0, v2, v0

    invoke-static {v5, v0}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClasspath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 105
    add-int/lit8 v4, v4, 0x1

    goto :goto_b1

    .line 121
    :cond_ce
    nop

    .line 173
    :cond_cf
    return-object v6
.end method

.method private static getParentDependencies(I[Ljava/lang/String;Landroid/util/SparseArray;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "[I>;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 214
    if-nez p0, :cond_3

    .line 215
    return-object p4

    .line 218
    :cond_3
    aget-object v0, p3, p0

    if-eqz v0, :cond_a

    .line 219
    aget-object p0, p3, p0

    return-object p0

    .line 222
    :cond_a
    invoke-virtual {p2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 223
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/pm/dex/DexoptUtils;->getParentDependencies(I[Ljava/lang/String;Landroid/util/SparseArray;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 227
    if-nez v0, :cond_1a

    .line 228
    goto :goto_22

    .line 229
    :cond_1a
    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    invoke-static {p1, p2}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoaderChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 230
    :goto_22
    aput-object p2, p3, p0

    .line 231
    return-object p2
.end method

.method private static getSplitRelativeCodePaths(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;
    .registers 7

    .line 398
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 399
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object p0

    .line 400
    array-length v1, p0

    new-array v1, v1, [Ljava/lang/String;

    .line 401
    const/4 v2, 0x0

    :goto_15
    array-length v3, p0

    if-ge v2, v3, :cond_50

    .line 402
    new-instance v3, Ljava/io/File;

    aget-object v4, p0, v2

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 403
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 405
    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    .line 406
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4d

    .line 407
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Split paths have different base paths: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DexoptUtils"

    invoke-static {v4, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 411
    :cond_50
    return-object v1
.end method

.method static processContextForDexLoad(Ljava/util/List;Ljava/util/List;)[Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 352
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_90

    .line 356
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_88

    .line 361
    nop

    .line 365
    const-string v0, ""

    const/4 v1, 0x1

    move-object v2, v0

    :goto_15
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-ge v1, v3, :cond_52

    .line 366
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/os/ClassLoaderFactory;->isValidClassLoaderName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 367
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2f

    goto :goto_51

    .line 370
    :cond_2f
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClasspath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 371
    nop

    .line 372
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 371
    invoke-static {v2, v3}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoaderChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 365
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 368
    :cond_51
    :goto_51
    return-object v4

    .line 376
    :cond_52
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 377
    invoke-static {p0}, Lcom/android/internal/os/ClassLoaderFactory;->isValidClassLoaderName(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_60

    .line 378
    return-object v4

    .line 380
    :cond_60
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v3, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 381
    array-length v3, p1

    new-array v3, v3, [Ljava/lang/String;

    .line 382
    nop

    .line 383
    nop

    :goto_71
    array-length v4, p1

    if-ge v1, v4, :cond_87

    .line 384
    aget-object v4, p1, v1

    .line 385
    invoke-static {v0, p0}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 387
    invoke-static {v5, v2}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoaderChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    .line 388
    invoke-static {v0, v4}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClasspath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 383
    add-int/lit8 v1, v1, 0x1

    goto :goto_71

    .line 390
    :cond_87
    return-object v3

    .line 357
    :cond_88
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Empty classLoadersNames"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 353
    :cond_90
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The size of the class loader names and the dex paths do not match."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
