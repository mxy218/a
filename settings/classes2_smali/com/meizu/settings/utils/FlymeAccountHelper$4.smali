.class Lcom/meizu/settings/utils/FlymeAccountHelper$4;
.super Ljava/lang/Object;
.source "FlymeAccountHelper.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/utils/FlymeAccountHelper;->handleUserInfoJson(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/utils/FlymeAccountHelper;


# direct methods
.method constructor <init>(Lcom/meizu/settings/utils/FlymeAccountHelper;)V
    .registers 2

    .line 367
    iput-object p1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper$4;->this$0:Lcom/meizu/settings/utils/FlymeAccountHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Landroid/graphics/Bitmap;)V
    .registers 5

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "imageRequest...onResponse..bitmap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mUserIconUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper$4;->this$0:Lcom/meizu/settings/utils/FlymeAccountHelper;

    invoke-static {v1}, Lcom/meizu/settings/utils/FlymeAccountHelper;->access$600(Lcom/meizu/settings/utils/FlymeAccountHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeAccountHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper$4;->this$0:Lcom/meizu/settings/utils/FlymeAccountHelper;

    invoke-static {v0, p1}, Lcom/meizu/settings/utils/FlymeAccountHelper;->access$700(Lcom/meizu/settings/utils/FlymeAccountHelper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 374
    iget-object v0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper$4;->this$0:Lcom/meizu/settings/utils/FlymeAccountHelper;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v0}, Lcom/meizu/settings/utils/FlymeAccountHelper;->access$900(Lcom/meizu/settings/utils/FlymeAccountHelper;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v0, v1}, Lcom/meizu/settings/utils/FlymeAccountHelper;->access$802(Lcom/meizu/settings/utils/FlymeAccountHelper;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    .line 376
    iget-object v0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper$4;->this$0:Lcom/meizu/settings/utils/FlymeAccountHelper;

    invoke-static {v0, p1}, Lcom/meizu/settings/utils/FlymeAccountHelper;->access$1000(Lcom/meizu/settings/utils/FlymeAccountHelper;Landroid/graphics/Bitmap;)V

    .line 379
    iget-object p1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper$4;->this$0:Lcom/meizu/settings/utils/FlymeAccountHelper;

    invoke-static {p1}, Lcom/meizu/settings/utils/FlymeAccountHelper;->access$500(Lcom/meizu/settings/utils/FlymeAccountHelper;)Lcom/meizu/settings/utils/FlymeAccountHelper$UserInfoLister;

    move-result-object p1

    if-eqz p1, :cond_5e

    .line 380
    iget-object p1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper$4;->this$0:Lcom/meizu/settings/utils/FlymeAccountHelper;

    invoke-static {p1}, Lcom/meizu/settings/utils/FlymeAccountHelper;->access$500(Lcom/meizu/settings/utils/FlymeAccountHelper;)Lcom/meizu/settings/utils/FlymeAccountHelper$UserInfoLister;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper$4;->this$0:Lcom/meizu/settings/utils/FlymeAccountHelper;

    invoke-static {v0}, Lcom/meizu/settings/utils/FlymeAccountHelper;->access$1100(Lcom/meizu/settings/utils/FlymeAccountHelper;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper$4;->this$0:Lcom/meizu/settings/utils/FlymeAccountHelper;

    invoke-static {p0}, Lcom/meizu/settings/utils/FlymeAccountHelper;->access$800(Lcom/meizu/settings/utils/FlymeAccountHelper;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/meizu/settings/utils/FlymeAccountHelper$UserInfoLister;->getUserInfoSuccess(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V

    :cond_5e
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    .line 367
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/utils/FlymeAccountHelper$4;->onResponse(Landroid/graphics/Bitmap;)V

    return-void
.end method
