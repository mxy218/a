.class public final synthetic Lcom/android/server/-$$Lambda$LooperStatsService$XtFJEDeyYRT79ZkVP96XkHribxg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/-$$Lambda$LooperStatsService$XtFJEDeyYRT79ZkVP96XkHribxg;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/-$$Lambda$LooperStatsService$XtFJEDeyYRT79ZkVP96XkHribxg;

    invoke-direct {v0}, Lcom/android/server/-$$Lambda$LooperStatsService$XtFJEDeyYRT79ZkVP96XkHribxg;-><init>()V

    sput-object v0, Lcom/android/server/-$$Lambda$LooperStatsService$XtFJEDeyYRT79ZkVP96XkHribxg;->INSTANCE:Lcom/android/server/-$$Lambda$LooperStatsService$XtFJEDeyYRT79ZkVP96XkHribxg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/internal/os/LooperStats$ExportedEntry;

    invoke-static {p1}, Lcom/android/server/LooperStatsService;->lambda$dump$3(Lcom/android/internal/os/LooperStats$ExportedEntry;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
