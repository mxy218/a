.class public Lcom/android/settingslib/bluetooth/NetworkDownloader;
.super Ljava/lang/Object;
.source "NetworkDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/NetworkDownloader$DownloadHandler;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/settingslib/bluetooth/NetworkDownloader$DownloadHandler;

.field private mIconRetryTime:I

.field private mIsSetting:Z

.field private mNetworkRetryTime:I

.field private final mOkHttpClient:Lokhttp3/OkHttpClient;

.field private mUrlFailMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mXmlReader:Lcom/android/settingslib/bluetooth/XmlReader;

.field private mXmlRetryTime:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/XmlReader;)V
    .registers 5

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader;->mXmlRetryTime:I

    .line 59
    iput v0, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader;->mNetworkRetryTime:I

    .line 60
    iput v0, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader;->mIconRetryTime:I

    .line 62
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader;->mUrlFailMap:Ljava/util/HashMap;

    .line 63
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader;->mIsSetting:Z

    .line 65
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader;->mOkHttpClient:Lokhttp3/OkHttpClient;

    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader;->mHandler:Lcom/android/settingslib/bluetooth/NetworkDownloader$DownloadHandler;

    .line 71
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader;->mXmlReader:Lcom/android/settingslib/bluetooth/XmlReader;

    .line 74
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-nez p1, :cond_2e

    .line 76
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 77
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    .line 79
    :cond_2e
    new-instance p2, Lcom/android/settingslib/bluetooth/NetworkDownloader$DownloadHandler;

    invoke-direct {p2, p0, p1}, Lcom/android/settingslib/bluetooth/NetworkDownloader$DownloadHandler;-><init>(Lcom/android/settingslib/bluetooth/NetworkDownloader;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader;->mHandler:Lcom/android/settingslib/bluetooth/NetworkDownloader$DownloadHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingslib/bluetooth/NetworkDownloader;)I
    .registers 1

    .line 41
    iget p0, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader;->mXmlRetryTime:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/settingslib/bluetooth/NetworkDownloader;I)I
    .registers 2

    .line 41
    iput p1, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader;->mXmlRetryTime:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settingslib/bluetooth/NetworkDownloader;)I
    .registers 1

    .line 41
    iget p0, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader;->mIconRetryTime:I

    return p0
.end method

.method static synthetic access$1000(Lcom/android/settingslib/bluetooth/NetworkDownloader;)V
    .registers 1

    .line 41
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->downloadIconRetry()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settingslib/bluetooth/NetworkDownloader;I)I
    .registers 2

    .line 41
    iput p1, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader;->mIconRetryTime:I

    return p1
.end method

.method static synthetic access$108(Lcom/android/settingslib/bluetooth/NetworkDownloader;)I
    .registers 3

    .line 41
    iget v0, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader;->mIconRetryTime:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader;->mIconRetryTime:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/settingslib/bluetooth/NetworkDownloader;)Lcom/android/settingslib/bluetooth/NetworkDownloader$DownloadHandler;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader;->mHandler:Lcom/android/settingslib/bluetooth/NetworkDownloader$DownloadHandler;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/settingslib/bluetooth/NetworkDownloader;Ljava/lang/String;Ljava/lang/String;Lokhttp3/Response;)Z
    .registers 4

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->writeToFile(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Response;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/android/settingslib/bluetooth/NetworkDownloader;Ljava/lang/String;)Z
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->isVideoFilePath(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/android/settingslib/bluetooth/NetworkDownloader;Ljava/lang/String;Ljava/lang/String;Lokhttp3/Response;)Z
    .registers 4

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->writeToFileForVideo(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Response;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/android/settingslib/bluetooth/NetworkDownloader;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->renameVideoForDownloaded(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settingslib/bluetooth/NetworkDownloader;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->removeFailVideo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settingslib/bluetooth/NetworkDownloader;)I
    .registers 1

    .line 41
    iget p0, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader;->mNetworkRetryTime:I

    return p0
.end method

.method static synthetic access$202(Lcom/android/settingslib/bluetooth/NetworkDownloader;I)I
    .registers 2

    .line 41
    iput p1, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader;->mNetworkRetryTime:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settingslib/bluetooth/NetworkDownloader;)Ljava/util/HashMap;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader;->mUrlFailMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settingslib/bluetooth/NetworkDownloader;)V
    .registers 1

    .line 41
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->checkAndDownloadXml()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settingslib/bluetooth/NetworkDownloader;)V
    .registers 1

    .line 41
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->startTimerUpdate()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settingslib/bluetooth/NetworkDownloader;)V
    .registers 1

    .line 41
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->downloadXmlConfig()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settingslib/bluetooth/NetworkDownloader;)Lcom/android/settingslib/bluetooth/XmlReader;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader;->mXmlReader:Lcom/android/settingslib/bluetooth/XmlReader;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/settingslib/bluetooth/NetworkDownloader;)V
    .registers 1

    .line 41
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->downloadIconFromXml()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settingslib/bluetooth/NetworkDownloader;)V
    .registers 1

    .line 41
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->sendXmlUpdateIntent()V

    return-void
