.class public final synthetic Lcom/android/server/wm/-$$Lambda$FlymeWindowManagerService$EqEKw1mwKcYNYKMryF4jOomvaro;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/wm/-$$Lambda$FlymeWindowManagerService$EqEKw1mwKcYNYKMryF4jOomvaro;->f$0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/wm/-$$Lambda$FlymeWindowManagerService$EqEKw1mwKcYNYKMryF4jOomvaro;->f$0:Z

    check-cast p1, Lcom/android/server/wm/AppWindowToken;

    invoke-static {v0, p1}, Lcom/android/server/wm/FlymeWindowManagerService;->lambda$setLockOrientationForSensor$1(ZLcom/android/server/wm/AppWindowToken;)V

    return-void
.end method
