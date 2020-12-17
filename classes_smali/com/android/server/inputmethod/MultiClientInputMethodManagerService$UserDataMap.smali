.class final Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;
.super Ljava/lang/Object;
.source "MultiClientInputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UserDataMap"
.end annotation


# instance fields
.field private final mMap:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 664
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->mMap:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$1;)V
    .registers 2
    .param p1, "x0"  # Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$1;

    .line 663
    invoke-direct {p0}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;-><init>()V

    return-void
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .registers 10
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "ipw"  # Lcom/android/internal/util/IndentingPrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 692
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->mMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 693
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->mMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_42

    .line 694
    iget-object v2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->mMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 695
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->mMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    .line 696
    .local v3, "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", data="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 697
    if-eqz v3, :cond_3f

    .line 698
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 699
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->dump(Ljava/io/FileDescriptor;Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 700
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 693
    .end local v2  # "userId":I
    .end local v3  # "data":Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 703
    .end local v1  # "i":I
    :cond_42
    monitor-exit v0

    .line 704
    return-void

    .line 703
    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_4 .. :try_end_46} :catchall_44

    throw v1
.end method

.method get(I)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    .registers 4
    .param p1, "userId"  # I

    .line 670
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->mMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 671
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->mMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    monitor-exit v0

    return-object v1

    .line 672
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method put(ILcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;)V
    .registers 5
    .param p1, "userId"  # I
    .param p2, "data"  # Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    .line 677
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->mMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 678
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->mMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 679
    monitor-exit v0

    .line 680
    return-void

    .line 679
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method removeReturnOld(I)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    .registers 4
    .param p1, "userId"  # I

    .line 685
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->mMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 686
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->mMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    monitor-exit v0

    return-object v1

    .line 687
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method
