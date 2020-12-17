.class interface abstract Lcom/meizu/settings/donotdisturb/DndAppListState$DndAppListStateChangeListener;
.super Ljava/lang/Object;
.source "DndAppListState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/donotdisturb/DndAppListState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "DndAppListStateChangeListener"
.end annotation


# virtual methods
.method public abstract onAppIconLoaded(Ljava/lang/String;)V
.end method

.method public abstract onAppListLoaded(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meizu/settings/donotdisturb/DndBaseInfo;",
            ">;)V"
        }
    .end annotation
.end method
