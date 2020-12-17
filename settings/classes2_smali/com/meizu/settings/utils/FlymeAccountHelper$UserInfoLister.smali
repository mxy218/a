.class public interface abstract Lcom/meizu/settings/utils/FlymeAccountHelper$UserInfoLister;
.super Ljava/lang/Object;
.source "FlymeAccountHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/utils/FlymeAccountHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UserInfoLister"
.end annotation


# virtual methods
.method public abstract getUserInfoFailed(ILjava/lang/String;)V
.end method

.method public abstract getUserInfoSuccess(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V
.end method

.method public abstract getUserInfoSuccess(Ljava/lang/String;Ljava/lang/String;)V
.end method
