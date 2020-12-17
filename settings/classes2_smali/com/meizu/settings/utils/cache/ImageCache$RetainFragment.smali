.class public Lcom/meizu/settings/utils/cache/ImageCache$RetainFragment;
.super Landroid/app/Fragment;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/utils/cache/ImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RetainFragment"
.end annotation


# instance fields
.field private mObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 176
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getObject()Ljava/lang/Object;
    .registers 1

    .line 191
    iget-object p0, p0, Lcom/meizu/settings/utils/cache/ImageCache$RetainFragment;->mObject:Ljava/lang/Object;

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 180
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 183
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->setRetainInstance(Z)V

    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .registers 2

    .line 187
    iput-object p1, p0, Lcom/meizu/settings/utils/cache/ImageCache$RetainFragment;->mObject:Ljava/lang/Object;

    return-void
.end method
