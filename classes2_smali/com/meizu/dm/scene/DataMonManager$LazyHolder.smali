.class Lcom/meizu/dm/scene/DataMonManager$LazyHolder;
.super Ljava/lang/Object;
.source "DataMonManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/dm/scene/DataMonManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/meizu/dm/scene/DataMonManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 38
    new-instance v0, Lcom/meizu/dm/scene/DataMonManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/meizu/dm/scene/DataMonManager;-><init>(Lcom/meizu/dm/scene/DataMonManager$1;)V

    sput-object v0, Lcom/meizu/dm/scene/DataMonManager$LazyHolder;->INSTANCE:Lcom/meizu/dm/scene/DataMonManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/meizu/dm/scene/DataMonManager;
    .registers 1

    .line 36
    sget-object v0, Lcom/meizu/dm/scene/DataMonManager$LazyHolder;->INSTANCE:Lcom/meizu/dm/scene/DataMonManager;

    return-object v0
.end method
