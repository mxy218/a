.class public final synthetic Lcom/android/server/-$$Lambda$LocationManagerService$LocationProvider$nsL4uwojBLPzs1TzMfpQIBSm7p0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/LocationManagerService$LocationProvider;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/LocationManagerService$LocationProvider;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$LocationManagerService$LocationProvider$nsL4uwojBLPzs1TzMfpQIBSm7p0;->f$0:Lcom/android/server/LocationManagerService$LocationProvider;

    iput-boolean p2, p0, Lcom/android/server/-$$Lambda$LocationManagerService$LocationProvider$nsL4uwojBLPzs1TzMfpQIBSm7p0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/-$$Lambda$LocationManagerService$LocationProvider$nsL4uwojBLPzs1TzMfpQIBSm7p0;->f$0:Lcom/android/server/LocationManagerService$LocationProvider;

    iget-boolean v1, p0, Lcom/android/server/-$$Lambda$LocationManagerService$LocationProvider$nsL4uwojBLPzs1TzMfpQIBSm7p0;->f$1:Z

    invoke-virtual {v0, v1}, Lcom/android/server/LocationManagerService$LocationProvider;->lambda$onSetEnabled$2$LocationManagerService$LocationProvider(Z)V

    return-void
.end method
