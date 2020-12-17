.class public interface abstract Lcom/meizu/common/pps/event/ISystemEventCallback;
.super Ljava/lang/Object;
.source "ISystemEventCallback.java"


# virtual methods
.method public abstract doInit(Lcom/meizu/common/pps/event/Args;)V
.end method

.method public abstract setAppList(ILjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setAudioState(I[I[I)V
.end method

.method public abstract setKeyguardState(I)V
.end method
