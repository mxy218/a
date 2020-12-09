.class Lcom/android/server/pm/dex/PackageDynamicCodeLoading;
.super Lcom/android/server/pm/AbstractStatsBase;
.source "PackageDynamicCodeLoading.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;,
        Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/pm/AbstractStatsBase<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final FIELD_SEPARATOR:C = ':'

.field static final FILE_TYPE_DEX:I = 0x44

.field static final FILE_TYPE_NATIVE:I = 0x4e

.field private static final FILE_VERSION_HEADER:Ljava/lang/String; = "DCL1"

.field static final MAX_FILES_PER_OWNER:I = 0x64
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final PACKAGE_LINE_PATTERN:Ljava/util/regex/Pattern;

.field private static final PACKAGE_PREFIX:Ljava/lang/String; = "P:"

.field private static final PACKAGE_SEPARATOR:Ljava/lang/String; = ","

.field private static final TAG:Ljava/lang/String; = "PackageDynamicCodeLoading"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mPackageMap:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 81
    nop

    .line 82
    const-string v0, "([A-Z]):([0-9]+):([^:]*):(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->PACKAGE_LINE_PATTERN:Ljava/util/regex/Pattern;

    .line 81
    return-void
.end method

.method constructor <init>()V
    .registers 4

    .line 94
    const-string/jumbo v0, "package-dcl.list"

    const-string v1, "PackageDynamicCodeLoading_DiskWriter"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/pm/AbstractStatsBase;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mLock:Ljava/lang/Object;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mPackageMap:Ljava/util/Map;

    .line 95
    return-void
.end method

