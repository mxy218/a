.class Lcom/android/server/wm/AppWarnings;
.super Ljava/lang/Object;
.source "AppWarnings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AppWarnings$ConfigHandler;,
        Lcom/android/server/wm/AppWarnings$UiHandler;
    }
.end annotation


# static fields
.field private static final CONFIG_FILE_NAME:Ljava/lang/String; = "packages-warnings.xml"

.field public static final FLAG_HIDE_COMPILE_SDK:I = 0x2

.field public static final FLAG_HIDE_DEPRECATED_SDK:I = 0x4

.field public static final FLAG_HIDE_DISPLAY_SIZE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AppWarnings"


# instance fields
.field private mAlwaysShowUnsupportedCompileSdkWarningActivities:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mConfigFile:Landroid/util/AtomicFile;

.field private mDeprecatedTargetSdkVersionDialog:Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;

.field private final mHandler:Lcom/android/server/wm/AppWarnings$ConfigHandler;

.field private final mPackageFlags:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiContext:Landroid/content/Context;

.field private final mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

.field private mUnsupportedCompileSdkDialog:Lcom/android/server/wm/UnsupportedCompileSdkDialog;

.field private mUnsupportedDisplaySizeDialog:Lcom/android/server/wm/UnsupportedDisplaySizeDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/io/File;)V
    .registers 7

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWarnings;->mAlwaysShowUnsupportedCompileSdkWarningActivities:Ljava/util/HashSet;

    .line 91
    iput-object p1, p0, Lcom/android/server/wm/AppWarnings;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 92
    iput-object p2, p0, Lcom/android/server/wm/AppWarnings;->mUiContext:Landroid/content/Context;

    .line 93
    new-instance p1, Lcom/android/server/wm/AppWarnings$ConfigHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/wm/AppWarnings$ConfigHandler;-><init>(Lcom/android/server/wm/AppWarnings;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/wm/AppWarnings;->mHandler:Lcom/android/server/wm/AppWarnings$ConfigHandler;

    .line 94
    new-instance p1, Lcom/android/server/wm/AppWarnings$UiHandler;

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/wm/AppWarnings$UiHandler;-><init>(Lcom/android/server/wm/AppWarnings;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/wm/AppWarnings;->mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

    .line 95
    new-instance p1, Landroid/util/AtomicFile;

    new-instance p2, Ljava/io/File;

    const-string p3, "packages-warnings.xml"

    invoke-direct {p2, p5, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p3, "warnings-config"

    invoke-direct {p1, p2, p3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wm/AppWarnings;->mConfigFile:Landroid/util/AtomicFile;

    .line 97
    invoke-direct {p0}, Lcom/android/server/wm/AppWarnings;->readConfigFromFileAmsThread()V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/AppWarnings;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppWarnings;->showUnsupportedDisplaySizeDialogUiThread(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/AppWarnings;)V
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/android/server/wm/AppWarnings;->hideUnsupportedDisplaySizeDialogUiThread()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wm/AppWarnings;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppWarnings;->showUnsupportedCompileSdkDialogUiThread(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wm/AppWarnings;Ljava/lang/String;)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppWarnings;->hideDialogsForPackageUiThread(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wm/AppWarnings;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppWarnings;->showDeprecatedTargetSdkDialogUiThread(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wm/AppWarnings;)V
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/android/server/wm/AppWarnings;->writeConfigToFileAmsThread()V

    return-void
.end method

.method private getPackageFlags(Ljava/lang/String;)I
    .registers 5

    .line 363
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    monitor-enter v0

    .line 364
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    monitor-exit v0

    return p1

    .line 365
    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method

.method private hideDialogsForPackageUiThread(Ljava/lang/String;)V
    .registers 4

    .line 305
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialog:Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    if-eqz p1, :cond_11

    .line 306
    invoke-virtual {v0}, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 305
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 307
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialog:Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    invoke-virtual {v0}, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;->dismiss()V

    .line 308
    iput-object v1, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialog:Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    .line 312
    :cond_18
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedCompileSdkDialog:Lcom/android/server/wm/UnsupportedCompileSdkDialog;

    if-eqz v0, :cond_2f

    if-eqz p1, :cond_28

    .line 313
    invoke-virtual {v0}, Lcom/android/server/wm/UnsupportedCompileSdkDialog;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 312
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 314
    :cond_28
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedCompileSdkDialog:Lcom/android/server/wm/UnsupportedCompileSdkDialog;

    invoke-virtual {v0}, Lcom/android/server/wm/UnsupportedCompileSdkDialog;->dismiss()V

    .line 315
    iput-object v1, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedCompileSdkDialog:Lcom/android/server/wm/UnsupportedCompileSdkDialog;

    .line 319
    :cond_2f
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedTargetSdkVersionDialog:Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;

    if-eqz v0, :cond_46

    if-eqz p1, :cond_3f

    .line 320
    invoke-virtual {v0}, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_46

    .line 321
    :cond_3f
    iget-object p1, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedTargetSdkVersionDialog:Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;

    invoke-virtual {p1}, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;->dismiss()V

    .line 322
    iput-object v1, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedTargetSdkVersionDialog:Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;

    .line 324
    :cond_46
    return-void
.end method

.method private hideUnsupportedDisplaySizeDialogUiThread()V
    .registers 2

    .line 225
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialog:Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    if-eqz v0, :cond_a

    .line 226
    invoke-virtual {v0}, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;->dismiss()V

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialog:Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    .line 229
    :cond_a
    return-void
.end method

.method private readConfigFromFileAmsThread()V
    .registers 12

    .line 513
    const-string v0, "Error reading package metadata"

    const-string v1, "AppWarnings"

    .line 516
    const/4 v2, 0x0

    :try_start_5
    iget-object v3, p0, Lcom/android/server/wm/AppWarnings;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_b} :catch_9b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_b} :catch_8a
    .catchall {:try_start_5 .. :try_end_b} :catchall_87

    .line 518
    :try_start_b
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 519
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 521
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 522
    :goto_1c
    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eq v5, v7, :cond_27

    if-eq v5, v6, :cond_27

    .line 524
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5
    :try_end_26
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_26} :catch_85
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_26} :catch_83
    .catchall {:try_start_b .. :try_end_26} :catchall_81

    goto :goto_1c

    .line 526
    :cond_27
    if-ne v5, v6, :cond_31

    .line 562
    if-eqz v3, :cond_30

    .line 564
    :try_start_2b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f

    .line 566
    goto :goto_30

    .line 565
    :catch_2f
    move-exception v0

    .line 527
    :cond_30
    :goto_30
    return-void

    .line 530
    :cond_31
    :try_start_31
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 531
    const-string v8, "packages"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 532
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 534
    :cond_41
    if-ne v5, v7, :cond_75

    .line 535
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 536
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-ne v8, v7, :cond_75

    .line 537
    const-string v8, "package"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 538
    const-string v5, "name"

    invoke-interface {v4, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 539
    if-eqz v5, :cond_75

    .line 540
    const-string v8, "flags"

    invoke-interface {v4, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_63
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_31 .. :try_end_63} :catch_85
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_63} :catch_83
    .catchall {:try_start_31 .. :try_end_63} :catchall_81

    .line 542
    const/4 v9, 0x0

    .line 543
    if-eqz v8, :cond_6c

    .line 545
    :try_start_66
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_6a
    .catch Ljava/lang/NumberFormatException; {:try_start_66 .. :try_end_6a} :catch_6b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_66 .. :try_end_6a} :catch_85
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_6a} :catch_83
    .catchall {:try_start_66 .. :try_end_6a} :catchall_81

    .line 547
    goto :goto_6c

    .line 546
    :catch_6b
    move-exception v8

    .line 549
    :cond_6c
    :goto_6c
    :try_start_6c
    iget-object v8, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    :cond_75
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5
    :try_end_79
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6c .. :try_end_79} :catch_85
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_79} :catch_83
    .catchall {:try_start_6c .. :try_end_79} :catchall_81

    .line 555
    if-ne v5, v6, :cond_41

    .line 562
    :cond_7b
    if-eqz v3, :cond_a8

    .line 564
    :try_start_7d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_99

    goto :goto_98

    .line 562
    :catchall_81
    move-exception v0

    goto :goto_a9

    .line 559
    :catch_83
    move-exception v2

    goto :goto_8e

    .line 557
    :catch_85
    move-exception v2

    goto :goto_9f

    .line 562
    :catchall_87
    move-exception v0

    move-object v3, v2

    goto :goto_a9

    .line 559
    :catch_8a
    move-exception v3

    move-object v10, v3

    move-object v3, v2

    move-object v2, v10

    .line 560
    :goto_8e
    if-eqz v3, :cond_93

    :try_start_90
    invoke-static {v1, v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_81

    .line 562
    :cond_93
    if-eqz v3, :cond_a8

    .line 564
    :try_start_95
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_99

    .line 566
    :goto_98
    goto :goto_a8

    .line 565
    :catch_99
    move-exception v0

    goto :goto_98

    .line 557
    :catch_9b
    move-exception v3

    move-object v10, v3

    move-object v3, v2

    move-object v2, v10

    .line 558
    :goto_9f
    :try_start_9f
    invoke-static {v1, v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a2
    .catchall {:try_start_9f .. :try_end_a2} :catchall_81

    .line 562
    if-eqz v3, :cond_a8

    .line 564
    :try_start_a4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a7} :catch_99

    goto :goto_98

    .line 569
    :cond_a8
    :goto_a8
    return-void

    .line 562
    :goto_a9
    if-eqz v3, :cond_b0

    .line 564
    :try_start_ab
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_af

    .line 566
    goto :goto_b0

    .line 565
    :catch_af
    move-exception v1

    .line 566
    :cond_b0
    :goto_b0
    throw v0
.end method

.method private removePackageAndHideDialogs(Ljava/lang/String;)V
    .registers 4

    .line 210
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppWarnings$UiHandler;->hideDialogsForPackage(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    monitor-enter v0

    .line 213
    :try_start_8
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object p1, p0, Lcom/android/server/wm/AppWarnings;->mHandler:Lcom/android/server/wm/AppWarnings$ConfigHandler;

    invoke-virtual {p1}, Lcom/android/server/wm/AppWarnings$ConfigHandler;->scheduleWrite()V

    .line 215
    monitor-exit v0

    .line 216
    return-void

    .line 215
    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw p1
.end method

.method private showDeprecatedTargetSdkDialogUiThread(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 282
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedTargetSdkVersionDialog:Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;

    if-eqz v0, :cond_a

    .line 283
    invoke-virtual {v0}, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;->dismiss()V

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedTargetSdkVersionDialog:Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;

    .line 286
    :cond_a
    if-eqz p1, :cond_27

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AppWarnings;->hasPackageFlag(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_27

    .line 288
    new-instance v0, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;

    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mUiContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;-><init>(Lcom/android/server/wm/AppWarnings;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V

    iput-object v0, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedTargetSdkVersionDialog:Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;

    .line 290
    iget-object p1, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedTargetSdkVersionDialog:Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;

    invoke-virtual {p1}, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;->show()V

    .line 292
    :cond_27
    return-void
.end method

.method private showUnsupportedCompileSdkDialogUiThread(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 261
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedCompileSdkDialog:Lcom/android/server/wm/UnsupportedCompileSdkDialog;

    if-eqz v0, :cond_a

    .line 262
    invoke-virtual {v0}, Lcom/android/server/wm/UnsupportedCompileSdkDialog;->dismiss()V

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedCompileSdkDialog:Lcom/android/server/wm/UnsupportedCompileSdkDialog;

    .line 265
    :cond_a
    if-eqz p1, :cond_27

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AppWarnings;->hasPackageFlag(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_27

    .line 267
    new-instance v0, Lcom/android/server/wm/UnsupportedCompileSdkDialog;

    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mUiContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/wm/UnsupportedCompileSdkDialog;-><init>(Lcom/android/server/wm/AppWarnings;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V

    iput-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedCompileSdkDialog:Lcom/android/server/wm/UnsupportedCompileSdkDialog;

    .line 269
    iget-object p1, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedCompileSdkDialog:Lcom/android/server/wm/UnsupportedCompileSdkDialog;

    invoke-virtual {p1}, Lcom/android/server/wm/UnsupportedCompileSdkDialog;->show()V

    .line 271
    :cond_27
    return-void
.end method

.method private showUnsupportedDisplaySizeDialogUiThread(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 240
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialog:Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    if-eqz v0, :cond_a

    .line 241
    invoke-virtual {v0}, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;->dismiss()V

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialog:Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    .line 244
    :cond_a
    if-eqz p1, :cond_27

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AppWarnings;->hasPackageFlag(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_27

    .line 246
    new-instance v0, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mUiContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;-><init>(Lcom/android/server/wm/AppWarnings;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V

    iput-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialog:Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    .line 248
    iget-object p1, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialog:Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    invoke-virtual {p1}, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;->show()V

    .line 250
    :cond_27
    return-void
.end method

.method private writeConfigToFileAmsThread()V
    .registers 8

    .line 468
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    monitor-enter v0

    .line 469
    :try_start_3
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 470
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_95

    .line 472
    nop

    .line 474
    const/4 v0, 0x0

    :try_start_d
    iget-object v2, p0, Lcom/android/server/wm/AppWarnings;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_13} :catch_83

    .line 476
    :try_start_13
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 477
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 478
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 479
    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 480
    const-string v4, "packages"

    invoke-interface {v3, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 482
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_73

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 483
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 484
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 485
    if-nez v4, :cond_5a

    .line 486
    goto :goto_3b

    .line 488
    :cond_5a
    const-string v6, "package"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 489
    const-string v6, "name"

    invoke-interface {v3, v0, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 490
    const-string v5, "flags"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 491
    const-string v4, "package"

    invoke-interface {v3, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 492
    goto :goto_3b

    .line 494
    :cond_73
    const-string v1, "packages"

    invoke-interface {v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 495
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 497
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_80} :catch_81

    .line 503
    goto :goto_94

    .line 498
    :catch_81
    move-exception v0

    goto :goto_86

    :catch_83
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 499
    :goto_86
    const-string v1, "AppWarnings"

    const-string v3, "Error writing package metadata"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 500
    if-eqz v2, :cond_94

    .line 501
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 504
    :cond_94
    :goto_94
    return-void

    .line 470
    :catchall_95
    move-exception v1

    :try_start_96
    monitor-exit v0
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_95

    throw v1
.end method


# virtual methods
.method alwaysShowUnsupportedCompileSdkWarning(Landroid/content/ComponentName;)V
    .registers 3

    .line 75
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mAlwaysShowUnsupportedCompileSdkWarningActivities:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method hasPackageFlag(Ljava/lang/String;I)Z
    .registers 3

    .line 334
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppWarnings;->getPackageFlags(Ljava/lang/String;)I

    move-result p1

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method public onDensityChanged()V
    .registers 2

    .line 203
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWarnings$UiHandler;->hideUnsupportedDisplaySizeDialog()V

    .line 204
    return-void
.end method

.method public onPackageDataCleared(Ljava/lang/String;)V
    .registers 2

    .line 187
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppWarnings;->removePackageAndHideDialogs(Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public onPackageUninstalled(Ljava/lang/String;)V
    .registers 2

    .line 196
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppWarnings;->removePackageAndHideDialogs(Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public onResumeActivity(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->showUnsupportedDisplaySizeDialogIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 179
    return-void
.end method

.method public onStartActivity(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 167
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->showUnsupportedCompileSdkDialogIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 168
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->showUnsupportedDisplaySizeDialogIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 169
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->showDeprecatedTargetDialogIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 170
    return-void
.end method

.method setPackageFlag(Ljava/lang/String;IZ)V
    .registers 6

    .line 345
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    monitor-enter v0

    .line 346
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppWarnings;->getPackageFlags(Ljava/lang/String;)I

    move-result v1

    .line 347
    if-eqz p3, :cond_b

    or-int/2addr p2, v1

    goto :goto_d

    :cond_b
    not-int p2, p2

    and-int/2addr p2, v1

    .line 348
    :goto_d
    if-eq v1, p2, :cond_25

    .line 349
    if-eqz p2, :cond_1b

    .line 350
    iget-object p3, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    .line 352
    :cond_1b
    iget-object p2, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    :goto_20
    iget-object p1, p0, Lcom/android/server/wm/AppWarnings;->mHandler:Lcom/android/server/wm/AppWarnings$ConfigHandler;

    invoke-virtual {p1}, Lcom/android/server/wm/AppWarnings$ConfigHandler;->scheduleWrite()V

    .line 356
    :cond_25
    monitor-exit v0

    .line 357
    return-void

    .line 356
    :catchall_27
    move-exception p1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw p1
.end method

.method public showDeprecatedTargetDialogIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 156
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sget v1, Landroid/os/Build$VERSION;->MIN_SUPPORTED_TARGET_SDK_INT:I

    if-ge v0, v1, :cond_d

    .line 157
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppWarnings$UiHandler;->showDeprecatedTargetDialog(Lcom/android/server/wm/ActivityRecord;)V

    .line 159
    :cond_d
    return-void
.end method

.method public showUnsupportedCompileSdkDialogIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .registers 7

    .line 119
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->compileSdkVersion:I

    if-eqz v0, :cond_52

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    if-nez v0, :cond_d

    goto :goto_52

    .line 125
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mAlwaysShowUnsupportedCompileSdkWarningActivities:Ljava/util/HashSet;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 126
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 130
    return-void

    .line 138
    :cond_18
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->compileSdkVersion:I

    .line 139
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 140
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    const-string v3, "REL"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 141
    xor-int/lit8 v2, v2, 0x1

    sget-object v4, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 142
    xor-int/lit8 v3, v3, 0x1

    if-eqz v2, :cond_36

    if-lt v0, v1, :cond_4c

    :cond_36
    if-eqz v3, :cond_3a

    if-lt v1, v0, :cond_4c

    :cond_3a
    if-eqz v2, :cond_51

    if-eqz v3, :cond_51

    if-ne v1, v0, :cond_51

    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 146
    :cond_4c
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppWarnings$UiHandler;->showUnsupportedCompileSdkDialog(Lcom/android/server/wm/ActivityRecord;)V

    .line 148
    :cond_51
    return-void

    .line 121
    :cond_52
    :goto_52
    return-void
.end method

.method public showUnsupportedDisplaySizeDialogIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    .line 106
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 107
    iget v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    sget v2, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    if-eq v1, v2, :cond_19

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-le v1, v0, :cond_19

    .line 109
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppWarnings$UiHandler;->showUnsupportedDisplaySizeDialog(Lcom/android/server/wm/ActivityRecord;)V

    .line 111
    :cond_19
    return-void
.end method
