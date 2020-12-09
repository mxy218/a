.class public Lcom/android/server/role/RoleUserState;
.super Ljava/lang/Object;
.source "RoleUserState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/role/RoleUserState$Callback;
    }
.end annotation


# static fields
.field private static final ATTRIBUTE_NAME:Ljava/lang/String; = "name"

.field private static final ATTRIBUTE_PACKAGES_HASH:Ljava/lang/String; = "packagesHash"

.field private static final ATTRIBUTE_VERSION:Ljava/lang/String; = "version"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final ROLES_FILE_NAME:Ljava/lang/String; = "roles.xml"

.field private static final TAG_HOLDER:Ljava/lang/String; = "holder"

.field private static final TAG_ROLE:Ljava/lang/String; = "role"

.field private static final TAG_ROLES:Ljava/lang/String; = "roles"

.field public static final VERSION_UNDEFINED:I = -0x1

.field private static final WRITE_DELAY_MILLIS:J = 0xc8L


# instance fields
.field private final mCallback:Lcom/android/server/role/RoleUserState$Callback;

.field private mDestroyed:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mPackagesHash:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mRoles:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUserId:I

.field private mVersion:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mWriteHandler:Landroid/os/Handler;

.field private mWriteScheduled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 59
    const-class v0, Lcom/android/server/role/RoleUserState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/role/RoleUserState;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILcom/android/server/role/RoleUserState$Callback;)V
    .registers 5

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/role/RoleUserState;->mVersion:I

    .line 93
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    .line 103
    new-instance v0, Landroid/os/Handler;

    .line 104
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/role/RoleUserState;->mWriteHandler:Landroid/os/Handler;

    .line 113
    iput p1, p0, Lcom/android/server/role/RoleUserState;->mUserId:I

    .line 114
    iput-object p2, p0, Lcom/android/server/role/RoleUserState;->mCallback:Lcom/android/server/role/RoleUserState$Callback;

    .line 116
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->readFile()V

    .line 117
    return-void
.end method

