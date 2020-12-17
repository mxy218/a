.class public final Lcom/android/settingslib/bluetooth/XmlReader;
.super Ljava/lang/Object;
.source "XmlReader.java"


# static fields
.field public static final VIDEO_FILE_PATH:Ljava/lang/String;

.field public static final XML_FILE_PATH:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDevicesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mInterval:I

.field private mReparseXmlCont:I

.field private mVersion:I

.field private mVideosMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Android/.MeizuDevice"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/bluetooth/XmlReader;->XML_FILE_PATH:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Android/.FastPair"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/bluetooth/XmlReader;->VIDEO_FILE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/android/settingslib/bluetooth/XmlReader;->mVersion:I

    const/4 v1, 0x1

    .line 52
    iput v1, p0, Lcom/android/settingslib/bluetooth/XmlReader;->mInterval:I

    .line 54
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/XmlReader;->mDevicesMap:Ljava/util/HashMap;

    .line 66
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/XmlReader;->mVideosMap:Ljava/util/HashMap;

    .line 72
    iput v0, p0, Lcom/android/settingslib/bluetooth/XmlReader;->mReparseXmlCont:I

    .line 73
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/settingslib/bluetooth/XmlReader$1;

    invoke-direct {v1, p0}, Lcom/android/settingslib/bluetooth/XmlReader$1;-><init>(Lcom/android/settingslib/bluetooth/XmlReader;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/XmlReader;->mHandler:Landroid/os/Handler;

    .line 94
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/XmlReader;->mContext:Landroid/content/Context;

    .line 98
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/XmlReader;->parseXmlToHashMap()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingslib/bluetooth/XmlReader;)I
    .registers 1

    .line 32
    iget p0, p0, Lcom/android/settingslib/bluetooth/XmlReader;->mReparseXmlCont:I

    return p0
.end method

.method static synthetic access$008(Lcom/android/settingslib/bluetooth/XmlReader;)I
    .registers 3

    .line 32
    iget v0, p0, Lcom/android/settingslib/bluetooth/XmlReader;->mReparseXmlCont:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settingslib/bluetooth/XmlReader;->mReparseXmlCont:I

    return v0
.end method

.method public static getVideoFilePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "/"

    const/4 v1, 0x0

    if-nez p0, :cond_6

    return-object v1

    .line 388
    :cond_6
    :try_start_6
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 389
    array-length v2, p0

    add-int/lit8 v2, v2, -0x2

    aget-object v2, p0, v2

    .line 390
    array-length v3, p0

    add-int/lit8 v3, v3, -0x3

    aget-object p0, p0, v3

    if-eqz p0, :cond_4a

    if-eqz v2, :cond_4a

    .line 392
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/settingslib/bluetooth/XmlReader;->VIDEO_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_32} :catch_33

    return-object p0

    :catch_33
    move-exception p0

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoFilePath exception "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "XmlReader"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    return-object v1
.end method


