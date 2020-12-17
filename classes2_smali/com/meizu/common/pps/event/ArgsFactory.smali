.class public Lcom/meizu/common/pps/event/ArgsFactory;
.super Ljava/lang/Object;
.source "ArgsFactory.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ObjectFactory"

.field public static final sCaches:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/meizu/common/pps/ObjectCache<",
            "Lcom/meizu/common/pps/event/Args;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/meizu/common/pps/event/ArgsFactory;->sCaches:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addClass(Ljava/lang/Class;I)V
    .registers 6
    .param p1, "maxSize"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/meizu/common/pps/event/Args;",
            ">;I)V"
        }
    .end annotation

    .line 17
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/meizu/common/pps/event/Args;>;"
    if-nez p0, :cond_3

    return-void

    .line 18
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, "className":Ljava/lang/String;
    sget-object v1, Lcom/meizu/common/pps/event/ArgsFactory;->sCaches:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/pps/ObjectCache;

    .line 20
    .local v1, "cache":Lcom/meizu/common/pps/ObjectCache;, "Lcom/meizu/common/pps/ObjectCache<Lcom/meizu/common/pps/event/Args;>;"
    if-eqz v1, :cond_23

    .line 21
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v3, "addClass %s fail."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ObjectFactory"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return-void

    .line 24
    :cond_23
    sget-object v2, Lcom/meizu/common/pps/event/ArgsFactory;->sCaches:Ljava/util/HashMap;

    new-instance v3, Lcom/meizu/common/pps/ObjectCache;

    invoke-direct {v3, p0, p1}, Lcom/meizu/common/pps/ObjectCache;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/meizu/common/pps/event/Args;
    .registers 4
    .param p0, "className"  # Ljava/lang/String;

    .line 47
    sget-object v0, Lcom/meizu/common/pps/event/ArgsFactory;->sCaches:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/pps/ObjectCache;

    .line 48
    .local v0, "cache":Lcom/meizu/common/pps/ObjectCache;, "Lcom/meizu/common/pps/ObjectCache<Lcom/meizu/common/pps/event/Args;>;"
    if-nez v0, :cond_1d

    .line 49
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string v2, "create %s fail."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ObjectFactory"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const/4 v1, 0x0

    return-object v1

    .line 52
    :cond_1d
    invoke-virtual {v0}, Lcom/meizu/common/pps/ObjectCache;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/pps/event/Args;

    return-object v1
.end method

.method public static recycle(Lcom/meizu/common/pps/event/Args;)V
    .registers 5
    .param p0, "obj"  # Lcom/meizu/common/pps/event/Args;

    .line 28
    if-nez p0, :cond_3

    return-void

    .line 29
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/common/pps/event/Args;->recycle()V

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "className":Ljava/lang/String;
    sget-object v1, Lcom/meizu/common/pps/event/ArgsFactory;->sCaches:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/pps/ObjectCache;

    .line 32
    .local v1, "cache":Lcom/meizu/common/pps/ObjectCache;, "Lcom/meizu/common/pps/ObjectCache<Lcom/meizu/common/pps/event/Args;>;"
    if-nez v1, :cond_2a

    .line 33
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v3, "recycle %s fail."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ObjectFactory"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void

    .line 36
    :cond_2a
    invoke-virtual {v1, p0}, Lcom/meizu/common/pps/ObjectCache;->put(Ljava/lang/Object;)V

    .line 37
    return-void
.end method

.method public static recycle(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "+",
            "Lcom/meizu/common/pps/event/Args;",
            ">;)V"
        }
    .end annotation

    .line 40
    .local p0, "objs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lcom/meizu/common/pps/event/Args;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 41
    :cond_7
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/pps/event/Args;

    .line 42
    .local v1, "obj":Lcom/meizu/common/pps/event/Args;
    invoke-static {v1}, Lcom/meizu/common/pps/event/ArgsFactory;->recycle(Lcom/meizu/common/pps/event/Args;)V

    .line 43
    .end local v1  # "obj":Lcom/meizu/common/pps/event/Args;
    goto :goto_b

    .line 44
    :cond_1b
    return-void
.end method
