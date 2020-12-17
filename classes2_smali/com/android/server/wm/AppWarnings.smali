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
    .registers 9
    .param p1, "atm"  # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "uiContext"  # Landroid/content/Context;
    .param p3, "handler"  # Landroid/os/Handler;
    .param p4, "uiHandler"  # Landroid/os/Handler;
    .param p5, "systemDir"  # Ljava/io/File;

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
    new-instance v0, Lcom/android/server/wm/AppWarnings$ConfigHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/AppWarnings$ConfigHandler;-><init>(Lcom/android/server/wm/AppWarnings;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/AppWarnings;->mHandler:Lcom/android/server/wm/AppWarnings$ConfigHandler;

    .line 94
    new-instance v0, Lcom/android/server/wm/AppWarnings$UiHandler;

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/AppWarnings$UiHandler;-><init>(Lcom/android/server/wm/AppWarnings;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

    .line 95
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string v2, "packages-warnings.xml"

    invoke-direct {v1, p5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "warnings-config"

    invoke-direct {v0, v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/AppWarnings;->mConfigFile:Landroid/util/AtomicFile;

    .line 97
    invoke-direct {p0}, Lcom/android/server/wm/AppWarnings;->readConfigFromFileAmsThread()V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/AppWarnings;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/AppWarnings;
    .param p1, "x1"  # Lcom/android/server/wm/ActivityRecord;

    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppWarnings;->showUnsupportedDisplaySizeDialogUiThread(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/AppWarnings;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/wm/AppWarnings;

    .line 49
    invoke-direct {p0}, Lcom/android/server/wm/AppWarnings;->hideUnsupportedDisplaySizeDialogUiThread()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wm/AppWarnings;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/AppWarnings;
    .param p1, "x1"  # Lcom/android/server/wm/ActivityRecord;

    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppWarnings;->showUnsupportedCompileSdkDialogUiThread(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wm/AppWarnings;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/AppWarnings;
    .param p1, "x1"  # Ljava/lang/String;

    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppWarnings;->hideDialogsForPackageUiThread(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wm/AppWarnings;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/AppWarnings;
    .param p1, "x1"  # Lcom/android/server/wm/ActivityRecord;

    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppWarnings;->showDeprecatedTargetSdkDialogUiThread(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wm/AppWarnings;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/wm/AppWarnings;

    .line 49
    invoke-direct {p0}, Lcom/android/server/wm/AppWarnings;->writeConfigToFileAmsThread()V

    return-void
.end method

.method private getPackageFlags(Ljava/lang/String;)I
    .registers 5
    .param p1, "name"  # Ljava/lang/String;

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

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v0

    return v1

    .line 365
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private hideDialogsForPackageUiThread(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"  # Ljava/lang/String;

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

    move-result v0

    if-eqz v0, :cond_46

    .line 321
    :cond_3f
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedTargetSdkVersionDialog:Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;

    invoke-virtual {v0}, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;->dismiss()V

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
    .registers 14

    .line 513
    const-string v0, "Error reading package metadata"

    const-string v1, "AppWarnings"

    const/4 v2, 0x0

    .line 516
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_5
    iget-object v3, p0, Lcom/android/server/wm/AppWarnings;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    move-object v2, v3

    .line 518
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 519
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 521
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 522
    .local v4, "eventType":I
    :goto_1d
    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v4, v6, :cond_29

    if-eq v4, v5, :cond_29

    .line 524
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5
    :try_end_27
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_27} :catch_98
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_27} :catch_8c
    .catchall {:try_start_5 .. :try_end_27} :catchall_8a

    move v4, v5

    goto :goto_1d

    .line 526
    :cond_29
    if-ne v4, v5, :cond_33

    .line 562
    if-eqz v2, :cond_32

    .line 564
    :try_start_2d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    .line 566
    goto :goto_32

    .line 565
    :catch_31
    move-exception v0

    .line 527
    :cond_32
    :goto_32
    return-void

    .line 530
    :cond_33
    :try_start_33
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 531
    .local v7, "tagName":Ljava/lang/String;
    const-string v8, "packages"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_82

    .line 532
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v4, v8

    .line 534
    :cond_44
    if-ne v4, v6, :cond_7b

    .line 535
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 536
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-ne v8, v6, :cond_7b

    .line 537
    const-string v8, "package"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7b

    .line 538
    const-string v8, "name"

    const/4 v9, 0x0

    invoke-interface {v3, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 539
    .local v8, "name":Ljava/lang/String;
    if-eqz v8, :cond_7b

    .line 540
    const-string v10, "flags"

    invoke-interface {v3, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_68
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_33 .. :try_end_68} :catch_98
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_68} :catch_8c
    .catchall {:try_start_33 .. :try_end_68} :catchall_8a

    .line 542
    .local v9, "flags":Ljava/lang/String;
    const/4 v10, 0x0

    .line 543
    .local v10, "flagsInt":I
    if-eqz v9, :cond_72

    .line 545
    :try_start_6b
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_6f
    .catch Ljava/lang/NumberFormatException; {:try_start_6b .. :try_end_6f} :catch_71
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6b .. :try_end_6f} :catch_98
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6f} :catch_8c
    .catchall {:try_start_6b .. :try_end_6f} :catchall_8a

    move v10, v11

    .line 547
    goto :goto_72

    .line 546
    :catch_71
    move-exception v11

    .line 549
    :cond_72
    :goto_72
    :try_start_72
    iget-object v11, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    .end local v8  # "name":Ljava/lang/String;
    .end local v9  # "flags":Ljava/lang/String;
    .end local v10  # "flagsInt":I
    :cond_7b
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8
    :try_end_7f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_72 .. :try_end_7f} :catch_98
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_7f} :catch_8c
    .catchall {:try_start_72 .. :try_end_7f} :catchall_8a

    move v4, v8

    .line 555
    if-ne v4, v5, :cond_44

    .line 562
    .end local v3  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4  # "eventType":I
    .end local v7  # "tagName":Ljava/lang/String;
    :cond_82
    if-eqz v2, :cond_a3

    .line 564
    :try_start_84
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_88

    .line 566
    :goto_87
    goto :goto_a3

    .line 565
    :catch_88
    move-exception v0

    goto :goto_87

    .line 562
    :catchall_8a
    move-exception v0

    goto :goto_a4

    .line 559
    :catch_8c
    move-exception v3

    .line 560
    .local v3, "e":Ljava/io/IOException;
    if-eqz v2, :cond_92

    :try_start_8f
    invoke-static {v1, v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_8a

    .line 562
    .end local v3  # "e":Ljava/io/IOException;
    :cond_92
    if-eqz v2, :cond_a3

    .line 564
    :try_start_94
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_97} :catch_88

    goto :goto_87

    .line 557
    :catch_98
    move-exception v3

    .line 558
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_99
    invoke-static {v1, v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9c
    .catchall {:try_start_99 .. :try_end_9c} :catchall_8a

    .line 562
    nop

    .end local v3  # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v2, :cond_a3

    .line 564
    :try_start_9f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_88

    goto :goto_87

    .line 569
    :cond_a3
    :goto_a3
    return-void

    .line 562
    :goto_a4
    if-eqz v2, :cond_ab

    .line 564
    :try_start_a6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_a9} :catch_aa

    .line 566
    goto :goto_ab

    .line 565
    :catch_aa
    move-exception v1

    .line 566
    :cond_ab
    :goto_ab
    throw v0
.end method

.method private removePackageAndHideDialogs(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"  # Ljava/lang/String;

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
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mHandler:Lcom/android/server/wm/AppWarnings$ConfigHandler;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWarnings$ConfigHandler;->scheduleWrite()V

    .line 215
    monitor-exit v0

    .line 216
    return-void

    .line 215
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private showDeprecatedTargetSdkDialogUiThread(Lcom/android/server/wm/ActivityRecord;)V
    .registers 5
    .param p1, "ar"  # Lcom/android/server/wm/ActivityRecord;

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

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;-><init>(Lcom/android/server/wm/AppWarnings;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V

    iput-object v0, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedTargetSdkVersionDialog:Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;

    .line 290
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedTargetSdkVersionDialog:Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;

    invoke-virtual {v0}, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;->show()V

    .line 292
    :cond_27
    return-void
.end method

.method private showUnsupportedCompileSdkDialogUiThread(Lcom/android/server/wm/ActivityRecord;)V
    .registers 5
    .param p1, "ar"  # Lcom/android/server/wm/ActivityRecord;

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

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/wm/UnsupportedCompileSdkDialog;-><init>(Lcom/android/server/wm/AppWarnings;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V

    iput-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedCompileSdkDialog:Lcom/android/server/wm/UnsupportedCompileSdkDialog;

    .line 269
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedCompileSdkDialog:Lcom/android/server/wm/UnsupportedCompileSdkDialog;

    invoke-virtual {v0}, Lcom/android/server/wm/UnsupportedCompileSdkDialog;->show()V

    .line 271
    :cond_27
    return-void
.end method

.method private showUnsupportedDisplaySizeDialogUiThread(Lcom/android/server/wm/ActivityRecord;)V
    .registers 5
    .param p1, "ar"  # Lcom/android/server/wm/ActivityRecord;

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

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;-><init>(Lcom/android/server/wm/AppWarnings;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V

    iput-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialog:Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    .line 248
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialog:Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    invoke-virtual {v0}, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;->show()V

    .line 250
    :cond_27
    return-void
.end method

.method private writeConfigToFileAmsThread()V
    .registers 11

    .line 468
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    monitor-enter v0

    .line 469
    :try_start_3
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 470
    .local v1, "packageFlags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_93

    .line 472
    const/4 v0, 0x0

    .line 474
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_c
    iget-object v2, p0, Lcom/android/server/wm/AppWarnings;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v0, v2

    .line 476
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 477
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 478
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 479
    const-string v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 480
    const-string v3, "packages"

    invoke-interface {v2, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 482
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_75

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 483
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 484
    .local v6, "pkg":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 485
    .local v7, "mode":I
    if-nez v7, :cond_5b

    .line 486
    goto :goto_3c

    .line 488
    :cond_5b
    const-string v8, "package"

    invoke-interface {v2, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 489
    const-string v8, "name"

    invoke-interface {v2, v5, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 490
    const-string v8, "flags"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 491
    const-string v8, "package"

    invoke-interface {v2, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 492
    nop

    .end local v4  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v6  # "pkg":Ljava/lang/String;
    .end local v7  # "mode":I
    goto :goto_3c

    .line 494
    :cond_75
    const-string v3, "packages"

    invoke-interface {v2, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 495
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 497
    iget-object v3, p0, Lcom/android/server/wm/AppWarnings;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_82} :catch_83

    .line 503
    .end local v2  # "out":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_92

    .line 498
    :catch_83
    move-exception v2

    .line 499
    .local v2, "e1":Ljava/io/IOException;
    const-string v3, "AppWarnings"

    const-string v4, "Error writing package metadata"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 500
    if-eqz v0, :cond_92

    .line 501
    iget-object v3, p0, Lcom/android/server/wm/AppWarnings;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 504
    .end local v2  # "e1":Ljava/io/IOException;
    :cond_92
    :goto_92
    return-void

    .line 470
    .end local v0  # "fos":Ljava/io/FileOutputStream;
    .end local v1  # "packageFlags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_93
    move-exception v1

    :try_start_94
    monitor-exit v0
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    throw v1
.end method


# virtual methods
.method alwaysShowUnsupportedCompileSdkWarning(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "activity"  # Landroid/content/ComponentName;

    .line 75
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mAlwaysShowUnsupportedCompileSdkWarningActivities:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method hasPackageFlag(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "flag"  # I

    .line 334
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppWarnings;->getPackageFlags(Ljava/lang/String;)I

    move-result v0

    and-int/2addr v0, p2

    if-ne v0, p2, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
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
    .param p1, "name"  # Ljava/lang/String;

    .line 187
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppWarnings;->removePackageAndHideDialogs(Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public onPackageUninstalled(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"  # Ljava/lang/String;

    .line 196
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppWarnings;->removePackageAndHideDialogs(Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public onResumeActivity(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->showUnsupportedDisplaySizeDialogIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 179
    return-void
.end method

.method public onStartActivity(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

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
    .registers 9
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "flag"  # I
    .param p3, "enabled"  # Z

    .line 345
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    monitor-enter v0

    .line 346
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppWarnings;->getPackageFlags(Ljava/lang/String;)I

    move-result v1

    .line 347
    .local v1, "curFlags":I
    if-eqz p3, :cond_c

    or-int v2, v1, p2

    goto :goto_e

    :cond_c
    not-int v2, p2

    and-int/2addr v2, v1

    .line 348
    .local v2, "newFlags":I
    :goto_e
    if-eq v1, v2, :cond_26

    .line 349
    if-eqz v2, :cond_1c

    .line 350
    iget-object v3, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    .line 352
    :cond_1c
    iget-object v3, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    :goto_21
    iget-object v3, p0, Lcom/android/server/wm/AppWarnings;->mHandler:Lcom/android/server/wm/AppWarnings$ConfigHandler;

    invoke-virtual {v3}, Lcom/android/server/wm/AppWarnings$ConfigHandler;->scheduleWrite()V

    .line 356
    .end local v1  # "curFlags":I
    .end local v2  # "newFlags":I
    :cond_26
    monitor-exit v0

    .line 357
    return-void

    .line 356
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public showDeprecatedTargetDialogIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

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
    .registers 8
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

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
    .local v0, "compileSdk":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 140
    .local v1, "platformSdk":I
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    const-string v3, "REL"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 141
    .local v2, "isCompileSdkPreview":Z
    sget-object v4, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 142
    .local v3, "isPlatformSdkPreview":Z
    if-eqz v2, :cond_36

    if-lt v0, v1, :cond_4c

    :cond_36
    if-eqz v3, :cond_3a

    if-lt v1, v0, :cond_4c

    :cond_3a
    if-eqz v2, :cond_51

    if-eqz v3, :cond_51

    if-ne v1, v0, :cond_51

    sget-object v4, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    .line 145
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_51

    .line 146
    :cond_4c
    iget-object v4, p0, Lcom/android/server/wm/AppWarnings;->mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

    invoke-virtual {v4, p1}, Lcom/android/server/wm/AppWarnings$UiHandler;->showUnsupportedCompileSdkDialog(Lcom/android/server/wm/ActivityRecord;)V

    .line 148
    :cond_51
    return-void

    .line 121
    .end local v0  # "compileSdk":I
    .end local v1  # "platformSdk":I
    .end local v2  # "isCompileSdkPreview":Z
    .end local v3  # "isPlatformSdkPreview":Z
    :cond_52
    :goto_52
    return-void
.end method

.method public showUnsupportedDisplaySizeDialogIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .registers 5
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 106
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 107
    .local v0, "globalConfig":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    sget v2, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    if-eq v1, v2, :cond_19

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    iget v2, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-le v1, v2, :cond_19

    .line 109
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/AppWarnings$UiHandler;->showUnsupportedDisplaySizeDialog(Lcom/android/server/wm/ActivityRecord;)V

    .line 111
    :cond_19
    return-void
.end method
