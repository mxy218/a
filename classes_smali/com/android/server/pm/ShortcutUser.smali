.class Lcom/android/server/pm/ShortcutUser;
.super Ljava/lang/Object;
.source "ShortcutUser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    }
.end annotation


# static fields
.field private static final ATTR_KNOWN_LOCALES:Ljava/lang/String; = "locales"

.field private static final ATTR_LAST_APP_SCAN_OS_FINGERPRINT:Ljava/lang/String; = "last-app-scan-fp"

.field private static final ATTR_LAST_APP_SCAN_TIME:Ljava/lang/String; = "last-app-scan-time2"

.field private static final ATTR_RESTORE_SOURCE_FINGERPRINT:Ljava/lang/String; = "restore-from-fp"

.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field private static final KEY_LAUNCHERS:Ljava/lang/String; = "launchers"

.field private static final KEY_PACKAGES:Ljava/lang/String; = "packages"

.field private static final KEY_USER_ID:Ljava/lang/String; = "userId"

.field private static final TAG:Ljava/lang/String; = "ShortcutService"

.field private static final TAG_LAUNCHER:Ljava/lang/String; = "launcher"

.field static final TAG_ROOT:Ljava/lang/String; = "user"


# instance fields
.field private mCachedLauncher:Landroid/content/ComponentName;

.field private mKnownLocales:Ljava/lang/String;

.field private mLastAppScanOsFingerprint:Ljava/lang/String;

.field private mLastAppScanTime:J

.field private mLastKnownLauncher:Landroid/content/ComponentName;

.field private final mLaunchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/pm/ShortcutUser$PackageWithUser;",
            "Lcom/android/server/pm/ShortcutLauncher;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/ShortcutPackage;",
            ">;"
        }
    .end annotation
.end field

.field private mRestoreFromOsFingerprint:Ljava/lang/String;

.field final mService:Lcom/android/server/pm/ShortcutService;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutService;I)V
    .registers 4

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    .line 117
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    .line 137
    iput-object p1, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 138
    iput p2, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    .line 139
    return-void
.end method

.method private addLauncher(Lcom/android/server/pm/ShortcutLauncher;)V
    .registers 5

    .line 193
    invoke-virtual {p1, p0}, Lcom/android/server/pm/ShortcutLauncher;->replaceUser(Lcom/android/server/pm/ShortcutUser;)V

    .line 194
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutLauncher;->getPackageUserId()I

    move-result v1

    .line 195
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutLauncher;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 194
    invoke-static {v1, v2}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    return-void
.end method

.method private addPackage(Lcom/android/server/pm/ShortcutPackage;)V
    .registers 4

    .line 173
    invoke-virtual {p1, p0}, Lcom/android/server/pm/ShortcutPackage;->replaceUser(Lcom/android/server/pm/ShortcutUser;)V

    .line 174
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    return-void
.end method

