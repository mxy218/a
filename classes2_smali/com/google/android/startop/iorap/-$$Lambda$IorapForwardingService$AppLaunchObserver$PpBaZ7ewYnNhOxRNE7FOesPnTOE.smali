.class public final synthetic Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$AppLaunchObserver$PpBaZ7ewYnNhOxRNE7FOesPnTOE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/startop/iorap/IorapForwardingService$RemoteRunnable;


# instance fields
.field private final synthetic f$0:Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;

.field private final synthetic f$1:[B


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;[B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$AppLaunchObserver$PpBaZ7ewYnNhOxRNE7FOesPnTOE;->f$0:Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;

    iput-object p2, p0, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$AppLaunchObserver$PpBaZ7ewYnNhOxRNE7FOesPnTOE;->f$1:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$AppLaunchObserver$PpBaZ7ewYnNhOxRNE7FOesPnTOE;->f$0:Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;

    iget-object v1, p0, Lcom/google/android/startop/iorap/-$$Lambda$IorapForwardingService$AppLaunchObserver$PpBaZ7ewYnNhOxRNE7FOesPnTOE;->f$1:[B

    invoke-virtual {v0, v1}, Lcom/google/android/startop/iorap/IorapForwardingService$AppLaunchObserver;->lambda$onActivityLaunchFinished$4$IorapForwardingService$AppLaunchObserver([B)V

    return-void
.end method
