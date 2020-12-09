.class Lcom/android/server/broadcastradio/hal1/Convert;
.super Ljava/lang/Object;
.source "Convert.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BroadcastRadioService.Convert"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static stringMapToNative(Ljava/util/Map;)[[Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 40
    const-string v0, "BroadcastRadioService.Convert"

    const/4 v1, 0x0

    if-nez p0, :cond_17

    .line 41
    const-string p0, "map is null, returning zero-elements array"

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    filled-new-array {v1, v1}, [I

    move-result-object p0

    const-class v0, Ljava/lang/String;

    invoke-static {v0, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[Ljava/lang/String;

    return-object p0

    .line 45
    :cond_17
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 46
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v2

    .line 47
    const/4 v3, 0x2

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/lang/String;

    .line 49
    nop

    .line 50
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v3, v1

    :goto_32
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_56

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 51
    aget-object v5, v2, v3

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v5, v1

    .line 52
    aget-object v5, v2, v3

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v5, v6

    .line 53
    add-int/lit8 v3, v3, 0x1

    .line 54
    goto :goto_32

    .line 56
    :cond_56
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "converted "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " element(s)"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-object v2
.end method
