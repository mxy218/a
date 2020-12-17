.class Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;
.super Landroid/os/Handler;
.source "FlymeFileTypeMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MeasureHandler"
.end annotation


# instance fields
.field private mMeasureAppSizeThreadCount:I

.field private mMeasureMethods:I

.field private mSizesHolder:Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$SizesHolder;

.field final synthetic this$0:Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;Landroid/os/Looper;)V
    .registers 3

    .line 85
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;->this$0:Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;

    .line 86
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 80
    new-instance p1, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$SizesHolder;

    invoke-direct {p1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$SizesHolder;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;->mSizesHolder:Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$SizesHolder;

    const/4 p1, 0x2

    .line 83
    iput p1, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;->mMeasureMethods:I

    return-void
.end method

.method static synthetic access$600(Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;Ljava/util/List;)V
    .registers 2

    .line 76
    invoke-direct {p0, p1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;->measureAppsSize(Ljava/util/List;)V

    return-void
.end method

.method private debugOn()Z
    .registers 2

    const-string p0, "debug.filetype.measure"

    const/4 v0, 0x0

    .line 169
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private measure()V
    .registers 4

    .line 102
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;->mSizesHolder:Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$SizesHolder;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$SizesHolder;->videoSizeInByte:J

    .line 103
    iput-wide v1, v0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$SizesHolder;->imageSizeInByte:J

    .line 104
    iput-wide v1, v0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$SizesHolder;->audioSizeInByte:J

    .line 105
    iput-wide v1, v0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$SizesHolder;->dataAppSizeInByte:J

    .line 107
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;->measureAllApps()V

    .line 108
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;->meausrMediaFiles()V

    return-void
.end method

.method private measureAllApps()V
    .registers 10

    .line 173
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;->this$0:Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;

    invoke-static {v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;->access$300(Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;)Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;->mSizesHolder:Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$SizesHolder;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;->this$0:Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;

    invoke-static {v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;->access$400(Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x2200

    .line 177
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 181
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_27

    .line 183
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_27
    const/16 v0, 0xa

    .line 187
    iput v0, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;->mMeasureAppSizeThreadCount:I

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apps size: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "FlymeFileTypeMeasuetment"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget v0, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;->mMeasureAppSizeThreadCount:I

    div-int v4, v2, v0

    .line 193
    rem-int v5, v2, v0

    if-eqz v5, :cond_4d

    add-int/lit8 v0, v0, 0x1

    .line 194
    iput v0, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;->mMeasureAppSizeThreadCount:I

    :cond_4d
    const/4 v0, 0x0

    move v5, v0

    move v0, v4

    :goto_50
    if-gt v0, v2, :cond_8d

    .line 201
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "j: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", k: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-interface {v1, v5, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    .line 203
    new-instance v6, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureRunnable;

    iget-object v7, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;->this$0:Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;

    invoke-direct {v6, v7, p0, v5}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureRunnable;-><init>(Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;Ljava/util/List;)V

    .line 204
    new-instance v5, Ljava/lang/Thread;

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    if-ne v0, v2, :cond_84

    goto :goto_8d

    :cond_84
    add-int v5, v0, v4

    if-le v5, v2, :cond_89

    move v5, v2

    :cond_89
    move v8, v5

    move v5, v0

    move v0, v8

    goto :goto_50

    :cond_8d
    :goto_8d
    return-void
.end method

.method private measureAllFiles(Ljava/lang/String;)V
    .registers 13

    .line 129
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    const-string v0, "FlymeFileTypeMeasuetment"

    if-nez p1, :cond_13

    const-string p0, "list null"

    .line 132
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 135
    :cond_13
    array-length v1, p1

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v1, :cond_e4

    aget-object v3, p1, v2

    .line 136
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 137
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;->measureAllFiles(Ljava/lang/String;)V

    goto/16 :goto_e0

    :cond_28
    const/4 v4, -0x1

    .line 140
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->getFileSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 141
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3b

    .line 142
    invoke-static {v5}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->getFileTypeBySuffix(Ljava/lang/String;)I

    move-result v4

    :cond_3b
    const/4 v5, 0x1

    const-string v6, " size = "

    if-ne v4, v5, :cond_74

    .line 145
    iget-object v4, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;->mSizesHolder:Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$SizesHolder;

    iget-wide v7, v4, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$SizesHolder;->videoSizeInByte:J

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v9

    add-long/2addr v7, v9

    iput-wide v7, v4, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$SizesHolder;->videoSizeInByte:J

    .line 146
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;->debugOn()Z

    move-result v4

    if-eqz v4, :cond_e0

    .line 147
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "find video path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 147
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e0

    :cond_74
    const/4 v5, 0x2

    if-ne v4, v5, :cond_ab

    .line 151
    iget-object v4, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;->mSizesHolder:Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$SizesHolder;

    iget-wide v7, v4, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$SizesHolder;->imageSizeInByte:J

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v9

    add-long/2addr v7, v9

    iput-wide v7, v4, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$SizesHolder;->imageSizeInByte:J

    .line 152
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;->debugOn()Z

    move-result v4

    if-eqz v4, :cond_e0

    .line 153
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "find image path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 153
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e0

    :cond_ab
    if-nez v4, :cond_e0

    .line 157
    iget-object v4, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;->mSizesHolder:Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$SizesHolder;

    iget-wide v7, v4, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$SizesHolder;->audioSizeInByte:J

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v9

    add-long/2addr v7, v9

    iput-wide v7, v4, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$SizesHolder;->audioSizeInByte:J

    .line 158
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;->debugOn()Z

    move-result v4

    if-eqz v4, :cond_e0

    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "find audio path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 159
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e0
    :goto_e0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_15

    :cond_e4
    return-void
.end method

.method private measureAppsSize(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .line 221
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_82

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 223
    :try_start_12
    iget-object v3, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;->this$0:Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;

    invoke-static {v3}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;->access$500(Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;)Landroid/app/usage/StorageStatsManager;

    move-result-object v3

    sget-object v4, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 225
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    .line 223
    invoke-virtual {v3, v4, v5, v6}, Landroid/app/usage/StorageStatsManager;->queryStatsForPackage(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object v3

    .line 226
    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_38

    const-string v5, "/data"

    .line 227
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_38

    const/4 v4, 0x1

    goto :goto_39

    :cond_38
    const/4 v4, 0x0

    .line 228
    :goto_39
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;->debugOn()Z

    move-result v5

    if-eqz v5, :cond_6b

    const-string v5, "FlymeFileTypeMeasuetment"

    .line 229
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "measureAllApps app = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " codeDir = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " codeInDataPartion = "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 229
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_6b
    invoke-virtual {v3}, Landroid/app/usage/StorageStats;->getAppBytes()J

    move-result-wide v5

    .line 235
    invoke-virtual {v3}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide v2
    :try_end_73
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_73} :catch_7d
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_73} :catch_78

    if-eqz v4, :cond_76

    add-long/2addr v0, v5

    :cond_76
    add-long/2addr v0, v2

    goto :goto_6

    :catch_78
    move-exception v2

    .line 244
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_7d
    move-exception v2

    .line 242
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_6

    .line 248
    :cond_82
    invoke-direct {p0, v0, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;->updateMeasureAppSize(J)V

    return-void
.end method

.method private meausrMediaFiles()V
    .registers 6

    .line 112
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 113
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v1

    .line 114
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;->measureAllFiles(Ljava/lang/String;)V

    .line 115
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "measure file cost = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeFileTypeMeasuetment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;->notifyIfMeasureDone()V

    return-void
.end method

.method private declared-synchronized notifyIfMeasureDone()V
    .registers 4

    monitor-enter p0

    .line 121
    :try_start_1
    iget v0, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;->mMeasureMethods:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;->mMeasureMethods:I

    .line 122
    iget v0, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;->mMeasureMethods:I

    if-gtz v0, :cond_1d

    .line 123
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;->this$0:Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;

    invoke-static {v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;->access$300(Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;)Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;->mSizesHolder:Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$SizesHolder;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 124
    iput v2, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;->mMeasureMethods:I
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 126
    :cond_1d
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updateMeasureAppSize(J)V
    .registers 6

    monitor-enter p0

    .line 252
    :try_start_1
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;->mSizesHolder:Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$SizesHolder;

    iget-wide v1, v0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$SizesHolder;->dataAppSizeInByte:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$SizesHolder;->dataAppSizeInByte:J

    .line 253
    iget p1, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;->mMeasureAppSizeThreadCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;->mMeasureAppSizeThreadCount:I

    const-string p1, "FlymeFileTypeMeasuetment"

    .line 254
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mMeasureAppSizeThreadCount:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;->mMeasureAppSizeThreadCount:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mSizesHolder.dataAppSizeInByte:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;->mSizesHolder:Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$SizesHolder;

    iget-wide v0, v0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$SizesHolder;->dataAppSizeInByte:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget p1, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;->mMeasureAppSizeThreadCount:I

    if-nez p1, :cond_39

    .line 256
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;->notifyIfMeasureDone()V
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_3b

    .line 258
    :cond_39
    monitor-exit p0

    return-void

    :catchall_3b
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 91
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    goto :goto_1d

    .line 96
    :cond_9
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;->this$0:Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;

    invoke-static {p1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;->access$200(Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;)Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MainHandler;

    move-result-object p1

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;->mSizesHolder:Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$SizesHolder;

    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1d

    .line 93
    :cond_1a
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;->measure()V

    :goto_1d
    return-void
.end method
