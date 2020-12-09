.class public Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;
.super Ljava/lang/Object;
.source "RecoverySessionStorage.java"

# interfaces
.implements Ljavax/security/auth/Destroyable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;
    }
.end annotation


# instance fields
.field private final mSessionsByUid:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->mSessionsByUid:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic lambda$remove$0(Ljava/lang/String;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;)Z
    .registers 2

    .line 82
    invoke-static {p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->access$000(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public add(ILcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;)V
    .registers 5

    .line 69
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->mSessionsByUid:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    .line 70
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->mSessionsByUid:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    :cond_12
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->mSessionsByUid:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method public destroy()V
    .registers 5

    .line 125
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->mSessionsByUid:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 126
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_28

    .line 127
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->mSessionsByUid:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 128
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;

    .line 129
    invoke-virtual {v3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->destroy()V

    .line 130
    goto :goto_15

    .line 126
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 132
    :cond_28
    return-void
.end method

.method public get(ILjava/lang/String;)Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;
    .registers 6

    .line 48
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->mSessionsByUid:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 49
    const/4 v0, 0x0

    if-nez p1, :cond_c

    .line 50
    return-object v0

    .line 52
    :cond_c
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;

    .line 53
    invoke-static {v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->access$000(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 54
    return-object v1

    .line 56
    :cond_27
    goto :goto_10

    .line 57
    :cond_28
    return-object v0
.end method

.method public remove(I)V
    .registers 4

    .line 93
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->mSessionsByUid:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 94
    if-nez v0, :cond_b

    .line 95
    return-void

    .line 97
    :cond_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;

    .line 98
    invoke-virtual {v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->destroy()V

    .line 99
    goto :goto_f

    .line 100
    :cond_1f
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->mSessionsByUid:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 101
    return-void
.end method

.method public remove(ILjava/lang/String;)V
    .registers 4

    .line 79
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->mSessionsByUid:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    .line 80
    return-void

    .line 82
    :cond_9
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->mSessionsByUid:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/storage/-$$Lambda$RecoverySessionStorage$1ayqf2qqdJH00fvbhBUKWso4cdc;

    invoke-direct {v0, p2}, Lcom/android/server/locksettings/recoverablekeystore/storage/-$$Lambda$RecoverySessionStorage$1ayqf2qqdJH00fvbhBUKWso4cdc;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 83
    return-void
.end method

.method public size()I
    .registers 5

    .line 109
    nop

    .line 110
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->mSessionsByUid:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 111
    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v1, v0, :cond_1b

    .line 112
    iget-object v3, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->mSessionsByUid:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 113
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 115
    :cond_1b
    return v2
.end method
