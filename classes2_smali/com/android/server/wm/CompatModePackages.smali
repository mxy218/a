.class public final Lcom/android/server/wm/CompatModePackages;
.super Ljava/lang/Object;
.source "CompatModePackages.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/CompatModePackages$CompatHandler;
    }
.end annotation


# static fields
.field private static final COMPAT_FLAG_DONT_ASK:I = 0x1

.field private static final COMPAT_FLAG_ENABLED:I = 0x2

.field private static final MSG_WRITE:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_CONFIGURATION:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field private final mFile:Landroid/util/AtomicFile;

.field private final mHandler:Lcom/android/server/wm/CompatModePackages$CompatHandler;

.field private final mPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/io/File;Landroid/os/Handler;)V
    .registers 12

    .line 87
    const-string v0, "Error reading compat-packages"

    const-string v1, "ActivityTaskManager"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    .line 88
    iput-object p1, p0, Lcom/android/server/wm/CompatModePackages;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 89
    new-instance p1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "packages-compat.xml"

    invoke-direct {v2, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p2, "compat-mode"

    invoke-direct {p1, v2, p2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wm/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    .line 90
    new-instance p1, Lcom/android/server/wm/CompatModePackages$CompatHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/wm/CompatModePackages$CompatHandler;-><init>(Lcom/android/server/wm/CompatModePackages;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/wm/CompatModePackages;->mHandler:Lcom/android/server/wm/CompatModePackages$CompatHandler;

    .line 92
    nop

    .line 94
    const/4 p1, 0x0

    :try_start_2d
    iget-object p2, p0, Lcom/android/server/wm/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {p2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p2
    :try_end_33
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2d .. :try_end_33} :catch_c5
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_33} :catch_b4
    .catchall {:try_start_2d .. :try_end_33} :catchall_af

    .line 95
    :try_start_33
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p3

    .line 96
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, p2, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 97
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 98
    :goto_44
    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_4f

    if-eq v2, v3, :cond_4f

    .line 100
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_4e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_33 .. :try_end_4e} :catch_ad
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_4e} :catch_ab
    .catchall {:try_start_33 .. :try_end_4e} :catchall_a9

    goto :goto_44

    .line 102
    :cond_4f
    if-ne v2, v3, :cond_59

    .line 137
    if-eqz p2, :cond_58

    .line 139
    :try_start_53
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57

    .line 141
    goto :goto_58

    .line 140
    :catch_57
    move-exception p1

    .line 103
    :cond_58
    :goto_58
    return-void

    .line 106
    :cond_59
    :try_start_59
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 107
    const-string v5, "compat-packages"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 108
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 110
    :cond_69
    if-ne v2, v4, :cond_9d

    .line 111
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 112
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-ne v5, v4, :cond_9d

    .line 113
    const-string v5, "pkg"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 114
    const-string v2, "name"

    invoke-interface {p3, p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 115
    if-eqz v2, :cond_9d

    .line 116
    const-string v5, "mode"

    invoke-interface {p3, p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_8b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_59 .. :try_end_8b} :catch_ad
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_8b} :catch_ab
    .catchall {:try_start_59 .. :try_end_8b} :catchall_a9

    .line 117
    const/4 v6, 0x0

    .line 118
    if-eqz v5, :cond_94

    .line 120
    :try_start_8e
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_92
    .catch Ljava/lang/NumberFormatException; {:try_start_8e .. :try_end_92} :catch_93
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8e .. :try_end_92} :catch_ad
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_92} :catch_ab
    .catchall {:try_start_8e .. :try_end_92} :catchall_a9

    .line 122
    goto :goto_94

    .line 121
    :catch_93
    move-exception v5

    .line 124
    :cond_94
    :goto_94
    :try_start_94
    iget-object v5, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_9d
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_a1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_94 .. :try_end_a1} :catch_ad
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_a1} :catch_ab
    .catchall {:try_start_94 .. :try_end_a1} :catchall_a9

    .line 130
    if-ne v2, v3, :cond_69

    .line 137
    :cond_a3
    if-eqz p2, :cond_d2

    .line 139
    :try_start_a5
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a8} :catch_c3

    goto :goto_c2

    .line 137
    :catchall_a9
    move-exception p1

    goto :goto_d3

    .line 134
    :catch_ab
    move-exception p1

    goto :goto_b8

    .line 132
    :catch_ad
    move-exception p1

    goto :goto_c9

    .line 137
    :catchall_af
    move-exception p2

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    goto :goto_d3

    .line 134
    :catch_b4
    move-exception p2

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    .line 135
    :goto_b8
    if-eqz p2, :cond_bd

    :try_start_ba
    invoke-static {v1, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_bd
    .catchall {:try_start_ba .. :try_end_bd} :catchall_a9

    .line 137
    :cond_bd
    if-eqz p2, :cond_d2

    .line 139
    :try_start_bf
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c2} :catch_c3

    .line 141
    :goto_c2
    goto :goto_d2

    .line 140
    :catch_c3
    move-exception p1

    goto :goto_c2

    .line 132
    :catch_c5
    move-exception p2

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    .line 133
    :goto_c9
    :try_start_c9
    invoke-static {v1, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cc
    .catchall {:try_start_c9 .. :try_end_cc} :catchall_a9

    .line 137
    if-eqz p2, :cond_d2

    .line 139
    :try_start_ce
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_d1
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_d1} :catch_c3

    goto :goto_c2

    .line 144
    :cond_d2
    :goto_d2
    return-void

    .line 137
    :goto_d3
    if-eqz p2, :cond_da

    .line 139
    :try_start_d5
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_d8} :catch_d9

    .line 141
    goto :goto_da

    .line 140
    :catch_d9
    move-exception p2

    .line 141
    :cond_da
    :goto_da
    throw p1
