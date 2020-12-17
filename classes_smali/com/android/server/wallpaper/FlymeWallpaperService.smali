.class public Lcom/android/server/wallpaper/FlymeWallpaperService;
.super Lmeizu/wallpaper/IFlymeWallpaper$Stub;
.source "FlymeWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field private static final FLAG_DEFAULT:I = 0x0

.field private static final FLAG_LAUNCHER:I = 0x2

.field private static final FLAG_LOCK:I = 0x1

.field static final LOCK_WALLPAPER:Ljava/lang/String; = "wallpaper_lock_orig"

.field public static final NIGHT_MODE_LOCK_WALLPAPER:Ljava/lang/String; = "wallpaper_lock_night_orig"

.field public static final NIGHT_MODE_WALLPAPER:Ljava/lang/String; = "wallpaper_night_orig"

.field static final OLD_LOCK_WALLPAPER:Ljava/lang/String; = "lock_wallpaper"

.field public static final SMART_WALLPAPER_TARGET:Ljava/lang/String; = "smart_wallpaper_target"

.field public static TAG:Ljava/lang/String; = null

.field public static final WALLPAPER_IMAGE_KEY_LOCK:Ljava/lang/String; = "/data/data/com.android.settings/files/lock_wallpaper"

.field public static final WALLPAPER_INFO_KEY_LOCK:Ljava/lang/String; = "/data/system/lock_wallpaper_info.xml"

.field static final WALLPAPER_LOCK_INFO:Ljava/lang/String; = "lock_wallpaper_info.xml"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mRealWallpaperManager:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wallpaper/FlymeWallpaperService;->DEBUG:Z

    .line 51
    const-string v0, "FlymeWallpaperService"

    sput-object v0, Lcom/android/server/wallpaper/FlymeWallpaperService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .registers 3
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "wms"  # Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 55
    invoke-direct {p0}, Lmeizu/wallpaper/IFlymeWallpaper$Stub;-><init>()V

    .line 56
    iput-object p2, p0, Lcom/android/server/wallpaper/FlymeWallpaperService;->mRealWallpaperManager:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 57
    iput-object p1, p0, Lcom/android/server/wallpaper/FlymeWallpaperService;->mContext:Landroid/content/Context;

    .line 58
    return-void
.end method

.method private checkPermission(Ljava/lang/String;)V
    .registers 5
    .param p1, "permission"  # Ljava/lang/String;

    .line 377
    iget-object v0, p0, Lcom/android/server/wallpaper/FlymeWallpaperService;->mContext:Landroid/content/Context;

    .line 378
    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    .line 383
    return-void

    .line 379
    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access denied to process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", must have permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getWallpaperDir(I)Ljava/io/File;
    .registers 2
    .param p0, "userId"  # I

    .line 373
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private isNightMode()Z
    .registers 4

    .line 452
    iget-object v0, p0, Lcom/android/server/wallpaper/FlymeWallpaperService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "flymelab_flyme_night_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_11

    move v1, v2

    :cond_11
    return v1
.end method

.method private makeJournaledFileForLockWallpaper(I)Lcom/android/internal/util/JournaledFile;
    .registers 8
    .param p1, "userId"  # I

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/server/wallpaper/FlymeWallpaperService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "lock_wallpaper_info.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "base":Ljava/lang/String;
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1
.end method

.method private migrateFromOldLock()V
    .registers 7

    .line 357
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.android.settings/files/lock_wallpaper"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 359
    .local v0, "oldWallpaper":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/lock_wallpaper_info.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 360
    .local v1, "oldInfo":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_24

    .line 361
    new-instance v2, Ljava/io/File;

    invoke-static {v3}, Lcom/android/server/wallpaper/FlymeWallpaperService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "wallpaper_lock_orig"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 363
    .local v2, "newWallpaper":Ljava/io/File;
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 365
    .end local v2  # "newWallpaper":Ljava/io/File;
    :cond_24
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 366
    new-instance v2, Ljava/io/File;

    invoke-static {v3}, Lcom/android/server/wallpaper/FlymeWallpaperService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "lock_wallpaper_info.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 368
    .local v2, "newInfo":Ljava/io/File;
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 370
    .end local v2  # "newInfo":Ljava/io/File;
    :cond_39
    return-void
