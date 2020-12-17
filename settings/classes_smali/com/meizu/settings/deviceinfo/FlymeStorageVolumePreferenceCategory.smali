.class public Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;
.super Ljava/lang/Object;
.source "FlymeStorageVolumePreferenceCategory.java"

# interfaces
.implements Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$FileTypeMeasureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$CategoryInfo;
    }
.end annotation


# static fields
.field static final sCategoryInfos:[Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$CategoryInfo;


# instance fields
.field private allBlocksSize:J

.field private appSize:J

.field private audioSize:J

.field private availableBlocks:J

.field private blockSize:J

.field private dataBlocks:J

.field private mColors:[I

.field private mContext:Landroid/content/Context;

.field private mFlymeFileTypeMeasurement:Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;

.field private mFlymeStorageDataInfoPreferences:Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;

.field private mGetTotalSizeFinished:Z

.field private final mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

.field private mResources:Landroid/content/res/Resources;

.field private mRoot:Landroid/preference/PreferenceScreen;

.field private mUpdateHandler:Landroid/os/Handler;

.field private otherSize:J

.field private pictureSize:J

.field private systemBlocks:J

.field private usedBlocks:J

.field private videoSize:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$CategoryInfo;

    .line 98
    new-instance v1, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$CategoryInfo;

    const v2, 0x7f120c8c

    const v3, 0x7f06015d

    invoke-direct {v1, v2, v3}, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$CategoryInfo;-><init>(II)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$CategoryInfo;

    const v2, 0x7f120cb1

    const v3, 0x7f060164

    invoke-direct {v1, v2, v3}, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$CategoryInfo;-><init>(II)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$CategoryInfo;

    const v2, 0x7f120ca6

    const v3, 0x7f060161

    invoke-direct {v1, v2, v3}, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$CategoryInfo;-><init>(II)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$CategoryInfo;

    const v2, 0x7f120c8e

    const v3, 0x7f06015e

    invoke-direct {v1, v2, v3}, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$CategoryInfo;-><init>(II)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$CategoryInfo;

    const v2, 0x7f120caa

    const v3, 0x7f060163

    invoke-direct {v1, v2, v3}, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$CategoryInfo;-><init>(II)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$CategoryInfo;

    const v2, 0x7f120ca4

    const v3, 0x7f060160

    invoke-direct {v1, v2, v3}, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$CategoryInfo;-><init>(II)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->sCategoryInfos:[Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$CategoryInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/preference/PreferenceScreen;Landroid/os/storage/VolumeInfo;Landroid/os/storage/StorageManager;)V
    .registers 5

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance p3, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$1;

    invoke-direct {p3, p0}, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$1;-><init>(Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;)V

    iput-object p3, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    .line 149
    new-instance p3, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$2;

    invoke-direct {p3, p0}, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$2;-><init>(Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;)V

    iput-object p3, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iput-object p3, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    .line 130
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->mContext:Landroid/content/Context;

    .line 131
    iput-object p2, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->mRoot:Landroid/preference/PreferenceScreen;

    .line 133
    new-instance p1, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;

    iget-object p2, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->mFlymeFileTypeMeasurement:Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$SizesHolder;)V
    .registers 2

    .line 45
    invoke-direct {p0, p1}, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->updateStatusExact(Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$SizesHolder;)V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;)V
    .registers 1

    .line 45
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->measure()V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;)Z
    .registers 1

    .line 45
    iget-boolean p0, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->mGetTotalSizeFinished:Z

    return p0
.end method

.method static synthetic access$202(Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;Z)Z
    .registers 2

    .line 45
    iput-boolean p1, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->mGetTotalSizeFinished:Z

    return p1
.end method

