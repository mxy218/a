.class public final synthetic Lcom/meizu/server/-$$Lambda$I9ys2h0hnB20VoaJzNnO2QGt4_4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/meizu/server/FLymeAppOpsHandle;


# direct methods
.method public synthetic constructor <init>(Lcom/meizu/server/FLymeAppOpsHandle;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/server/-$$Lambda$I9ys2h0hnB20VoaJzNnO2QGt4_4;->f$0:Lcom/meizu/server/FLymeAppOpsHandle;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/meizu/server/-$$Lambda$I9ys2h0hnB20VoaJzNnO2QGt4_4;->f$0:Lcom/meizu/server/FLymeAppOpsHandle;

    invoke-virtual {v0}, Lcom/meizu/server/FLymeAppOpsHandle;->writeState()V

    return-void
.end method
