.class Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;
.super Ljava/lang/Object;
.source "RollbackManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/rollback/RollbackManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NewRollback"
.end annotation


# instance fields
.field public final data:Lcom/android/server/rollback/RollbackData;

.field public isCancelled:Z

.field private final mTokens:Landroid/util/IntArray;

.field public final packageSessionIds:[I


# direct methods
.method constructor <init>(Lcom/android/server/rollback/RollbackData;[I)V
    .registers 4

    .line 1560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1537
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;->mTokens:Landroid/util/IntArray;

    .line 1558
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;->isCancelled:Z

    .line 1561
    iput-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;->data:Lcom/android/server/rollback/RollbackData;

    .line 1562
    iput-object p2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;->packageSessionIds:[I

    .line 1563
    return-void
.end method


# virtual methods
.method public addToken(I)V
    .registers 3

    .line 1566
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;->mTokens:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    .line 1567
    return-void
.end method

.method public hasToken(I)Z
    .registers 3

    .line 1570
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;->mTokens:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->indexOf(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method
