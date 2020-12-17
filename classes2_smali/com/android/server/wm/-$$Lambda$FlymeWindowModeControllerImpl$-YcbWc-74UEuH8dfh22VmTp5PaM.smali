.class public final synthetic Lcom/android/server/wm/-$$Lambda$FlymeWindowModeControllerImpl$-YcbWc-74UEuH8dfh22VmTp5PaM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/FlymeWindowModeControllerImpl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$FlymeWindowModeControllerImpl$-YcbWc-74UEuH8dfh22VmTp5PaM;->f$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$FlymeWindowModeControllerImpl$-YcbWc-74UEuH8dfh22VmTp5PaM;->f$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    check-cast p1, Lcom/android/server/wm/TaskStack;

    invoke-static {v0, p1}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->lambda$-YcbWc-74UEuH8dfh22VmTp5PaM(Lcom/android/server/wm/FlymeWindowModeControllerImpl;Lcom/android/server/wm/TaskStack;)V

    return-void
.end method