# virtual methods
.method public declared-synchronized getDarkIconFileNameFromXml(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_6

    .line 152
    monitor-exit p0

    return-object v0

    .line 153
    :cond_6
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/XmlReader;->getDarkUrlFromXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_1b

    if-nez p1, :cond_e

    .line 154
    monitor-exit p0

    return-object v0

    :cond_e
    :try_start_e
    const-string v0, "/"

    .line 156
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 157
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_1b

    .line 158
    monitor-exit p0

    return-object p1

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDarkUrlFromXml(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    monitor-enter p0

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 142
    monitor-exit p0

    return-object p1

    .line 143
    :cond_6
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/XmlReader;->getDevicePropertiesMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "darkUrl"

    .line 144
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_14

    .line 145
    monitor-exit p0

    return-object p1

    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDevicePropertiesMap(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 128
    monitor-exit p0

    return-object p1

    .line 129
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/XmlReader;->mDevicesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_10

    .line 130
    monitor-exit p0

    return-object p1

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDevicesMap()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 124
    :try_start_1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/XmlReader;->mDevicesMap:Ljava/util/HashMap;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLoopUrlFromXml(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    monitor-enter p0

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 350
    monitor-exit p0

    return-object p1

    .line 351
    :cond_6
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/XmlReader;->getVideoPropertiesMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "loopUrl"

    .line 352
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_14

    .line 353
    monitor-exit p0

    return-object p1

    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getLoopVideoFileNameFromXml(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_6

    .line 373
    monitor-exit p0

    return-object v0

    .line 374
    :cond_6
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/XmlReader;->getLoopUrlFromXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_2c

    if-nez p1, :cond_e

    .line 375
    monitor-exit p0

    return-object v0

    :cond_e
    :try_start_e
    const-string v0, "/"

    .line 377
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".tmp"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_2a
    .catchall {:try_start_e .. :try_end_2a} :catchall_2c

    .line 379
    monitor-exit p0

    return-object p1

    :catchall_2c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getOpenUrlFromXml(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    monitor-enter p0

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 342
    monitor-exit p0

    return-object p1

    .line 343
    :cond_6
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/XmlReader;->getVideoPropertiesMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    const-string/jumbo v0, "openUrl"

    .line 344
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_15

    .line 345
    monitor-exit p0

    return-object p1

    :catchall_15
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getOpenVideoFileNameFromXml(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_6

    .line 360
    monitor-exit p0

    return-object v0

    .line 361
    :cond_6
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/XmlReader;->getOpenUrlFromXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_2c

    if-nez p1, :cond_e

    .line 362
    monitor-exit p0

    return-object v0

    :cond_e
    :try_start_e
    const-string v0, "/"

    .line 364
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".tmp"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_2a
    .catchall {:try_start_e .. :try_end_2a} :catchall_2c

    .line 366
    monitor-exit p0

    return-object p1

    :catchall_2c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getVersion()I
    .registers 1

    .line 109
    iget p0, p0, Lcom/android/settingslib/bluetooth/XmlReader;->mVersion:I

    return p0
.end method

.method public declared-synchronized getVideoPropertiesMap(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 335
    monitor-exit p0

    return-object p1

    .line 336
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/XmlReader;->mVideosMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_10

    .line 337
    monitor-exit p0

    return-object p1

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getVideosMap()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 331
    :try_start_1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/XmlReader;->mVideosMap:Ljava/util/HashMap;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWhiteIconFileNameFromXml(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_6

    .line 184
    monitor-exit p0

    return-object v0

    .line 185
    :cond_6
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/XmlReader;->getWhiteUrlFromXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_1b

    if-nez p1, :cond_e

    .line 186
    monitor-exit p0

    return-object v0

    :cond_e
    :try_start_e
    const-string v0, "/"

    .line 188
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 189
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_1b

    .line 190
    monitor-exit p0

    return-object p1

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getWhiteUrlFromXml(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    monitor-enter p0

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 174
    monitor-exit p0

    return-object p1

    .line 175
    :cond_6
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/XmlReader;->getDevicePropertiesMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    const-string/jumbo v0, "whiteUrl"

    .line 176
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_15

    .line 177
    monitor-exit p0

    return-object p1

    :catchall_15
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized parseXmlToHashMap()V
    .registers 12

    monitor-enter p0

    const/4 v0, 0x0

    .line 228
    :try_start_2
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_198

    .line 230
    :try_start_6
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 231
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/settingslib/bluetooth/XmlReader;->XML_FILE_PATH:Ljava/lang/String;

    const-string v4, "devices.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2f

    const-string v1, "XmlReader"

    const-string v2, "fileRead fail, fie not exist!"

    .line 233
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget v1, p0, Lcom/android/settingslib/bluetooth/XmlReader;->mReparseXmlCont:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_2d

    .line 236
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/XmlReader;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2d} :catch_166
    .catchall {:try_start_6 .. :try_end_2d} :catchall_164

    .line 239
    :cond_2d
    monitor-exit p0

    return-void

    .line 243
    :cond_2f
    :try_start_2f
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/XmlReader;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 246
    invoke-virtual {v2}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/file/Paths;->get(Ljava/net/URI;)Ljava/nio/file/Path;

    move-result-object v2

    const/4 v3, 0x0

    new-array v5, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v2, v5}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    .line 247
    invoke-virtual {v1, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 248
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    const-string v2, "config"

    .line 250
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    move v5, v3

    .line 251
    :goto_52
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v5, v6, :cond_92

    .line 252
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    const-string/jumbo v7, "version"

    .line 253
    invoke-interface {v6, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 254
    invoke-interface {v7, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/settingslib/bluetooth/XmlReader;->mVersion:I

    const-string v7, "interval"

    .line 256
    invoke-interface {v6, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 257
    invoke-interface {v6, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/settingslib/bluetooth/XmlReader;->mInterval:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_52

    :cond_92
    const-string v2, "device"

    .line 260
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    if-eqz v2, :cond_ed

    move v5, v3

    .line 262
    :goto_9b
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v5, v6, :cond_ed

    .line 263
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 265
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    if-ne v7, v4, :cond_ea

    .line 267
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    const-string v8, "name"

    invoke-interface {v7, v8}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_bc

    goto :goto_ea

    .line 270
    :cond_bc
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 272
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v6

    :goto_c5
    if-eqz v6, :cond_e5

    .line 273
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    if-ne v9, v4, :cond_e0

    .line 275
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    .line 276
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    if-eqz v9, :cond_e0

    if-eqz v10, :cond_e0

    .line 278
    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    :cond_e0
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v6

    goto :goto_c5

    .line 283
    :cond_e5
    iget-object v6, p0, Lcom/android/settingslib/bluetooth/XmlReader;->mDevicesMap:Ljava/util/HashMap;

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ea
    :goto_ea
    add-int/lit8 v5, v5, 0x1

    goto :goto_9b

    :cond_ed
    const-string/jumbo v2, "video"

    .line 290
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    if-eqz v1, :cond_156

    .line 292
    :goto_f6
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v3, v2, :cond_156

    .line 293
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 294
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, ""

    .line 296
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    :goto_10b
    if-eqz v2, :cond_14e

    .line 297
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    if-ne v7, v4, :cond_149

    .line 299
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    .line 300
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    if-eqz v7, :cond_149

    if-eqz v8, :cond_149

    const-string/jumbo v9, "vid"

    .line 302
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13a

    const-string/jumbo v9, "pid"

    .line 303
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_136

    goto :goto_13a

    .line 306
    :cond_136
    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_149

    .line 304
    :cond_13a
    :goto_13a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 296
    :cond_149
    :goto_149
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_10b

    .line 312
    :cond_14e
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/XmlReader;->mVideosMap:Ljava/util/HashMap;

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_153} :catch_166
    .catchall {:try_start_2f .. :try_end_153} :catchall_164

    add-int/lit8 v3, v3, 0x1

    goto :goto_f6

    :cond_156
    if-eqz v0, :cond_188

    .line 322
    :try_start_158
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_15b
    .catch Ljava/io/IOException; {:try_start_158 .. :try_end_15b} :catch_15c
    .catchall {:try_start_158 .. :try_end_15b} :catchall_198

    goto :goto_188

    :catch_15c
    :try_start_15c
    const-string v0, "XmlReader"

    const-string v1, "close inputStream failed!"

    .line 324
    :goto_160
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_163
    .catchall {:try_start_15c .. :try_end_163} :catchall_198

    goto :goto_188

    :catchall_164
    move-exception v1

    goto :goto_18a

    :catch_166
    move-exception v1

    :try_start_167
    const-string v2, "XmlReader"

    .line 318
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17d
    .catchall {:try_start_167 .. :try_end_17d} :catchall_164

    if-eqz v0, :cond_188

    .line 322
    :try_start_17f
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_182
    .catch Ljava/io/IOException; {:try_start_17f .. :try_end_182} :catch_183
    .catchall {:try_start_17f .. :try_end_182} :catchall_198

    goto :goto_188

    :catch_183
    :try_start_183
    const-string v0, "XmlReader"

    const-string v1, "close inputStream failed!"
    :try_end_187
    .catchall {:try_start_183 .. :try_end_187} :catchall_198

    goto :goto_160

    .line 327
    :cond_188
    :goto_188
    monitor-exit p0

    return-void

    :goto_18a
    if-eqz v0, :cond_197

    .line 322
    :try_start_18c
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_18f
    .catch Ljava/io/IOException; {:try_start_18c .. :try_end_18f} :catch_190
    .catchall {:try_start_18c .. :try_end_18f} :catchall_198

    goto :goto_197

    :catch_190
    :try_start_190
    const-string v0, "XmlReader"

    const-string v2, "close inputStream failed!"

    .line 324
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_197
    :goto_197
    throw v1
    :try_end_198
    .catchall {:try_start_190 .. :try_end_198} :catchall_198

    :catchall_198
    move-exception v0

    monitor-exit p0

    throw v0
.end method
