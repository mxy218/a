.class public final synthetic Lcom/android/server/wm/-$$Lambda$WindowManagerService$QGTApvQkj7JVfTvOVrLJ6s24-v8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowManagerService$QGTApvQkj7JVfTvOVrLJ6s24-v8;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$QGTApvQkj7JVfTvOVrLJ6s24-v8;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$QGTApvQkj7JVfTvOVrLJ6s24-v8;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$QGTApvQkj7JVfTvOVrLJ6s24-v8;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowManagerService$QGTApvQkj7JVfTvOVrLJ6s24-v8;

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

    invoke-static {p1}, Lcom/android/server/wm/WindowManagerService;->lambda$syncInputTransactions$12(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method
