.class Lcom/android/systemui/util/leak/WeakIdentityHashMap$CmpWeakReference;
.super Ljava/lang/ref/WeakReference;
.source "WeakIdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/leak/WeakIdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CmpWeakReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private final mHashCode:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 76
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/util/leak/WeakIdentityHashMap$CmpWeakReference;->mHashCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 81
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/util/leak/WeakIdentityHashMap$CmpWeakReference;->mHashCode:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 89
    :cond_4
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_1a

    .line 90
    instance-of v2, p1, Lcom/android/systemui/util/leak/WeakIdentityHashMap$CmpWeakReference;

    if-eqz v2, :cond_1a

    .line 91
    check-cast p1, Lcom/android/systemui/util/leak/WeakIdentityHashMap$CmpWeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p0, :cond_18

    goto :goto_19

    :cond_18
    move v0, v1

    :goto_19
    return v0

    :cond_1a
    return v1
.end method

.method public hashCode()I
    .registers 1

    .line 98
    iget p0, p0, Lcom/android/systemui/util/leak/WeakIdentityHashMap$CmpWeakReference;->mHashCode:I

    return p0
.end method
