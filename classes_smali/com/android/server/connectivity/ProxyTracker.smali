.class public Lcom/android/server/connectivity/ProxyTracker;
.super Ljava/lang/Object;
.source "ProxyTracker.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private volatile mDefaultProxy:Landroid/net/ProxyInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProxyLock"
        }
    .end annotation
.end field

.field private mDefaultProxyEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProxyLock"
        }
    .end annotation
.end field

.field private mGlobalProxy:Landroid/net/ProxyInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProxyLock"
        }
    .end annotation
.end field

.field private final mPacManager:Lcom/android/server/connectivity/PacManager;

.field private final mProxyLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    const-class v0, Lcom/android/server/connectivity/ProxyTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/ProxyTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 5

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/ProxyTracker;->mProxyLock:Ljava/lang/Object;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    .line 69
    iput-object v0, p0, Lcom/android/server/connectivity/ProxyTracker;->mDefaultProxy:Landroid/net/ProxyInfo;

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/ProxyTracker;->mDefaultProxyEnabled:Z

    .line 82
    iput-object p1, p0, Lcom/android/server/connectivity/ProxyTracker;->mContext:Landroid/content/Context;

    .line 83
    new-instance v0, Lcom/android/server/connectivity/PacManager;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/connectivity/PacManager;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/android/server/connectivity/ProxyTracker;->mPacManager:Lcom/android/server/connectivity/PacManager;

    .line 84
    return-void
.end method

