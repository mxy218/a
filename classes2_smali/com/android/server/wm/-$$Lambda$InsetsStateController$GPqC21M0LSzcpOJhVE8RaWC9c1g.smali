.class public final synthetic Lcom/android/server/wm/-$$Lambda$InsetsStateController$GPqC21M0LSzcpOJhVE8RaWC9c1g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/InsetsStateController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/InsetsStateController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$InsetsStateController$GPqC21M0LSzcpOJhVE8RaWC9c1g;->f$0:Lcom/android/server/wm/InsetsStateController;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$InsetsStateController$GPqC21M0LSzcpOJhVE8RaWC9c1g;->f$0:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->lambda$notifyPendingInsetsControlChanged$3$InsetsStateController()V

    return-void
.end method