.method private dumpDirectorySize(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/io/File;)V
    .registers 13

    .line 605
    nop

    .line 606
    nop

    .line 607
    invoke-virtual {p3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 608
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_43

    .line 609
    invoke-virtual {p3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v4, v0

    move-wide v5, v2

    move v2, v1

    :goto_12
    if-ge v1, v4, :cond_41

    aget-object v3, v0, v1

    .line 610
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_24

    .line 611
    add-int/lit8 v2, v2, 0x1

    .line 612
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v7

    add-long/2addr v5, v7

    goto :goto_3e

    .line 613
    :cond_24
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_3e

    .line 614
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p1, v7, v3}, Lcom/android/server/pm/ShortcutUser;->dumpDirectorySize(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/io/File;)V

    .line 609
    :cond_3e
    :goto_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_41
    move v1, v2

    move-wide v2, v5

    .line 618
    :cond_43
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 619
    const-string p2, "Path: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 620
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 621
    const-string p2, "/ has "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 622
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 623
    const-string p2, " files, size="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 624
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 625
    const-string p2, " ("

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 626
    iget-object p2, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget-object p2, p2, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-static {p2, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 627
    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 628
    return-void
.end method

.method private getKnownLocales()Ljava/lang/String;
    .registers 3

    .line 287
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 288
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget v1, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->injectGetLocaleTagsForUser(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    .line 289
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget v1, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    .line 291
    :cond_19
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$attemptToRestoreIfNeededAndSave$2(Lcom/android/server/pm/ShortcutPackageItem;)V
    .registers 1

    .line 333
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->attemptToRestoreIfNeededAndSave()V

    .line 334
    return-void
.end method

.method static synthetic lambda$detectLocaleChange$1(Lcom/android/server/pm/ShortcutPackage;)V
    .registers 1

    .line 311
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->resetRateLimiting()V

    .line 312
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->resolveResourceStrings()V

    .line 313
    return-void
.end method

.method static synthetic lambda$forPackageItem$0(ILjava/lang/String;Ljava/util/function/Consumer;Lcom/android/server/pm/ShortcutPackageItem;)V
    .registers 5

    .line 259
    invoke-virtual {p3}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    move-result v0

    if-ne v0, p0, :cond_13

    .line 260
    invoke-virtual {p3}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    .line 261
    invoke-interface {p2, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 263
    :cond_13
    return-void
.end method

.method public static loadFromXml(Lcom/android/server/pm/ShortcutService;Lorg/xmlpull/v1/XmlPullParser;IZ)Lcom/android/server/pm/ShortcutUser;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/android/server/pm/ShortcutService$InvalidFileFormatException;
        }
    .end annotation

    .line 386
    new-instance v0, Lcom/android/server/pm/ShortcutUser;

    invoke-direct {v0, p0, p2}, Lcom/android/server/pm/ShortcutUser;-><init>(Lcom/android/server/pm/ShortcutService;I)V

    .line 389
    :try_start_5
    const-string v1, "locales"

    invoke-static {p1, v1}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    .line 394
    const-string v1, "last-app-scan-time2"

    invoke-static {p1, v1}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v1

    .line 396
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v3

    .line 397
    cmp-long v3, v1, v3

    if-gez v3, :cond_1c

    goto :goto_1e

    :cond_1c
    const-wide/16 v1, 0x0

    :goto_1e
    iput-wide v1, v0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanTime:J

    .line 398
    const-string v1, "last-app-scan-fp"

    invoke-static {p1, v1}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanOsFingerprint:Ljava/lang/String;

    .line 400
    const-string/jumbo v1, "restore-from-fp"

    invoke-static {p1, v1}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/pm/ShortcutUser;->mRestoreFromOsFingerprint:Ljava/lang/String;

    .line 402
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 404
    :goto_35
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_b4

    const/4 v4, 0x3

    if-ne v2, v4, :cond_45

    .line 405
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_b4

    .line 406
    :cond_45
    const/4 v4, 0x2

    if-eq v2, v4, :cond_49

    .line 407
    goto :goto_35

    .line 409
    :cond_49
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 410
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 412
    add-int/lit8 v6, v1, 0x1

    if-ne v2, v6, :cond_b0

    .line 413
    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, -0x53e0f060

    if-eq v7, v8, :cond_7f

    const v8, -0x4457a875

    if-eq v7, v8, :cond_75

    const v8, -0x301acbba

    if-eq v7, v8, :cond_6a

    :cond_69
    goto :goto_88

    :cond_6a
    const-string/jumbo v7, "package"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_69

    move v6, v3

    goto :goto_88

    :cond_75
    const-string v7, "launcher-pins"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_69

    move v6, v4

    goto :goto_88

    :cond_7f
    const-string v7, "launcher"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_69

    const/4 v6, 0x0

    :goto_88
    if-eqz v6, :cond_a6

    if-eq v6, v3, :cond_98

    if-eq v6, v4, :cond_8f

    goto :goto_b0

    .line 429
    :cond_8f
    nop

    .line 430
    invoke-static {p1, v0, p2, p3}, Lcom/android/server/pm/ShortcutLauncher;->loadFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/ShortcutUser;IZ)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v2

    .line 429
    invoke-direct {v0, v2}, Lcom/android/server/pm/ShortcutUser;->addLauncher(Lcom/android/server/pm/ShortcutLauncher;)V

    .line 431
    goto :goto_35

    .line 420
    :cond_98
    invoke-static {p0, v0, p1, p3}, Lcom/android/server/pm/ShortcutPackage;->loadFromXml(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;Lorg/xmlpull/v1/XmlPullParser;Z)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v2

    .line 424
    iget-object v3, v0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    goto :goto_35

    .line 415
    :cond_a6
    const-string/jumbo v2, "value"

    invoke-static {p1, v2}, Lcom/android/server/pm/ShortcutService;->parseComponentNameAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/pm/ShortcutUser;->mLastKnownLauncher:Landroid/content/ComponentName;

    .line 417
    goto :goto_35

    .line 435
    :cond_b0
    :goto_b0
    invoke-static {v2, v5}, Lcom/android/server/pm/ShortcutService;->warnForInvalidTag(ILjava/lang/String;)V
    :try_end_b3
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_b3} :catch_b6

    .line 436
    goto :goto_35

    .line 440
    :cond_b4
    nop

    .line 441
    return-object v0

    .line 437
    :catch_b6
    move-exception p0

    .line 438
    new-instance p1, Lcom/android/server/pm/ShortcutService$InvalidFileFormatException;

    const-string p2, "Unable to parse file"

    invoke-direct {p1, p2, p0}, Lcom/android/server/pm/ShortcutService$InvalidFileFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private saveShortcutPackageItem(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/ShortcutPackageItem;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 376
    if-eqz p3, :cond_d

    .line 377
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getOwnerUserId()I

    move-result v1

    if-eq v0, v1, :cond_d

    .line 378
    return-void

    .line 381
    :cond_d
    invoke-virtual {p2, p1, p3}, Lcom/android/server/pm/ShortcutPackageItem;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V

    .line 382
    return-void
.end method

.method private setLauncher(Landroid/content/ComponentName;Z)V
    .registers 4

    .line 466
    iput-object p1, p0, Lcom/android/server/pm/ShortcutUser;->mCachedLauncher:Landroid/content/ComponentName;

    .line 468
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLastKnownLauncher:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 469
    return-void

    .line 471
    :cond_b
    if-nez p2, :cond_10

    if-nez p1, :cond_10

    .line 472
    return-void

    .line 474
    :cond_10
    iput-object p1, p0, Lcom/android/server/pm/ShortcutUser;->mLastKnownLauncher:Landroid/content/ComponentName;

    .line 475
    iget-object p1, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget p2, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {p1, p2}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    .line 476
    return-void
.end method


# virtual methods
.method public attemptToRestoreIfNeededAndSave(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .registers 4

    .line 332
    sget-object p1, Lcom/android/server/pm/-$$Lambda$ShortcutUser$bsc89E_40a5X2amehalpqawQ5hY;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutUser$bsc89E_40a5X2amehalpqawQ5hY;

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/pm/ShortcutUser;->forPackageItem(Ljava/lang/String;ILjava/util/function/Consumer;)V

    .line 335
    return-void
.end method

.method public clearLauncher()V
    .registers 2

    .line 454
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutUser;->setLauncher(Landroid/content/ComponentName;)V

    .line 455
    return-void
.end method

.method public detectLocaleChange()V
    .registers 3

    .line 299
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget v1, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->injectGetLocaleTagsForUser(I)Ljava/lang/String;

    move-result-object v0

    .line 300
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 301
    return-void

    .line 308
    :cond_19
    iput-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    .line 310
    sget-object v0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$6rBk7xJFaM9dXyyKHFs-DCus0iM;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutUser$6rBk7xJFaM9dXyyKHFs-DCus0iM;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 315
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget v1, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    .line 316
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/ShortcutService$DumpFilter;)V
    .registers 9

    .line 547
    invoke-virtual {p3}, Lcom/android/server/pm/ShortcutService$DumpFilter;->shouldDumpDetails()Z

    move-result v0

    const-string v1, "  "

    if-eqz v0, :cond_86

    .line 548
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 549
    const-string v0, "User: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 550
    iget v0, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 551
    const-string v0, "  Known locales: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 553
    const-string v0, "  Last app scan: ["

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 554
    iget-wide v2, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanTime:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 555
    const-string v0, "] "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 556
    iget-wide v2, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanTime:J

    invoke-static {v2, v3}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 560
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 561
    const-string v0, "Last app scan FP: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 562
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanOsFingerprint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 564
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 565
    const-string v0, "Restore from FP: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 566
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mRestoreFromOsFingerprint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 567
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 570
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 571
    const-string v0, "Cached launcher: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mCachedLauncher:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 573
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 575
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 576
    const-string v0, "Last known launcher: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 577
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLastKnownLauncher:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 578
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 581
    :cond_86
    const/4 v0, 0x0

    move v2, v0

    :goto_88
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_a8

    .line 582
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ShortcutLauncher;

    .line 583
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutLauncher;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/android/server/pm/ShortcutService$DumpFilter;->isPackageMatch(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a5

    .line 584
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/pm/ShortcutLauncher;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/ShortcutService$DumpFilter;)V

    .line 581
    :cond_a5
    add-int/lit8 v2, v2, 0x1

    goto :goto_88

    .line 588
    :cond_a8
    nop

    :goto_a9
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_c9

    .line 589
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ShortcutPackage;

    .line 590
    invoke-virtual {v2}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/android/server/pm/ShortcutService$DumpFilter;->isPackageMatch(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c6

    .line 591
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/pm/ShortcutPackage;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/ShortcutService$DumpFilter;)V

    .line 588
    :cond_c6
    add-int/lit8 v0, v0, 0x1

    goto :goto_a9

    .line 595
    :cond_c9
    invoke-virtual {p3}, Lcom/android/server/pm/ShortcutService$DumpFilter;->shouldDumpDetails()Z

    move-result p3

    if-eqz p3, :cond_f4

    .line 596
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 597
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 598
    const-string p3, "Bitmap directories: "

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 599
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget v0, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {p3, v0}, Lcom/android/server/pm/ShortcutService;->getUserBitmapFilePath(I)Ljava/io/File;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutUser;->dumpDirectorySize(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/io/File;)V

    .line 601
    :cond_f4
    return-void
.end method

.method public dumpCheckin(Z)Lorg/json/JSONObject;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 631
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 633
    iget v1, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 636
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 637
    const/4 v2, 0x0

    move v3, v2

    :goto_14
    iget-object v4, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_2e

    .line 638
    iget-object v4, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/ShortcutLauncher;

    invoke-virtual {v4, p1}, Lcom/android/server/pm/ShortcutLauncher;->dumpCheckin(Z)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 637
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 640
    :cond_2e
    const-string v3, "launchers"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 644
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 645
    nop

    :goto_39
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_53

    .line 646
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ShortcutPackage;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/ShortcutPackage;->dumpCheckin(Z)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 645
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 648
    :cond_53
    const-string/jumbo p1, "packages"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 651
    return-object v0
.end method

.method public forAllLaunchers(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Lcom/android/server/pm/ShortcutLauncher;",
            ">;)V"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 246
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_15

    .line 247
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 246
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 249
    :cond_15
    return-void
.end method

.method public forAllPackageItems(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Lcom/android/server/pm/ShortcutPackageItem;",
            ">;)V"
        }
    .end annotation

    .line 252
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    .line 253
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 254
    return-void
.end method

.method public forAllPackages(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Lcom/android/server/pm/ShortcutPackage;",
            ">;)V"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 239
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_15

    .line 240
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 242
    :cond_15
    return-void
.end method

.method public forPackageItem(Ljava/lang/String;ILjava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/pm/ShortcutPackageItem;",
            ">;)V"
        }
    .end annotation

    .line 258
    new-instance v0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$XHWlvjfCvG1SoVwGHi3envhmtfM;

    invoke-direct {v0, p2, p1, p3}, Lcom/android/server/pm/-$$Lambda$ShortcutUser$XHWlvjfCvG1SoVwGHi3envhmtfM;-><init>(ILjava/lang/String;Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutUser;->forAllPackageItems(Ljava/util/function/Consumer;)V

    .line 264
    return-void
.end method

.method public forceClearLauncher()V
    .registers 3

    .line 462
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/ShortcutUser;->setLauncher(Landroid/content/ComponentName;Z)V

    .line 463
    return-void
.end method

.method getAllLaunchersForTest()Landroid/util/ArrayMap;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/pm/ShortcutUser$PackageWithUser;",
            "Lcom/android/server/pm/ShortcutLauncher;",
            ">;"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    return-object v0
.end method

.method getAllPackagesForTest()Landroid/util/ArrayMap;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/ShortcutPackage;",
            ">;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getCachedLauncher()Landroid/content/ComponentName;
    .registers 2

    .line 479
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mCachedLauncher:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getLastAppScanOsFingerprint()Ljava/lang/String;
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanOsFingerprint:Ljava/lang/String;

    return-object v0
.end method

.method public getLastAppScanTime()J
    .registers 3

    .line 146
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanTime:J

    return-wide v0
.end method

.method public getLastKnownLauncher()Landroid/content/ComponentName;
    .registers 2

    .line 445
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLastKnownLauncher:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getLauncherShortcuts(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutLauncher;
    .registers 6

    .line 226
    invoke-static {p2, p1}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ShortcutLauncher;

    .line 228
    if-nez v1, :cond_1b

    .line 229
    new-instance v1, Lcom/android/server/pm/ShortcutLauncher;

    iget v2, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/android/server/pm/ShortcutLauncher;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;I)V

    .line 230
    iget-object p1, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    .line 232
    :cond_1b
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    .line 234
    :goto_1e
    return-object v1
.end method

.method public getPackageShortcuts(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;
    .registers 4

    .line 215
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v0

    .line 216
    if-nez v0, :cond_12

    .line 217
    new-instance v0, Lcom/android/server/pm/ShortcutPackage;

    iget v1, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/pm/ShortcutPackage;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;)V

    .line 218
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :cond_12
    return-object v0
.end method

.method public getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;
    .registers 3

    .line 206
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/ShortcutPackage;

    .line 207
    if-eqz p1, :cond_d

    .line 208
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackage;->attemptToRestoreIfNeededAndSave()V

    .line 210
    :cond_d
    return-object p1
.end method

.method public getUserId()I
    .registers 2

    .line 142
    iget v0, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    return v0
.end method

.method public hasPackage(Ljava/lang/String;)Z
    .registers 3

    .line 169
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic lambda$mergeRestoredFile$3$ShortcutUser(Lcom/android/server/pm/ShortcutService;[ILcom/android/server/pm/ShortcutLauncher;)V
    .registers 6

    .line 511
    invoke-virtual {p3}, Lcom/android/server/pm/ShortcutLauncher;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 512
    invoke-virtual {p3}, Lcom/android/server/pm/ShortcutLauncher;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->shouldBackupApp(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_1d

    .line 513
    return-void

    .line 515
    :cond_1d
    invoke-direct {p0, p3}, Lcom/android/server/pm/ShortcutUser;->addLauncher(Lcom/android/server/pm/ShortcutLauncher;)V

    .line 516
    const/4 p1, 0x0

    aget p3, p2, p1

    add-int/lit8 p3, p3, 0x1

    aput p3, p2, p1

    .line 517
    return-void
.end method

.method public synthetic lambda$mergeRestoredFile$4$ShortcutUser(Lcom/android/server/pm/ShortcutService;[I[ILcom/android/server/pm/ShortcutPackage;)V
    .registers 7

    .line 521
    invoke-virtual {p4}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 522
    invoke-virtual {p4}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->shouldBackupApp(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_1d

    .line 523
    return-void

    .line 526
    :cond_1d
    invoke-virtual {p4}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object p1

    .line 527
    if-eqz p1, :cond_4c

    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackage;->hasNonManifestShortcuts()Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 528
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Shortcuts for package "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " are being restored. Existing non-manifeset shortcuts will be overwritten."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ShortcutService"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_4c
    invoke-direct {p0, p4}, Lcom/android/server/pm/ShortcutUser;->addPackage(Lcom/android/server/pm/ShortcutPackage;)V

    .line 532
    const/4 p1, 0x0

    aget v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    aput v0, p2, p1

    .line 533
    aget p2, p3, p1

    invoke-virtual {p4}, Lcom/android/server/pm/ShortcutPackage;->getShortcutCount()I

    move-result p4

    add-int/2addr p2, p4

    aput p2, p3, p1

    .line 534
    return-void
.end method

.method logSharingShortcutStats(Lcom/android/internal/logging/MetricsLogger;)V
    .registers 7

    .line 655
    nop

    .line 656
    nop

    .line 657
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_5
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_2d

    .line 658
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ShortcutPackage;

    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackage;->hasShareTargets()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 659
    add-int/lit8 v1, v1, 0x1

    .line 660
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ShortcutPackage;

    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutPackage;->getSharingShortcutCount()I

    move-result v3

    add-int/2addr v2, v3

    .line 657
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 664
    :cond_2d
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v3, 0x6b5

    invoke-direct {v0, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 665
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v3

    iget v4, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    .line 666
    invoke-virtual {v3, v4}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 665
    invoke-virtual {p1, v3}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 667
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 668
    invoke-virtual {v3, v1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 667
    invoke-virtual {p1, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 669
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 670
    invoke-virtual {v0, v2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 669
    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 671
    return-void
.end method

.method public mergeRestoredFile(Lcom/android/server/pm/ShortcutUser;)V
    .registers 7

    .line 489
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 503
    const/4 v1, 0x1

    new-array v2, v1, [I

    .line 504
    new-array v3, v1, [I

    .line 505
    new-array v1, v1, [I

    .line 507
    iget-object v4, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 508
    new-instance v4, Lcom/android/server/pm/-$$Lambda$ShortcutUser$zwhAnw7NjAOfNphKSeWurjAD6OM;

    invoke-direct {v4, p0, v0, v2}, Lcom/android/server/pm/-$$Lambda$ShortcutUser$zwhAnw7NjAOfNphKSeWurjAD6OM;-><init>(Lcom/android/server/pm/ShortcutUser;Lcom/android/server/pm/ShortcutService;[I)V

    invoke-virtual {p1, v4}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    .line 518
    new-instance v4, Lcom/android/server/pm/-$$Lambda$ShortcutUser$078_3k15h1rTyJTkYAHYqf5ltYg;

    invoke-direct {v4, p0, v0, v3, v1}, Lcom/android/server/pm/-$$Lambda$ShortcutUser$078_3k15h1rTyJTkYAHYqf5ltYg;-><init>(Lcom/android/server/pm/ShortcutUser;Lcom/android/server/pm/ShortcutService;[I[I)V

    invoke-virtual {p1, v4}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 536
    iget-object v0, p1, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 537
    iget-object v0, p1, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 539
    iget-object p1, p1, Lcom/android/server/pm/ShortcutUser;->mRestoreFromOsFingerprint:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/ShortcutUser;->mRestoreFromOsFingerprint:Ljava/lang/String;

    .line 541
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Restored: L="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    aget v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " P="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v3, v0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " S="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ShortcutService"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    return-void
.end method

.method public onCalledByPublisher(Ljava/lang/String;)V
    .registers 3

    .line 282
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->detectLocaleChange()V

    .line 283
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V

    .line 284
    return-void
.end method

.method public removeLauncher(ILjava/lang/String;)Lcom/android/server/pm/ShortcutLauncher;
    .registers 4

    .line 201
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/ShortcutLauncher;

    return-object p1
.end method

.method public removePackage(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;
    .registers 5

    .line 178
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ShortcutPackage;

    .line 180
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget v2, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {v1, v2, p1}, Lcom/android/server/pm/ShortcutService;->cleanupBitmapsForPackage(ILjava/lang/String;)V

    .line 182
    return-object v0
.end method

.method public rescanPackageIfNeeded(Ljava/lang/String;Z)V
    .registers 5

    .line 319
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 321
    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcuts(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    .line 323
    invoke-virtual {v1, v0, p2}, Lcom/android/server/pm/ShortcutPackage;->rescanPackageIfNeeded(ZZ)Z

    move-result p2

    if-nez p2, :cond_19

    .line 324
    if-eqz v0, :cond_19

    .line 325
    iget-object p2, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    :cond_19
    return-void
.end method

.method public resetThrottling()V
    .registers 3

    .line 483
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 484
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ShortcutPackage;

    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutPackage;->resetThrottling()V

    .line 483
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 486
    :cond_18
    return-void
.end method

.method public saveToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 339
    const-string/jumbo v0, "user"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 341
    const-string/jumbo v2, "restore-from-fp"

    if-nez p2, :cond_2e

    .line 343
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    const-string v4, "locales"

    invoke-static {p1, v4, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 344
    iget-wide v3, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanTime:J

    const-string v5, "last-app-scan-time2"

    invoke-static {p1, v5, v3, v4}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 346
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanOsFingerprint:Ljava/lang/String;

    const-string v4, "last-app-scan-fp"

    invoke-static {p1, v4, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 348
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mRestoreFromOsFingerprint:Ljava/lang/String;

    invoke-static {p1, v2, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 351
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mLastKnownLauncher:Landroid/content/ComponentName;

    const-string v3, "launcher"

    invoke-static {p1, v3, v2}, Lcom/android/server/pm/ShortcutService;->writeTagValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/content/ComponentName;)V

    goto :goto_37

    .line 353
    :cond_2e
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 354
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutService;->injectBuildFingerprint()Ljava/lang/String;

    move-result-object v3

    .line 353
    invoke-static {p1, v2, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 359
    :goto_37
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 360
    const/4 v3, 0x0

    move v4, v3

    :goto_3f
    if-ge v4, v2, :cond_4f

    .line 361
    iget-object v5, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/ShortcutPackageItem;

    invoke-direct {p0, p1, v5, p2}, Lcom/android/server/pm/ShortcutUser;->saveShortcutPackageItem(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/ShortcutPackageItem;Z)V

    .line 360
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    .line 365
    :cond_4f
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 366
    nop

    :goto_56
    if-ge v3, v2, :cond_66

    .line 367
    iget-object v4, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/ShortcutPackageItem;

    invoke-direct {p0, p1, v4, p2}, Lcom/android/server/pm/ShortcutUser;->saveShortcutPackageItem(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/ShortcutPackageItem;Z)V

    .line 366
    add-int/lit8 v3, v3, 0x1

    goto :goto_56

    .line 371
    :cond_66
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 372
    return-void
.end method

.method public setLastAppScanOsFingerprint(Ljava/lang/String;)V
    .registers 2

    .line 158
    iput-object p1, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanOsFingerprint:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setLastAppScanTime(J)V
    .registers 3

    .line 150
    iput-wide p1, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanTime:J

    .line 151
    return-void
.end method

.method public setLauncher(Landroid/content/ComponentName;)V
    .registers 3

    .line 449
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/ShortcutUser;->setLauncher(Landroid/content/ComponentName;Z)V

    .line 450
    return-void
.end method