.end method

.method static synthetic access$000(Lcom/android/server/wm/CompatModePackages;)V
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/android/server/wm/CompatModePackages;->saveCompatModes()V

    return-void
.end method

.method private getPackageFlags(Ljava/lang/String;)I
    .registers 3

    .line 151
    iget-object v0, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 152
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    return p1
.end method

.method private removePackage(Ljava/lang/String;)V
    .registers 3

    .line 167
    iget-object v0, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 168
    iget-object v0, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-direct {p0}, Lcom/android/server/wm/CompatModePackages;->scheduleWrite()V

    .line 171
    :cond_10
    return-void
.end method

.method private saveCompatModes()V
    .registers 13

    .line 356
    iget-object v0, p0, Lcom/android/server/wm/CompatModePackages;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 357
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 358
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_ca

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 360
    nop

    .line 363
    const/4 v0, 0x0

    :try_start_15
    iget-object v2, p0, Lcom/android/server/wm/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1b} :catch_b8

    .line 364
    :try_start_1b
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 365
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 366
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 367
    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 368
    const-string v4, "compat-packages"

    invoke-interface {v3, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 370
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 371
    iget-object v5, p0, Lcom/android/server/wm/CompatModePackages;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 372
    iget v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    .line 373
    iget v5, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 374
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 375
    :goto_51
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a8

    .line 376
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 377
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 378
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_6d} :catch_b6

    .line 379
    if-nez v7, :cond_70

    .line 380
    goto :goto_51

    .line 382
    :cond_70
    nop

    .line 384
    const/4 v9, 0x0

    :try_start_72
    invoke-interface {v4, v8, v9, v9}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v10
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_72 .. :try_end_76} :catch_77
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_76} :catch_b6

    .line 386
    goto :goto_79

    .line 385
    :catch_77
    move-exception v10

    move-object v10, v0

    .line 387
    :goto_79
    if-nez v10, :cond_7c

    .line 388
    goto :goto_51

    .line 390
    :cond_7c
    :try_start_7c
    new-instance v11, Landroid/content/res/CompatibilityInfo;

    invoke-direct {v11, v10, v6, v5, v9}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZ)V

    .line 392
    invoke-virtual {v11}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v9

    if-eqz v9, :cond_88

    .line 393
    goto :goto_51

    .line 395
    :cond_88
    invoke-virtual {v11}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v9

    if-eqz v9, :cond_8f

    .line 396
    goto :goto_51

    .line 398
    :cond_8f
    const-string v9, "pkg"

    invoke-interface {v3, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 399
    const-string v9, "name"

    invoke-interface {v3, v0, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 400
    const-string v8, "mode"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v0, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 401
    const-string v7, "pkg"

    invoke-interface {v3, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 402
    goto :goto_51

    .line 404
    :cond_a8
    const-string v1, "compat-packages"

    invoke-interface {v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 405
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 407
    iget-object v0, p0, Lcom/android/server/wm/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_b5} :catch_b6

    .line 413
    goto :goto_c9

    .line 408
    :catch_b6
    move-exception v0

    goto :goto_bb

    :catch_b8
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 409
    :goto_bb
    const-string v1, "ActivityTaskManager"

    const-string v3, "Error writing compat packages"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 410
    if-eqz v2, :cond_c9

    .line 411
    iget-object v0, p0, Lcom/android/server/wm/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 414
    :cond_c9
    :goto_c9
    return-void

    .line 358
    :catchall_ca
    move-exception v1

    :try_start_cb
    monitor-exit v0
    :try_end_cc
    .catchall {:try_start_cb .. :try_end_cc} :catchall_ca

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private scheduleWrite()V
    .registers 5

    .line 197
    iget-object v0, p0, Lcom/android/server/wm/CompatModePackages;->mHandler:Lcom/android/server/wm/CompatModePackages$CompatHandler;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/android/server/wm/CompatModePackages$CompatHandler;->removeMessages(I)V

    .line 198
    iget-object v0, p0, Lcom/android/server/wm/CompatModePackages;->mHandler:Lcom/android/server/wm/CompatModePackages$CompatHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/CompatModePackages$CompatHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/android/server/wm/CompatModePackages;->mHandler:Lcom/android/server/wm/CompatModePackages$CompatHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/wm/CompatModePackages$CompatHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 200
    return-void
.end method

.method private setPackageFlagLocked(Ljava/lang/String;IZ)V
    .registers 5

    .line 235
    invoke-direct {p0, p1}, Lcom/android/server/wm/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v0

    .line 236
    if-eqz p3, :cond_9

    not-int p2, p2

    and-int/2addr p2, v0

    goto :goto_a

    :cond_9
    or-int/2addr p2, v0

    .line 237
    :goto_a
    if-eq v0, p2, :cond_20

    .line 238
    if-eqz p2, :cond_18

    .line 239
    iget-object p3, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    .line 241
    :cond_18
    iget-object p2, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    :goto_1d
    invoke-direct {p0}, Lcom/android/server/wm/CompatModePackages;->scheduleWrite()V

    .line 245
    :cond_20
    return-void
.end method


# virtual methods
.method public compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;
    .registers 6

    .line 203
    iget-object v0, p0, Lcom/android/server/wm/CompatModePackages;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 204
    new-instance v1, Landroid/content/res/CompatibilityInfo;

    iget v2, v0, Landroid/content/res/Configuration;->screenLayout:I

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 206
    invoke-direct {p0, v3}, Lcom/android/server/wm/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_18

    const/4 v3, 0x1

    goto :goto_19

    :cond_18
    const/4 v3, 0x0

    :goto_19
    invoke-direct {v1, p1, v2, v0, v3}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZ)V

    .line 208
    return-object v1
.end method

.method public computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I
    .registers 8

    .line 212
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/wm/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    .line 213
    :goto_f
    iget-object v3, p0, Lcom/android/server/wm/CompatModePackages;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 214
    new-instance v4, Landroid/content/res/CompatibilityInfo;

    iget v5, v3, Landroid/content/res/Configuration;->screenLayout:I

    iget v3, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-direct {v4, p1, v5, v3, v0}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZ)V

    .line 216
    invoke-virtual {v4}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 217
    const/4 p1, -0x2

    return p1

    .line 219
    :cond_26
    invoke-virtual {v4}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 220
    const/4 p1, -0x1

    return p1

    .line 222
    :cond_2e
    if-eqz v0, :cond_31

    goto :goto_32

    .line 223
    :cond_31
    move v1, v2

    .line 222
    :goto_32
    return v1
.end method

.method public getPackageAskCompatModeLocked(Ljava/lang/String;)Z
    .registers 3

    .line 227
    invoke-direct {p0, p1}, Lcom/android/server/wm/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-nez p1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getPackageScreenCompatModeLocked(Ljava/lang/String;)I
    .registers 4

    .line 248
    nop

    .line 250
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_b

    .line 252
    goto :goto_d

    .line 251
    :catch_b
    move-exception p1

    const/4 p1, 0x0

    .line 253
    :goto_d
    if-nez p1, :cond_11

    .line 254
    const/4 p1, -0x3

    return p1

    .line 256
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CompatModePackages;->computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I

    move-result p1

    return p1
.end method

.method public getPackages()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    return-object v0
.end method

.method public handlePackageAddedLocked(Ljava/lang/String;Z)V
    .registers 6

    .line 174
    nop

    .line 176
    const/4 v0, 0x0

    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p1, v0, v0}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_a} :catch_b

    .line 178
    goto :goto_d

    .line 177
    :catch_b
    move-exception v1

    const/4 v1, 0x0

    .line 179
    :goto_d
    if-nez v1, :cond_10

    .line 180
    return-void

    .line 182
    :cond_10
    invoke-virtual {p0, v1}, Lcom/android/server/wm/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    .line 183
    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v2

    if-nez v2, :cond_22

    .line 184
    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v1

    if-nez v1, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    nop

    .line 186
    :goto_23
    if-eqz p2, :cond_37

    .line 189
    if-nez v0, :cond_37

    iget-object p2, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_37

    .line 190
    iget-object p2, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-direct {p0}, Lcom/android/server/wm/CompatModePackages;->scheduleWrite()V

    .line 194
    :cond_37
    return-void
