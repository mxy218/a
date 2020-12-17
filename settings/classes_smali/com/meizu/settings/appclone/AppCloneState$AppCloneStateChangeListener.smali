.class interface abstract Lcom/meizu/settings/appclone/AppCloneState$AppCloneStateChangeListener;
.super Ljava/lang/Object;
.source "AppCloneState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/appclone/AppCloneState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "AppCloneStateChangeListener"
.end annotation


# virtual methods
.method public abstract onAppCloneIconLoaded(Ljava/lang/String;)V
.end method

.method public abstract onAppCloneListChange(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meizu/settings/appclone/AppCloneBaseInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onAppCloneListLoaded(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meizu/settings/appclone/AppCloneBaseInfo;",
            ">;)V"
        }
    .end annotation
.end method