.end method

.method private checkAndDownloadXml()V
    .registers 5

    .line 241
    iget v0, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader;->mNetworkRetryTime:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader;->mNetworkRetryTime:I

    .line 242
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->isNetworkAvailable()Z

    move-result v0

    const-string v1, "NetworkDownloader"

    if-nez v0, :cond_1d

    .line 243
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader;->mHandler:Lcom/android/settingslib/bluetooth/NetworkDownloader$DownloadHandler;

    const/16 v0, 0x68

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string p0, "Network is not available !!!"

    .line 244
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 248
    :cond_1d
    sget-object v0, Lcom/android/settingslib/bluetooth/XmlReader;->XML_FILE_PATH:Ljava/lang/String;

    const-string v2, "devices.xml"

    invoke-static {v0, v2}, Lcom/android/settingslib/bluetooth/Util;->isFileExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "do download skip network check"

    .line 249
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->downloadXmlConfig()V

    return-void

    .line 255
    :cond_30
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader;->mXmlReader:Lcom/android/settingslib/bluetooth/XmlReader;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/XmlReader;->getVersion()I

    move-result v0

    .line 257
    new-instance v1, Lokhttp3/FormBody$Builder;

    invoke-direct {v1}, Lokhttp3/FormBody$Builder;-><init>()V

    .line 258
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "version"

    invoke-virtual {v1, v2, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 259
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    const-string v2, "https://mcard.meizu.com/android/tws/config"

    .line 260
    invoke-virtual {v0, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 261
    invoke-virtual {v1}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 262
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 263
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/android/settingslib/bluetooth/NetworkDownloader$1;

    invoke-direct {v1, p0}, Lcom/android/settingslib/bluetooth/NetworkDownloader$1;-><init>(Lcom/android/settingslib/bluetooth/NetworkDownloader;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public static final deleteUnAvailableXmlFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const-string v0, "NetworkDownloader"

    const/4 v1, 0x0

    .line 213
    :try_start_3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_60

    .line 215
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_15

    return v1

    .line 220
    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteUnAvailableXmlFile files list len:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    array-length v2, p0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_60

    .line 222
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_60

    .line 223
    aget-object p1, p0, v1

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result p1

    if-eqz p1, :cond_60

    .line 224
    aget-object p1, p0, v1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    const/4 p1, 0x0

    .line 225
    aput-object p1, p0, v1
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_4a} :catch_4b

    return v3

    :catch_4b
    move-exception p0

    .line 232
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteUnAvailableXmlFile exception:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    return v1
.end method

.method private downloadIconFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloadIconFile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fileName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkDownloader"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_21

    return-void

    .line 434
    :cond_21
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 435
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/android/settingslib/bluetooth/NetworkDownloader$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/settingslib/bluetooth/NetworkDownloader$3;-><init>(Lcom/android/settingslib/bluetooth/NetworkDownloader;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method private downloadIconFromXml()V
    .registers 10

    .line 311
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader;->mXmlReader:Lcom/android/settingslib/bluetooth/XmlReader;

    if-nez v0, :cond_5

    return-void

    .line 312
    :cond_5
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/XmlReader;->getDevicesMap()Ljava/util/HashMap;

    move-result-object v0

    .line 314
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 315
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string/jumbo v4, "skip download same url : "

    const-string v5, "NetworkDownloader"

    const/4 v6, 0x1

    if-eqz v3, :cond_75

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 316
    iget-object v7, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader;->mXmlReader:Lcom/android/settingslib/bluetooth/XmlReader;

    invoke-virtual {v7, v3}, Lcom/android/settingslib/bluetooth/XmlReader;->getDarkUrlFromXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_31

    goto :goto_16

    .line 319
    :cond_31
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v8

    if-nez v8, :cond_3f

    .line 320
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6b

    .line 321
    :cond_3f
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_64

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_64

    .line 322
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 325
    :cond_64
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    :goto_6b
    iget-object v4, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader;->mXmlReader:Lcom/android/settingslib/bluetooth/XmlReader;

    invoke-virtual {v4, v3}, Lcom/android/settingslib/bluetooth/XmlReader;->getDarkIconFileNameFromXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 328
    invoke-direct {p0, v7, v3}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->downloadIconFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 332
    :cond_75
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 333
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_82
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_db

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 334
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader;->mXmlReader:Lcom/android/settingslib/bluetooth/XmlReader;

    invoke-virtual {v3, v2}, Lcom/android/settingslib/bluetooth/XmlReader;->getWhiteUrlFromXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_97

    goto :goto_82

    .line 337
    :cond_97
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v7

    if-nez v7, :cond_a5

    .line 338
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d1

    .line 339
    :cond_a5
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ca

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_ca

    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_82

    .line 343
    :cond_ca
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    :goto_d1
    iget-object v7, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader;->mXmlReader:Lcom/android/settingslib/bluetooth/XmlReader;

    invoke-virtual {v7, v2}, Lcom/android/settingslib/bluetooth/XmlReader;->getWhiteIconFileNameFromXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 346
    invoke-direct {p0, v3, v2}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->downloadIconFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_82

    .line 351
    :cond_db
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader;->mXmlReader:Lcom/android/settingslib/bluetooth/XmlReader;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/XmlReader;->getVideosMap()Ljava/util/HashMap;

    move-result-object v0

    .line 352
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 353
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ee
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_135

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 354
    iget-object v4, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader;->mXmlReader:Lcom/android/settingslib/bluetooth/XmlReader;

    invoke-virtual {v4, v3}, Lcom/android/settingslib/bluetooth/XmlReader;->getOpenUrlFromXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_103

    goto :goto_ee

    .line 356
    :cond_103
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v5

    if-nez v5, :cond_111

    .line 357
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12b

    .line 358
    :cond_111
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_124

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_124

    goto :goto_ee

    .line 361
    :cond_124
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    :goto_12b
    iget-object v5, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader;->mXmlReader:Lcom/android/settingslib/bluetooth/XmlReader;

    invoke-virtual {v5, v3}, Lcom/android/settingslib/bluetooth/XmlReader;->getOpenVideoFileNameFromXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 364
    invoke-direct {p0, v4, v3}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->downloadIconFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ee

    .line 366
    :cond_135
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 367
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_140
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_187

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 368
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader;->mXmlReader:Lcom/android/settingslib/bluetooth/XmlReader;

    invoke-virtual {v3, v2}, Lcom/android/settingslib/bluetooth/XmlReader;->getLoopUrlFromXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_155

    goto :goto_140

    .line 370
    :cond_155
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_163

    .line 371
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17d

    .line 372
    :cond_163
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_176

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_176

    goto :goto_140

    .line 375
    :cond_176
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    :goto_17d
    iget-object v4, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader;->mXmlReader:Lcom/android/settingslib/bluetooth/XmlReader;

    invoke-virtual {v4, v2}, Lcom/android/settingslib/bluetooth/XmlReader;->getLoopVideoFileNameFromXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 378
    invoke-direct {p0, v3, v2}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->downloadIconFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_140

    :cond_187
    return-void
.end method

.method private downloadIconRetry()V
    .registers 4

    .line 387
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader;->mUrlFailMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 388
    :cond_9
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader;->mUrlFailMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_22

    goto :goto_13

    .line 391
    :cond_22
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader;->mUrlFailMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 392
    invoke-direct {p0, v1, v2}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->downloadIconFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_2e
    return-void
.end method

.method private downloadXmlConfig()V
    .registers 3

    .line 303
    iget v0, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader;->mXmlRetryTime:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader;->mXmlRetryTime:I

    const-string v0, "https://mcard-res.meizu.com/resources/mcard/devices.xml"

    const-string v1, "devices.xml"

    .line 304
    invoke-direct {p0, v0, v1}, Lcom/android/settingslib/bluetooth/NetworkDownloader;->downloadXmlFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private downloadXmlFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloadXmlFile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fileName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkDownloader"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_21

    return-void

    .line 404
    :cond_21
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 405
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/android/settingslib/bluetooth/NetworkDownloader$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settingslib/bluetooth/NetworkDownloader$2;-><init>(Lcom/android/settingslib/bluetooth/NetworkDownloader;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method private isVideoFilePath(Ljava/lang/String;)Z
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    const-string p0, "."

    .line 532
    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, ".tmp"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private removeFailVideo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 610
    invoke-static {p1}, Lcom/android/settingslib/bluetooth/XmlReader;->getVideoFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    .line 614
    :cond_7
    :try_start_7
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 615
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_28

    .line 618
    :cond_19
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result p0

    if-eqz p0, :cond_48

    .line 620
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_27} :catch_29

    goto :goto_48

    :cond_28
    :goto_28
    return-void

    :catch_29
    move-exception p0

    .line 624
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "removeFailVideo:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", exception "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NetworkDownloader"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    :goto_48
    return-void
.end method

.method private renameVideoForDownloaded(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 587
    invoke-static {p1}, Lcom/android/settingslib/bluetooth/XmlReader;->getVideoFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    .line 591
    :cond_7
    :try_start_7
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 592
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_3f

    .line 595
    :cond_19
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_25

    return-void

    .line 599
    :cond_25
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5f

    const/4 p2, 0x0

    const-string v1, "."

    .line 601
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 602
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_3e} :catch_40

    goto :goto_5f

    :cond_3f
    :goto_3f
    return-void

    :catch_40
    move-exception p0

    .line 605
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "renameVideoForDownloaded:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", exception "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NetworkDownloader"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    :goto_5f
    return-void
.end method

.method private sendXmlUpdateIntent()V
    .registers 3

    const-string v0, "NetworkDownloader"

    const-string v1, "sendXmlUpdateIntent"

    .line 136
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.meizu.bluetooth.ACTION_XML_UPDATE"

    .line 138
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 139
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 141
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private startTimerUpdate()V
    .registers 1

    return-void
.end method

.method private writeToFile(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Response;)Z
    .registers 12

    const-string p0, "close fileOutputStream failed!"

    const-string p1, "close inputStream failed!"

    .line 479
    invoke-virtual {p3}, Lokhttp3/Response;->code()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "NetworkDownloader"

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_de

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 484
    sget-object v3, Lcom/android/settingslib/bluetooth/XmlReader;->XML_FILE_PATH:Ljava/lang/String;

    const/4 v4, 0x0

    .line 486
    :try_start_16
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 487
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2a

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_2a

    .line 488
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 491
    :cond_2a
    invoke-virtual {p3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_32} :catch_9f
    .catchall {:try_start_16 .. :try_end_32} :catchall_9c

    .line 492
    :try_start_32
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_40

    .line 494
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 496
    :cond_40
    invoke-virtual {v6}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v6

    invoke-static {v6}, Ljava/nio/file/Paths;->get(Ljava/net/URI;)Ljava/nio/file/Path;

    move-result-object v6

    new-array v7, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v6, v7}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v4

    .line 497
    :goto_4e
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_59

    .line 498
    invoke-virtual {v4, v0, v1, v6}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4e

    .line 500
    :cond_59
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    const/4 v0, 0x1

    .line 502
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "chmod 777 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 503
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    const-string p2, "download property file successfully!"

    .line 504
    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_82} :catch_98
    .catchall {:try_start_32 .. :try_end_82} :catchall_96

    if-eqz v5, :cond_8b

    .line 511
    :try_start_84
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_88

    goto :goto_8b

    .line 513
    :catch_88
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8b
    :goto_8b
    if-eqz v4, :cond_94

    .line 517
    :try_start_8d
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_91

    goto :goto_94

    .line 519
    :catch_91
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_94
    :goto_94
    move v1, v0

    goto :goto_de

    :catchall_96
    move-exception p2

    goto :goto_cb

    :catch_98
    move-exception p2

    move-object v0, v4

    move-object v4, v5

    goto :goto_a1

    :catchall_9c
    move-exception p2

    move-object v5, v4

    goto :goto_cb

    :catch_9f
    move-exception p2

    move-object v0, v4

    .line 507
    :goto_a1
    :try_start_a1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "download property file failed! exception: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b5
    .catchall {:try_start_a1 .. :try_end_b5} :catchall_c8

    if-eqz v4, :cond_be

    .line 511
    :try_start_b7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_ba} :catch_bb

    goto :goto_be

    .line 513
    :catch_bb
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_be
    :goto_be
    if-eqz v0, :cond_de

    .line 517
    :try_start_c0
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c3} :catch_c4

    goto :goto_de

    .line 519
    :catch_c4
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_de

    :catchall_c8
    move-exception p2

    move-object v5, v4

    move-object v4, v0

    :goto_cb
    if-eqz v5, :cond_d4

    .line 511
    :try_start_cd
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_d0} :catch_d1

    goto :goto_d4

    .line 513
    :catch_d1
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d4
    :goto_d4
    if-eqz v4, :cond_dd

    .line 517
    :try_start_d6
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_d9
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_d9} :catch_da

    goto :goto_dd

    .line 519
    :catch_da
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_dd
    :goto_dd
    throw p2

    .line 523
    :cond_de
    :goto_de
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "download http state = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lokhttp3/Response;->code()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private writeToFileForVideo(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Response;)Z
    .registers 12

    const-string p0, "close fileOutputStream failed!"

    const-string v0, "close inputStream failed!"

    .line 537
    invoke-virtual {p3}, Lokhttp3/Response;->code()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "NetworkDownloader"

    const/16 v4, 0xc8

    if-ne v1, v4, :cond_e3

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 542
    invoke-static {p1}, Lcom/android/settingslib/bluetooth/XmlReader;->getVideoFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1a

    return v2

    :cond_1a
    const/4 v4, 0x0

    .line 546
    :try_start_1b
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 547
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2f

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_2f

    .line 548
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 550
    :cond_2f
    invoke-virtual {p3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_37} :catch_a4
    .catchall {:try_start_1b .. :try_end_37} :catchall_a1

    .line 551
    :try_start_37
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_45

    .line 553
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 555
    :cond_45
    invoke-virtual {v6}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v6

    invoke-static {v6}, Ljava/nio/file/Paths;->get(Ljava/net/URI;)Ljava/nio/file/Path;

    move-result-object v6

    new-array v7, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v6, v7}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v4

    .line 556
    :goto_53
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_5e

    .line 557
    invoke-virtual {v4, v1, v2, v6}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_53

    .line 559
    :cond_5e
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    const/4 v1, 0x1

    .line 561
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "chmod 777 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 562
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    const-string p1, "download property file successfully!"

    .line 563
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_87} :catch_9d
    .catchall {:try_start_37 .. :try_end_87} :catchall_9b

    if-eqz v5, :cond_90

    .line 570
    :try_start_89
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_8d

    goto :goto_90

    .line 572
    :catch_8d
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_90
    :goto_90
    if-eqz v4, :cond_99

    .line 576
    :try_start_92
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_96

    goto :goto_99

    .line 578
    :catch_96
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_99
    :goto_99
    move v2, v1

    goto :goto_e3

    :catchall_9b
    move-exception p1

    goto :goto_d0

    :catch_9d
    move-exception p1

    move-object p2, v4

    move-object v4, v5

    goto :goto_a6

    :catchall_a1
    move-exception p1

    move-object v5, v4

    goto :goto_d0

    :catch_a4
    move-exception p1

    move-object p2, v4

    .line 566
    :goto_a6
    :try_start_a6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "download property file failed! exception: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ba
    .catchall {:try_start_a6 .. :try_end_ba} :catchall_cd

    if-eqz v4, :cond_c3

    .line 570
    :try_start_bc
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_bf} :catch_c0

    goto :goto_c3

    .line 572
    :catch_c0
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c3
    :goto_c3
    if-eqz p2, :cond_e3

    .line 576
    :try_start_c5
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_c8} :catch_c9

    goto :goto_e3

    .line 578
    :catch_c9
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e3

    :catchall_cd
    move-exception p1

    move-object v5, v4

    move-object v4, p2

    :goto_d0
    if-eqz v5, :cond_d9

    .line 570
    :try_start_d2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_d5} :catch_d6

    goto :goto_d9

    .line 572
    :catch_d6
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d9
    :goto_d9
    if-eqz v4, :cond_e2

    .line 576
    :try_start_db
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_de} :catch_df

    goto :goto_e2

    .line 578
    :catch_df
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :cond_e2
    :goto_e2
    throw p1

    .line 582
    :cond_e3
    :goto_e3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "download http state = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lokhttp3/Response;->code()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method


# virtual methods
.method protected finalize()V
    .registers 2

    const-string p0, "NetworkDownloader"

    const-string v0, "finalize()"

    .line 648
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isNetworkAvailable()Z
    .registers 2

    .line 102
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/NetworkDownloader;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    .line 103
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_20

    .line 105
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 106
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method