.end method

.method public handlePackageDataClearedLocked(Ljava/lang/String;)V
    .registers 2

    .line 157
    invoke-direct {p0, p1}, Lcom/android/server/wm/CompatModePackages;->removePackage(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public handlePackageUninstalledLocked(Ljava/lang/String;)V
    .registers 2

    .line 163
    invoke-direct {p0, p1}, Lcom/android/server/wm/CompatModePackages;->removePackage(Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public setPackageAskCompatModeLocked(Ljava/lang/String;Z)V
    .registers 4

    .line 231
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wm/CompatModePackages;->setPackageFlagLocked(Ljava/lang/String;IZ)V

    .line 232
    return-void
.end method

.method setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V
    .registers 11

    .line 273
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 275
    invoke-direct {p0, v0}, Lcom/android/server/wm/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v1

    .line 278
    const-string v2, "ActivityTaskManager"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_36

    if-eq p2, v3, :cond_33

    const/4 v5, 0x2

    if-eq p2, v5, :cond_2b

    .line 289
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown screen compat mode req #"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "; ignoring"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return-void

    .line 286
    :cond_2b
    and-int/lit8 p2, v1, 0x2

    if-nez p2, :cond_31

    move p2, v3

    goto :goto_32

    :cond_31
    move p2, v4

    .line 287
    :goto_32
    goto :goto_38

    .line 283
    :cond_33
    nop

    .line 284
    move p2, v3

    goto :goto_38

    .line 280
    :cond_36
    nop

    .line 281
    move p2, v4

    .line 293
    :goto_38
    nop

    .line 294
    if-eqz p2, :cond_3e

    .line 295
    or-int/lit8 p2, v1, 0x2

    goto :goto_40

    .line 297
    :cond_3e
    and-int/lit8 p2, v1, -0x3

    .line 300
    :goto_40
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v5

    .line 301
    invoke-virtual {v5}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v6

    const-string v7, "Ignoring compat mode change of "

    if-eqz v6, :cond_64

    .line 302
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "; compatibility never needed"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    move p2, v4

    .line 306
    :cond_64
    invoke-virtual {v5}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v5

    if-eqz v5, :cond_82

    .line 307
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; compatibility always needed"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    move p2, v4

    .line 312
    :cond_82
    if-eq p2, v1, :cond_de

    .line 313
    if-eqz p2, :cond_90

    .line 314
    iget-object v1, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_95

    .line 316
    :cond_90
    iget-object p2, p0, Lcom/android/server/wm/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    :goto_95
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object p1

    .line 322
    invoke-direct {p0}, Lcom/android/server/wm/CompatModePackages;->scheduleWrite()V

    .line 324
    iget-object p2, p0, Lcom/android/server/wm/CompatModePackages;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p2

    .line 325
    invoke-virtual {p2, v0}, Lcom/android/server/wm/ActivityStack;->restartPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 328
    iget-object v2, p0, Lcom/android/server/wm/CompatModePackages;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessControllerMap;->getPidMap()Landroid/util/SparseArray;

    move-result-object v2

    .line 329
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v5

    sub-int/2addr v5, v3

    :goto_b3
    if-ltz v5, :cond_d6

    .line 330
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowProcessController;

    .line 331
    iget-object v6, v3, Lcom/android/server/wm/WindowProcessController;->mPkgList:Landroid/util/ArraySet;

    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c4

    .line 332
    goto :goto_d3

    .line 335
    :cond_c4
    :try_start_c4
    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v6

    if-eqz v6, :cond_d1

    .line 338
    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    invoke-interface {v3, v0, p1}, Landroid/app/IApplicationThread;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_d1} :catch_d2

    .line 341
    :cond_d1
    goto :goto_d3

    .line 340
    :catch_d2
    move-exception v3

    .line 329
    :goto_d3
    add-int/lit8 v5, v5, -0x1

    goto :goto_b3

    .line 344
    :cond_d6
    if-eqz v1, :cond_de

    .line 345
    invoke-virtual {v1, v4, v4}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZ)Z

    .line 349
    invoke-virtual {p2, v1, v4, v4}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 352
    :cond_de
    return-void
.end method

.method public setPackageScreenCompatModeLocked(Ljava/lang/String;I)V
    .registers 5

    .line 260
    nop

    .line 262
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_b

    .line 264
    goto :goto_d

    .line 263
    :catch_b
    move-exception v0

    const/4 v0, 0x0

    .line 265
    :goto_d
    if-nez v0, :cond_26

    .line 266
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setPackageScreenCompatMode failed: unknown package "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActivityTaskManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-void

    .line 269
    :cond_26
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/CompatModePackages;->setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V

    .line 270
    return-void
.end method
