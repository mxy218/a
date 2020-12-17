.class Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
.super Ljava/lang/Thread;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LegacyVpnRunner"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LegacyVpnRunner"


# instance fields
.field private final mArguments:[[Ljava/lang/String;

.field private mBringupStartTime:J

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mDaemons:[Ljava/lang/String;

.field private final mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mOuterInterface:Ljava/lang/String;

.field private final mProfile:Lcom/android/internal/net/VpnProfile;

.field private final mSockets:[Landroid/net/LocalSocket;

.field final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/net/VpnProfile;)V
    .registers 15
    .param p2, "config"  # Lcom/android/internal/net/VpnConfig;
    .param p3, "racoon"  # [Ljava/lang/String;
    .param p4, "mtpd"  # [Ljava/lang/String;
    .param p5, "profile"  # Lcom/android/internal/net/VpnProfile;

    .line 2192
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 2193
    const-string v0, "LegacyVpnRunner"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 2163
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2167
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBringupStartTime:J

    .line 2172
    new-instance v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;-><init>(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2194
    iput-object p2, p1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 2195
    const-string/jumbo v0, "racoon"

    const-string/jumbo v1, "mtpd"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .line 2197
    const/4 v0, 0x2

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v2, 0x1

    aput-object p4, v0, v2

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    .line 2198
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Landroid/net/LocalSocket;

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    .line 2206
    iget-object v0, p1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    .line 2208
    iput-object p5, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mProfile:Lcom/android/internal/net/VpnProfile;

    .line 2210
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7f

    .line 2211
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 2212
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v2

    array-length v3, v2

    :goto_57
    if-ge v1, v3, :cond_7f

    aget-object v4, v2, v1

    .line 2213
    .local v4, "network":Landroid/net/Network;
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v5

    .line 2214
    .local v5, "lp":Landroid/net/LinkProperties;
    if-eqz v5, :cond_7c

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 2215
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v6

    .line 2216
    .local v6, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v6, :cond_7c

    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2212
    .end local v4  # "network":Landroid/net/Network;
    .end local v5  # "lp":Landroid/net/LinkProperties;
    .end local v6  # "networkInfo":Landroid/net/NetworkInfo;
    :cond_7c
    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    .line 2221
    .end local v0  # "cm":Landroid/net/ConnectivityManager;
    :cond_7f
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2222
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2223
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2224
    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 2156
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 2156
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    return-object v0
.end method

.method private bringup()V
    .registers 17

    .line 2283
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 2286
    .local v2, "initFinished":Z
    const/4 v3, 0x0

    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBringupStartTime:J

    .line 2289
    iget-object v4, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v5, v4

    move v6, v3

    :goto_e
    if-ge v6, v5, :cond_1e

    aget-object v7, v4, v6

    .line 2290
    .local v7, "daemon":Ljava/lang/String;
    invoke-static {v7}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1b

    .line 2291
    invoke-static {v7}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 2289
    .end local v7  # "daemon":Ljava/lang/String;
    :cond_1b
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 2297
    :cond_1e
    iget-object v4, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v5, v4

    move v6, v3

    :goto_22
    const/4 v7, 0x1

    if-ge v6, v5, :cond_34

    aget-object v8, v4, v6

    .line 2298
    .local v8, "daemon":Ljava/lang/String;
    :goto_27
    invoke-static {v8}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_31

    .line 2299
    invoke-direct {v1, v7}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    goto :goto_27

    .line 2297
    .end local v8  # "daemon":Ljava/lang/String;
    :cond_31
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    .line 2304
    :cond_34
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/misc/vpn/state"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2305
    .local v4, "state":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 2306
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3ca

    .line 2309
    new-instance v5, Ljava/io/File;

    const-string v6, "/data/misc/vpn/abort"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 2310
    const/4 v2, 0x1

    .line 2313
    const/4 v5, 0x0

    .line 2314
    .local v5, "restart":Z
    iget-object v6, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    array-length v8, v6

    move v9, v5

    move v5, v3

    .end local v5  # "restart":Z
    .local v9, "restart":Z
    :goto_55
    if-ge v5, v8, :cond_65

    aget-object v10, v6, v5

    .line 2315
    .local v10, "arguments":[Ljava/lang/String;
    if-nez v9, :cond_60

    if-eqz v10, :cond_5e

    goto :goto_60

    :cond_5e
    move v11, v3

    goto :goto_61

    :cond_60
    :goto_60
    move v11, v7

    :goto_61
    move v9, v11

    .line 2314
    .end local v10  # "arguments":[Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_55

    .line 2317
    :cond_65
    if-nez v9, :cond_96

    .line 2318
    iget-object v5, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v5}, Lcom/android/server/connectivity/Vpn;->access$900(Lcom/android/server/connectivity/Vpn;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_6c} :catch_3de
    .catchall {:try_start_4 .. :try_end_6c} :catchall_3d9

    .line 2493
    if-nez v2, :cond_7b

    .line 2494
    iget-object v5, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v6, v5

    :goto_71
    if-ge v3, v6, :cond_7b

    aget-object v7, v5, v3

    .line 2495
    .restart local v7  # "daemon":Ljava/lang/String;
    invoke-static {v7}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 2494
    .end local v7  # "daemon":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_71

    .line 2500
    :cond_7b
    if-eqz v2, :cond_8b

    iget-object v3, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v3}, Lcom/android/server/connectivity/Vpn;->access$1600(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v5, :cond_95

    .line 2501
    :cond_8b
    iget-object v3, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v3}, Lcom/android/server/connectivity/Vpn;->access$900(Lcom/android/server/connectivity/Vpn;)V

    .line 2504
    iget-object v3, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v3}, Lcom/android/server/connectivity/Vpn;->access$1700(Lcom/android/server/connectivity/Vpn;)V

    .line 2319
    :cond_95
    return-void

    .line 2321
    :cond_96
    :try_start_96
    iget-object v5, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v8, "execute"

    invoke-virtual {v5, v6, v8}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 2324
    move v5, v3

    .local v5, "i":I
    :goto_a0
    iget-object v6, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_147

    .line 2325
    iget-object v6, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v6, v6, v5

    .line 2326
    .local v6, "arguments":[Ljava/lang/String;
    if-nez v6, :cond_ad

    .line 2327
    goto/16 :goto_132

    .line 2331
    :cond_ad
    iget-object v10, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    aget-object v10, v10, v5

    .line 2332
    .local v10, "daemon":Ljava/lang/String;
    invoke-static {v10}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 2335
    :goto_b4
    invoke-static {v10}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_be

    .line 2336
    invoke-direct {v1, v7}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    goto :goto_b4

    .line 2340
    :cond_be
    iget-object v11, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    new-instance v12, Landroid/net/LocalSocket;

    invoke-direct {v12}, Landroid/net/LocalSocket;-><init>()V

    aput-object v12, v11, v5

    .line 2341
    new-instance v11, Landroid/net/LocalSocketAddress;

    sget-object v12, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v11, v10, v12}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_ce} :catch_3de
    .catchall {:try_start_96 .. :try_end_ce} :catchall_3d9

    .line 2347
    .local v11, "address":Landroid/net/LocalSocketAddress;
    :goto_ce
    :try_start_ce
    iget-object v12, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    aget-object v12, v12, v5

    invoke-virtual {v12, v11}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_d5} :catch_13f
    .catchall {:try_start_ce .. :try_end_d5} :catchall_3d9

    .line 2348
    nop

    .line 2354
    :try_start_d6
    iget-object v12, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    aget-object v12, v12, v5

    const/16 v13, 0x1f4

    invoke-virtual {v12, v13}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 2357
    iget-object v12, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    aget-object v12, v12, v5

    invoke-virtual {v12}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    .line 2358
    .local v12, "out":Ljava/io/OutputStream;
    array-length v13, v6

    move v14, v3

    :goto_e9
    if-ge v14, v13, :cond_117

    aget-object v15, v6, v14

    .line 2359
    .local v15, "argument":Ljava/lang/String;
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v15, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    .line 2360
    .local v7, "bytes":[B
    array-length v8, v7
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_f4} :catch_3de
    .catchall {:try_start_d6 .. :try_end_f4} :catchall_3d9

    const v3, 0xffff

    if-ge v8, v3, :cond_10f

    .line 2363
    :try_start_f9
    array-length v3, v7

    shr-int/lit8 v3, v3, 0x8

    invoke-virtual {v12, v3}, Ljava/io/OutputStream;->write(I)V

    .line 2364
    array-length v3, v7

    invoke-virtual {v12, v3}, Ljava/io/OutputStream;->write(I)V

    .line 2365
    invoke-virtual {v12, v7}, Ljava/io/OutputStream;->write([B)V
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_106} :catch_18a
    .catchall {:try_start_f9 .. :try_end_106} :catchall_184

    .line 2366
    const/4 v3, 0x0

    :try_start_107
    invoke-direct {v1, v3}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_10a} :catch_3de
    .catchall {:try_start_107 .. :try_end_10a} :catchall_3d9

    .line 2358
    .end local v7  # "bytes":[B
    .end local v15  # "argument":Ljava/lang/String;
    add-int/lit8 v14, v14, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x1

    goto :goto_e9

    .line 2361
    .restart local v7  # "bytes":[B
    .restart local v15  # "argument":Ljava/lang/String;
    :cond_10f
    :try_start_10f
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v8, "Argument is too large"

    invoke-direct {v3, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2  # "initFinished":Z
    .end local p0  # "this":Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    throw v3

    .line 2368
    .end local v7  # "bytes":[B
    .end local v15  # "argument":Ljava/lang/String;
    .restart local v2  # "initFinished":Z
    .restart local p0  # "this":Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :cond_117
    const/16 v3, 0xff

    invoke-virtual {v12, v3}, Ljava/io/OutputStream;->write(I)V

    .line 2369
    invoke-virtual {v12, v3}, Ljava/io/OutputStream;->write(I)V

    .line 2370
    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V

    .line 2373
    iget-object v3, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_12a} :catch_18a
    .catchall {:try_start_10f .. :try_end_12a} :catchall_184

    .line 2376
    .local v3, "in":Ljava/io/InputStream;
    :goto_12a
    :try_start_12a
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v7
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_12a .. :try_end_12e} :catch_139
    .catchall {:try_start_12a .. :try_end_12e} :catchall_184

    const/4 v8, -0x1

    if-ne v7, v8, :cond_138

    .line 2377
    nop

    .line 2324
    .end local v3  # "in":Ljava/io/InputStream;
    .end local v6  # "arguments":[Ljava/lang/String;
    .end local v10  # "daemon":Ljava/lang/String;
    .end local v11  # "address":Landroid/net/LocalSocketAddress;
    .end local v12  # "out":Ljava/io/OutputStream;
    :goto_132
    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x1

    goto/16 :goto_a0

    .line 2381
    .restart local v3  # "in":Ljava/io/InputStream;
    .restart local v6  # "arguments":[Ljava/lang/String;
    .restart local v10  # "daemon":Ljava/lang/String;
    .restart local v11  # "address":Landroid/net/LocalSocketAddress;
    .restart local v12  # "out":Ljava/io/OutputStream;
    :cond_138
    goto :goto_13a

    .line 2379
    :catch_139
    move-exception v0

    .line 2382
    :goto_13a
    const/4 v7, 0x1

    :try_start_13b
    invoke-direct {v1, v7}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    goto :goto_12a

    .line 2349
    .end local v3  # "in":Ljava/io/InputStream;
    .end local v12  # "out":Ljava/io/OutputStream;
    :catch_13f
    move-exception v0

    .line 2352
    const/4 v3, 0x1

    invoke-direct {v1, v3}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V
    :try_end_144
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_144} :catch_18a
    .catchall {:try_start_13b .. :try_end_144} :catchall_184

    const/4 v3, 0x0

    const/4 v7, 0x1

    goto :goto_ce

    .line 2387
    .end local v5  # "i":I
    .end local v6  # "arguments":[Ljava/lang/String;
    .end local v10  # "daemon":Ljava/lang/String;
    .end local v11  # "address":Landroid/net/LocalSocketAddress;
    :cond_147
    :goto_147
    :try_start_147
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_14b
    .catch Ljava/lang/Exception; {:try_start_147 .. :try_end_14b} :catch_3c7
    .catchall {:try_start_147 .. :try_end_14b} :catchall_3c1

    if-nez v3, :cond_18f

    .line 2389
    const/4 v3, 0x0

    move v5, v3

    .restart local v5  # "i":I
    :goto_14f
    :try_start_14f
    iget-object v3, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v3, v3

    if-ge v5, v3, :cond_17f

    .line 2390
    iget-object v3, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    aget-object v3, v3, v5

    .line 2391
    .local v3, "daemon":Ljava/lang/String;
    iget-object v6, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v6, v6, v5

    if-eqz v6, :cond_17c

    invoke-static {v3}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_165

    goto :goto_17c

    .line 2392
    :cond_165
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is dead"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2  # "initFinished":Z
    .end local p0  # "this":Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    throw v6

    .line 2389
    .end local v3  # "daemon":Ljava/lang/String;
    .restart local v2  # "initFinished":Z
    .restart local p0  # "this":Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :cond_17c
    :goto_17c
    add-int/lit8 v5, v5, 0x1

    goto :goto_14f

    .line 2395
    .end local v5  # "i":I
    :cond_17f
    const/4 v3, 0x1

    invoke-direct {v1, v3}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V
    :try_end_183
    .catch Ljava/lang/Exception; {:try_start_14f .. :try_end_183} :catch_18a
    .catchall {:try_start_14f .. :try_end_183} :catchall_184

    goto :goto_147

    .line 2493
    .end local v4  # "state":Ljava/io/File;
    .end local v9  # "restart":Z
    :catchall_184
    move-exception v0

    move v3, v2

    const/4 v7, 0x0

    move-object v2, v0

    goto/16 :goto_42d

    .line 2483
    :catch_18a
    move-exception v0

    move v3, v2

    const/4 v7, 0x0

    goto/16 :goto_3e1

    .line 2399
    .restart local v4  # "state":Ljava/io/File;
    .restart local v9  # "restart":Z
    :cond_18f
    const/4 v3, 0x0

    const/4 v5, 0x0

    :try_start_191
    invoke-static {v4, v5, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_195
    .catch Ljava/lang/Exception; {:try_start_191 .. :try_end_195} :catch_3be
    .catchall {:try_start_191 .. :try_end_195} :catchall_3b8

    :try_start_195
    const-string v5, "\n"

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 2400
    .local v3, "parameters":[Ljava/lang/String;
    array-length v5, v3

    const/4 v6, 0x7

    if-ne v5, v6, :cond_3af

    .line 2405
    iget-object v5, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v5, v5, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    :try_end_1a4
    .catch Ljava/lang/Exception; {:try_start_195 .. :try_end_1a4} :catch_3c7
    .catchall {:try_start_195 .. :try_end_1a4} :catchall_3c1

    const/4 v6, 0x0

    :try_start_1a5
    aget-object v7, v3, v6
    :try_end_1a7
    .catch Ljava/lang/Exception; {:try_start_1a5 .. :try_end_1a7} :catch_3ac
    .catchall {:try_start_1a5 .. :try_end_1a7} :catchall_3a6

    :try_start_1a7
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 2407
    iget-object v5, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v5, v5, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-virtual {v5, v6}, Lcom/android/internal/net/VpnConfig;->addLegacyAddresses(Ljava/lang/String;)V

    .line 2409
    iget-object v5, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v5, v5, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v5, v5, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;
    :try_end_1bd
    .catch Ljava/lang/Exception; {:try_start_1a7 .. :try_end_1bd} :catch_3c7
    .catchall {:try_start_1a7 .. :try_end_1bd} :catchall_3c1

    if-eqz v5, :cond_1cb

    :try_start_1bf
    iget-object v5, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v5, v5, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v5, v5, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5
    :try_end_1c9
    .catch Ljava/lang/Exception; {:try_start_1bf .. :try_end_1c9} :catch_18a
    .catchall {:try_start_1bf .. :try_end_1c9} :catchall_184

    if-eqz v5, :cond_1d5

    .line 2410
    :cond_1cb
    :try_start_1cb
    iget-object v5, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v5, v5, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-virtual {v5, v6}, Lcom/android/internal/net/VpnConfig;->addLegacyRoutes(Ljava/lang/String;)V

    .line 2414
    :cond_1d5
    iget-object v5, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v5, v5, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v5, v5, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;
    :try_end_1db
    .catch Ljava/lang/Exception; {:try_start_1cb .. :try_end_1db} :catch_3c7
    .catchall {:try_start_1cb .. :try_end_1db} :catchall_3c1

    if-eqz v5, :cond_1e9

    :try_start_1dd
    iget-object v5, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v5, v5, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v5, v5, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5
    :try_end_1e7
    .catch Ljava/lang/Exception; {:try_start_1dd .. :try_end_1e7} :catch_18a
    .catchall {:try_start_1dd .. :try_end_1e7} :catchall_184

    if-nez v5, :cond_206

    .line 2415
    :cond_1e9
    const/4 v5, 0x3

    :try_start_1ea
    aget-object v5, v3, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 2416
    .local v5, "dnsServers":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6
    :try_end_1f4
    .catch Ljava/lang/Exception; {:try_start_1ea .. :try_end_1f4} :catch_3c7
    .catchall {:try_start_1ea .. :try_end_1f4} :catchall_3c1

    if-nez v6, :cond_206

    .line 2417
    :try_start_1f6
    iget-object v6, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v6, v6, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;
    :try_end_206
    .catch Ljava/lang/Exception; {:try_start_1f6 .. :try_end_206} :catch_18a
    .catchall {:try_start_1f6 .. :try_end_206} :catchall_184

    .line 2422
    .end local v5  # "dnsServers":Ljava/lang/String;
    :cond_206
    :try_start_206
    iget-object v5, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v5, v5, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v5, v5, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;
    :try_end_20c
    .catch Ljava/lang/Exception; {:try_start_206 .. :try_end_20c} :catch_3c7
    .catchall {:try_start_206 .. :try_end_20c} :catchall_3c1

    if-eqz v5, :cond_21a

    :try_start_20e
    iget-object v5, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v5, v5, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v5, v5, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5
    :try_end_218
    .catch Ljava/lang/Exception; {:try_start_20e .. :try_end_218} :catch_18a
    .catchall {:try_start_20e .. :try_end_218} :catchall_184

    if-nez v5, :cond_237

    .line 2423
    :cond_21a
    const/4 v5, 0x4

    :try_start_21b
    aget-object v5, v3, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 2424
    .local v5, "searchDomains":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6
    :try_end_225
    .catch Ljava/lang/Exception; {:try_start_21b .. :try_end_225} :catch_3c7
    .catchall {:try_start_21b .. :try_end_225} :catchall_3c1

    if-nez v6, :cond_237

    .line 2425
    :try_start_227
    iget-object v6, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v6, v6, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;
    :try_end_237
    .catch Ljava/lang/Exception; {:try_start_227 .. :try_end_237} :catch_18a
    .catchall {:try_start_227 .. :try_end_237} :catchall_184

    .line 2431
    .end local v5  # "searchDomains":Ljava/lang/String;
    :cond_237
    :try_start_237
    iget-object v5, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mProfile:Lcom/android/internal/net/VpnProfile;
    :try_end_239
    .catch Ljava/lang/Exception; {:try_start_237 .. :try_end_239} :catch_3c7
    .catchall {:try_start_237 .. :try_end_239} :catchall_3c1

    const/4 v6, 0x5

    if-eqz v5, :cond_24c

    .line 2432
    :try_start_23c
    aget-object v5, v3, v6

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_249

    iget-object v5, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v5, v5, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    goto :goto_24b

    :cond_249
    aget-object v5, v3, v6
    :try_end_24b
    .catch Ljava/lang/Exception; {:try_start_23c .. :try_end_24b} :catch_18a
    .catchall {:try_start_23c .. :try_end_24b} :catchall_184

    .local v5, "endpoint":Ljava/lang/String;
    :goto_24b
    goto :goto_259

    .line 2434
    .end local v5  # "endpoint":Ljava/lang/String;
    :cond_24c
    :try_start_24c
    aget-object v5, v3, v6

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5
    :try_end_252
    .catch Ljava/lang/Exception; {:try_start_24c .. :try_end_252} :catch_3c7
    .catchall {:try_start_24c .. :try_end_252} :catchall_3c1

    if-eqz v5, :cond_257

    :try_start_254
    const-string v5, ""
    :try_end_256
    .catch Ljava/lang/Exception; {:try_start_254 .. :try_end_256} :catch_18a
    .catchall {:try_start_254 .. :try_end_256} :catchall_184

    goto :goto_259

    :cond_257
    :try_start_257
    aget-object v5, v3, v6

    .line 2437
    .restart local v5  # "endpoint":Ljava/lang/String;
    :goto_259
    invoke-static {v5}, Landroid/net/InetAddresses;->isNumericAddress(Ljava/lang/String;)Z

    move-result v6
    :try_end_25d
    .catch Ljava/lang/Exception; {:try_start_257 .. :try_end_25d} :catch_3c7
    .catchall {:try_start_257 .. :try_end_25d} :catchall_3c1

    if-nez v6, :cond_2a4

    .line 2438
    :try_start_25f
    const-string v6, "LegacyVpnRunner"

    const-string v7, "VPN Endpoint is not numeric. Converting to numeric"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_266
    .catch Ljava/lang/Exception; {:try_start_25f .. :try_end_266} :catch_18a
    .catchall {:try_start_25f .. :try_end_266} :catchall_184

    .line 2440
    :try_start_266
    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6
    :try_end_26e
    .catch Ljava/net/UnknownHostException; {:try_start_266 .. :try_end_26e} :catch_270
    .catch Ljava/lang/Exception; {:try_start_266 .. :try_end_26e} :catch_18a
    .catchall {:try_start_266 .. :try_end_26e} :catchall_184

    move-object v5, v6

    .line 2444
    goto :goto_2a4

    .line 2441
    :catch_270
    move-exception v0

    move-object v6, v0

    .line 2442
    .local v6, "e":Ljava/net/UnknownHostException;
    :try_start_272
    const-string v7, "LegacyVpnRunner"

    const-string v8, "Can\'t parse InetAddress from string: unknown host."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_279
    .catch Ljava/lang/Exception; {:try_start_272 .. :try_end_279} :catch_18a
    .catchall {:try_start_272 .. :try_end_279} :catchall_184

    .line 2493
    if-nez v2, :cond_289

    .line 2494
    iget-object v7, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v8, v7

    const/4 v10, 0x0

    :goto_27f
    if-ge v10, v8, :cond_289

    aget-object v11, v7, v10

    .line 2495
    .local v11, "daemon":Ljava/lang/String;
    invoke-static {v11}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 2494
    .end local v11  # "daemon":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    goto :goto_27f

    .line 2500
    :cond_289
    if-eqz v2, :cond_299

    iget-object v7, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v7}, Lcom/android/server/connectivity/Vpn;->access$1600(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v7, v8, :cond_2a3

    .line 2501
    :cond_299
    iget-object v7, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v7}, Lcom/android/server/connectivity/Vpn;->access$900(Lcom/android/server/connectivity/Vpn;)V

    .line 2504
    iget-object v7, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v7}, Lcom/android/server/connectivity/Vpn;->access$1700(Lcom/android/server/connectivity/Vpn;)V

    .line 2443
    :cond_2a3
    return-void

    .line 2447
    .end local v6  # "e":Ljava/net/UnknownHostException;
    :cond_2a4
    :goto_2a4
    :try_start_2a4
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6
    :try_end_2a8
    .catch Ljava/lang/Exception; {:try_start_2a4 .. :try_end_2a8} :catch_3c7
    .catchall {:try_start_2a4 .. :try_end_2a8} :catchall_3c1

    if-nez v6, :cond_31b

    .line 2449
    :try_start_2aa
    invoke-static {v5}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    .line 2450
    .local v6, "addr":Ljava/net/InetAddress;
    instance-of v7, v6, Ljava/net/Inet4Address;

    const/16 v8, 0x9

    if-eqz v7, :cond_2ca

    .line 2451
    iget-object v7, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v7, v7, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v7, v7, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    new-instance v10, Landroid/net/RouteInfo;

    new-instance v11, Landroid/net/IpPrefix;

    const/16 v12, 0x20

    invoke-direct {v11, v6, v12}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v10, v11, v8}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2fa

    .line 2452
    :cond_2ca
    instance-of v7, v6, Ljava/net/Inet6Address;

    if-eqz v7, :cond_2e4

    .line 2453
    iget-object v7, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v7, v7, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v7, v7, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    new-instance v10, Landroid/net/RouteInfo;

    new-instance v11, Landroid/net/IpPrefix;

    const/16 v12, 0x80

    invoke-direct {v11, v6, v12}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v10, v11, v8}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2fa

    .line 2455
    :cond_2e4
    const-string v7, "LegacyVpnRunner"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown IP address family for VPN endpoint: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2fa
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2aa .. :try_end_2fa} :catch_2fb
    .catch Ljava/lang/Exception; {:try_start_2aa .. :try_end_2fa} :catch_18a
    .catchall {:try_start_2aa .. :try_end_2fa} :catchall_184

    .line 2459
    .end local v6  # "addr":Ljava/net/InetAddress;
    :goto_2fa
    goto :goto_31b

    .line 2457
    :catch_2fb
    move-exception v0

    move-object v6, v0

    .line 2458
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2fd
    const-string v7, "LegacyVpnRunner"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception constructing throw route to "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31b
    .catch Ljava/lang/Exception; {:try_start_2fd .. :try_end_31b} :catch_18a
    .catchall {:try_start_2fd .. :try_end_31b} :catchall_184

    .line 2463
    .end local v6  # "e":Ljava/lang/IllegalArgumentException;
    :cond_31b
    :goto_31b
    :try_start_31b
    iget-object v6, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter v6
    :try_end_31e
    .catch Ljava/lang/Exception; {:try_start_31b .. :try_end_31e} :catch_3c7
    .catchall {:try_start_31b .. :try_end_31e} :catchall_3c1

    .line 2465
    :try_start_31e
    iget-object v7, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v7, v7, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, v7, Lcom/android/internal/net/VpnConfig;->startTime:J
    :try_end_328
    .catchall {:try_start_31e .. :try_end_328} :catchall_39f

    .line 2468
    const/4 v7, 0x0

    :try_start_329
    invoke-direct {v1, v7}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    .line 2471
    iget-object v8, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v10, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v10, v10, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v10, v10, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    invoke-static {v8, v10}, Lcom/android/server/connectivity/Vpn;->access$400(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_382

    .line 2476
    iget-object v8, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v10, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v10, v10, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v10, v10, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    invoke-static {v8, v10}, Lcom/android/server/connectivity/Vpn;->access$302(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;

    .line 2477
    iget-object v8, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v8}, Lcom/android/server/connectivity/Vpn;->access$1400(Lcom/android/server/connectivity/Vpn;)V

    .line 2479
    iget-object v8, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v8}, Lcom/android/server/connectivity/Vpn;->access$1500(Lcom/android/server/connectivity/Vpn;)V

    .line 2481
    const-string v8, "LegacyVpnRunner"

    const-string v10, "Connected!"

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2482
    monitor-exit v6
    :try_end_357
    .catchall {:try_start_329 .. :try_end_357} :catchall_3a4

    .line 2493
    .end local v3  # "parameters":[Ljava/lang/String;
    .end local v4  # "state":Ljava/io/File;
    .end local v5  # "endpoint":Ljava/lang/String;
    .end local v9  # "restart":Z
    if-nez v2, :cond_366

    .line 2494
    iget-object v3, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v4, v3

    :goto_35c
    if-ge v7, v4, :cond_366

    aget-object v5, v3, v7

    .line 2495
    .local v5, "daemon":Ljava/lang/String;
    invoke-static {v5}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 2494
    .end local v5  # "daemon":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_35c

    .line 2500
    :cond_366
    if-eqz v2, :cond_376

    iget-object v3, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v3}, Lcom/android/server/connectivity/Vpn;->access$1600(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_42a

    .line 2501
    :cond_376
    iget-object v3, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v3}, Lcom/android/server/connectivity/Vpn;->access$900(Lcom/android/server/connectivity/Vpn;)V

    .line 2504
    iget-object v3, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v3}, Lcom/android/server/connectivity/Vpn;->access$1700(Lcom/android/server/connectivity/Vpn;)V

    goto/16 :goto_42a

    .line 2472
    .restart local v3  # "parameters":[Ljava/lang/String;
    .restart local v4  # "state":Ljava/io/File;
    .local v5, "endpoint":Ljava/lang/String;
    .restart local v9  # "restart":Z
    :cond_382
    :try_start_382
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v11, v11, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v11, v11, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " is gone"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2  # "initFinished":Z
    .end local v3  # "parameters":[Ljava/lang/String;
    .end local v4  # "state":Ljava/io/File;
    .end local v5  # "endpoint":Ljava/lang/String;
    .end local v9  # "restart":Z
    .end local p0  # "this":Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    throw v8

    .line 2482
    .restart local v2  # "initFinished":Z
    .restart local v3  # "parameters":[Ljava/lang/String;
    .restart local v4  # "state":Ljava/io/File;
    .restart local v5  # "endpoint":Ljava/lang/String;
    .restart local v9  # "restart":Z
    .restart local p0  # "this":Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :catchall_39f
    move-exception v0

    const/4 v7, 0x0

    :goto_3a1
    move-object v8, v0

    monitor-exit v6
    :try_end_3a3
    .catchall {:try_start_382 .. :try_end_3a3} :catchall_3a4

    .end local v2  # "initFinished":Z
    .end local p0  # "this":Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :try_start_3a3
    throw v8

    .restart local v2  # "initFinished":Z
    .restart local p0  # "this":Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :catchall_3a4
    move-exception v0

    goto :goto_3a1

    .line 2493
    .end local v3  # "parameters":[Ljava/lang/String;
    .end local v4  # "state":Ljava/io/File;
    .end local v5  # "endpoint":Ljava/lang/String;
    .end local v9  # "restart":Z
    :catchall_3a6
    move-exception v0

    move v7, v6

    move v3, v2

    move-object v2, v0

    goto/16 :goto_42d

    .line 2483
    :catch_3ac
    move-exception v0

    move v7, v6

    goto :goto_3e0

    .line 2401
    .restart local v3  # "parameters":[Ljava/lang/String;
    .restart local v4  # "state":Ljava/io/File;
    .restart local v9  # "restart":Z
    :cond_3af
    const/4 v7, 0x0

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Cannot parse the state"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2  # "initFinished":Z
    .end local p0  # "this":Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    throw v5

    .line 2493
    .end local v3  # "parameters":[Ljava/lang/String;
    .end local v4  # "state":Ljava/io/File;
    .end local v9  # "restart":Z
    .restart local v2  # "initFinished":Z
    .restart local p0  # "this":Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :catchall_3b8
    move-exception v0

    move v7, v5

    move v3, v2

    move-object v2, v0

    goto/16 :goto_42d

    .line 2483
    :catch_3be
    move-exception v0

    move v7, v5

    goto :goto_3e0

    .line 2493
    :catchall_3c1
    move-exception v0

    const/4 v7, 0x0

    move v3, v2

    move-object v2, v0

    goto/16 :goto_42d

    .line 2483
    :catch_3c7
    move-exception v0

    const/4 v7, 0x0

    goto :goto_3e0

    .line 2307
    .restart local v4  # "state":Ljava/io/File;
    :cond_3ca
    move v7, v3

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "Cannot delete the state"

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2  # "initFinished":Z
    .end local p0  # "this":Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    throw v3
    :try_end_3d3
    .catch Ljava/lang/Exception; {:try_start_3a3 .. :try_end_3d3} :catch_3d7
    .catchall {:try_start_3a3 .. :try_end_3d3} :catchall_3d3

    .line 2493
    .end local v4  # "state":Ljava/io/File;
    .restart local v2  # "initFinished":Z
    .restart local p0  # "this":Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :catchall_3d3
    move-exception v0

    move v3, v2

    move-object v2, v0

    goto :goto_42d

    .line 2483
    :catch_3d7
    move-exception v0

    goto :goto_3e0

    .line 2493
    :catchall_3d9
    move-exception v0

    move v7, v3

    move v3, v2

    move-object v2, v0

    goto :goto_42d

    .line 2483
    :catch_3de
    move-exception v0

    move v7, v3

    :goto_3e0
    move v3, v2

    :goto_3e1
    move-object v2, v0

    .line 2484
    .local v2, "e":Ljava/lang/Exception;
    .local v3, "initFinished":Z
    :try_start_3e2
    const-string v4, "LegacyVpnRunner"

    const-string v5, "Aborting"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2485
    iget-object v4, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 2488
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 2489
    iget-object v4, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v6, "exit"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    :try_end_400
    .catchall {:try_start_3e2 .. :try_end_400} :catchall_42b

    .line 2493
    .end local v2  # "e":Ljava/lang/Exception;
    if-nez v3, :cond_40f

    .line 2494
    iget-object v2, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v4, v2

    :goto_405
    if-ge v7, v4, :cond_40f

    aget-object v5, v2, v7

    .line 2495
    .local v5, "daemon":Ljava/lang/String;
    invoke-static {v5}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 2494
    .end local v5  # "daemon":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_405

    .line 2500
    :cond_40f
    if-eqz v3, :cond_41f

    iget-object v2, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1600(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v4, :cond_429

    .line 2501
    :cond_41f
    iget-object v2, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$900(Lcom/android/server/connectivity/Vpn;)V

    .line 2504
    iget-object v2, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1700(Lcom/android/server/connectivity/Vpn;)V

    .line 2508
    :cond_429
    move v2, v3

    .end local v3  # "initFinished":Z
    .local v2, "initFinished":Z
    :cond_42a
    :goto_42a
    return-void

    .line 2493
    .end local v2  # "initFinished":Z
    .restart local v3  # "initFinished":Z
    :catchall_42b
    move-exception v0

    move-object v2, v0

    :goto_42d
    if-nez v3, :cond_43c

    .line 2494
    iget-object v4, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v5, v4

    :goto_432
    if-ge v7, v5, :cond_43c

    aget-object v6, v4, v7

    .line 2495
    .local v6, "daemon":Ljava/lang/String;
    invoke-static {v6}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 2494
    .end local v6  # "daemon":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_432

    .line 2500
    :cond_43c
    if-eqz v3, :cond_44c

    iget-object v4, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$1600(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_456

    .line 2501
    :cond_44c
    iget-object v4, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$900(Lcom/android/server/connectivity/Vpn;)V

    .line 2504
    iget-object v4, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$1700(Lcom/android/server/connectivity/Vpn;)V

    :cond_456
    throw v2
.end method

.method private checkInterruptAndDelay(Z)V
    .registers 8
    .param p1, "sleepLonger"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 2272
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2273
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBringupStartTime:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1a

    .line 2274
    if-eqz p1, :cond_14

    const-wide/16 v2, 0xc8

    goto :goto_16

    :cond_14
    const-wide/16 v2, 0x1

    :goto_16
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 2279
    return-void

    .line 2276
    :cond_1a
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v4, "checkpoint"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 2277
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "VPN bringup took too long"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private waitForDaemonsToStop()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 2516
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$1600(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2517
    return-void

    .line 2520
    :cond_d
    :goto_d
    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 2521
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_2a

    .line 2522
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_27

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 2523
    return-void

    .line 2521
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .end local v0  # "i":I
    :cond_2a
    goto :goto_d
.end method


# virtual methods
.method public check(Ljava/lang/String;)V
    .registers 4
    .param p1, "interfaze"  # Ljava/lang/String;

    .line 2227
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Legacy VPN is going down with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LegacyVpnRunner"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2229
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 2231
    :cond_21
    return-void
.end method

.method public exit()V
    .registers 3

    .line 2235
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->interrupt()V

    .line 2236
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$900(Lcom/android/server/connectivity/Vpn;)V

    .line 2238
    :try_start_8
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_13} :catch_14

    goto :goto_15

    .line 2239
    :catch_14
    move-exception v0

    :goto_15
    nop

    .line 2240
    return-void
.end method

.method public run()V
    .registers 10

    .line 2245
    const-string v0, "LegacyVpnRunner"

    const-string v1, "Waiting"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    const-string v0, "LegacyVpnRunner"

    monitor-enter v0

    .line 2247
    :try_start_a
    const-string v1, "LegacyVpnRunner"

    const-string v2, "Executing"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_88

    .line 2249
    const-wide/16 v1, 0x32

    const/4 v3, 0x0

    :try_start_14
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->bringup()V

    .line 2250
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->waitForDaemonsToStop()V

    .line 2251
    invoke-static {}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->interrupted()Z
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_1d} :catch_5f
    .catchall {:try_start_14 .. :try_end_1d} :catchall_3d

    .line 2254
    :try_start_1d
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    array-length v5, v4

    move v6, v3

    :goto_21
    if-ge v6, v5, :cond_2b

    aget-object v7, v4, v6

    .line 2255
    .local v7, "socket":Landroid/net/LocalSocket;
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_28
    .catchall {:try_start_1d .. :try_end_28} :catchall_88

    .line 2254
    .end local v7  # "socket":Landroid/net/LocalSocket;
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 2260
    :cond_2b
    :try_start_2b
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2e
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_2e} :catch_2f
    .catchall {:try_start_2b .. :try_end_2e} :catchall_88

    .line 2262
    goto :goto_30

    .line 2261
    :catch_2f
    move-exception v1

    .line 2263
    :goto_30
    :try_start_30
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v2, v1

    :goto_33
    if-ge v3, v2, :cond_80

    aget-object v4, v1, v3

    .line 2264
    .local v4, "daemon":Ljava/lang/String;
    invoke-static {v4}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 2263
    .end local v4  # "daemon":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 2254
    :catchall_3d
    move-exception v4

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    array-length v6, v5

    move v7, v3

    :goto_42
    if-ge v7, v6, :cond_4c

    aget-object v8, v5, v7

    .line 2255
    .local v8, "socket":Landroid/net/LocalSocket;
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_49
    .catchall {:try_start_30 .. :try_end_49} :catchall_88

    .line 2254
    .end local v8  # "socket":Landroid/net/LocalSocket;
    add-int/lit8 v7, v7, 0x1

    goto :goto_42

    .line 2260
    :cond_4c
    :try_start_4c
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4f
    .catch Ljava/lang/InterruptedException; {:try_start_4c .. :try_end_4f} :catch_50
    .catchall {:try_start_4c .. :try_end_4f} :catchall_88

    .line 2262
    goto :goto_51

    .line 2261
    :catch_50
    move-exception v1

    .line 2263
    :goto_51
    :try_start_51
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v2, v1

    :goto_54
    if-ge v3, v2, :cond_5e

    aget-object v5, v1, v3

    .line 2264
    .local v5, "daemon":Ljava/lang/String;
    invoke-static {v5}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 2263
    .end local v5  # "daemon":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_54

    .end local p0  # "this":Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :cond_5e
    throw v4

    .line 2252
    .restart local p0  # "this":Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :catch_5f
    move-exception v4

    .line 2254
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    array-length v5, v4

    move v6, v3

    :goto_64
    if-ge v6, v5, :cond_6e

    aget-object v7, v4, v6

    .line 2255
    .restart local v7  # "socket":Landroid/net/LocalSocket;
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_6b
    .catchall {:try_start_51 .. :try_end_6b} :catchall_88

    .line 2254
    .end local v7  # "socket":Landroid/net/LocalSocket;
    add-int/lit8 v6, v6, 0x1

    goto :goto_64

    .line 2260
    :cond_6e
    :try_start_6e
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_71
    .catch Ljava/lang/InterruptedException; {:try_start_6e .. :try_end_71} :catch_72
    .catchall {:try_start_6e .. :try_end_71} :catchall_88

    .line 2262
    goto :goto_73

    .line 2261
    :catch_72
    move-exception v1

    .line 2263
    :goto_73
    :try_start_73
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v2, v1

    :goto_76
    if-ge v3, v2, :cond_80

    aget-object v4, v1, v3

    .line 2264
    .restart local v4  # "daemon":Ljava/lang/String;
    invoke-static {v4}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 2263
    .end local v4  # "daemon":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_76

    .line 2266
    :cond_80
    nop

    .line 2267
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$900(Lcom/android/server/connectivity/Vpn;)V

    .line 2268
    monitor-exit v0

    .line 2269
    return-void

    .line 2268
    :catchall_88
    move-exception v1

    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_73 .. :try_end_8a} :catchall_88

    throw v1
.end method
