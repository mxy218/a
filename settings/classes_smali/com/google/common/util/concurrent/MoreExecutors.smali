.class public final Lcom/google/common/util/concurrent/MoreExecutors;
.super Ljava/lang/Object;
.source "MoreExecutors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutor;,
        Lcom/google/common/util/concurrent/MoreExecutors$Application;
    }
.end annotation


# direct methods
.method public static directExecutor()Ljava/util/concurrent/Executor;
    .registers 1

    .line 450
    sget-object v0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutor;->INSTANCE:Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutor;

    return-object v0
.end method
