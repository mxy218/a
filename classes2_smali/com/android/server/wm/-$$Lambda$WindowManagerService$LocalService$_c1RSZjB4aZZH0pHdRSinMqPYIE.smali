.class public final synthetic Lcom/android/server/wm/-$$Lambda$WindowManagerService$LocalService$_c1RSZjB4aZZH0pHdRSinMqPYIE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowManagerService$LocalService$_c1RSZjB4aZZH0pHdRSinMqPYIE;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$LocalService$_c1RSZjB4aZZH0pHdRSinMqPYIE;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$LocalService$_c1RSZjB4aZZH0pHdRSinMqPYIE;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$LocalService$_c1RSZjB4aZZH0pHdRSinMqPYIE;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowManagerService$LocalService$_c1RSZjB4aZZH0pHdRSinMqPYIE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/server/wm/DisplayContent;

    invoke-static {p1}, Lcom/android/server/wm/WindowManagerService$LocalService;->lambda$clearNonHighRefreshRatePackage$2(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method