.method static escape(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 435
    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0xd

    const/16 v3, 0xa

    const/4 v4, -0x1

    if-ne v1, v4, :cond_1a

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v4, :cond_1a

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v4, :cond_1a

    .line 436
    return-object p0

    .line 439
    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 440
    const/4 v4, 0x0

    :goto_25
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_4e

    .line 443
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 444
    if-eq v5, v3, :cond_45

    if-eq v5, v2, :cond_3f

    if-eq v5, v0, :cond_39

    .line 455
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4b

    .line 446
    :cond_39
    const-string v5, "\\\\"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    goto :goto_4b

    .line 452
    :cond_3f
    const-string v5, "\\r"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    goto :goto_4b

    .line 449
    :cond_45
    const-string v5, "\\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    nop

    .line 440
    :goto_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 459
    :cond_4e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isValidFileType(I)Z
    .registers 2

    .line 127
    const/16 v0, 0x44

    if-eq p0, v0, :cond_b

    const/16 v0, 0x4e

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method private static read(Ljava/io/InputStream;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 372
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 374
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    .line 375
    const-string v1, "DCL1"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 379
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    .line 380
    const-string v1, "P:"

    if-eqz p0, :cond_3c

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    goto :goto_3c

    .line 381
    :cond_25
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Malformed line: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 384
    :cond_3c
    :goto_3c
    if-eqz p0, :cond_6a

    .line 385
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 387
    new-instance v2, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;-><init>(Lcom/android/server/pm/dex/PackageDynamicCodeLoading$1;)V

    .line 389
    :goto_4c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 390
    if-eqz v3, :cond_5d

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 391
    goto :goto_5d

    .line 393
    :cond_59
    invoke-static {v3, v2}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->readFileInfo(Ljava/lang/String;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;)V

    goto :goto_4c

    .line 396
    :cond_5d
    :goto_5d
    iget-object v4, v2, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->mFileUsageMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_68

    .line 397
    invoke-interface {p1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    :cond_68
    move-object p0, v3

    goto :goto_3c

    .line 400
    :cond_6a
    return-void

    .line 376
    :cond_6b
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incorrect version line: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static readFileInfo(Ljava/lang/String;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    :try_start_0
    sget-object v0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->PACKAGE_LINE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 405
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_a} :catch_8c

    const-string v2, "Malformed line: "

    if-eqz v1, :cond_77

    .line 409
    const/4 v1, 0x1

    :try_start_f
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 410
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 411
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 412
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 414
    array-length v5, v4

    if-eqz v5, :cond_62

    .line 417
    invoke-static {v1}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->isValidFileType(I)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 421
    iget-object p1, p1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->mFileUsageMap:Ljava/util/Map;

    new-instance v2, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;

    const/4 v5, 0x0

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;-><init>(CI[Ljava/lang/String;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$1;)V

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    nop

    .line 427
    return-void

    .line 418
    :cond_4b
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown file type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 415
    :cond_62
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 406
    :cond_77
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_8c
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_8c} :catch_8c

    .line 422
    :catch_8c
    move-exception p1

    .line 425
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static unescape(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 470
    nop

    .line 471
    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 472
    const/4 v2, -0x1

    if-ne v1, v2, :cond_b

    .line 473
    return-object p0

    .line 476
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v4, 0x0

    .line 478
    :cond_15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_6c

    .line 482
    invoke-virtual {v3, p0, v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 483
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v0, :cond_53

    const/16 v5, 0x6e

    if-eq v4, v5, :cond_4d

    const/16 v5, 0x72

    if-ne v4, v5, :cond_36

    .line 488
    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 489
    goto :goto_57

    .line 494
    :cond_36
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad escape in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    :cond_4d
    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 492
    goto :goto_57

    .line 485
    :cond_53
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 486
    nop

    .line 497
    :goto_57
    add-int/lit8 v4, v1, 0x2

    .line 498
    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 499
    if-ne v1, v2, :cond_15

    .line 500
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v3, p0, v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 501
    nop

    .line 504
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 480
    :cond_6c
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected \\ in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static write(Ljava/io/OutputStream;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v0, p0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 304
    const-string p0, "DCL1"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 305
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_91

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 306
    const-string v1, "P:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 307
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 309
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;

    iget-object p1, p1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->mFileUsageMap:Ljava/util/Map;

    .line 310
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_90

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 311
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 312
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;

    .line 314
    iget-char v3, v1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mFileType:C

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 315
    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 316
    iget v4, v1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mUserId:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 317
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 319
    nop

    .line 320
    iget-object v1, v1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mLoadingPackages:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v4, ""

    :goto_6f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_85

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 321
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 323
    nop

    .line 324
    const-string v4, ","

    goto :goto_6f

    .line 326
    :cond_85
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 327
    invoke-static {v2}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    goto :goto_3c

    .line 329
    :cond_90
    goto :goto_12

    .line 331
    :cond_91
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 332
    invoke-virtual {v0}, Ljava/io/PrintWriter;->checkError()Z

    move-result p0

    if-nez p0, :cond_9b

    .line 335
    return-void

    .line 333
    :cond_9b
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Writer failed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method clear()V
    .registers 3

    .line 157
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 158
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mPackageMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 159
    monitor-exit v0

    .line 160
    return-void

    .line 159
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method getAllPackagesWithDynamicCodeLoading()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_3
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mPackageMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 138
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method getPackageDynamicCodeInfo(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    .registers 5

    .line 147
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mPackageMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;

    .line 149
    const/4 v1, 0x0

    if-nez p1, :cond_f

    goto :goto_15

    :cond_f
    new-instance v2, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;

    invoke-direct {v2, p1, v1}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;-><init>(Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$1;)V

    move-object v1, v2

    :goto_15
    monitor-exit v0

    return-object v1

    .line 150
    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p1
.end method

.method maybeWriteAsync()V
    .registers 2

    .line 244
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/android/server/pm/AbstractStatsBase;->maybeWriteAsync(Ljava/lang/Object;)Z

    .line 245
    return-void
.end method

.method read()V
    .registers 2

    .line 341
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/android/server/pm/AbstractStatsBase;->read(Ljava/lang/Object;)V

    .line 342
    return-void
.end method

.method read(Ljava/io/InputStream;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 364
    invoke-static {p1, v0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->read(Ljava/io/InputStream;Ljava/util/Map;)V

    .line 365
    iget-object p1, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 366
    :try_start_b
    iput-object v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mPackageMap:Ljava/util/Map;

    .line 367
    monitor-exit p1

    .line 368
    return-void

    .line 367
    :catchall_f
    move-exception v0

    monitor-exit p1
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_f

    throw v0
.end method

.method protected bridge synthetic readInternal(Ljava/lang/Object;)V
    .registers 2

    .line 51
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->readInternal(Ljava/lang/Void;)V

    return-void
.end method

.method protected final readInternal(Ljava/lang/Void;)V
    .registers 5

    .line 346
    invoke-virtual {p0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->getFile()Landroid/util/AtomicFile;

    move-result-object p1

    .line 348
    nop

    .line 350
    const/4 v0, 0x0

    :try_start_6
    invoke-virtual {p1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    .line 351
    invoke-virtual {p0, v0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->read(Ljava/io/InputStream;)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_d} :catch_1d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_10
    .catchall {:try_start_6 .. :try_end_d} :catchall_e

    goto :goto_1e

    .line 357
    :catchall_e
    move-exception p1

    goto :goto_19

    .line 354
    :catch_10
    move-exception p1

    .line 355
    :try_start_11
    const-string v1, "PackageDynamicCodeLoading"

    const-string v2, "Failed to parse dynamic usage for secondary code files."

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_e

    goto :goto_1e

    .line 357
    :goto_19
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p1

    .line 352
    :catch_1d
    move-exception p1

    .line 357
    :goto_1e
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 358
    nop

    .line 359
    return-void
.end method

.method record(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z
    .registers 9

    .line 113
    invoke-static {p3}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->isValidFileType(I)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 116
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mPackageMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;

    .line 118
    if-nez v1, :cond_1e

    .line 119
    new-instance v1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;-><init>(Lcom/android/server/pm/dex/PackageDynamicCodeLoading$1;)V

    .line 120
    iget-object v2, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mPackageMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_1e
    int-to-char p1, p3

    invoke-static {v1, p2, p1, p4, p5}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->access$100(Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;Ljava/lang/String;CILjava/lang/String;)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 123
    :catchall_25
    move-exception p1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_9 .. :try_end_27} :catchall_25

    throw p1

    .line 114
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Bad file type: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method removeFile(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 7

    .line 199
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mPackageMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;

    .line 201
    const/4 v2, 0x0

    if-nez v1, :cond_10

    .line 202
    monitor-exit v0

    return v2

    .line 204
    :cond_10
    invoke-static {v1, p2, p3}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->access$400(Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_26

    .line 205
    iget-object p2, v1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->mFileUsageMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_23

    .line 206
    iget-object p2, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mPackageMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_23
    const/4 p1, 0x1

    monitor-exit v0

    return p1

    .line 210
    :cond_26
    monitor-exit v0

    return v2

    .line 212
    :catchall_28
    move-exception p1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method removePackage(Ljava/lang/String;)Z
    .registers 4

    .line 167
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mPackageMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    monitor-exit v0

    return p1

    .line 169
    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p1
.end method

.method removeUserPackage(Ljava/lang/String;I)Z
    .registers 6

    .line 177
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mPackageMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;

    .line 179
    const/4 v2, 0x0

    if-nez v1, :cond_10

    .line 180
    monitor-exit v0

    return v2

    .line 182
    :cond_10
    invoke-static {v1, p2}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->access$300(Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;I)Z

    move-result p2

    if-eqz p2, :cond_26

    .line 183
    iget-object p2, v1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->mFileUsageMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_23

    .line 184
    iget-object p2, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mPackageMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_23
    const/4 p1, 0x1

    monitor-exit v0

    return p1

    .line 188
    :cond_26
    monitor-exit v0

    return v2

    .line 190
    :catchall_28
    move-exception p1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method syncData(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 223
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mPackageMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 224
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 225
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 226
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 227
    if-nez v3, :cond_29

    .line 228
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_3d

    .line 230
    :cond_29
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;

    .line 231
    invoke-static {v2, p1, v3}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->access$500(Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;Ljava/util/Map;Ljava/util/Set;)V

    .line 232
    iget-object v2, v2, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->mFileUsageMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 233
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 236
    :cond_3d
    :goto_3d
    goto :goto_d

    .line 237
    :cond_3e
    monitor-exit v0

    .line 238
    return-void

    .line 237
    :catchall_40
    move-exception p1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw p1
.end method

.method write(Ljava/io/OutputStream;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 273
    :try_start_3
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mPackageMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 274
    iget-object v2, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mPackageMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 275
    new-instance v4, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;-><init>(Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$1;)V

    .line 276
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    goto :goto_18

    .line 278
    :cond_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_3f

    .line 280
    invoke-static {p1, v1}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->write(Ljava/io/OutputStream;Ljava/util/Map;)V

    .line 281
    return-void

    .line 278
    :catchall_3f
    move-exception p1

    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw p1
.end method

.method protected bridge synthetic writeInternal(Ljava/lang/Object;)V
    .registers 2

    .line 51
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->writeInternal(Ljava/lang/Void;)V

    return-void
.end method

.method protected final writeInternal(Ljava/lang/Void;)V
    .registers 4

    .line 256
    invoke-virtual {p0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->getFile()Landroid/util/AtomicFile;

    move-result-object p1

    .line 257
    nop

    .line 259
    :try_start_5
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_9} :catch_12

    .line 260
    :try_start_9
    invoke-virtual {p0, v0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->write(Ljava/io/OutputStream;)V

    .line 261
    invoke-virtual {p1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_f} :catch_10

    .line 265
    goto :goto_1e

    .line 262
    :catch_10
    move-exception v1

    goto :goto_14

    :catch_12
    move-exception v1

    const/4 v0, 0x0

    .line 263
    :goto_14
    invoke-virtual {p1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 264
    const-string p1, "PackageDynamicCodeLoading"

    const-string v0, "Failed to write dynamic usage for secondary code files."

    invoke-static {p1, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 266
    :goto_1e
    return-void
.end method

.method writeNow()V
    .registers 2

    .line 251
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/android/server/pm/AbstractStatsBase;->writeNow(Ljava/lang/Object;)V

    .line 252
    return-void
.end method
