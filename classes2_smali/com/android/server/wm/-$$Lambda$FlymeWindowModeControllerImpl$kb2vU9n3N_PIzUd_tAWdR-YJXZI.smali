.class public final synthetic Lcom/android/server/wm/-$$Lambda$FlymeWindowModeControllerImpl$kb2vU9n3N_PIzUd_tAWdR-YJXZI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$FlymeWindowModeControllerImpl$kb2vU9n3N_PIzUd_tAWdR-YJXZI;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$FlymeWindowModeControllerImpl$kb2vU9n3N_PIzUd_tAWdR-YJXZI;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$FlymeWindowModeControllerImpl$kb2vU9n3N_PIzUd_tAWdR-YJXZI;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$FlymeWindowModeControllerImpl$kb2vU9n3N_PIzUd_tAWdR-YJXZI;->INSTANCE:Lcom/android/server/wm/-$$Lambda$FlymeWindowModeControllerImpl$kb2vU9n3N_PIzUd_tAWdR-YJXZI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Lcom/android/server/wm/TaskStack;

    invoke-static {p1}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->lambda$getTopStackExcludeAlwaysOnTop$2(Lcom/android/server/wm/TaskStack;)Z

    move-result p1

    return p1
.end method
