.class public final synthetic Lcom/android/server/om/-$$Lambda$IdmapDaemon$u_1qfM2VGzol3UUX0R4mwNZs9gY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/om/-$$Lambda$IdmapDaemon$u_1qfM2VGzol3UUX0R4mwNZs9gY;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/om/-$$Lambda$IdmapDaemon$u_1qfM2VGzol3UUX0R4mwNZs9gY;

    invoke-direct {v0}, Lcom/android/server/om/-$$Lambda$IdmapDaemon$u_1qfM2VGzol3UUX0R4mwNZs9gY;-><init>()V

    sput-object v0, Lcom/android/server/om/-$$Lambda$IdmapDaemon$u_1qfM2VGzol3UUX0R4mwNZs9gY;->INSTANCE:Lcom/android/server/om/-$$Lambda$IdmapDaemon$u_1qfM2VGzol3UUX0R4mwNZs9gY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lcom/android/server/om/IdmapDaemon;->lambda$connect$0()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