.method private static getFile(I)Ljava/io/File;
    .registers 3

    .line 621
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p0

    const-string/jumbo v1, "roles.xml"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic lambda$e8W_Zaq_FyocW_DX1qcbN0ld0co(Lcom/android/server/role/RoleUserState;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->writeFile()V

    return-void
.end method

.method private parseRoleHoldersLocked(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/ArraySet;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 509
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 513
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 514
    :cond_b
    :goto_b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-eq v3, v2, :cond_38

    .line 515
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-ge v4, v1, :cond_1a

    const/4 v5, 0x3

    if-eq v3, v5, :cond_38

    .line 516
    :cond_1a
    if-gt v4, v1, :cond_b

    const/4 v4, 0x2

    if-eq v3, v4, :cond_20

    .line 517
    goto :goto_b

    .line 520
    :cond_20
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "holder"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 521
    const/4 v3, 0x0

    const-string/jumbo v4, "name"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 522
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 523
    goto :goto_b

    .line 526
    :cond_38
    return-object v0
.end method

.method private parseRolesLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 485
    const/4 v0, 0x0

    const-string/jumbo v1, "version"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/role/RoleUserState;->mVersion:I

    .line 486
    const-string/jumbo v1, "packagesHash"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/role/RoleUserState;->mPackagesHash:Ljava/lang/String;

    .line 487
    iget-object v1, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 491
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 492
    :cond_22
    :goto_22
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-eq v3, v2, :cond_55

    .line 493
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-ge v4, v1, :cond_31

    const/4 v5, 0x3

    if-eq v3, v5, :cond_55

    .line 494
    :cond_31
    if-gt v4, v1, :cond_22

    const/4 v4, 0x2

    if-eq v3, v4, :cond_37

    .line 495
    goto :goto_22

    .line 498
    :cond_37
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "role"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 499
    const-string/jumbo v3, "name"

    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 500
    invoke-direct {p0, p1}, Lcom/android/server/role/RoleUserState;->parseRoleHoldersLocked(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/ArraySet;

    move-result-object v4

    .line 501
    iget-object v5, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    goto :goto_22

    .line 504
    :cond_55
    return-void
.end method

.method private parseXmlLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 468
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 469
    :cond_6
    :goto_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v1, :cond_2c

    .line 470
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-ge v3, v0, :cond_15

    const/4 v4, 0x3

    if-eq v2, v4, :cond_2c

    .line 471
    :cond_15
    if-gt v3, v0, :cond_6

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1b

    .line 472
    goto :goto_6

    .line 475
    :cond_1b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "roles"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 476
    invoke-direct {p0, p1}, Lcom/android/server/role/RoleUserState;->parseRolesLocked(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 477
    return-void

    .line 480
    :cond_2c
    sget-object p1, Lcom/android/server/role/RoleUserState;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Missing <roles> in roles.xml"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    return-void
.end method

.method private readFile()V
    .registers 7

    .line 449
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 450
    :try_start_3
    iget v1, p0, Lcom/android/server/role/RoleUserState;->mUserId:I

    invoke-static {v1}, Lcom/android/server/role/RoleUserState;->getFile(I)Ljava/io/File;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_5c

    .line 451
    :try_start_9
    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_12} :catch_50
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_12} :catch_38
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_12} :catch_38
    .catchall {:try_start_9 .. :try_end_12} :catchall_5c

    .line 452
    :try_start_12
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 453
    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 454
    invoke-direct {p0, v3}, Lcom/android/server/role/RoleUserState;->parseXmlLocked(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 455
    sget-object v3, Lcom/android/server/role/RoleUserState;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Read roles.xml successfully"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_2a

    .line 456
    if-eqz v2, :cond_59

    :try_start_26
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_29} :catch_50
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_26 .. :try_end_29} :catch_38
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_38
    .catchall {:try_start_26 .. :try_end_29} :catchall_5c

    goto :goto_59

    .line 451
    :catchall_2a
    move-exception v3

    :try_start_2b
    throw v3
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2c

    .line 456
    :catchall_2c
    move-exception v4

    if-eqz v2, :cond_37

    :try_start_2f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    goto :goto_37

    :catchall_33
    move-exception v2

    :try_start_34
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_37
    :goto_37
    throw v4
    :try_end_38
    .catch Ljava/io/FileNotFoundException; {:try_start_34 .. :try_end_38} :catch_50
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_34 .. :try_end_38} :catch_38
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_38} :catch_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_5c

    .line 458
    :catch_38
    move-exception v2

    .line 459
    :try_start_39
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse roles.xml: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 456
    :catch_50
    move-exception v1

    .line 457
    sget-object v1, Lcom/android/server/role/RoleUserState;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "roles.xml not found"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_59
    :goto_59
    nop

    .line 461
    monitor-exit v0

    .line 462
    return-void

    .line 461
    :catchall_5c
    move-exception v1

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_39 .. :try_end_5e} :catchall_5c

    throw v1
.end method

.method private scheduleWriteFileLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 356
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->throwIfDestroyedLocked()V

    .line 358
    iget-boolean v0, p0, Lcom/android/server/role/RoleUserState;->mWriteScheduled:Z

    if-nez v0, :cond_17

    .line 359
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mWriteHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/role/-$$Lambda$RoleUserState$e8W_Zaq_FyocW_DX1qcbN0ld0co;->INSTANCE:Lcom/android/server/role/-$$Lambda$RoleUserState$e8W_Zaq_FyocW_DX1qcbN0ld0co;

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 361
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/role/RoleUserState;->mWriteScheduled:Z

    .line 363
    :cond_17
    return-void
.end method

