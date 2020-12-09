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

    .line 663
    invoke-direct {p0}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;-><init>()V

    return-void
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .registers 10

    .line 692
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->mMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 693
    const/4 v1, 0x0

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
    iget-object v3, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->mMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    .line 696
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", data="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 697
    if-eqz v3, :cond_3f

    .line 698
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 699
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;->dump(Ljava/io/FileDescriptor;Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 700
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 693
    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 703
    :cond_42
    monitor-exit v0

    .line 704
    return-void

    .line 703
    :catchall_44
    move-exception p1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_4 .. :try_end_46} :catchall_44

    throw p1
.end method

.method get(I)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    .registers 4

    .line 670
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->mMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 671
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->mMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    monitor-exit v0

    return-object p1

    .line 672
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method put(ILcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;)V
    .registers 5

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
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method removeReturnOld(I)Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;
    .registers 4

    .line 685
    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->mMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 686
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;->mMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;

    monitor-exit v0

    return-object p1

    .line 687
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method
