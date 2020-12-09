.class public Lcom/android/server/connectivity/PacManager;
.super Ljava/lang/Object;
.source "PacManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/PacManager$PacRefreshIntentReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_PAC_REFRESH:Ljava/lang/String; = "android.net.proxy.PAC_REFRESH"

.field private static final DEFAULT_DELAYS:Ljava/lang/String; = "8 32 120 14400 43200"

.field private static final DELAY_1:I = 0x0

.field private static final DELAY_4:I = 0x3

.field private static final DELAY_LONG:I = 0x4

.field public static final DONT_SEND_BROADCAST:Z = false

.field public static final DO_SEND_BROADCAST:Z = true

.field private static final MAX_PAC_SIZE:J = 0x1312d00L

.field private static final PAC_PACKAGE:Ljava/lang/String; = "com.android.pacprocessor"

.field private static final PAC_SERVICE:Ljava/lang/String; = "com.android.pacprocessor.PacService"

.field private static final PAC_SERVICE_NAME:Ljava/lang/String; = "com.android.net.IProxyService"

.field private static final PROXY_PACKAGE:Ljava/lang/String; = "com.android.proxyhandler"

.field private static final PROXY_SERVICE:Ljava/lang/String; = "com.android.proxyhandler.ProxyService"

.field private static final TAG:Ljava/lang/String; = "PacManager"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mConnectivityHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mCurrentDelay:I

.field private mCurrentPac:Ljava/lang/String;

.field private volatile mHasDownloaded:Z

.field private volatile mHasSentBroadcast:Z

.field private mLastPort:I

.field private final mNetThreadHandler:Landroid/os/Handler;

.field private mPacDownloader:Ljava/lang/Runnable;

.field private mPacRefreshIntent:Landroid/app/PendingIntent;

.field private volatile mPacUrl:Landroid/net/Uri;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProxyLock"
        }
    .end annotation
.end field

.field private mProxyConnection:Landroid/content/ServiceConnection;

.field private final mProxyLock:Ljava/lang/Object;

.field private final mProxyMessage:I

.field private mProxyService:Lcom/android/net/IProxyService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProxyLock"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 7

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mPacUrl:Landroid/net/Uri;

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mProxyLock:Ljava/lang/Object;

    .line 108
    new-instance v0, Lcom/android/server/connectivity/PacManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/PacManager$1;-><init>(Lcom/android/server/connectivity/PacManager;)V

    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mPacDownloader:Ljava/lang/Runnable;

    .line 149
    iput-object p1, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    .line 150
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I

    .line 151
    new-instance v0, Landroid/os/HandlerThread;

    const/4 v1, 0x0

    const-string v2, "android.pacmanager"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 153
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 154
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/connectivity/PacManager;->mNetThreadHandler:Landroid/os/Handler;

    .line 156
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.proxy.PAC_REFRESH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mPacRefreshIntent:Landroid/app/PendingIntent;

    .line 158
    new-instance v0, Lcom/android/server/connectivity/PacManager$PacRefreshIntentReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/PacManager$PacRefreshIntentReceiver;-><init>(Lcom/android/server/connectivity/PacManager;)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    iput-object p2, p0, Lcom/android/server/connectivity/PacManager;->mConnectivityHandler:Landroid/os/Handler;

    .line 161
    iput p3, p0, Lcom/android/server/connectivity/PacManager;->mProxyMessage:I

    .line 162
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/PacManager;)Landroid/net/Uri;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/android/server/connectivity/PacManager;->mPacUrl:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$100(Landroid/net/Uri;)Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-static {p0}, Lcom/android/server/connectivity/PacManager;->get(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/PacManager;)Landroid/os/Handler;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/android/server/connectivity/PacManager;->mNetThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/PacManager;)Lcom/android/net/IProxyService;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/android/server/connectivity/PacManager;Lcom/android/net/IProxyService;)Lcom/android/net/IProxyService;
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/PacManager;)I
    .registers 1

    .line 55
    iget p0, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I

    return p0
.end method

.method static synthetic access$1202(Lcom/android/server/connectivity/PacManager;I)I
    .registers 2

    .line 55
    iput p1, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I

    return p1
.end method

.method static synthetic access$1302(Lcom/android/server/connectivity/PacManager;Z)Z
    .registers 2

    .line 55
    iput-boolean p1, p0, Lcom/android/server/connectivity/PacManager;->mHasSentBroadcast:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/PacManager;)Ljava/lang/Object;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/android/server/connectivity/PacManager;->mProxyLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/PacManager;)Ljava/lang/String;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/android/server/connectivity/PacManager;->mCurrentPac:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/PacManager;Ljava/lang/String;)V
    .registers 2

    .line 55
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/PacManager;->setCurrentProxyScript(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/server/connectivity/PacManager;Z)Z
    .registers 2

    .line 55
    iput-boolean p1, p0, Lcom/android/server/connectivity/PacManager;->mHasDownloaded:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/PacManager;)V
    .registers 1

    .line 55
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->sendProxyIfNeeded()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/PacManager;)V
    .registers 1

    .line 55
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->longSchedule()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/PacManager;)V
    .registers 1

    .line 55
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->reschedule()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/PacManager;)Ljava/lang/Runnable;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/android/server/connectivity/PacManager;->mPacDownloader:Ljava/lang/Runnable;

    return-object p0
