.class public final synthetic Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$V7__18jactj68mqbmRTGjsuUOik;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$V7__18jactj68mqbmRTGjsuUOik;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$V7__18jactj68mqbmRTGjsuUOik;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->lambda$onBootCompleted$8$RollbackManagerServiceImpl()V

    return-void
.end method
