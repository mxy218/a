.class Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;
.super Landroid/database/ContentObserver;
.source "PrintManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->registerContentObservers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

.field final synthetic val$enabledPrintServicesUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;Landroid/os/Handler;Landroid/net/Uri;)V
    .registers 4

    .line 794
    iput-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    iput-object p3, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;->val$enabledPrintServicesUri:Landroid/net/Uri;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .registers 6

    .line 797
    iget-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;->val$enabledPrintServicesUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_42

    .line 798
    iget-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$200(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 799
    :try_start_f
    iget-object p2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$300(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    .line 800
    const/4 v0, 0x0

    :goto_1a
    if-ge v0, p2, :cond_3d

    .line 801
    const/4 v1, -0x1

    if-eq p3, v1, :cond_2b

    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    .line 802
    invoke-static {v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$300(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    if-ne p3, v1, :cond_3a

    .line 803
    :cond_2b
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$300(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/print/UserState;

    invoke-virtual {v1}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V

    .line 800
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 806
    :cond_3d
    monitor-exit p1

    goto :goto_42

    :catchall_3f
    move-exception p2

    monitor-exit p1
    :try_end_41
    .catchall {:try_start_f .. :try_end_41} :catchall_3f

    throw p2

    .line 808
    :cond_42
    :goto_42
    return-void
.end method