.method private static canonicalizeProxyInfo(Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;
    .registers 3

    .line 91
    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 92
    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 93
    const/4 p0, 0x0

    return-object p0

    .line 95
    :cond_1a
    return-object p0
.end method

.method public static proxyInfoEqual(Landroid/net/ProxyInfo;Landroid/net/ProxyInfo;)Z
    .registers 3

    .line 108
    invoke-static {p0}, Lcom/android/server/connectivity/ProxyTracker;->canonicalizeProxyInfo(Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;

    move-result-object p0

    .line 109
    invoke-static {p1}, Lcom/android/server/connectivity/ProxyTracker;->canonicalizeProxyInfo(Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;

    move-result-object p1

    .line 112
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    if-eqz p0, :cond_1e

    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    :cond_1e
    const/4 p0, 0x1

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    return p0
.end method


# virtual methods
.method public getDefaultProxy()Landroid/net/ProxyInfo;
    .registers 3

    .line 128
    iget-object v0, p0, Lcom/android/server/connectivity/ProxyTracker;->mProxyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_3
    iget-object v1, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    monitor-exit v0

    return-object v1

    .line 130
    :cond_b
    iget-boolean v1, p0, Lcom/android/server/connectivity/ProxyTracker;->mDefaultProxyEnabled:Z

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/server/connectivity/ProxyTracker;->mDefaultProxy:Landroid/net/ProxyInfo;

    monitor-exit v0

    return-object v1

    .line 131
    :cond_13
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 132
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public getGlobalProxy()Landroid/net/ProxyInfo;
    .registers 3

    .line 143
    iget-object v0, p0, Lcom/android/server/connectivity/ProxyTracker;->mProxyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 144
    :try_start_3
    iget-object v1, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    monitor-exit v0

    return-object v1

    .line 145
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public loadDeprecatedGlobalHttpProxy()V
    .registers 6

    .line 181
    iget-object v0, p0, Lcom/android/server/connectivity/ProxyTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "http_proxy"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 183
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 184
    array-length v1, v0

    if-nez v1, :cond_1c

    .line 185
    return-void

    .line 188
    :cond_1c
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 189
    const/16 v2, 0x1f90

    .line 190
    array-length v3, v0

    const/4 v4, 0x1

    if-le v3, v4, :cond_2e

    .line 192
    :try_start_25
    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_2b} :catch_2c

    .line 195
    goto :goto_2e

    .line 193
    :catch_2c
    move-exception v0

    .line 194
    return-void

    .line 197
    :cond_2e
    :goto_2e
    new-instance v0, Landroid/net/ProxyInfo;

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 198
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/ProxyTracker;->setGlobalProxy(Landroid/net/ProxyInfo;)V

    .line 200
    :cond_38
    return-void
.end method

.method public loadGlobalProxy()V
    .registers 6

    .line 152
    iget-object v0, p0, Lcom/android/server/connectivity/ProxyTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 153
    const-string v1, "global_http_proxy_host"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 154
    const-string v2, "global_http_proxy_port"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 155
    const-string v3, "global_http_proxy_exclusion_list"

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 156
    const-string v4, "global_proxy_pac_url"

    invoke-static {v0, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_60

    .line 159
    :cond_2b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_38

    .line 160
    new-instance v1, Landroid/net/ProxyInfo;

    invoke-direct {v1, v0}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_3d

    .line 162
    :cond_38
    new-instance v0, Landroid/net/ProxyInfo;

    invoke-direct {v0, v1, v2, v3}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 164
    :goto_3d
    invoke-virtual {v0}, Landroid/net/ProxyInfo;->isValid()Z

    move-result v1

    if-nez v1, :cond_5a

    .line 165
    sget-object v1, Lcom/android/server/connectivity/ProxyTracker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid proxy properties, ignoring: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void

    .line 169
    :cond_5a
    iget-object v1, p0, Lcom/android/server/connectivity/ProxyTracker;->mProxyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 170
    :try_start_5d
    iput-object v0, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    .line 171
    monitor-exit v1
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_64

    .line 173
    :cond_60
    invoke-virtual {p0}, Lcom/android/server/connectivity/ProxyTracker;->loadDeprecatedGlobalHttpProxy()V

    .line 175
    return-void

    .line 171
    :catchall_64
    move-exception v0

    :try_start_65
    monitor-exit v1
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw v0
.end method

.method public sendProxyBroadcast()V
    .registers 6

    .line 209
    invoke-virtual {p0}, Lcom/android/server/connectivity/ProxyTracker;->getDefaultProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_7

    goto :goto_f

    :cond_7
    new-instance v0, Landroid/net/ProxyInfo;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v0, v2, v1, v2}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 211
    :goto_f
    iget-object v1, p0, Lcom/android/server/connectivity/ProxyTracker;->mPacManager:Lcom/android/server/connectivity/PacManager;

    invoke-virtual {v1, v0}, Lcom/android/server/connectivity/PacManager;->setCurrentProxyScriptUrl(Landroid/net/ProxyInfo;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 212
    return-void

    .line 214
    :cond_18
    sget-object v1, Lcom/android/server/connectivity/ProxyTracker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sending Proxy Broadcast for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PROXY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    const/high16 v2, 0x24000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 218
    const-string v2, "android.intent.extra.PROXY_INFO"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 219
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 221
    :try_start_44
    iget-object v0, p0, Lcom/android/server/connectivity/ProxyTracker;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_4b
    .catchall {:try_start_44 .. :try_end_4b} :catchall_50

    .line 223
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 224
    nop

    .line 225
    return-void

    .line 223
    :catchall_50
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setDefaultProxy(Landroid/net/ProxyInfo;)V
    .registers 6

    .line 284
    iget-object v0, p0, Lcom/android/server/connectivity/ProxyTracker;->mProxyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 285
    :try_start_3
    iget-object v1, p0, Lcom/android/server/connectivity/ProxyTracker;->mDefaultProxy:Landroid/net/ProxyInfo;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    monitor-exit v0

    return-void

    .line 286
    :cond_d
    if-eqz p1, :cond_2d

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->isValid()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 287
    sget-object v1, Lcom/android/server/connectivity/ProxyTracker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid proxy properties, ignoring: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    monitor-exit v0

    return-void

    .line 296
    :cond_2d
    iget-object v1, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    if-eqz v1, :cond_56

    if-eqz p1, :cond_56

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 297
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_56

    .line 298
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 299
    iput-object p1, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    .line 300
    invoke-virtual {p0}, Lcom/android/server/connectivity/ProxyTracker;->sendProxyBroadcast()V

    .line 301
    monitor-exit v0

    return-void

    .line 303
    :cond_56
    iput-object p1, p0, Lcom/android/server/connectivity/ProxyTracker;->mDefaultProxy:Landroid/net/ProxyInfo;

    .line 305
    iget-object p1, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    if-eqz p1, :cond_5e

    monitor-exit v0

    return-void

    .line 306
    :cond_5e
    iget-boolean p1, p0, Lcom/android/server/connectivity/ProxyTracker;->mDefaultProxyEnabled:Z

    if-eqz p1, :cond_65

    .line 307
    invoke-virtual {p0}, Lcom/android/server/connectivity/ProxyTracker;->sendProxyBroadcast()V

    .line 309
    :cond_65
    monitor-exit v0

    .line 310
    return-void

    .line 309
    :catchall_67
    move-exception p1

    monitor-exit v0
    :try_end_69
    .catchall {:try_start_3 .. :try_end_69} :catchall_67

    throw p1
.end method

.method public setGlobalProxy(Landroid/net/ProxyInfo;)V
    .registers 10

    .line 233
    iget-object v0, p0, Lcom/android/server/connectivity/ProxyTracker;->mProxyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 235
    :try_start_3
    iget-object v1, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    if-ne p1, v1, :cond_9

    monitor-exit v0

    return-void

    .line 236
    :cond_9
    if-eqz p1, :cond_15

    iget-object v1, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    invoke-virtual {p1, v1}, Landroid/net/ProxyInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    monitor-exit v0

    return-void

    .line 237
    :cond_15
    iget-object v1, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v1, p1}, Landroid/net/ProxyInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    monitor-exit v0

    return-void

    .line 243
    :cond_23
    if-eqz p1, :cond_8a

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3b

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 244
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8a

    .line 245
    :cond_3b
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->isValid()Z

    move-result v1

    if-nez v1, :cond_59

    .line 246
    sget-object v1, Lcom/android/server/connectivity/ProxyTracker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid proxy properties, ignoring: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    monitor-exit v0

    return-void

    .line 249
    :cond_59
    new-instance v1, Landroid/net/ProxyInfo;

    invoke-direct {v1, p1}, Landroid/net/ProxyInfo;-><init>(Landroid/net/ProxyInfo;)V

    iput-object v1, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    .line 250
    iget-object v1, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 251
    iget-object v2, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getPort()I

    move-result v2

    .line 252
    iget-object v3, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v3}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v3

    .line 253
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_81

    .line 254
    const-string p1, ""

    goto :goto_94

    :cond_81
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_94

    .line 256
    :cond_8a
    const-string v1, ""

    .line 257
    const/4 v2, 0x0

    .line 258
    const-string v3, ""

    .line 259
    const-string p1, ""

    .line 260
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    .line 262
    :goto_94
    iget-object v4, p0, Lcom/android/server/connectivity/ProxyTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 263
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_9e
    .catchall {:try_start_3 .. :try_end_9e} :catchall_c0

    .line 265
    :try_start_9e
    const-string v7, "global_http_proxy_host"

    invoke-static {v4, v7, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 266
    const-string v1, "global_http_proxy_port"

    invoke-static {v4, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 267
    const-string v1, "global_http_proxy_exclusion_list"

    invoke-static {v4, v1, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 268
    const-string v1, "global_proxy_pac_url"

    invoke-static {v4, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_b2
    .catchall {:try_start_9e .. :try_end_b2} :catchall_bb

    .line 270
    :try_start_b2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 271
    nop

    .line 273
    invoke-virtual {p0}, Lcom/android/server/connectivity/ProxyTracker;->sendProxyBroadcast()V

    .line 274
    monitor-exit v0

    .line 275
    return-void

    .line 270
    :catchall_bb
    move-exception p1

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 274
    :catchall_c0
    move-exception p1

    monitor-exit v0
    :try_end_c2
    .catchall {:try_start_b2 .. :try_end_c2} :catchall_c0

    throw p1
.end method
