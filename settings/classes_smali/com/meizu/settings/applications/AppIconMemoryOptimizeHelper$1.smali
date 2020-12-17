.class Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper$1;
.super Landroid/util/LruCache;
.source "AppIconMemoryOptimizeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;


# direct methods
.method constructor <init>(Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;I)V
    .registers 3

    .line 37
    iput-object p1, p0, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper$1;->this$0:Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 37
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper$1;->sizeOf(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)I

    move-result p0

    return p0
.end method

.method protected sizeOf(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)I
    .registers 3

    const/16 p0, 0x190

    return p0
.end method
