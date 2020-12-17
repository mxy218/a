.class interface abstract Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$FlymeSecretsControlCallback;
.super Ljava/lang/Object;
.source "FlymeSecretsControlHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "FlymeSecretsControlCallback"
.end annotation


# virtual methods
.method public abstract onClearPrivatesComplete()V
.end method

.method public abstract onExportPrivatesComplete()V
.end method

.method public abstract onMarkPrivateComplete(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meizu/privacy/aidl/UpdatePrivateResult;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onMarkUnPrivateComplete(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meizu/privacy/aidl/UpdatePrivateResult;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onQueryPrivateComplete(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meizu/privacy/aidl/PrivateItem;",
            ">;)V"
        }
    .end annotation
.end method
