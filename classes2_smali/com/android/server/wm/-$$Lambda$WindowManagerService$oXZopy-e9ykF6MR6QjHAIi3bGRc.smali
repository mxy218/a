.class public final synthetic Lcom/android/server/wm/-$$Lambda$WindowManagerService$oXZopy-e9ykF6MR6QjHAIi3bGRc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowManagerService$oXZopy-e9ykF6MR6QjHAIi3bGRc;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$oXZopy-e9ykF6MR6QjHAIi3bGRc;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$oXZopy-e9ykF6MR6QjHAIi3bGRc;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$oXZopy-e9ykF6MR6QjHAIi3bGRc;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowManagerService$oXZopy-e9ykF6MR6QjHAIi3bGRc;

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

    invoke-static {p1}, Lcom/android/server/wm/WindowManagerService;->lambda$onOverlayChanged$10(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method