.end method

.method private saveSettingsOfLockWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 9
    .param p1, "wallpaper"  # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 226
    const-string/jumbo v0, "lwp"

    iget v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/FlymeWallpaperService;->makeJournaledFileForLockWallpaper(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v1

    .line 227
    .local v1, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v2, 0x0

    .line 230
    .local v2, "stream":Ljava/io/FileOutputStream;
    :try_start_a
    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/String;

    invoke-static {v3, v5}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    new-array v4, v4, [Ljava/nio/file/OpenOption;

    invoke-static {v3, v4}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v3

    check-cast v3, Ljava/io/FileOutputStream;

    move-object v2, v3

    .line 231
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 232
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v4, "utf-8"

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 233
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 235
    invoke-interface {v3, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 236
    const-string/jumbo v4, "width"

    iget-object v6, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mFlymeData:Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;

    iget v6, v6, Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;->mWidthOfLockWallpaper:I

    .line 237
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 236
    invoke-interface {v3, v5, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 238
    const-string v4, "height"

    iget-object v6, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mFlymeData:Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;

    iget v6, v6, Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;->mHeightOfLockWallpaper:I

    .line 239
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 238
    invoke-interface {v3, v5, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 240
    const-string/jumbo v4, "name"

    iget-object v6, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mFlymeData:Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;

    iget-object v6, v6, Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;->mNameOfLockWallpaper:Ljava/lang/String;

    invoke-interface {v3, v5, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 242
    invoke-interface {v3, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 244
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 245
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 246
    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_6a} :catch_6b

    .line 256
    .end local v3  # "out":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_78

    .line 247
    :catch_6b
    move-exception v0

    .line 249
    .local v0, "e":Ljava/io/IOException;
    if-eqz v2, :cond_74

    .line 250
    :try_start_6e
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_72

    goto :goto_74

    .line 252
    :catch_72
    move-exception v3

    goto :goto_75

    .line 254
    :cond_74
    :goto_74
    nop

    .line 255
    :goto_75
    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->rollback()V

    .line 257
    .end local v0  # "e":Ljava/io/IOException;
    :goto_78
    return-void
.end method

.method private updateLockWallpaperIfUpgradeFromOldSystem()V
    .registers 5

    .line 349
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/wallpaper/FlymeWallpaperService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "lock_wallpaper"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 350
    .local v0, "oldSystemWallpaper":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 351
    new-instance v2, Ljava/io/File;

    invoke-static {v1}, Lcom/android/server/wallpaper/FlymeWallpaperService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v3, "wallpaper_lock_orig"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    .line 352
    .local v1, "newSystemWallpaper":Ljava/io/File;
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 354
    .end local v1  # "newSystemWallpaper":Ljava/io/File;
    :cond_23
    return-void
.end method


# virtual methods
.method public getLockWallpaper(Lmeizu/wallpaper/IFlymeWallpaperCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    .registers 12
    .param p1, "cb"  # Lmeizu/wallpaper/IFlymeWallpaperCallback;
    .param p2, "outParams"  # Landroid/os/Bundle;

    .line 85
    iget-object v0, p0, Lcom/android/server/wallpaper/FlymeWallpaperService;->mRealWallpaperManager:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->mzGetSyncObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 86
    :try_start_7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 87
    .local v1, "callingUid":I
    const/4 v2, 0x0

    .line 88
    .local v2, "wallpaperUserId":I
    const/16 v3, 0x3e8

    if-ne v1, v3, :cond_18

    .line 89
    iget-object v3, p0, Lcom/android/server/wallpaper/FlymeWallpaperService;->mRealWallpaperManager:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->mzGetCurrentUserId()I

    move-result v3

    move v2, v3

    goto :goto_1d

    .line 91
    :cond_18
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    move v2, v3

    .line 93
    :goto_1d
    iget-object v3, p0, Lcom/android/server/wallpaper/FlymeWallpaperService;->mRealWallpaperManager:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->mzGetWallpaperMap()Landroid/util/SparseArray;

    move-result-object v3

    .line 94
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_a2

    .line 96
    .local v3, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v4, 0x0

    if-eqz p2, :cond_3f

    .line 97
    :try_start_2c
    const-string/jumbo v5, "width"

    iget-object v6, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mFlymeData:Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;

    iget v6, v6, Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;->mWidthOfLockWallpaper:I

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 99
    const-string v5, "height"

    iget-object v6, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mFlymeData:Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;

    iget v6, v6, Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;->mHeightOfLockWallpaper:I

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    :cond_3f
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mFlymeData:Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;

    iget-object v5, v5, Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;->mFlymeWallpaperCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 105
    invoke-direct {p0}, Lcom/android/server/wallpaper/FlymeWallpaperService;->isNightMode()Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 106
    sget-object v5, Lcom/android/server/wallpaper/FlymeWallpaperService;->TAG:Ljava/lang/String;

    const-string v6, "getLockWallpaper nightMode"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance v5, Ljava/io/File;

    invoke-static {v2}, Lcom/android/server/wallpaper/FlymeWallpaperService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v6

    const-string/jumbo v7, "wallpaper_lock_night_orig"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_87

    .line 110
    new-instance v6, Ljava/io/File;

    invoke-static {v2}, Lcom/android/server/wallpaper/FlymeWallpaperService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v7

    const-string/jumbo v8, "wallpaper_lock_orig"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v5, v6

    .line 112
    sget-object v6, Lcom/android/server/wallpaper/FlymeWallpaperService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "nightMode lock wallpaper no exists"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_87

    .line 115
    .end local v5  # "f":Ljava/io/File;
    :cond_7b
    new-instance v5, Ljava/io/File;

    invoke-static {v2}, Lcom/android/server/wallpaper/FlymeWallpaperService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v6

    const-string/jumbo v7, "wallpaper_lock_orig"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 118
    .restart local v5  # "f":Ljava/io/File;
    :cond_87
    :goto_87
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6
    :try_end_8b
    .catch Ljava/io/FileNotFoundException; {:try_start_2c .. :try_end_8b} :catch_97
    .catchall {:try_start_2c .. :try_end_8b} :catchall_a2

    if-nez v6, :cond_8f

    .line 119
    :try_start_8d
    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_a2

    return-object v4

    .line 121
    :cond_8f
    const/high16 v6, 0x10000000

    :try_start_91
    invoke-static {v5, v6}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4
    :try_end_95
    .catch Ljava/io/FileNotFoundException; {:try_start_91 .. :try_end_95} :catch_97
    .catchall {:try_start_91 .. :try_end_95} :catchall_a2

    :try_start_95
    monitor-exit v0

    return-object v4

    .line 122
    .end local v5  # "f":Ljava/io/File;
    :catch_97
    move-exception v5

    .line 124
    .local v5, "e":Ljava/io/FileNotFoundException;
    sget-object v6, Lcom/android/server/wallpaper/FlymeWallpaperService;->TAG:Ljava/lang/String;

    const-string v7, "Error getting lock_wallpaper"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    nop

    .end local v5  # "e":Ljava/io/FileNotFoundException;
    monitor-exit v0

    return-object v4

    .line 127
    .end local v1  # "callingUid":I
    .end local v2  # "wallpaperUserId":I
    .end local v3  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_a2
    move-exception v1

    monitor-exit v0
    :try_end_a4
    .catchall {:try_start_95 .. :try_end_a4} :catchall_a2

    throw v1
.end method

.method public getNightModeLockWallPaperFD()Landroid/os/ParcelFileDescriptor;
    .registers 9

    .line 424
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 425
    .local v0, "ident":J
    const/4 v2, 0x0

    .line 427
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_7
    invoke-static {v3}, Lcom/android/server/wallpaper/FlymeWallpaperService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v3

    .line 428
    .local v3, "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1e

    .line 429
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 430
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1f9

    const/4 v7, -0x1

    invoke-static {v5, v6, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 433
    :cond_1e
    new-instance v5, Ljava/io/File;

    const-string/jumbo v6, "wallpaper_lock_night_orig"

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 434
    .local v5, "file":Ljava/io/File;
    const/high16 v6, 0x3c000000  # 0.0078125f

    invoke-static {v5, v6}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    move-object v2, v6

    .line 436
    invoke-static {v5}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v6
    :try_end_31
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_31} :catch_3f
    .catchall {:try_start_7 .. :try_end_31} :catchall_3d

    if-nez v6, :cond_38

    .line 437
    nop

    .line 443
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 437
    return-object v4

    .line 439
    :cond_38
    nop

    .line 443
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 439
    return-object v2

    .line 443
    .end local v3  # "dir":Ljava/io/File;
    .end local v5  # "file":Ljava/io/File;
    :catchall_3d
    move-exception v3

    goto :goto_4d

    .line 440
    :catch_3f
    move-exception v3

    .line 441
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_40
    sget-object v5, Lcom/android/server/wallpaper/FlymeWallpaperService;->TAG:Ljava/lang/String;

    const-string v6, "Error getNightModeLockWallPaperFD"

    invoke-static {v5, v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_3d

    .line 443
    nop

    .end local v3  # "e":Ljava/io/FileNotFoundException;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 444
    nop

    .line 445
    return-object v4

    .line 443
    :goto_4d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getNightModeWallpaperStatus()I
    .registers 7

    .line 459
    const/4 v0, 0x0

    .line 460
    .local v0, "flag":I
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/server/wallpaper/FlymeWallpaperService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "wallpaper_lock_night_orig"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 461
    .local v1, "lockNightWallpaper":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_16

    .line 462
    or-int/lit8 v0, v0, 0x1

    .line 464
    :cond_16
    new-instance v3, Ljava/io/File;

    invoke-static {v2}, Lcom/android/server/wallpaper/FlymeWallpaperService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v4, "wallpaper_night_orig"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v3

    .line 465
    .local v2, "launcherNightWallpaper":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2b

    .line 466
    or-int/lit8 v0, v0, 0x2

    .line 468
    :cond_2b
    sget-object v3, Lcom/android/server/wallpaper/FlymeWallpaperService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkNightModeWallpaper flag:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    return v0
.end method

.method public loadSettingsOfLockWallpaperLocked(I)V
    .registers 16
    .param p1, "userId"  # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 261
    const-string v0, " "

    const-string v1, "failed parsing "

    sget-boolean v2, Lcom/android/server/wallpaper/FlymeWallpaperService;->DEBUG:Z

    if-eqz v2, :cond_10

    .line 262
    sget-object v2, Lcom/android/server/wallpaper/FlymeWallpaperService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "loadSettingsOflockWallpaperLocked"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_10
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/FlymeWallpaperService;->makeJournaledFileForLockWallpaper(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v2

    .line 264
    .local v2, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v3, 0x0

    .line 265
    .local v3, "stream":Ljava/io/FileInputStream;
    invoke-virtual {v2}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v4

    .line 266
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_22

    .line 269
    invoke-direct {p0}, Lcom/android/server/wallpaper/FlymeWallpaperService;->migrateFromOldLock()V

    .line 271
    :cond_22
    invoke-direct {p0}, Lcom/android/server/wallpaper/FlymeWallpaperService;->updateLockWallpaperIfUpgradeFromOldSystem()V

    .line 272
    iget-object v5, p0, Lcom/android/server/wallpaper/FlymeWallpaperService;->mRealWallpaperManager:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 273
    invoke-virtual {v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->mzGetWallpaperMap()Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 274
    .local v5, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v5, :cond_4d

    .line 275
    new-instance v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const-string/jumbo v7, "wallpaper_orig"

    const-string/jumbo v8, "wallpaper"

    invoke-direct {v6, p1, v7, v8}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    .line 276
    iget-object v6, p0, Lcom/android/server/wallpaper/FlymeWallpaperService;->mRealWallpaperManager:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->mzGetWallpaperMap()Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 278
    iget-object v6, p0, Lcom/android/server/wallpaper/FlymeWallpaperService;->mRealWallpaperManager:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->initializeFallbackWallpaper()V

    .line 281
    :cond_4d
    const/4 v6, 0x0

    .line 283
    .local v6, "success":Z
    :try_start_4e
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/String;

    invoke-static {v7, v9}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v7

    new-array v8, v8, [Ljava/nio/file/OpenOption;

    invoke-static {v7, v8}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v7

    check-cast v7, Ljava/io/FileInputStream;

    move-object v3, v7

    .line 284
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 285
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v8, 0x0

    invoke-interface {v7, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 289
    :cond_6a
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .line 290
    .local v9, "type":I
    const/4 v10, 0x2

    if-ne v9, v10, :cond_fb

    .line 291
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 292
    .local v10, "tag":Ljava/lang/String;
    const-string/jumbo v11, "lwp"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_fb

    .line 293
    iget-object v11, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mFlymeData:Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;

    const-string/jumbo v12, "width"

    .line 294
    invoke-interface {v7, v8, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v11, Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;->mWidthOfLockWallpaper:I

    .line 296
    iget-object v11, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mFlymeData:Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;

    const-string v12, "height"

    .line 297
    invoke-interface {v7, v8, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v11, Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;->mHeightOfLockWallpaper:I

    .line 299
    iget-object v11, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mFlymeData:Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;

    const-string/jumbo v12, "name"

    .line 300
    invoke-interface {v7, v8, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;->mNameOfLockWallpaper:Ljava/lang/String;

    .line 302
    sget-boolean v11, Lcom/android/server/wallpaper/FlymeWallpaperService;->DEBUG:Z

    if-eqz v11, :cond_fb

    .line 303
    sget-object v11, Lcom/android/server/wallpaper/FlymeWallpaperService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mWidthOfLockWallpaper:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mFlymeData:Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;

    iget v13, v13, Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;->mWidthOfLockWallpaper:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    sget-object v11, Lcom/android/server/wallpaper/FlymeWallpaperService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mHeightOfLockWallpaper:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mFlymeData:Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;

    iget v13, v13, Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;->mHeightOfLockWallpaper:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    sget-object v11, Lcom/android/server/wallpaper/FlymeWallpaperService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mNameOfLockWallpaper:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mFlymeData:Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;

    iget-object v13, v13, Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;->mNameOfLockWallpaper:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fb
    .catch Ljava/lang/NullPointerException; {:try_start_4e .. :try_end_fb} :catch_171
    .catch Ljava/lang/NumberFormatException; {:try_start_4e .. :try_end_fb} :catch_155
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4e .. :try_end_fb} :catch_139
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_fb} :catch_11d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4e .. :try_end_fb} :catch_101

    .line 314
    .end local v10  # "tag":Ljava/lang/String;
    :cond_fb
    const/4 v10, 0x1

    if-ne v9, v10, :cond_6a

    .line 315
    const/4 v6, 0x1

    .end local v7  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9  # "type":I
    goto/16 :goto_18c

    .line 324
    :catch_101
    move-exception v7

    .line 325
    .local v7, "e":Ljava/lang/IndexOutOfBoundsException;
    sget-object v8, Lcom/android/server/wallpaper/FlymeWallpaperService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18d

    .line 322
    .end local v7  # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_11d
    move-exception v7

    .line 323
    .local v7, "e":Ljava/io/IOException;
    sget-object v8, Lcom/android/server/wallpaper/FlymeWallpaperService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v7  # "e":Ljava/io/IOException;
    goto :goto_18c

    .line 320
    :catch_139
    move-exception v7

    .line 321
    .local v7, "e":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v8, Lcom/android/server/wallpaper/FlymeWallpaperService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v7  # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_18c

    .line 318
    :catch_155
    move-exception v7

    .line 319
    .local v7, "e":Ljava/lang/NumberFormatException;
    sget-object v8, Lcom/android/server/wallpaper/FlymeWallpaperService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v7  # "e":Ljava/lang/NumberFormatException;
    goto :goto_18c

    .line 316
    :catch_171
    move-exception v7

    .line 317
    .local v7, "e":Ljava/lang/NullPointerException;
    sget-object v8, Lcom/android/server/wallpaper/FlymeWallpaperService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    .end local v7  # "e":Ljava/lang/NullPointerException;
    :goto_18c
    nop

    .line 328
    :goto_18d
    if-eqz v3, :cond_195

    .line 329
    :try_start_18f
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_192
    .catch Ljava/io/IOException; {:try_start_18f .. :try_end_192} :catch_193

    goto :goto_195

    .line 331
    :catch_193
    move-exception v0

    goto :goto_196

    .line 333
    :cond_195
    :goto_195
    nop

    .line 334
    :goto_196
    if-nez v6, :cond_1a7

    .line 335
    iget-object v0, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mFlymeData:Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;->mWidthOfLockWallpaper:I

    .line 336
    iget-object v0, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mFlymeData:Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;

    iput v1, v0, Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;->mHeightOfLockWallpaper:I

    .line 337
    iget-object v0, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mFlymeData:Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;

    const-string v1, ""

    iput-object v1, v0, Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;->mNameOfLockWallpaper:Ljava/lang/String;

    .line 340
    :cond_1a7
    iget-object v0, p0, Lcom/android/server/wallpaper/FlymeWallpaperService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 341
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 342
    .local v1, "d":Landroid/view/Display;
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 343
    .local v7, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v1, v7}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 344
    iget-object v8, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mFlymeData:Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;

    iget v9, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v10, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, v8, Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;->mWidthOfLockWallpaper:I

    .line 345
    iget-object v8, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mFlymeData:Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;

    iget v9, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v10, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v8, Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;->mHeightOfLockWallpaper:I

    .line 346
    return-void
.end method

.method public notifyLockWallpaperChangeLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 7
    .param p1, "wallpaper"  # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 191
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mFlymeData:Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;

    iget-object v0, v0, Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;->mFlymeWallpaperCallback:Landroid/os/RemoteCallbackList;

    .line 192
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 193
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_1d

    .line 195
    :try_start_b
    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mFlymeData:Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;

    iget-object v2, v2, Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;->mFlymeWallpaperCallback:Landroid/os/RemoteCallbackList;

    .line 196
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lmeizu/wallpaper/IFlymeWallpaperCallback;

    invoke-interface {v2}, Lmeizu/wallpaper/IFlymeWallpaperCallback;->onLockWallpaperChanged()V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_19

    .line 200
    goto :goto_1a

    .line 197
    :catch_19
    move-exception v2

    .line 193
    :goto_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 202
    .end local v1  # "i":I
    :cond_1d
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mFlymeData:Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;->mFlymeWallpaperCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 203
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.LOCK_WALLPAPER_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.android.systemui"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    iget-object v2, p0, Lcom/android/server/wallpaper/FlymeWallpaperService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 210
    new-instance v2, Landroid/content/Intent;

    const-string v3, "flyme.intent.action.LOCK_WALLPAPER_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    .local v2, "ccIntent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 212
    const-string v3, "com.meizu.net.nativelockscreen"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    iget-object v3, p0, Lcom/android/server/wallpaper/FlymeWallpaperService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 215
    return-void
.end method

.method public onRemoveUser(I)V
    .registers 7
    .param p1, "userId"  # I

    .line 386
    const/4 v0, 0x1

    if-ge p1, v0, :cond_4

    .line 387
    return-void

    .line 388
    :cond_4
    iget-object v0, p0, Lcom/android/server/wallpaper/FlymeWallpaperService;->mRealWallpaperManager:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->mzGetSyncObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 389
    :try_start_b
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/wallpaper/FlymeWallpaperService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "wallpaper_lock_orig"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 391
    .local v1, "wallpaperFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 392
    new-instance v2, Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/wallpaper/FlymeWallpaperService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "lock_wallpaper_info.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 394
    .local v2, "wallpaperInfoFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 395
    nop

    .end local v1  # "wallpaperFile":Ljava/io/File;
    .end local v2  # "wallpaperInfoFile":Ljava/io/File;
    monitor-exit v0

    .line 396
    return-void

    .line 395
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_b .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public setLockWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 8
    .param p1, "name"  # Ljava/lang/String;

    .line 131
    sget-boolean v0, Lcom/android/server/wallpaper/FlymeWallpaperService;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 132
    sget-object v0, Lcom/android/server/wallpaper/FlymeWallpaperService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setLockWallpaper"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_c
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 134
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/wallpaper/FlymeWallpaperService;->mRealWallpaperManager:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->mzGetWallpaperMap()Landroid/util/SparseArray;

    move-result-object v1

    .line 135
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 136
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v1, :cond_45

    .line 140
    const-string v2, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/FlymeWallpaperService;->checkPermission(Ljava/lang/String;)V

    .line 141
    iget-object v2, p0, Lcom/android/server/wallpaper/FlymeWallpaperService;->mRealWallpaperManager:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->mzGetSyncObject()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 142
    :try_start_2a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_42

    .line 145
    .local v3, "ident":J
    :try_start_2e
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wallpaper/FlymeWallpaperService;->updateLockWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 147
    .local v5, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v5, :cond_37

    .line 149
    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/FlymeWallpaperService;->saveSettingsOfLockWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_3d

    .line 151
    :cond_37
    nop

    .line 153
    :try_start_38
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v2

    .line 151
    return-object v5

    .line 153
    .end local v5  # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_3d
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0  # "userId":I
    .end local v1  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local p0  # "this":Lcom/android/server/wallpaper/FlymeWallpaperService;
    .end local p1  # "name":Ljava/lang/String;
    throw v5

    .line 155
    .end local v3  # "ident":J
    .restart local v0  # "userId":I
    .restart local v1  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local p0  # "this":Lcom/android/server/wallpaper/FlymeWallpaperService;
    .restart local p1  # "name":Ljava/lang/String;
    :catchall_42
    move-exception v3

    monitor-exit v2
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_42

    throw v3

    .line 137
    :cond_45
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wallpaper not yet initialized for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setSmartWallpaperTarget(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 7
    .param p1, "name"  # Ljava/lang/String;

    .line 399
    const/4 v0, 0x0

    .line 401
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    const/4 v1, 0x0

    .line 402
    :try_start_2
    invoke-static {v1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    .line 403
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_19

    .line 404
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 405
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1f9

    const/4 v4, -0x1

    invoke-static {v2, v3, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 408
    :cond_19
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "smart_wallpaper_target"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 409
    .local v2, "file":Ljava/io/File;
    const/high16 v3, 0x38000000

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    move-object v0, v3

    .line 411
    invoke-static {v2}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v3
    :try_end_2c
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2c} :catch_31

    if-nez v3, :cond_30

    .line 412
    const/4 v3, 0x0

    return-object v3

    .line 416
    .end local v1  # "dir":Ljava/io/File;
    .end local v2  # "file":Ljava/io/File;
    :cond_30
    goto :goto_39

    .line 414
    :catch_31
    move-exception v1

    .line 415
    .local v1, "e":Ljava/io/FileNotFoundException;
    sget-object v2, Lcom/android/server/wallpaper/FlymeWallpaperService;->TAG:Ljava/lang/String;

    const-string v3, "Error setting wallpaper"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 417
    .end local v1  # "e":Ljava/io/FileNotFoundException;
    :goto_39
    return-object v0
.end method

.method updateLockWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;
    .registers 8
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "wallpaper"  # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 166
    if-nez p1, :cond_4

    const-string p1, ""

    .line 168
    :cond_4
    const/4 v0, 0x0

    :try_start_5
    iget v1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v1}, Lcom/android/server/wallpaper/FlymeWallpaperService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    .line 169
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 170
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 171
    nop

    .line 172
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1f9

    .line 171
    const/4 v4, -0x1

    invoke-static {v2, v3, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 176
    :cond_1f
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "wallpaper_lock_orig"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 177
    .local v2, "file":Ljava/io/File;
    const/high16 v3, 0x3c000000  # 0.0078125f

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 179
    .local v3, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-static {v2}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_34

    .line 180
    return-object v0

    .line 182
    :cond_34
    iput-object p1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;
    :try_end_36
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_36} :catch_37

    .line 183
    return-object v3

    .line 184
    .end local v1  # "dir":Ljava/io/File;
    .end local v2  # "file":Ljava/io/File;
    .end local v3  # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_37
    move-exception v1

    .line 185
    .local v1, "e":Ljava/io/FileNotFoundException;
    sget-object v2, Lcom/android/server/wallpaper/FlymeWallpaperService;->TAG:Ljava/lang/String;

    const-string v3, "Error setting wallpaper"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    .end local v1  # "e":Ljava/io/FileNotFoundException;
    return-object v0
.end method
