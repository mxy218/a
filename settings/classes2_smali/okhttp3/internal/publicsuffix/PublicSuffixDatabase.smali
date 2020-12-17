.class public final Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
.super Ljava/lang/Object;
.source "PublicSuffixDatabase.java"


# static fields
.field private static final EMPTY_RULE:[Ljava/lang/String;

.field private static final PREVAILING_RULE:[Ljava/lang/String;

.field private static final WILDCARD_LABEL:[B

.field private static final instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;


# instance fields
.field private final listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private publicSuffixExceptionListBytes:[B

.field private publicSuffixListBytes:[B

.field private final readCompleteLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    .line 38
    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->WILDCARD_LABEL:[B

    new-array v0, v1, [Ljava/lang/String;

    .line 39
    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->EMPTY_RULE:[Ljava/lang/String;

    const-string v0, "*"

    .line 40
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->PREVAILING_RULE:[Ljava/lang/String;

    .line 44
    new-instance v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    invoke-direct {v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;-><init>()V

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private static binarySearchBytes([B[[BI)Ljava/lang/String;
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 195
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v2

    move v2, v3

    :goto_8
    if-ge v2, v4, :cond_84

    add-int v5, v2, v4

    .line 198
    div-int/lit8 v5, v5, 0x2

    :goto_e
    const/16 v6, 0xa

    const/4 v7, -0x1

    if-le v5, v7, :cond_1a

    .line 201
    aget-byte v8, v0, v5

    if-eq v8, v6, :cond_1a

    add-int/lit8 v5, v5, -0x1

    goto :goto_e

    :cond_1a
    add-int/lit8 v5, v5, 0x1

    const/4 v8, 0x1

    move v9, v8

    :goto_1e
    add-int v10, v5, v9

    .line 208
    aget-byte v11, v0, v10

    if-eq v11, v6, :cond_27

    add-int/lit8 v9, v9, 0x1

    goto :goto_1e

    :cond_27
    sub-int v6, v10, v5

    move/from16 v11, p2

    move v9, v3

    move v12, v9

    move v13, v12

    :cond_2e
    :goto_2e
    if-eqz v9, :cond_35

    const/16 v9, 0x2e

    move v14, v9

    move v9, v3

    goto :goto_3b

    .line 227
    :cond_35
    aget-object v14, v1, v11

    aget-byte v14, v14, v12

    and-int/lit16 v14, v14, 0xff

    :goto_3b
    add-int v15, v5, v13

    .line 230
    aget-byte v15, v0, v15

    and-int/lit16 v15, v15, 0xff

    sub-int/2addr v14, v15

    if-eqz v14, :cond_45

    goto :goto_55

    :cond_45
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v12, v12, 0x1

    if-ne v13, v6, :cond_4c

    goto :goto_55

    .line 239
    :cond_4c
    aget-object v15, v1, v11

    array-length v15, v15

    if-ne v15, v12, :cond_2e

    .line 242
    array-length v9, v1

    sub-int/2addr v9, v8

    if-ne v11, v9, :cond_7f

    :goto_55
    if-gez v14, :cond_5b

    :goto_57
    add-int/lit8 v5, v5, -0x1

    move v4, v5

    goto :goto_8

    :cond_5b
    if-lez v14, :cond_61

    :goto_5d
    add-int/lit8 v10, v10, 0x1

    move v2, v10

    goto :goto_8

    :cond_61
    sub-int v7, v6, v13

    .line 259
    aget-object v8, v1, v11

    array-length v8, v8

    sub-int/2addr v8, v12

    :goto_67
    add-int/lit8 v11, v11, 0x1

    .line 260
    array-length v9, v1

    if-ge v11, v9, :cond_71

    .line 261
    aget-object v9, v1, v11

    array-length v9, v9

    add-int/2addr v8, v9

    goto :goto_67

    :cond_71
    if-ge v8, v7, :cond_74

    goto :goto_57

    :cond_74
    if-le v8, v7, :cond_77

    goto :goto_5d

    .line 270
    :cond_77
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v5, v6, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_85

    :cond_7f
    add-int/lit8 v11, v11, 0x1

    move v12, v7

    move v9, v8

    goto :goto_2e

    :cond_84
    const/4 v1, 0x0

    :goto_85
    return-object v1
.end method

.method private findMatchingRule([Ljava/lang/String;)[Ljava/lang/String;
    .registers 9

    .line 108
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_16

    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 109
    invoke-direct {p0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readTheList()V

    goto :goto_1b

    .line 112
    :cond_16
    :try_start_16
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_1b} :catch_1b

    .line 117
    :catch_1b
    :goto_1b
    monitor-enter p0

    .line 118
    :try_start_1c
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    if-eqz v0, :cond_b7

    .line 122
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_bf

    .line 125
    array-length v0, p1

    new-array v0, v0, [[B

    move v3, v1

    .line 126
    :goto_25
    array-length v4, p1

    if-ge v3, v4, :cond_35

    .line 127
    aget-object v4, p1, v3

    sget-object v5, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_35
    move p1, v1

    .line 133
    :goto_36
    array-length v3, v0

    const/4 v4, 0x0

    if-ge p1, v3, :cond_46

    .line 134
    iget-object v3, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    invoke-static {v3, v0, p1}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->binarySearchBytes([B[[BI)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_43

    goto :goto_47

    :cond_43
    add-int/lit8 p1, p1, 0x1

    goto :goto_36

    :cond_46
    move-object v3, v4

    .line 147
    :goto_47
    array-length p1, v0

    if-le p1, v2, :cond_65

    .line 148
    invoke-virtual {v0}, [[B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[B

    move v5, v1

    .line 149
    :goto_51
    array-length v6, p1

    sub-int/2addr v6, v2

    if-ge v5, v6, :cond_65

    .line 150
    sget-object v6, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->WILDCARD_LABEL:[B

    aput-object v6, p1, v5

    .line 151
    iget-object v6, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    invoke-static {v6, p1, v5}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->binarySearchBytes([B[[BI)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_62

    goto :goto_66

    :cond_62
    add-int/lit8 v5, v5, 0x1

    goto :goto_51

    :cond_65
    move-object v6, v4

    :goto_66
    if-eqz v6, :cond_78

    .line 162
    :goto_68
    array-length p1, v0

    sub-int/2addr p1, v2

    if-ge v1, p1, :cond_78

    .line 163
    iget-object p1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B

    invoke-static {p1, v0, v1}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->binarySearchBytes([B[[BI)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_75

    goto :goto_79

    :cond_75
    add-int/lit8 v1, v1, 0x1

    goto :goto_68

    :cond_78
    move-object p1, v4

    :goto_79
    if-eqz p1, :cond_93

    .line 174
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "!"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\."

    .line 175
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_93
    if-nez v3, :cond_9a

    if-nez v6, :cond_9a

    .line 177
    sget-object p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->PREVAILING_RULE:[Ljava/lang/String;

    return-object p0

    :cond_9a
    if-eqz v3, :cond_a3

    const-string p0, "\\."

    .line 181
    invoke-virtual {v3, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    goto :goto_a5

    .line 182
    :cond_a3
    sget-object p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->EMPTY_RULE:[Ljava/lang/String;

    :goto_a5
    if-eqz v6, :cond_ae

    const-string p1, "\\."

    .line 185
    invoke-virtual {v6, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_b0

    .line 186
    :cond_ae
    sget-object p1, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->EMPTY_RULE:[Ljava/lang/String;

    .line 188
    :goto_b0
    array-length v0, p0

    array-length v1, p1

    if-le v0, v1, :cond_b5

    goto :goto_b6

    :cond_b5
    move-object p0, p1

    :goto_b6
    return-object p0

    .line 119
    :cond_b7
    :try_start_b7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to load publicsuffixes.gz resource from the classpath."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_bf
    move-exception p1

    .line 122
    monitor-exit p0
    :try_end_c1
    .catchall {:try_start_b7 .. :try_end_c1} :catchall_bf

    throw p1
.end method

.method public static get()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
    .registers 1

    .line 60
    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    return-object v0
.end method

.method private readTheList()V
    .registers 7

    .line 282
    const-class v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "publicsuffixes.gz"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_48

    .line 286
    new-instance v2, Lokio/GzipSource;

    invoke-static {v0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v0

    invoke-direct {v2, v0}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    invoke-static {v2}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    .line 288
    :try_start_1c
    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v2

    .line 289
    new-array v2, v2, [B

    .line 290
    invoke-interface {v0, v2}, Lokio/BufferedSource;->readFully([B)V

    .line 292
    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v3

    .line 293
    new-array v3, v3, [B

    .line 294
    invoke-interface {v0, v3}, Lokio/BufferedSource;->readFully([B)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_2e} :catch_35
    .catchall {:try_start_1c .. :try_end_2e} :catchall_33

    .line 300
    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    move-object v1, v2

    goto :goto_49

    :catchall_33
    move-exception p0

    goto :goto_44

    :catch_35
    move-exception v2

    .line 296
    :try_start_36
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v3

    const/4 v4, 0x5

    const-string v5, "Failed to read public suffix list"

    invoke-virtual {v3, v4, v5, v2}, Lokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_40
    .catchall {:try_start_36 .. :try_end_40} :catchall_33

    .line 300
    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_48

    :goto_44
    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw p0

    :cond_48
    :goto_48
    move-object v3, v1

    .line 304
    :goto_49
    monitor-enter p0

    .line 305
    :try_start_4a
    iput-object v1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    .line 306
    iput-object v3, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B

    .line 307
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_4a .. :try_end_4f} :catchall_55

    .line 309
    iget-object p0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_55
    move-exception v0

    .line 307
    :try_start_56
    monitor-exit p0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw v0
.end method


# virtual methods
.method public getEffectiveTldPlusOne(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    if-eqz p1, :cond_58

    .line 80
    invoke-static {p1}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-direct {p0, v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->findMatchingRule([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 83
    array-length v2, v0

    array-length v3, p0

    const/16 v4, 0x21

    const/4 v5, 0x0

    if-ne v2, v3, :cond_21

    aget-object v2, p0, v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_21

    const/4 p0, 0x0

    return-object p0

    .line 89
    :cond_21
    aget-object v2, p0, v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_2c

    .line 91
    array-length v0, v0

    array-length p0, p0

    goto :goto_30

    .line 94
    :cond_2c
    array-length v0, v0

    array-length p0, p0

    add-int/lit8 p0, p0, 0x1

    :goto_30
    sub-int/2addr v0, p0

    .line 97
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 99
    :goto_3a
    array-length v1, p1

    if-ge v0, v1, :cond_4a

    .line 100
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 102
    :cond_4a
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 77
    :cond_58
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "domain == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