.end method

.method private bind()V
    .registers 5

    .line 297
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 298
    const-string v0, "PacManager"

    const-string v1, "No context for binding"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    return-void

    .line 301
    :cond_c
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 302
    const-string v1, "com.android.pacprocessor"

    const-string v2, "com.android.pacprocessor.PacService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_28

    .line 305
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mNetThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mPacDownloader:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 306
    return-void

    .line 308
    :cond_28
    new-instance v1, Lcom/android/server/connectivity/PacManager$2;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/PacManager$2;-><init>(Lcom/android/server/connectivity/PacManager;)V

    iput-object v1, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    .line 340
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    const v3, 0x40000005  # 2.0000012f

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 343
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 344
    const-string v1, "com.android.proxyhandler"

    const-string v2, "com.android.proxyhandler.ProxyService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    new-instance v1, Lcom/android/server/connectivity/PacManager$3;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/PacManager$3;-><init>(Lcom/android/server/connectivity/PacManager;)V

    iput-object v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    .line 378
    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 380
    return-void
.end method

.method private static get(Landroid/net/Uri;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 219
    sget-object p0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {v0, p0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p0

    .line 220
    nop

    .line 222
    :try_start_10
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_1a} :catch_1b

    .line 225
    goto :goto_1e

    .line 223
    :catch_1b
    move-exception v0

    const-wide/16 v0, -0x1

    .line 226
    :goto_1e
    const-wide/32 v2, 0x1312d00

    cmp-long v4, v0, v2

    if-gtz v4, :cond_54

    .line 229
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 230
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 232
    :goto_2e
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4f

    .line 233
    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 234
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-gtz v4, :cond_47

    goto :goto_2e

    .line 235
    :cond_47
    new-instance p0, Ljava/io/IOException;

    const-string v0, "PAC too big"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 238
    :cond_4f
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 227
    :cond_54
    new-instance p0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PAC too big: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " bytes"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getAlarmManager()Landroid/app/AlarmManager;
    .registers 3

    .line 165
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_10

    .line 166
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 168
    :cond_10
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method private getDownloadDelay(I)J
    .registers 4

    .line 270
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->getPacChangeDelay()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 271
    array-length v1, v0

    if-ge p1, v1, :cond_14

    .line 272
    aget-object p1, v0, p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 274
    :cond_14
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private getNextDelay(I)I
    .registers 3

    .line 242
    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x3

    if-le p1, v0, :cond_6

    .line 243
    return v0

    .line 245
    :cond_6
    return p1
.end method

.method private getPacChangeDelay()Ljava/lang/String;
    .registers 4

    .line 259
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 262
    const-string v1, "conn.pac_change_delay"

    const-string v2, "8 32 120 14400 43200"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 265
    const-string/jumbo v2, "pac_change_delay"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    if-nez v0, :cond_18

    move-object v0, v1

    :cond_18
    return-object v0
.end method

.method private longSchedule()V
    .registers 2

    .line 249
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/PacManager;->mCurrentDelay:I

    .line 250
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PacManager;->setDownloadIn(I)V

    .line 251
    return-void
.end method

.method private reschedule()V
    .registers 2

    .line 254
    iget v0, p0, Lcom/android/server/connectivity/PacManager;->mCurrentDelay:I

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PacManager;->getNextDelay(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/connectivity/PacManager;->mCurrentDelay:I

    .line 255
    iget v0, p0, Lcom/android/server/connectivity/PacManager;->mCurrentDelay:I

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PacManager;->setDownloadIn(I)V

    .line 256
    return-void
.end method

.method private sendPacBroadcast(Landroid/net/ProxyInfo;)V
    .registers 4

    .line 396
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mConnectivityHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyMessage:I

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 397
    return-void
.end method

.method private declared-synchronized sendProxyIfNeeded()V
    .registers 4

    monitor-enter p0

    .line 400
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/connectivity/PacManager;->mHasDownloaded:Z

    if-eqz v0, :cond_20

    iget v0, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    goto :goto_20

    .line 403
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/connectivity/PacManager;->mHasSentBroadcast:Z

    if-nez v0, :cond_1e

    .line 404
    new-instance v0, Landroid/net/ProxyInfo;

    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mPacUrl:Landroid/net/Uri;

    iget v2, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I

    invoke-direct {v0, v1, v2}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;I)V

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PacManager;->sendPacBroadcast(Landroid/net/ProxyInfo;)V

    .line 405
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/PacManager;->mHasSentBroadcast:Z
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_22

    .line 407
    :cond_1e
    monitor-exit p0

    return-void

    .line 401
    :cond_20
    :goto_20
    monitor-exit p0

    return-void

    .line 399
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setCurrentProxyScript(Ljava/lang/String;)V
    .registers 4

    .line 284
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    const-string v1, "PacManager"

    if-nez v0, :cond_d

    .line 285
    const-string/jumbo p1, "setCurrentProxyScript: no proxy service"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return-void

    .line 289
    :cond_d
    :try_start_d
    invoke-interface {v0, p1}, Lcom/android/net/IProxyService;->setPacFile(Ljava/lang/String;)V

    .line 290
    iput-object p1, p0, Lcom/android/server/connectivity/PacManager;->mCurrentPac:Ljava/lang/String;
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    .line 293
    goto :goto_19

    .line 291
    :catch_13
    move-exception p1

    .line 292
    const-string v0, "Unable to set PAC file"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 294
    :goto_19
    return-void
.end method

.method private setDownloadIn(I)V
    .registers 6

    .line 278
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/PacManager;->getDownloadDelay(I)J

    move-result-wide v0

    .line 279
    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 280
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mPacRefreshIntent:Landroid/app/PendingIntent;

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 281
    return-void
.end method

.method private unbind()V
    .registers 4

    .line 383
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 384
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 385
    iput-object v1, p0, Lcom/android/server/connectivity/PacManager;->mConnection:Landroid/content/ServiceConnection;

    .line 387
    :cond_c
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_17

    .line 388
    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 389
    iput-object v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyConnection:Landroid/content/ServiceConnection;

    .line 391
    :cond_17
    iput-object v1, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    .line 392
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/PacManager;->mLastPort:I

    .line 393
    return-void
.end method


# virtual methods
.method declared-synchronized setCurrentProxyScriptUrl(Landroid/net/ProxyInfo;)Z
    .registers 6

    monitor-enter p0

    .line 181
    :try_start_1
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3d

    .line 182
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/connectivity/PacManager;->mPacUrl:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPort()I

    move-result v0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_72

    if-lez v0, :cond_22

    .line 184
    monitor-exit p0

    return v1

    .line 186
    :cond_22
    :try_start_22
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/connectivity/PacManager;->mPacUrl:Landroid/net/Uri;

    .line 187
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/connectivity/PacManager;->mCurrentDelay:I

    .line 188
    iput-boolean p1, p0, Lcom/android/server/connectivity/PacManager;->mHasSentBroadcast:Z

    .line 189
    iput-boolean p1, p0, Lcom/android/server/connectivity/PacManager;->mHasDownloaded:Z

    .line 190
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/PacManager;->mPacRefreshIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 191
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->bind()V
    :try_end_3b
    .catchall {:try_start_22 .. :try_end_3b} :catchall_72

    .line 192
    monitor-exit p0

    return p1

    .line 194
    :cond_3d
    :try_start_3d
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mPacRefreshIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 195
    iget-object p1, p0, Lcom/android/server/connectivity/PacManager;->mProxyLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_49
    .catchall {:try_start_3d .. :try_end_49} :catchall_72

    .line 196
    :try_start_49
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mPacUrl:Landroid/net/Uri;

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/PacManager;->mCurrentPac:Ljava/lang/String;

    .line 198
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;
    :try_end_52
    .catchall {:try_start_49 .. :try_end_52} :catchall_6f

    if-eqz v0, :cond_6c

    .line 200
    :try_start_54
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager;->mProxyService:Lcom/android/net/IProxyService;

    invoke-interface {v0}, Lcom/android/net/IProxyService;->stopPacSystem()V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_59} :catch_5f
    .catchall {:try_start_54 .. :try_end_59} :catchall_5d

    .line 204
    :goto_59
    :try_start_59
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->unbind()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_6f

    .line 205
    goto :goto_6c

    .line 204
    :catchall_5d
    move-exception v0

    goto :goto_68

    .line 201
    :catch_5f
    move-exception v0

    .line 202
    :try_start_60
    const-string v2, "PacManager"

    const-string v3, "Failed to stop PAC service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_67
    .catchall {:try_start_60 .. :try_end_67} :catchall_5d

    goto :goto_59

    .line 204
    :goto_68
    :try_start_68
    invoke-direct {p0}, Lcom/android/server/connectivity/PacManager;->unbind()V

    throw v0

    .line 207
    :cond_6c
    :goto_6c
    monitor-exit p1
    :try_end_6d
    .catchall {:try_start_68 .. :try_end_6d} :catchall_6f

    .line 208
    monitor-exit p0

    return v1

    .line 207
    :catchall_6f
    move-exception v0

    :try_start_70
    monitor-exit p1
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    :try_start_71
    throw v0
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_72

    .line 180
    :catchall_72
    move-exception p1

    monitor-exit p0

    throw p1
.end method
