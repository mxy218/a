.class public final synthetic Lcom/android/server/wm/-$$Lambda$FlymeWindowManagerService$4s8RIEOFWBVq6f2lZKyPX0A9ijo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$FlymeWindowManagerService$4s8RIEOFWBVq6f2lZKyPX0A9ijo;->f$0:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$FlymeWindowManagerService$4s8RIEOFWBVq6f2lZKyPX0A9ijo;->f$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0}, Lcom/android/server/wm/FlymeWindowManagerService;->lambda$main$0(Lcom/android/server/wm/WindowManagerService;)V

    return-void
.end method
