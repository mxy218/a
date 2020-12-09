.class public final synthetic Lcom/android/server/om/-$$Lambda$IdmapDaemon$hZvlb8B5bMAnD3h9mHLjOQXKSTI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/om/-$$Lambda$IdmapDaemon$hZvlb8B5bMAnD3h9mHLjOQXKSTI;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/om/-$$Lambda$IdmapDaemon$hZvlb8B5bMAnD3h9mHLjOQXKSTI;

    invoke-direct {v0}, Lcom/android/server/om/-$$Lambda$IdmapDaemon$hZvlb8B5bMAnD3h9mHLjOQXKSTI;-><init>()V

    sput-object v0, Lcom/android/server/om/-$$Lambda$IdmapDaemon$hZvlb8B5bMAnD3h9mHLjOQXKSTI;->INSTANCE:Lcom/android/server/om/-$$Lambda$IdmapDaemon$hZvlb8B5bMAnD3h9mHLjOQXKSTI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 1

    invoke-static {}, Lcom/android/server/om/IdmapDaemon;->lambda$connect$1()V

    return-void
.end method
