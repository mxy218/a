.class public Lorg/apache/http/impl/conn/tsccm/BasicPoolEntryRef;
.super Ljava/lang/ref/WeakReference;
.source "BasicPoolEntryRef.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final route:Lorg/apache/http/conn/routing/HttpRoute;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;Ljava/lang/ref/ReferenceQueue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    if-eqz p1, :cond_c

    .line 70
    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getPlannedRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntryRef;->route:Lorg/apache/http/conn/routing/HttpRoute;

    return-void

    .line 67
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Pool entry must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getRoute()Lorg/apache/http/conn/routing/HttpRoute;
    .registers 1

    .line 81
    iget-object p0, p0, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntryRef;->route:Lorg/apache/http/conn/routing/HttpRoute;

    return-object p0
.end method
