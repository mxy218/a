.class Lcom/meizu/pps/observer/PPSProcessManager$Instance;
.super Ljava/lang/Object;
.source "PPSProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/pps/observer/PPSProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Instance"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/meizu/pps/observer/PPSProcessManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 42
    new-instance v0, Lcom/meizu/pps/observer/PPSProcessManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/meizu/pps/observer/PPSProcessManager;-><init>(Lcom/meizu/pps/observer/PPSProcessManager$1;)V

    sput-object v0, Lcom/meizu/pps/observer/PPSProcessManager$Instance;->INSTANCE:Lcom/meizu/pps/observer/PPSProcessManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/meizu/pps/observer/PPSProcessManager;
    .registers 1

    .line 41
    sget-object v0, Lcom/meizu/pps/observer/PPSProcessManager$Instance;->INSTANCE:Lcom/meizu/pps/observer/PPSProcessManager;

    return-object v0
.end method
