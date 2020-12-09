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
    .registers 9

    .line 1945
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 1946
    const-string v0, "LegacyVpnRunner"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1916
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1920
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBringupStartTime:J

    .line 1925
    new-instance v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;-><init>(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1947
    iput-object p2, p1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 1948
    const-string/jumbo p2, "racoon"

    const-string/jumbo v0, "mtpd"

    filled-new-array {p2, v0}, [Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .line 1950
    const/4 p2, 0x2

    new-array p2, p2, [[Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, p2, v0

    const/4 p3, 0x1

    aput-object p4, p2, p3

    iput-object p2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    .line 1951
    iget-object p2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length p2, p2

    new-array p2, p2, [Landroid/net/LocalSocket;

    iput-object p2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    .line 1959
    iget-object p2, p1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object p2, p2, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    .line 1961
    iput-object p5, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mProfile:Lcom/android/internal/net/VpnProfile;

    .line 1963
    iget-object p2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7f

    .line 1964
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->access$700(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object p2

    .line 1965
    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object p3

    array-length p4, p3

    :goto_57
    if-ge v0, p4, :cond_7f

    aget-object p5, p3, v0

    .line 1966
    invoke-virtual {p2, p5}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v1

    .line 1967
    if-eqz v1, :cond_7c

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 1968
    invoke-virtual {p2, p5}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object p5

    .line 1969
    if-eqz p5, :cond_7c

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p5}, Landroid/net/NetworkInfo;->getType()I

    move-result p5

    invoke-virtual {v1, p5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1965
    :cond_7c
    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    .line 1974
    :cond_7f
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 1975
    const-string p3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1976
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->access$700(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object p1

    iget-object p3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1977
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 1909
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Ljava/lang/String;
    .registers 1

    .line 1909
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    return-object p0
.end method

.method private bringup()V
    .registers 13

    .line 2036
    nop

    .line 2039
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBringupStartTime:J

    .line 2042
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1e

    aget-object v5, v0, v3

    .line 2043
    :goto_11
    invoke-static {v5}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1b

    .line 2044
    invoke-direct {p0, v4}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    goto :goto_11

    .line 2042
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 2049
    :cond_1e
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/vpn/state"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2050
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2051
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2c7

    .line 2054
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/misc/vpn/abort"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2055
    nop

    .line 2058
    nop

    .line 2059
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    array-length v3, v1

    move v5, v2

    move v6, v5

    :goto_3f
    if-ge v5, v3, :cond_4e

    aget-object v7, v1, v5

    .line 2060
    if-nez v6, :cond_4a

    if-eqz v7, :cond_48

    goto :goto_4a

    :cond_48
    move v6, v2

    goto :goto_4b

    :cond_4a
    :goto_4a
    move v6, v4

    .line 2059
    :goto_4b
    add-int/lit8 v5, v5, 0x1

    goto :goto_3f

    .line 2062
    :cond_4e
    if-nez v6, :cond_56

    .line 2063
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)V

    .line 2064
    return-void

    .line 2066
    :cond_56
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v5, "execute"

    invoke-virtual {v1, v3, v5}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 2069
    move v1, v2

    :goto_60
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v3, v3

    const/4 v5, -0x1

    if-ge v1, v3, :cond_fe

    .line 2070
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v3, v3, v1

    .line 2071
    if-nez v3, :cond_6e

    .line 2072
    goto/16 :goto_ef

    .line 2076
    :cond_6e
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    aget-object v6, v6, v1

    .line 2077
    invoke-static {v6}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 2080
    :goto_75
    invoke-static {v6}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7f

    .line 2081
    invoke-direct {p0, v4}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    goto :goto_75

    .line 2085
    :cond_7f
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    new-instance v8, Landroid/net/LocalSocket;

    invoke-direct {v8}, Landroid/net/LocalSocket;-><init>()V

    aput-object v8, v7, v1

    .line 2086
    new-instance v7, Landroid/net/LocalSocketAddress;

    sget-object v8, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v7, v6, v8}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8f} :catch_2cf

    .line 2092
    :goto_8f
    :try_start_8f
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    aget-object v6, v6, v1

    invoke-virtual {v6, v7}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_96} :catch_f9

    .line 2093
    nop

    .line 2099
    :try_start_97
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    aget-object v6, v6, v1

    const/16 v7, 0x1f4

    invoke-virtual {v6, v7}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 2102
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    .line 2103
    array-length v7, v3

    move v8, v2

    :goto_aa
    if-ge v8, v7, :cond_d5

    aget-object v9, v3, v8

    .line 2104
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    .line 2105
    array-length v10, v9

    const v11, 0xffff

    if-ge v10, v11, :cond_cd

    .line 2108
    array-length v10, v9

    shr-int/lit8 v10, v10, 0x8

    invoke-virtual {v6, v10}, Ljava/io/OutputStream;->write(I)V

    .line 2109
    array-length v10, v9

    invoke-virtual {v6, v10}, Ljava/io/OutputStream;->write(I)V

    .line 2110
    invoke-virtual {v6, v9}, Ljava/io/OutputStream;->write([B)V

    .line 2111
    invoke-direct {p0, v2}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    .line 2103
    add-int/lit8 v8, v8, 0x1

    goto :goto_aa

    .line 2106
    :cond_cd
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument is too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2113
    :cond_d5
    const/16 v3, 0xff

    invoke-virtual {v6, v3}, Ljava/io/OutputStream;->write(I)V

    .line 2114
    invoke-virtual {v6, v3}, Ljava/io/OutputStream;->write(I)V

    .line 2115
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 2118
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_e8} :catch_2cf

    .line 2121
    :goto_e8
    :try_start_e8
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v6
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_ec} :catch_f4

    if-ne v6, v5, :cond_f3

    .line 2122
    nop

    .line 2069
    :goto_ef
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_60

    .line 2126
    :cond_f3
    goto :goto_f5

    .line 2124
    :catch_f4
    move-exception v6

    .line 2127
    :goto_f5
    :try_start_f5
    invoke-direct {p0, v4}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    goto :goto_e8

    .line 2094
    :catch_f9
    move-exception v6

    .line 2097
    invoke-direct {p0, v4}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    goto :goto_8f

    .line 2132
    :cond_fe
    :goto_fe
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_139

    .line 2134
    move v1, v2

    :goto_105
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_135

    .line 2135
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    aget-object v3, v3, v1

    .line 2136
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v6, v6, v1

    if-eqz v6, :cond_132

    invoke-static {v3}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11b

    goto :goto_132

    .line 2137
    :cond_11b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is dead"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2134
    :cond_132
    :goto_132
    add-int/lit8 v1, v1, 0x1

    goto :goto_105

    .line 2140
    :cond_135
    invoke-direct {p0, v4}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    goto :goto_fe

    .line 2144
    :cond_139
    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 2145
    array-length v1, v0

    const/4 v3, 0x7

    if-ne v1, v3, :cond_2bf

    .line 2150
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 2152
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    aget-object v3, v0, v4

    invoke-virtual {v1, v3}, Lcom/android/internal/net/VpnConfig;->addLegacyAddresses(Ljava/lang/String;)V

    .line 2154
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    if-eqz v1, :cond_171

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17b

    .line 2155
    :cond_171
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-virtual {v1, v3}, Lcom/android/internal/net/VpnConfig;->addLegacyRoutes(Ljava/lang/String;)V

    .line 2159
    :cond_17b
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v1, :cond_18f

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1ac

    .line 2160
    :cond_18f
    const/4 v1, 0x3

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2161
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1ac

    .line 2162
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v3, v3, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v3, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 2167
    :cond_1ac
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    if-eqz v1, :cond_1c0

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1dd

    .line 2168
    :cond_1c0
    const/4 v1, 0x4

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2169
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1dd

    .line 2170
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v3, v3, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v3, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 2175
    :cond_1dd
    const/4 v1, 0x5

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1eb

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    goto :goto_1ed

    :cond_1eb
    aget-object v0, v0, v1

    .line 2176
    :goto_1ed
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1
    :try_end_1f1
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_1f1} :catch_2cf

    if-nez v1, :cond_263

    .line 2178
    :try_start_1f3
    invoke-static {v0}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 2179
    instance-of v3, v1, Ljava/net/Inet4Address;

    const/16 v4, 0x9

    if-eqz v3, :cond_213

    .line 2180
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v3, v3, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    new-instance v5, Landroid/net/RouteInfo;

    new-instance v6, Landroid/net/IpPrefix;

    const/16 v7, 0x20

    invoke-direct {v6, v1, v7}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v5, v6, v4}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_243

    .line 2181
    :cond_213
    instance-of v3, v1, Ljava/net/Inet6Address;

    if-eqz v3, :cond_22d

    .line 2182
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v3, v3, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    new-instance v5, Landroid/net/RouteInfo;

    new-instance v6, Landroid/net/IpPrefix;

    const/16 v7, 0x80

    invoke-direct {v6, v1, v7}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v5, v6, v4}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_243

    .line 2184
    :cond_22d
    const-string v1, "LegacyVpnRunner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown IP address family for VPN endpoint: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_243
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f3 .. :try_end_243} :catch_244
    .catch Ljava/lang/Exception; {:try_start_1f3 .. :try_end_243} :catch_2cf

    .line 2188
    :goto_243
    goto :goto_263

    .line 2186
    :catch_244
    move-exception v1

    .line 2187
    :try_start_245
    const-string v3, "LegacyVpnRunner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception constructing throw route to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2192
    :cond_263
    :goto_263
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter v0
    :try_end_266
    .catch Ljava/lang/Exception; {:try_start_245 .. :try_end_266} :catch_2cf

    .line 2194
    :try_start_266
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 2197
    invoke-direct {p0, v2}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    .line 2200
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v2, v2, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/connectivity/Vpn;->access$400(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_29f

    .line 2205
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v2, v2, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/connectivity/Vpn;->access$302(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;

    .line 2206
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;)V

    .line 2208
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$1400(Lcom/android/server/connectivity/Vpn;)V

    .line 2210
    const-string v1, "LegacyVpnRunner"

    const-string v2, "Connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    monitor-exit v0

    .line 2216
    goto :goto_2e5

    .line 2201
    :cond_29f
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v3, v3, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is gone"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2211
    :catchall_2bc
    move-exception v1

    monitor-exit v0
    :try_end_2be
    .catchall {:try_start_266 .. :try_end_2be} :catchall_2bc

    :try_start_2be
    throw v1

    .line 2146
    :cond_2bf
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot parse the state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2052
    :cond_2c7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot delete the state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2cf
    .catch Ljava/lang/Exception; {:try_start_2be .. :try_end_2cf} :catch_2cf

    .line 2212
    :catch_2cf
    move-exception v0

    .line 2213
    const-string v1, "LegacyVpnRunner"

    const-string v2, "Aborting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2214
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 2215
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 2217
    :goto_2e5
    return-void
.end method

.method private checkInterruptAndDelay(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 2025
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2026
    iget-wide v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBringupStartTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-gtz v0, :cond_19

    .line 2027
    if-eqz p1, :cond_13

    const-wide/16 v0, 0xc8

    goto :goto_15

    :cond_13
    const-wide/16 v0, 0x1

    :goto_15
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 2032
    return-void

    .line 2029
    :cond_19
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "checkpoint"

    invoke-virtual {p1, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 2030
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "VPN bringup took too long"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private waitForDaemonsToStop()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 2225
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$1500(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2226
    return-void

    .line 2229
    :cond_d
    :goto_d
    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 2230
    const/4 v0, 0x0

    :goto_13
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_2a

    .line 2231
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_27

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 2232
    return-void

    .line 2230
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_2a
    goto :goto_d
.end method


# virtual methods
.method public check(Ljava/lang/String;)V
    .registers 4

    .line 1980
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Legacy VPN is going down with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LegacyVpnRunner"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 1984
    :cond_21
    return-void
.end method

.method public exit()V
    .registers 3

    .line 1988
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->interrupt()V

    .line 1989
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)V

    .line 1991
    :try_start_8
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$700(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_13} :catch_14

    goto :goto_15

    .line 1992
    :catch_14
    move-exception v0

    :goto_15
    nop

    .line 1993
    return-void
.end method

.method public run()V
    .registers 10

    .line 1998
    const-string v0, "LegacyVpnRunner"

    const-string v1, "Waiting"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    const-string v0, "LegacyVpnRunner"

    monitor-enter v0

    .line 2000
    :try_start_a
    const-string v1, "LegacyVpnRunner"

    const-string v2, "Executing"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_88

    .line 2002
    const-wide/16 v1, 0x32

    const/4 v3, 0x0

    :try_start_14
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->bringup()V

    .line 2003
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->waitForDaemonsToStop()V

    .line 2004
    invoke-static {}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->interrupted()Z
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_1d} :catch_5f
    .catchall {:try_start_14 .. :try_end_1d} :catchall_3d

    .line 2007
    :try_start_1d
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    array-length v5, v4

    move v6, v3

    :goto_21
    if-ge v6, v5, :cond_2b

    aget-object v7, v4, v6

    .line 2008
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_28
    .catchall {:try_start_1d .. :try_end_28} :catchall_88

    .line 2007
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 2013
    :cond_2b
    :try_start_2b
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2e
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_2e} :catch_2f
    .catchall {:try_start_2b .. :try_end_2e} :catchall_88

    .line 2015
    goto :goto_30

    .line 2014
    :catch_2f
    move-exception v1

    .line 2016
    :goto_30
    :try_start_30
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v2, v1

    :goto_33
    if-ge v3, v2, :cond_80

    aget-object v4, v1, v3

    .line 2017
    invoke-static {v4}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 2016
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 2007
    :catchall_3d
    move-exception v4

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    array-length v6, v5

    move v7, v3

    :goto_42
    if-ge v7, v6, :cond_4c

    aget-object v8, v5, v7

    .line 2008
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_49
    .catchall {:try_start_30 .. :try_end_49} :catchall_88

    .line 2007
    add-int/lit8 v7, v7, 0x1

    goto :goto_42

    .line 2013
    :cond_4c
    :try_start_4c
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4f
    .catch Ljava/lang/InterruptedException; {:try_start_4c .. :try_end_4f} :catch_50
    .catchall {:try_start_4c .. :try_end_4f} :catchall_88

    .line 2015
    goto :goto_51

    .line 2014
    :catch_50
    move-exception v1

    .line 2016
    :goto_51
    :try_start_51
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v2, v1

    :goto_54
    if-ge v3, v2, :cond_5e

    aget-object v5, v1, v3

    .line 2017
    invoke-static {v5}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 2016
    add-int/lit8 v3, v3, 0x1

    goto :goto_54

    :cond_5e
    throw v4

    .line 2005
    :catch_5f
    move-exception v4

    .line 2007
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    array-length v5, v4

    move v6, v3

    :goto_64
    if-ge v6, v5, :cond_6e

    aget-object v7, v4, v6

    .line 2008
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_6b
    .catchall {:try_start_51 .. :try_end_6b} :catchall_88

    .line 2007
    add-int/lit8 v6, v6, 0x1

    goto :goto_64

    .line 2013
    :cond_6e
    :try_start_6e
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_71
    .catch Ljava/lang/InterruptedException; {:try_start_6e .. :try_end_71} :catch_72
    .catchall {:try_start_6e .. :try_end_71} :catchall_88

    .line 2015
    goto :goto_73

    .line 2014
    :catch_72
    move-exception v1

    .line 2016
    :goto_73
    :try_start_73
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v2, v1

    :goto_76
    if-ge v3, v2, :cond_80

    aget-object v4, v1, v3

    .line 2017
    invoke-static {v4}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 2016
    add-int/lit8 v3, v3, 0x1

    goto :goto_76

    .line 2019
    :cond_80
    nop

    .line 2020
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)V

    .line 2021
    monitor-exit v0

    .line 2022
    return-void

    .line 2021
    :catchall_88
    move-exception v1

    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_73 .. :try_end_8a} :catchall_88

    throw v1
.end method
