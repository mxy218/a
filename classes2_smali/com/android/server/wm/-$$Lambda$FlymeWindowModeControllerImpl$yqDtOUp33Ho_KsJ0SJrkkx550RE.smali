.class public final synthetic Lcom/android/server/wm/-$$Lambda$FlymeWindowModeControllerImpl$yqDtOUp33Ho_KsJ0SJrkkx550RE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

.field private final synthetic f$1:Lcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/FlymeWindowModeControllerImpl;Lcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$FlymeWindowModeControllerImpl$yqDtOUp33Ho_KsJ0SJrkkx550RE;->f$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$FlymeWindowModeControllerImpl$yqDtOUp33Ho_KsJ0SJrkkx550RE;->f$1:Lcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$FlymeWindowModeControllerImpl$yqDtOUp33Ho_KsJ0SJrkkx550RE;->f$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$FlymeWindowModeControllerImpl$yqDtOUp33Ho_KsJ0SJrkkx550RE;->f$1:Lcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->lambda$registerWindowModeListener$4$FlymeWindowModeControllerImpl(Lcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;)V

    return-void
.end method