.method static synthetic access$300(Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;)[J
    .registers 1

    .line 45
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->resetTheTotalSizeAndAvailSize()[J

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;)Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->mFlymeStorageDataInfoPreferences:Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;

    return-object p0
.end method

.method static synthetic access$500(Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;)Landroid/os/Handler;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private initTotalSizeAndAvailSizeAsync()V
    .registers 3

    .line 214
    new-instance v0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$3;

    invoke-direct {v0, p0}, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$3;-><init>(Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 227
    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private measure()V
    .registers 2

    .line 203
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->mFlymeFileTypeMeasurement:Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;

    invoke-virtual {v0, p0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;->startMeasure(Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$FileTypeMeasureListener;)V

    return-void
.end method

.method private registerMediaScanner()V
    .registers 3

    .line 242
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    .line 243
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    .line 244
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private resetTheTotalSizeAndAvailSize()[J
    .registers 6

    .line 263
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 264
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->blockSize:J

    .line 266
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->availableBlocks:J

    .line 267
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/deviceinfo/StorageUtils;->getAllBlockSizeLong(Landroid/content/Context;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->allBlocksSize:J

    .line 268
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->dataBlocks:J

    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 270
    iget-wide v1, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->allBlocksSize:J

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    iget-wide v1, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->availableBlocks:J

    iget-wide v3, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->blockSize:J

    mul-long/2addr v1, v3

    const/4 p0, 0x1

    aput-wide v1, v0, p0

    return-object v0
.end method

.method private unregisterMediaScanner()V
    .registers 2

    .line 249
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private updatePreference(JJI)V
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_15

    .line 164
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->mFlymeStorageDataInfoPreferences:Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;

    if-eqz v0, :cond_15

    const/4 v1, 0x1

    long-to-float p1, p1

    long-to-float p2, p3

    div-float/2addr p1, p2

    .line 165
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->mColors:[I

    aget p0, p0, p5

    invoke-virtual {v0, v1, p1, p0}, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;->addEntry(IFI)V

    :cond_15
    return-void
.end method

.method private updateStatusExact(Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$SizesHolder;)V
    .registers 10

    .line 171
    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->mFlymeStorageDataInfoPreferences:Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;

    invoke-virtual {v1}, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;->clear()V

    .line 173
    iget-wide v1, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->allBlocksSize:J

    iget-wide v3, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->blockSize:J

    div-long/2addr v1, v3

    iget-wide v6, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->dataBlocks:J

    sub-long/2addr v1, v6

    iput-wide v1, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->systemBlocks:J

    .line 174
    iget-wide v1, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->availableBlocks:J

    sub-long/2addr v6, v1

    iput-wide v6, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->usedBlocks:J

    .line 176
    iget-wide v1, p1, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$SizesHolder;->imageSizeInByte:J

    iput-wide v1, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->pictureSize:J

    .line 177
    iget-wide v1, p1, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$SizesHolder;->audioSizeInByte:J

    iput-wide v1, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->audioSize:J

    .line 178
    iget-wide v1, p1, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$SizesHolder;->videoSizeInByte:J

    iput-wide v1, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->videoSize:J

    .line 179
    iget-wide v0, p1, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$SizesHolder;->dataAppSizeInByte:J

    iput-wide v0, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->appSize:J

    .line 180
    iget-wide v0, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->usedBlocks:J

    mul-long/2addr v0, v3

    iget-wide v2, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->pictureSize:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->videoSize:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->audioSize:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->appSize:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->otherSize:J

    .line 182
    iget-wide v0, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->otherSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "MzStorage"

    if-gez v0, :cond_57

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculating must be error, get:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->otherSize:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iput-wide v2, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->otherSize:J

    .line 186
    :cond_57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dataBlocks * blockSize = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->dataBlocks:J

    iget-wide v4, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->blockSize:J

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "availableBlocks * blockSize = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->availableBlocks:J

    iget-wide v4, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->blockSize:J

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "usedBlocks * blockSize = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->usedBlocks:J

    iget-wide v4, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->blockSize:J

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pictureSize = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->pictureSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " audioSize = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->audioSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " videoSize = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->videoSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " appSize = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->appSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " otherSize = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->otherSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->mFlymeStorageDataInfoPreferences:Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;

    const/4 v1, 0x6

    new-array v1, v1, [J

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->appSize:J

    aput-wide v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->videoSize:J

    aput-wide v3, v1, v2

    const/4 v2, 0x2

    iget-wide v3, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->pictureSize:J

    aput-wide v3, v1, v2

    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->audioSize:J

    aput-wide v3, v1, v2

    const/4 v2, 0x4

    iget-wide v3, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->systemBlocks:J

    iget-wide v6, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->blockSize:J

    mul-long/2addr v3, v6

    aput-wide v3, v1, v2

    const/4 v2, 0x5

    iget-wide v3, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->otherSize:J

    aput-wide v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;->setItemSize([J)V

    .line 193
    iget-wide v1, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->appSize:J

    iget-wide v3, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->allBlocksSize:J

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->updatePreference(JJI)V

    .line 194
    iget-wide v1, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->videoSize:J

    iget-wide v3, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->allBlocksSize:J

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->updatePreference(JJI)V

    .line 195
    iget-wide v1, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->pictureSize:J

    iget-wide v3, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->allBlocksSize:J

    const/4 v5, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->updatePreference(JJI)V

    .line 196
    iget-wide v1, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->audioSize:J

    iget-wide v3, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->allBlocksSize:J

    const/4 v5, 0x3

    invoke-direct/range {v0 .. v5}, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->updatePreference(JJI)V

    .line 197
    iget-wide v1, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->systemBlocks:J

    iget-wide v3, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->allBlocksSize:J

    iget-wide v6, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->blockSize:J

    div-long/2addr v3, v6

    const/4 v5, 0x4

    invoke-direct/range {v0 .. v5}, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->updatePreference(JJI)V

    .line 198
    iget-wide v1, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->otherSize:J

    iget-wide v3, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->allBlocksSize:J

    const/4 v5, 0x5

    invoke-direct/range {v0 .. v5}, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->updatePreference(JJI)V

    .line 199
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->mFlymeStorageDataInfoPreferences:Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;

    invoke-virtual {v0}, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;->commit()V

    return-void
.end method


# virtual methods
.method public init()V
    .registers 8

    .line 137
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->mRoot:Landroid/preference/PreferenceScreen;

    const-string v1, "data_info"

    .line 138
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->mFlymeStorageDataInfoPreferences:Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;

    .line 139
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->mFlymeStorageDataInfoPreferences:Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;

    sget-object v1, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->sCategoryInfos:[Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$CategoryInfo;

    invoke-virtual {v0, v1}, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;->setCategoryInfo([Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$CategoryInfo;)V

    .line 140
    sget-object v0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->sCategoryInfos:[Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$CategoryInfo;

    array-length v0, v0

    .line 141
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->mColors:[I

    const/4 v1, 0x0

    move v2, v1

    :goto_1c
    if-ge v2, v0, :cond_32

    .line 144
    iget-object v3, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->mColors:[I

    iget-object v4, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    sget-object v5, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->sCategoryInfos:[Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$CategoryInfo;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$CategoryInfo;->mColor:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 146
    :cond_32
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->mFlymeStorageDataInfoPreferences:Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->setSelectable(Z)V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    const-string v0, "MzStorage"

    const-string/jumbo v1, "onDestroy"

    .line 237
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->mFlymeFileTypeMeasurement:Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;

    invoke-virtual {p0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;->destroy()V

    return-void
.end method

.method public onFileTypeMeasureFinshed(Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$SizesHolder;)V
    .registers 3

    .line 254
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPause()V
    .registers 3

    const/4 v0, 0x0

    .line 231
    iput-boolean v0, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->mGetTotalSizeFinished:Z

    .line 232
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 233
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->unregisterMediaScanner()V

    return-void
.end method

.method public onResume()V
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->mFlymeStorageDataInfoPreferences:Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;

    invoke-virtual {v0}, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;->clear()V

    .line 208
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->initTotalSizeAndAvailSizeAsync()V

    .line 210
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->registerMediaScanner()V

    return-void
.end method