.method private serializeRoleHolders(Lorg/xmlpull/v1/XmlSerializer;Landroid/util/ArraySet;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 436
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1f

    .line 437
    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 439
    const-string v3, "holder"

    const/4 v4, 0x0

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 440
    const-string/jumbo v5, "name"

    invoke-interface {p1, v4, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 441
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 436
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 443
    :cond_1f
    return-void
.end method

.method private serializeRoles(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;Landroid/util/ArrayMap;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "I",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 412
    const-string/jumbo v0, "roles"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 414
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v2, "version"

    invoke-interface {p1, v1, v2, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 416
    if-eqz p3, :cond_19

    .line 417
    const-string/jumbo p2, "packagesHash"

    invoke-interface {p1, v1, p2, p3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 420
    :cond_19
    const/4 p2, 0x0

    invoke-virtual {p4}, Landroid/util/ArrayMap;->size()I

    move-result p3

    :goto_1e
    if-ge p2, p3, :cond_41

    .line 421
    invoke-virtual {p4, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 422
    invoke-virtual {p4, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 424
    const-string/jumbo v4, "role"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 425
    const-string/jumbo v5, "name"

    invoke-interface {p1, v1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 426
    invoke-direct {p0, p1, v3}, Lcom/android/server/role/RoleUserState;->serializeRoleHolders(Lorg/xmlpull/v1/XmlSerializer;Landroid/util/ArraySet;)V

    .line 427
    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 420
    add-int/lit8 p2, p2, 0x1

    goto :goto_1e

    .line 430
    :cond_41
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 431
    return-void
.end method

.method private snapshotRolesLocked()Landroid/util/ArrayMap;
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 588
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 589
    iget-object v1, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-static {v1}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Map;)I

    move-result v1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_29

    .line 590
    iget-object v3, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 591
    iget-object v4, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 593
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5, v4}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 594
    invoke-virtual {v0, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 596
    :cond_29
    return-object v0
.end method

.method private throwIfDestroyedLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 614
    iget-boolean v0, p0, Lcom/android/server/role/RoleUserState;->mDestroyed:Z

    if-nez v0, :cond_5

    .line 617
    return-void

    .line 615
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This RoleUserState has already been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeFile()V
    .registers 10

    .line 370
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 371
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/role/RoleUserState;->mDestroyed:Z

    if-eqz v1, :cond_9

    .line 372
    monitor-exit v0

    return-void

    .line 375
    :cond_9
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/role/RoleUserState;->mWriteScheduled:Z

    .line 377
    iget v1, p0, Lcom/android/server/role/RoleUserState;->mVersion:I

    .line 378
    iget-object v2, p0, Lcom/android/server/role/RoleUserState;->mPackagesHash:Ljava/lang/String;

    .line 379
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->snapshotRolesLocked()Landroid/util/ArrayMap;

    move-result-object v3

    .line 380
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_86

    .line 382
    new-instance v0, Landroid/util/AtomicFile;

    iget v4, p0, Lcom/android/server/role/RoleUserState;->mUserId:I

    invoke-static {v4}, Lcom/android/server/role/RoleUserState;->getFile(I)Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "roles-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/role/RoleUserState;->mUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 383
    nop

    .line 385
    const/4 v4, 0x0

    :try_start_36
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5
    :try_end_3a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_36 .. :try_end_3a} :catch_70
    .catch Ljava/lang/IllegalStateException; {:try_start_36 .. :try_end_3a} :catch_70
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3a} :catch_70
    .catchall {:try_start_36 .. :try_end_3a} :catchall_6d

    .line 387
    :try_start_3a
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v6

    .line 388
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 389
    const-string v7, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 391
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v6, v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 393
    invoke-direct {p0, v6, v1, v2, v3}, Lcom/android/server/role/RoleUserState;->serializeRoles(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;Landroid/util/ArrayMap;)V

    .line 395
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 396
    invoke-virtual {v0, v5}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 397
    sget-object v1, Lcom/android/server/role/RoleUserState;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Wrote roles.xml successfully"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3a .. :try_end_64} :catch_6a
    .catch Ljava/lang/IllegalStateException; {:try_start_3a .. :try_end_64} :catch_6a
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_64} :catch_6a
    .catchall {:try_start_3a .. :try_end_64} :catchall_68

    .line 404
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_80

    :catchall_68
    move-exception v0

    goto :goto_82

    .line 398
    :catch_6a
    move-exception v1

    move-object v4, v5

    goto :goto_71

    .line 404
    :catchall_6d
    move-exception v0

    move-object v5, v4

    goto :goto_82

    .line 398
    :catch_70
    move-exception v1

    .line 399
    :goto_71
    :try_start_71
    sget-object v2, Lcom/android/server/role/RoleUserState;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Failed to write roles.xml, restoring backup"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 400
    if-eqz v4, :cond_7d

    .line 401
    invoke-virtual {v0, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_7d
    .catchall {:try_start_71 .. :try_end_7d} :catchall_6d

    .line 404
    :cond_7d
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 405
    :goto_80
    nop

    .line 406
    return-void

    .line 404
    :goto_82
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 380
    :catchall_86
    move-exception v1

    :try_start_87
    monitor-exit v0
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    throw v1
.end method


# virtual methods
.method public addRoleHolder(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 281
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 282
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->throwIfDestroyedLocked()V

    .line 284
    iget-object v1, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 285
    if-nez v1, :cond_31

    .line 286
    sget-object v1, Lcom/android/server/role/RoleUserState;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot add role holder for unknown role, role: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", package: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 290
    :cond_31
    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 291
    if-eqz v1, :cond_3a

    .line 292
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->scheduleWriteFileLocked()V

    .line 294
    :cond_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_47

    .line 296
    if-eqz v1, :cond_45

    .line 297
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mCallback:Lcom/android/server/role/RoleUserState$Callback;

    iget v1, p0, Lcom/android/server/role/RoleUserState;->mUserId:I

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2, p2}, Lcom/android/server/role/RoleUserState$Callback;->onRoleHoldersChanged(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_45
    const/4 p1, 0x1

    return p1

    .line 294
    :catchall_47
    move-exception p1

    :try_start_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw p1
.end method

.method public addRoleName(Ljava/lang/String;)Z
    .registers 6

    .line 219
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 220
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->throwIfDestroyedLocked()V

    .line 222
    iget-object v1, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 223
    iget-object v1, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v1, Lcom/android/server/role/RoleUserState;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added new role: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->scheduleWriteFileLocked()V

    .line 226
    const/4 p1, 0x1

    monitor-exit v0

    return p1

    .line 228
    :cond_34
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 230
    :catchall_37
    move-exception p1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw p1
.end method

.method public destroy()V
    .registers 4

    .line 604
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 605
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->throwIfDestroyedLocked()V

    .line 606
    iget-object v1, p0, Lcom/android/server/role/RoleUserState;->mWriteHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 607
    iget v1, p0, Lcom/android/server/role/RoleUserState;->mUserId:I

    invoke-static {v1}, Lcom/android/server/role/RoleUserState;->getFile(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 608
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/role/RoleUserState;->mDestroyed:Z

    .line 609
    monitor-exit v0

    .line 610
    return-void

    .line 609
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 21

    .line 539
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 540
    :try_start_7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/role/RoleUserState;->throwIfDestroyedLocked()V

    .line 542
    iget v3, v0, Lcom/android/server/role/RoleUserState;->mVersion:I

    .line 543
    iget-object v4, v0, Lcom/android/server/role/RoleUserState;->mPackagesHash:Ljava/lang/String;

    .line 544
    invoke-direct/range {p0 .. p0}, Lcom/android/server/role/RoleUserState;->snapshotRolesLocked()Landroid/util/ArrayMap;

    move-result-object v5

    .line 545
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_89

    .line 547
    invoke-virtual/range {p1 .. p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v6

    .line 548
    const-wide v8, 0x10500000001L

    iget v0, v0, Lcom/android/server/role/RoleUserState;->mUserId:I

    const-string/jumbo v2, "user_id"

    invoke-virtual {v1, v2, v8, v9, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 549
    const-wide v8, 0x10500000002L

    const-string/jumbo v0, "version"

    invoke-virtual {v1, v0, v8, v9, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 550
    const-wide v2, 0x10900000003L

    const-string/jumbo v0, "packages_hash"

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 552
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 553
    const/4 v2, 0x0

    move v3, v2

    :goto_40
    if-ge v3, v0, :cond_85

    .line 554
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 555
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArraySet;

    .line 557
    const-wide v9, 0x20b00000004L

    const-string/jumbo v11, "roles"

    invoke-virtual {v1, v11, v9, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v9

    .line 558
    const-wide v11, 0x10900000001L

    const-string/jumbo v13, "name"

    invoke-virtual {v1, v13, v11, v12, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 560
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v4

    .line 561
    move v11, v2

    :goto_6a
    if-ge v11, v4, :cond_7f

    .line 562
    invoke-virtual {v8, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 564
    const-wide v13, 0x20900000002L

    const-string v15, "holders"

    invoke-virtual {v1, v15, v13, v14, v12}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 561
    add-int/lit8 v11, v11, 0x1

    goto :goto_6a

    .line 567
    :cond_7f
    invoke-virtual {v1, v9, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 553
    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    .line 570
    :cond_85
    invoke-virtual {v1, v6, v7}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 571
    return-void

    .line 545
    :catchall_89
    move-exception v0

    :try_start_8a
    monitor-exit v2
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    throw v0
.end method

.method public getHeldRoles(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 342
    iget-object v1, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 343
    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_2a

    .line 344
    iget-object v3, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 345
    iget-object v3, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 348
    :cond_2a
    return-object v0
.end method

.method public getPackagesHash()Ljava/lang/String;
    .registers 3

    .line 154
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    :try_start_3
    iget-object v1, p0, Lcom/android/server/role/RoleUserState;->mPackagesHash:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 156
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getRoleHolders(Ljava/lang/String;)Landroid/util/ArraySet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->throwIfDestroyedLocked()V

    .line 203
    iget-object v1, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArraySet;

    .line 204
    if-nez p1, :cond_13

    .line 205
    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    .line 207
    :cond_13
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    monitor-exit v0

    return-object v1

    .line 208
    :catchall_1a
    move-exception p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public getRolesAndHolders()Landroid/util/ArrayMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 580
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 581
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->snapshotRolesLocked()Landroid/util/ArrayMap;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 582
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public getVersion()I
    .registers 3

    .line 123
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->throwIfDestroyedLocked()V

    .line 126
    iget v1, p0, Lcom/android/server/role/RoleUserState;->mVersion:I

    monitor-exit v0

    return v1

    .line 127
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public isRoleAvailable(Ljava/lang/String;)Z
    .registers 4

    .line 184
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 185
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->throwIfDestroyedLocked()V

    .line 187
    iget-object v1, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 188
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public removeRoleHolder(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 314
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 315
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->throwIfDestroyedLocked()V

    .line 317
    iget-object v1, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 318
    if-nez v1, :cond_31

    .line 319
    sget-object v1, Lcom/android/server/role/RoleUserState;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot remove role holder for unknown role, role: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", package: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 324
    :cond_31
    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 325
    if-eqz v1, :cond_3a

    .line 326
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->scheduleWriteFileLocked()V

    .line 328
    :cond_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_47

    .line 330
    if-eqz v1, :cond_45

    .line 331
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mCallback:Lcom/android/server/role/RoleUserState$Callback;

    iget v1, p0, Lcom/android/server/role/RoleUserState;->mUserId:I

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, p2, v2}, Lcom/android/server/role/RoleUserState$Callback;->onRoleHoldersChanged(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 333
    :cond_45
    const/4 p1, 0x1

    return p1

    .line 328
    :catchall_47
    move-exception p1

    :try_start_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw p1
.end method

.method public setPackagesHash(Ljava/lang/String;)V
    .registers 4

    .line 165
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->throwIfDestroyedLocked()V

    .line 168
    iget-object v1, p0, Lcom/android/server/role/RoleUserState;->mPackagesHash:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 169
    monitor-exit v0

    return-void

    .line 171
    :cond_10
    iput-object p1, p0, Lcom/android/server/role/RoleUserState;->mPackagesHash:Ljava/lang/String;

    .line 172
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->scheduleWriteFileLocked()V

    .line 173
    monitor-exit v0

    .line 174
    return-void

    .line 173
    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public setRoleNames(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->throwIfDestroyedLocked()V

    .line 242
    nop

    .line 244
    iget-object v1, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_11
    if-ltz v1, :cond_56

    .line 245
    iget-object v5, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 247
    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_53

    .line 248
    iget-object v4, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 249
    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4d

    .line 250
    sget-object v6, Lcom/android/server/role/RoleUserState;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Holders of a removed role should have been cleaned up, role: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", holders: "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_4d
    iget-object v4, p0, Lcom/android/server/role/RoleUserState;->mRoles:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 254
    move v4, v2

    .line 244
    :cond_53
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 258
    :cond_56
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 259
    nop

    :goto_5b
    if-ge v3, v1, :cond_6b

    .line 260
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/server/role/RoleUserState;->addRoleName(Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v4, v2

    .line 259
    add-int/lit8 v3, v3, 0x1

    goto :goto_5b

    .line 263
    :cond_6b
    if-eqz v4, :cond_70

    .line 264
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->scheduleWriteFileLocked()V

    .line 266
    :cond_70
    monitor-exit v0

    .line 267
    return-void

    .line 266
    :catchall_72
    move-exception p1

    monitor-exit v0
    :try_end_74
    .catchall {:try_start_3 .. :try_end_74} :catchall_72

    throw p1
.end method

.method public setVersion(I)V
    .registers 4

    .line 136
    iget-object v0, p0, Lcom/android/server/role/RoleUserState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->throwIfDestroyedLocked()V

    .line 139
    iget v1, p0, Lcom/android/server/role/RoleUserState;->mVersion:I

    if-ne v1, p1, :cond_c

    .line 140
    monitor-exit v0

    return-void

    .line 142
    :cond_c
    iput p1, p0, Lcom/android/server/role/RoleUserState;->mVersion:I

    .line 143
    invoke-direct {p0}, Lcom/android/server/role/RoleUserState;->scheduleWriteFileLocked()V

    .line 144
    monitor-exit v0

    .line 145
    return-void

    .line 144
    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p1
.end method
