.class public interface abstract Lcom/meizu/common/pps/event/IProcessEventCallback;
.super Ljava/lang/Object;
.source "IProcessEventCallback.java"


# virtual methods
.method public abstract add(Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;)V
.end method

.method public abstract preLaunchApps(ILjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract remove(ILjava/lang/String;)V
.end method

.method public abstract setAdj([I[I)V
.end method

.method public abstract setFlags(III)V
.end method

.method public abstract setOom([I[I[Ljava/lang/String;)V
.end method

.method public abstract setPss(III)V
.end method
