.class public interface abstract Lcom/meizu/settings/utils/FlymeAccountHelper$BusinessStateChangeListenner;
.super Ljava/lang/Object;
.source "FlymeAccountHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/utils/FlymeAccountHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BusinessStateChangeListenner"
.end annotation


# virtual methods
.method public abstract handleAccountNotLogin(Landroid/os/Bundle;)V
.end method

.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onSuccess(Landroid/os/Bundle;)V
.end method
