.class public final synthetic Lcom/android/server/-$$Lambda$PackageWatchdog$ZYXCPv-g8AolCxNNTIoK4ITZJpQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/PackageWatchdog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/PackageWatchdog;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$PackageWatchdog$ZYXCPv-g8AolCxNNTIoK4ITZJpQ;->f$0:Lcom/android/server/PackageWatchdog;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/-$$Lambda$PackageWatchdog$ZYXCPv-g8AolCxNNTIoK4ITZJpQ;->f$0:Lcom/android/server/PackageWatchdog;

    invoke-static {v0}, Lcom/android/server/PackageWatchdog;->lambda$ZYXCPv-g8AolCxNNTIoK4ITZJpQ(Lcom/android/server/PackageWatchdog;)V

    return-void
.end method
