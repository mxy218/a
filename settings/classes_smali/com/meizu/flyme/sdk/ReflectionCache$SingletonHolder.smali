.class Lcom/meizu/flyme/sdk/ReflectionCache$SingletonHolder;
.super Ljava/lang/Object;
.source "ReflectionCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/sdk/ReflectionCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/meizu/flyme/sdk/ReflectionCache;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 149
    new-instance v0, Lcom/meizu/flyme/sdk/ReflectionCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/meizu/flyme/sdk/ReflectionCache;-><init>(Lcom/meizu/flyme/sdk/ReflectionCache$1;)V

    sput-object v0, Lcom/meizu/flyme/sdk/ReflectionCache$SingletonHolder;->INSTANCE:Lcom/meizu/flyme/sdk/ReflectionCache;

    return-void
.end method

.method static synthetic access$000()Lcom/meizu/flyme/sdk/ReflectionCache;
    .registers 1

    .line 148
    sget-object v0, Lcom/meizu/flyme/sdk/ReflectionCache$SingletonHolder;->INSTANCE:Lcom/meizu/flyme/sdk/ReflectionCache;

    return-object v0
.end method
