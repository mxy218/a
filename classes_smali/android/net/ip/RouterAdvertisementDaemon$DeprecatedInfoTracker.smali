.class Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;
.super Ljava/lang/Object;
.source "RouterAdvertisementDaemon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/RouterAdvertisementDaemon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeprecatedInfoTracker"
.end annotation


# instance fields
.field private final mDnses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/net/Inet6Address;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrefixes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/IpPrefix;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->mPrefixes:Ljava/util/HashMap;

    .line 180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->mDnses:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/ip/RouterAdvertisementDaemon$1;)V
    .registers 2

    .line 178
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;-><init>()V

    return-void
.end method

.method static synthetic access$1100(Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;)Z
    .registers 1

    .line 178
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->decrementCounters()Z

    move-result p0

    return p0
.end method

.method private decrementCounter(Ljava/util/HashMap;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 219
    nop

    .line 221
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    .line 222
    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 223
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 224
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_28

    .line 225
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 226
    move v0, v3

    goto :goto_3a

    .line 228
    :cond_28
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :goto_3a
    goto :goto_a

    .line 232
    :cond_3b
    return v0
.end method

.method private decrementCounters()Z
    .registers 3

    .line 213
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->mPrefixes:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->decrementCounter(Ljava/util/HashMap;)Z

    move-result v0

    .line 214
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->mDnses:Ljava/util/HashMap;

    invoke-direct {p0, v1}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->decrementCounter(Ljava/util/HashMap;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 215
    return v0
.end method


# virtual methods
.method getDnses()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/net/Inet6Address;",
            ">;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->mDnses:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getPrefixes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/net/IpPrefix;",
            ">;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->mPrefixes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method isEmpty()Z
    .registers 2

    .line 210
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->mPrefixes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->mDnses:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method putDnses(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/net/Inet6Address;",
            ">;)V"
        }
    .end annotation

    .line 199
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Inet6Address;

    .line 200
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->mDnses:Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    goto :goto_4

    .line 202
    :cond_1b
    return-void
.end method

.method putPrefixes(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/net/IpPrefix;",
            ">;)V"
        }
    .end annotation

    .line 185
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IpPrefix;

    .line 186
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->mPrefixes:Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    goto :goto_4

    .line 188
    :cond_1b
    return-void
.end method

.method removeDnses(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/net/Inet6Address;",
            ">;)V"
        }
    .end annotation

    .line 205
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Inet6Address;

    .line 206
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->mDnses:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    goto :goto_4

    .line 208
    :cond_16
    return-void
.end method

.method removePrefixes(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/net/IpPrefix;",
            ">;)V"
        }
    .end annotation

    .line 191
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IpPrefix;

    .line 192
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->mPrefixes:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    goto :goto_4

    .line 194
    :cond_16
    return-void
.end method
