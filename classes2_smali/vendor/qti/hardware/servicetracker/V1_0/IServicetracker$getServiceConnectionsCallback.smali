.class public interface abstract Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$getServiceConnectionsCallback;
.super Ljava/lang/Object;
.source "IServicetracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "getServiceConnectionsCallback"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract onValues(ILjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/servicetracker/V1_0/ServiceConnection;",
            ">;)V"
        }
    .end annotation
.end method
