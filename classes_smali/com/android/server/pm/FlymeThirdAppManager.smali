.class public Lcom/android/server/pm/FlymeThirdAppManager;
.super Ljava/lang/Object;
.source "FlymeThirdAppManager.java"


# static fields
.field private static final ATTR_APP_PKG_NAME:Ljava/lang/String; = "pkg_name"

.field private static final ATTR_VERSION_CODE:Ljava/lang/String; = "version_code"

.field private static final CONFIG_NAME:Ljava/lang/String; = "flyme_third_app.xml"

.field private static final CONFIG_VERSION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FlymeThirdAppManager"

.field private static final TAG_THIRD_APP:Ljava/lang/String; = "thirdapp"

.field private static final TAG_VERSION:Ljava/lang/String; = "version"

.field private static final THIRD_APP_PATH:[Ljava/lang/String;

.field private static final THIRD_APP_PATH_2:[Ljava/lang/String;


# instance fields
.field private mApkCopied:Z

.field private mConfigFile:Ljava/io/File;

.field private mCopyedPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/android/server/pm/PackageManagerService;

.field private mSystemDir:Ljava/io/File;

.field private mVersionCode:I


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 3
    .param p0, "x0"  # Ljava/lang/Throwable;
    .param p1, "x1"  # Ljava/lang/AutoCloseable;

    .line 87
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

.method static constructor <clinit>()V
    .registers 2

    .line 36
    const-string v0, "/vendor/custom/3rd-party/apk"

    const-string v1, "/custom/3rd-party/apk"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/FlymeThirdAppManager;->THIRD_APP_PATH:[Ljava/lang/String;

    .line 38
    const-string v0, "/vendor/custom/3rd-party/apk2"

    const-string v1, "/custom/3rd-party/apk2"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/FlymeThirdAppManager;->THIRD_APP_PATH_2:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 5
    .param p1, "service"  # Lcom/android/server/pm/PackageManagerService;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/FlymeThirdAppManager;->mCopyedPkgList:Ljava/util/List;

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/FlymeThirdAppManager;->mVersionCode:I

    .line 51
    iput-boolean v0, p0, Lcom/android/server/pm/FlymeThirdAppManager;->mApkCopied:Z

    .line 54
    iput-object p1, p0, Lcom/android/server/pm/FlymeThirdAppManager;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 55
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/FlymeThirdAppManager;->mSystemDir:Ljava/io/File;

    .line 56
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/FlymeThirdAppManager;->mSystemDir:Ljava/io/File;

    const-string v2, "flyme_third_app.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/FlymeThirdAppManager;->mConfigFile:Ljava/io/File;

    .line 57
    return-void
.end method

.method private copyAPK(Ljava/io/File;Ljava/io/File;Z)V
    .registers 15
    .param p1, "src"  # Ljava/io/File;
    .param p2, "dst"  # Ljava/io/File;
    .param p3, "force"  # Z

    .line 109
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 110
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_1d

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyAPK no file founded in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FlymeThirdAppManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void

    .line 114
    :cond_1d
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_20
    if-ge v3, v1, :cond_14b

    aget-object v4, v0, v3

    .line 115
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 116
    invoke-direct {p0, v4, p2, p3}, Lcom/android/server/pm/FlymeThirdAppManager;->copyAPK(Ljava/io/File;Ljava/io/File;Z)V

    .line 117
    goto/16 :goto_147

    .line 119
    :cond_2f
    invoke-static {v4}, Landroid/content/pm/PackageParser;->isApkFile(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_37

    .line 120
    goto/16 :goto_147

    .line 124
    :cond_37
    :try_start_37
    invoke-static {v4, v2}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v5
    :try_end_3b
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_37 .. :try_end_3b} :catch_127

    .line 128
    .local v5, "pkg":Landroid/content/pm/PackageParser$PackageLite;
    nop

    .line 129
    if-nez p3, :cond_7d

    .line 131
    iget-object v6, p0, Lcom/android/server/pm/FlymeThirdAppManager;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v6

    .line 132
    :try_start_43
    iget-object v7, p0, Lcom/android/server/pm/FlymeThirdAppManager;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v8, v5, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v7

    .line 133
    .local v7, "ps":Lcom/android/server/pm/PackageSetting;
    monitor-exit v6
    :try_end_4e
    .catchall {:try_start_43 .. :try_end_4e} :catchall_7a

    .line 135
    if-nez v7, :cond_5a

    iget-object v6, p0, Lcom/android/server/pm/FlymeThirdAppManager;->mCopyedPkgList:Ljava/util/List;

    iget-object v8, v5, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    .line 136
    invoke-interface {v6, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7d

    .line 137
    :cond_5a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "copyAPK skiped file =  "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " already installed or copied ps =  "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "FlymeThirdAppManager"

    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    goto/16 :goto_147

    .line 133
    .end local v7  # "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_7a
    move-exception v1

    :try_start_7b
    monitor-exit v6
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    throw v1

    .line 143
    :cond_7d
    :try_start_7d
    new-instance v6, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 144
    .local v6, "apkDir":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_9c

    .line 145
    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    .line 146
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1ed

    invoke-static {v7, v8}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 148
    :cond_9c
    new-instance v7, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 149
    .local v7, "apkFile":Ljava/io/File;
    invoke-static {v4, v7}, Landroid/os/FileUtils;->copy(Ljava/io/File;Ljava/io/File;)J

    .line 150
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1a4

    invoke-static {v8, v9}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 152
    if-eqz v5, :cond_126

    iget-object v8, v5, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    if-eqz v8, :cond_126

    iget-object v8, p0, Lcom/android/server/pm/FlymeThirdAppManager;->mCopyedPkgList:Ljava/util/List;

    iget-object v9, v5, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    .line 153
    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_126

    .line 154
    iget-object v8, p0, Lcom/android/server/pm/FlymeThirdAppManager;->mCopyedPkgList:Ljava/util/List;

    iget-object v9, v5, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/pm/FlymeThirdAppManager;->mApkCopied:Z

    .line 156
    const-string v8, "FlymeThirdAppManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "copyAPK  file =  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " succeed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e6
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_e6} :catch_107
    .catch Landroid/system/ErrnoException; {:try_start_7d .. :try_end_e6} :catch_e7

    goto :goto_126

    .line 160
    .end local v6  # "apkDir":Ljava/io/File;
    .end local v7  # "apkFile":Ljava/io/File;
    :catch_e7
    move-exception v6

    .line 161
    .local v6, "e":Landroid/system/ErrnoException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "copyAPK  file =  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " e = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "FlymeThirdAppManager"

    invoke-static {v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_147

    .line 158
    .end local v6  # "e":Landroid/system/ErrnoException;
    :catch_107
    move-exception v6

    .line 159
    .local v6, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "copyAPK  file =  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " e = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "FlymeThirdAppManager"

    invoke-static {v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .end local v6  # "e":Ljava/io/IOException;
    :cond_126
    :goto_126
    goto :goto_147

    .line 125
    .end local v5  # "pkg":Landroid/content/pm/PackageParser$PackageLite;
    :catch_127
    move-exception v5

    .line 126
    .local v5, "e":Landroid/content/pm/PackageParser$PackageParserException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "copyAPK  file =  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " e = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "FlymeThirdAppManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    nop

    .line 114
    .end local v4  # "file":Ljava/io/File;
    .end local v5  # "e":Landroid/content/pm/PackageParser$PackageParserException;
    :goto_147
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_20

    .line 164
    :cond_14b
    return-void
.end method


# virtual methods
.method public handleApkCopied(ZLjava/io/File;)Z
    .registers 10
    .param p1, "firstBoot"  # Z
    .param p2, "dst"  # Ljava/io/File;

    .line 97
    const/4 v0, 0x0

    if-eqz p1, :cond_17

    .line 98
    sget-object v1, Lcom/android/server/pm/FlymeThirdAppManager;->THIRD_APP_PATH:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_7
    if-ge v3, v2, :cond_17

    aget-object v4, v1, v3

    .line 99
    .local v4, "apk_dir":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    invoke-direct {p0, v5, p2, v6}, Lcom/android/server/pm/FlymeThirdAppManager;->copyAPK(Ljava/io/File;Ljava/io/File;Z)V

    .line 98
    .end local v4  # "apk_dir":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 102
    :cond_17
    sget-object v1, Lcom/android/server/pm/FlymeThirdAppManager;->THIRD_APP_PATH_2:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_1b
    if-ge v3, v2, :cond_2a

    aget-object v4, v1, v3

    .line 103
    .restart local v4  # "apk_dir":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v5, p2, v0}, Lcom/android/server/pm/FlymeThirdAppManager;->copyAPK(Ljava/io/File;Ljava/io/File;Z)V

    .line 102
    .end local v4  # "apk_dir":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 105
    :cond_2a
    iget-boolean v0, p0, Lcom/android/server/pm/FlymeThirdAppManager;->mApkCopied:Z

    return v0
.end method

.method public readConfig()V
    .registers 9

    .line 60
    const-string/jumbo v0, "readConfig error = "

    iget-object v1, p0, Lcom/android/server/pm/FlymeThirdAppManager;->mConfigFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "FlymeThirdAppManager"

    if-nez v1, :cond_17

    .line 61
    const-string/jumbo v0, "readConfig config file not exist"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/FlymeThirdAppManager;->mVersionCode:I

    .line 63
    return-void

    .line 65
    :cond_17
    :try_start_17
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/android/server/pm/FlymeThirdAppManager;->mConfigFile:Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_1e} :catch_ac
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17 .. :try_end_1e} :catch_98
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1e} :catch_84

    .line 66
    .local v1, "str":Ljava/io/FileInputStream;
    :try_start_1e
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 67
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v4, "UTF-8"

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 68
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 69
    .local v4, "eventType":I
    :goto_2b
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v4, v5, :cond_79

    .line 70
    if-eqz v4, :cond_72

    const/4 v5, 0x2

    if-eq v4, v5, :cond_35

    goto :goto_73

    .line 74
    :cond_35
    const-string/jumbo v5, "version"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 75
    const-string/jumbo v5, "version_code"

    .line 76
    invoke-interface {v3, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 75
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/server/pm/FlymeThirdAppManager;->mVersionCode:I

    goto :goto_73

    .line 77
    :cond_50
    const-string/jumbo v5, "thirdapp"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_73

    .line 78
    const-string/jumbo v5, "pkg_name"

    invoke-interface {v3, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, "pkgName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/pm/FlymeThirdAppManager;->mCopyedPkgList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_73

    .line 80
    iget-object v6, p0, Lcom/android/server/pm/FlymeThirdAppManager;->mCopyedPkgList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_73

    .line 72
    .end local v5  # "pkgName":Ljava/lang/String;
    :cond_72
    nop

    .line 85
    :cond_73
    :goto_73
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5
    :try_end_77
    .catchall {:try_start_1e .. :try_end_77} :catchall_7d

    move v4, v5

    goto :goto_2b

    .line 87
    .end local v3  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4  # "eventType":I
    :cond_79
    :try_start_79
    invoke-static {v6, v1}, Lcom/android/server/pm/FlymeThirdAppManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_7c
    .catch Ljava/io/FileNotFoundException; {:try_start_79 .. :try_end_7c} :catch_ac
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_79 .. :try_end_7c} :catch_98
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_84

    goto :goto_bf

    .line 65
    :catchall_7d
    move-exception v3

    .end local v1  # "str":Ljava/io/FileInputStream;
    .end local p0  # "this":Lcom/android/server/pm/FlymeThirdAppManager;
    :try_start_7e
    throw v3
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7f

    .line 87
    .restart local v1  # "str":Ljava/io/FileInputStream;
    .restart local p0  # "this":Lcom/android/server/pm/FlymeThirdAppManager;
    :catchall_7f
    move-exception v4

    :try_start_80
    invoke-static {v3, v1}, Lcom/android/server/pm/FlymeThirdAppManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local p0  # "this":Lcom/android/server/pm/FlymeThirdAppManager;
    throw v4
    :try_end_84
    .catch Ljava/io/FileNotFoundException; {:try_start_80 .. :try_end_84} :catch_ac
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_80 .. :try_end_84} :catch_98
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_84} :catch_84

    .line 91
    .end local v1  # "str":Ljava/io/FileInputStream;
    .restart local p0  # "this":Lcom/android/server/pm/FlymeThirdAppManager;
    :catch_84
    move-exception v1

    .line 92
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c0

    .line 89
    .end local v1  # "e":Ljava/io/IOException;
    :catch_98
    move-exception v1

    .line 90
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1  # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_bf

    .line 87
    :catch_ac
    move-exception v1

    .line 88
    .local v1, "e":Ljava/io/FileNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .end local v1  # "e":Ljava/io/FileNotFoundException;
    :goto_bf
    nop

    .line 94
    :goto_c0
    return-void
.end method

.method public writeConfig()V
    .registers 11

    .line 167
    const-string/jumbo v0, "thirdapp"

    const-string/jumbo v1, "version"

    const-string/jumbo v2, "writeConfig  error = "

    iget-object v3, p0, Lcom/android/server/pm/FlymeThirdAppManager;->mConfigFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    const-string v4, "FlymeThirdAppManager"

    if-nez v3, :cond_30

    .line 169
    :try_start_13
    iget-object v3, p0, Lcom/android/server/pm/FlymeThirdAppManager;->mConfigFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_18} :catch_19

    .line 173
    goto :goto_30

    .line 170
    :catch_19
    move-exception v0

    .line 171
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeConfig createNewFile error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void

    .line 175
    .end local v0  # "e":Ljava/io/IOException;
    :cond_30
    :goto_30
    :try_start_30
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/android/server/pm/FlymeThirdAppManager;->mConfigFile:Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_37
    .catch Ljava/io/FileNotFoundException; {:try_start_30 .. :try_end_37} :catch_b2
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_37} :catch_9e

    .line 176
    .local v3, "fstr":Ljava/io/FileOutputStream;
    :try_start_37
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_97

    .line 175
    .local v5, "str":Ljava/io/BufferedOutputStream;
    nop

    .line 177
    :try_start_3d
    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 178
    .local v6, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v7, "utf-8"

    invoke-interface {v6, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 179
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v6, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 180
    invoke-interface {v6, v8, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 181
    const-string/jumbo v7, "version_code"

    iget v9, p0, Lcom/android/server/pm/FlymeThirdAppManager;->mVersionCode:I

    invoke-static {v6, v7, v9}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 182
    invoke-interface {v6, v8, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 183
    iget-object v1, p0, Lcom/android/server/pm/FlymeThirdAppManager;->mCopyedPkgList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_65
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 184
    .local v7, "pkg":Ljava/lang/String;
    invoke-interface {v6, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 185
    const-string/jumbo v9, "pkg_name"

    invoke-static {v6, v9, v7}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 186
    invoke-interface {v6, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 187
    nop

    .end local v7  # "pkg":Ljava/lang/String;
    goto :goto_65

    .line 188
    :cond_7f
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 189
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    .line 190
    invoke-static {v3}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z
    :try_end_88
    .catchall {:try_start_3d .. :try_end_88} :catchall_90

    .line 191
    nop

    .end local v6  # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :try_start_89
    invoke-static {v8, v5}, Lcom/android/server/pm/FlymeThirdAppManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_97

    .end local v5  # "str":Ljava/io/BufferedOutputStream;
    :try_start_8c
    invoke-static {v8, v3}, Lcom/android/server/pm/FlymeThirdAppManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_8f
    .catch Ljava/io/FileNotFoundException; {:try_start_8c .. :try_end_8f} :catch_b2
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_9e

    goto :goto_c5

    .line 175
    .restart local v5  # "str":Ljava/io/BufferedOutputStream;
    :catchall_90
    move-exception v0

    .end local v3  # "fstr":Ljava/io/FileOutputStream;
    .end local v5  # "str":Ljava/io/BufferedOutputStream;
    .end local p0  # "this":Lcom/android/server/pm/FlymeThirdAppManager;
    :try_start_91
    throw v0
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_92

    .line 191
    .restart local v3  # "fstr":Ljava/io/FileOutputStream;
    .restart local v5  # "str":Ljava/io/BufferedOutputStream;
    .restart local p0  # "this":Lcom/android/server/pm/FlymeThirdAppManager;
    :catchall_92
    move-exception v1

    :try_start_93
    invoke-static {v0, v5}, Lcom/android/server/pm/FlymeThirdAppManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v3  # "fstr":Ljava/io/FileOutputStream;
    .end local p0  # "this":Lcom/android/server/pm/FlymeThirdAppManager;
    throw v1
    :try_end_97
    .catchall {:try_start_93 .. :try_end_97} :catchall_97

    .line 175
    .end local v5  # "str":Ljava/io/BufferedOutputStream;
    .restart local v3  # "fstr":Ljava/io/FileOutputStream;
    .restart local p0  # "this":Lcom/android/server/pm/FlymeThirdAppManager;
    :catchall_97
    move-exception v0

    .end local v3  # "fstr":Ljava/io/FileOutputStream;
    .end local p0  # "this":Lcom/android/server/pm/FlymeThirdAppManager;
    :try_start_98
    throw v0
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_99

    .line 191
    .restart local v3  # "fstr":Ljava/io/FileOutputStream;
    .restart local p0  # "this":Lcom/android/server/pm/FlymeThirdAppManager;
    :catchall_99
    move-exception v1

    :try_start_9a
    invoke-static {v0, v3}, Lcom/android/server/pm/FlymeThirdAppManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local p0  # "this":Lcom/android/server/pm/FlymeThirdAppManager;
    throw v1
    :try_end_9e
    .catch Ljava/io/FileNotFoundException; {:try_start_9a .. :try_end_9e} :catch_b2
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9e} :catch_9e

    .line 193
    .end local v3  # "fstr":Ljava/io/FileOutputStream;
    .restart local p0  # "this":Lcom/android/server/pm/FlymeThirdAppManager;
    :catch_9e
    move-exception v0

    .line 194
    .restart local v0  # "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c6

    .line 191
    .end local v0  # "e":Ljava/io/IOException;
    :catch_b2
    move-exception v0

    .line 192
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .end local v0  # "e":Ljava/io/FileNotFoundException;
    :goto_c5
    nop

    .line 196
    :goto_c6
    return-void
.end method
