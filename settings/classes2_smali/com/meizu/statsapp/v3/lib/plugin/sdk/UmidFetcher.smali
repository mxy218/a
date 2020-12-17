.class public Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;
.super Ljava/lang/Object;
.source "UmidFetcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UmidFetcher"

.field private static final lock:Ljava/lang/Object;

.field private static sInstance:Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;


# instance fields
.field private context:Landroid/content/Context;

.field private fulled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->fulled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->context:Landroid/content/Context;

    const-string v0, "com.meizu.statsapp.v3.umid"

    .line 47
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->sp:Landroid/content/SharedPreferences;

    return-void
.end method

.method private buildFullUri(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    .line 209
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/constants/UxipConstants;->GET_UMID_URL:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 210
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 211
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->getTerType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ter_type"

    .line 212
    invoke-virtual {v0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 213
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/utils/FlymeOSUtils;->isBox(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_37

    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/utils/FlymeOSUtils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 215
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/utils/FlymeOSUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "imei"

    .line 216
    invoke-virtual {v0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 217
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/utils/FlymeOSUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_37
    const-string v2, "android"

    const-string v3, "os_type"

    .line 219
    invoke-virtual {v0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 220
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/utils/FlymeOSUtils;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "android_id"

    .line 222
    invoke-virtual {v0, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 223
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 225
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v4, "ts"

    .line 226
    invoke-virtual {v0, v4, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 227
    invoke-interface {v1, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    invoke-virtual {p1}, Ljava/util/Random;->nextInt()I

    move-result p1

    int-to-long v4, p1

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v2, "nonce"

    .line 229
    invoke-virtual {v0, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 230
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->sp:Landroid/content/SharedPreferences;

    const-string p1, "UMID"

    const-string v2, ""

    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "umid"

    .line 232
    invoke-virtual {v0, p1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 233
    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_91
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_c8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 235
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 236
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 237
    sget-object v3, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "buildFullUri, uriParam: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_91

    .line 239
    :cond_c8
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/constants/UxipConstants;->GET_UMID_URL:Ljava/lang/String;

    const/4 p1, 0x0

    const-string v2, "POST"

    .line 240
    invoke-static {v2, p0, v1, p1}, Lcom/meizu/statsapp/v3/lib/plugin/utils/NetRequestUtil;->sign(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "sign"

    .line 239
    invoke-virtual {v0, p1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 241
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private buildGetUri(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    .line 168
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/constants/UxipConstants;->GET_UMID_URL:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 169
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 170
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->getTerType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ter_type"

    .line 171
    invoke-virtual {v0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 172
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/utils/FlymeOSUtils;->isBox(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_37

    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/utils/FlymeOSUtils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 174
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/utils/FlymeOSUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "imei"

    .line 175
    invoke-virtual {v0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 176
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/utils/FlymeOSUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_37
    const-string v2, "android"

    const-string v3, "os_type"

    .line 178
    invoke-virtual {v0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 179
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v3, "os_version"

    invoke-virtual {v0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 181
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->getMacWithoutColon()Ljava/lang/String;

    move-result-object p0

    const-string v2, "mac"

    .line 183
    invoke-virtual {v0, v2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 184
    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-static {}, Lcom/meizu/statsapp/v3/lib/plugin/utils/FlymeOSUtils;->getSN()Ljava/lang/String;

    move-result-object p0

    const-string v2, "sn"

    .line 186
    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-virtual {v0, v2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 188
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/utils/FlymeOSUtils;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "android_id"

    .line 189
    invoke-virtual {v0, p1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 190
    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    const-wide/16 v2, 0x3e8

    div-long/2addr p0, v2

    .line 192
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ts"

    .line 193
    invoke-virtual {v0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 194
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, "nonce"

    .line 196
    invoke-virtual {v0, p1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 197
    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_da

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 199
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 200
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 201
    sget-object v3, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "buildGetUri, uriParam: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a3

    .line 203
    :cond_da
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/constants/UxipConstants;->GET_UMID_URL:Ljava/lang/String;

    const/4 p1, 0x0

    const-string v2, "GET"

    .line 204
    invoke-static {v2, p0, v1, p1}, Lcom/meizu/statsapp/v3/lib/plugin/utils/NetRequestUtil;->sign(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "sign"

    .line 203
    invoke-virtual {v0, p1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 205
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private fullUmidIdIf()V
    .registers 6

    .line 94
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/utils/NetInfoUtils;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 95
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->TAG:Ljava/lang/String;

    const-string v0, "full UMID Ids, network unavailable"

    invoke-static {p0, v0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 99
    :cond_10
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/utils/FlymeOSUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->sp:Landroid/content/SharedPreferences;

    const-string v2, ""

    const-string v3, "imei"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    iget-object v3, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->sp:Landroid/content/SharedPreferences;

    const-string v4, "secondary_imei"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3c

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    :cond_3a
    const/4 v1, 0x0

    goto :goto_44

    .line 106
    :cond_3c
    sget-object v1, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->TAG:Ljava/lang/String;

    const-string v2, "findNewImei true"

    invoke-static {v1, v2}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    :goto_44
    if-eqz v1, :cond_8e

    .line 109
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8e

    .line 110
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->buildFullUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 111
    sget-object v1, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "try fullUmidFromServer... url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->getInstance(Landroid/content/Context;)Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "POST"

    invoke-virtual {v1, v0, v3, v2, v2}, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->stringpartRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;

    move-result-object v0

    .line 113
    sget-object v1, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fullUmidIds, response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-direct {p0, v0}, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->handleResponse(Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;)Z

    :cond_8e
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;
    .registers 3

    .line 51
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->sInstance:Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;

    if-nez v0, :cond_17

    .line 52
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_7
    sget-object v1, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->sInstance:Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;

    if-nez v1, :cond_12

    .line 54
    new-instance v1, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;

    invoke-direct {v1, p0}, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->sInstance:Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;

    .line 56
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 58
    :cond_17
    :goto_17
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->sInstance:Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;

    return-object p0
.end method

.method private getMacWithoutColon()Ljava/lang/String;
    .registers 3

    .line 148
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/meizu/statsapp/v3/lib/plugin/utils/NetInfoUtils;->getMACAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_14

    const-string v0, ":"

    const-string v1, ""

    .line 150
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 151
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    :cond_14
    return-object p0
.end method

.method private getTerType()Ljava/lang/String;
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/utils/FlymeOSUtils;->isBox(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 158
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;->FLYME_TV:Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;

    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 159
    :cond_f
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/meizu/statsapp/v3/lib/plugin/utils/FlymeOSUtils;->isTablet(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1e

    .line 160
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;->PAD:Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;

    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 162
    :cond_1e
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;->PHONE:Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;

    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getUmidFromServer()Ljava/lang/String;
    .registers 6

    .line 78
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/utils/NetInfoUtils;->isOnline(Landroid/content/Context;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_12

    .line 79
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->TAG:Ljava/lang/String;

    const-string v0, "getUmidFromServer, network unavailable"

    invoke-static {p0, v0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 82
    :cond_12
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->buildGetUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 83
    iget-object v2, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/meizu/statsapp/v3/lib/plugin/utils/RequestFreqRestrict;->isAllow(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_21

    return-object v1

    .line 86
    :cond_21
    sget-object v2, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "try getUmidFromServer... url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v2, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->getInstance(Landroid/content/Context;)Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "GET"

    invoke-virtual {v2, v0, v4, v3, v3}, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->stringpartRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;

    move-result-object v0

    .line 88
    sget-object v2, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUmidFromServer, response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0, v0}, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->handleResponse(Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;)Z

    .line 90
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->sp:Landroid/content/SharedPreferences;

    const-string v0, "UMID"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleResponse(Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;)Z
    .registers 9

    const-string v0, "sn"

    const-string v1, "secondary_imei"

    const-string v2, "imei"

    if-eqz p1, :cond_b3

    .line 119
    invoke-virtual {p1}, Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_b3

    .line 120
    invoke-virtual {p1}, Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;->getResponseBody()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b3

    .line 122
    :try_start_16
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;->getResponseBody()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    .line 123
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v4, :cond_b3

    .line 125
    sget-object p1, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Successfully posted to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/meizu/statsapp/v3/lib/plugin/constants/UxipConstants;->GET_UMID_URL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "value"

    .line 126
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v3, "umid"

    .line 127
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 128
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b3

    .line 129
    sget-object v4, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new umid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v4, "UMID"

    .line 131
    invoke-interface {p0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 132
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 133
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 134
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 135
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_8a
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_8a} :catch_8c

    const/4 p0, 0x1

    return p0

    :catch_8c
    move-exception p0

    .line 140
    sget-object p1, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - Cause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b3
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public declared-synchronized fetchOrRequestUMID()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    .line 67
    :try_start_1
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->sp:Landroid/content/SharedPreferences;

    const-string v1, "UMID"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 68
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->getUmidFromServer()Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_32

    monitor-exit p0

    return-object v0

    .line 70
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->fulled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 71
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->fullUmidIdIf()V

    .line 73
    :cond_26
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->sp:Landroid/content/SharedPreferences;

    const-string v1, "UMID"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_30
    .catchall {:try_start_19 .. :try_end_30} :catchall_32

    monitor-exit p0

    return-object v0

    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0
.end method
