.class Lcom/meizu/common/renderer/effect/GLRenderer$TrimCallback;
.super Ljava/lang/Object;
.source "GLRenderer.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/renderer/effect/GLRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TrimCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/common/renderer/effect/GLRenderer$1;)V
    .registers 2

    .line 242
    invoke-direct {p0}, Lcom/meizu/common/renderer/effect/GLRenderer$TrimCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    return-void
.end method

.method public onLowMemory()V
    .registers 1

    return-void
.end method

.method public onTrimMemory(I)V
    .registers 2

    .line 245
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->access$800()Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    const/16 p0, 0x50

    if-lt p1, p0, :cond_21

    .line 249
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->access$900()Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;

    move-result-object p1

    if-nez p1, :cond_19

    .line 250
    new-instance p1, Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;

    invoke-direct {p1, p0}, Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;-><init>(I)V

    invoke-static {p1}, Lcom/meizu/common/renderer/effect/GLRenderer;->access$902(Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;)Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;

    .line 252
    :cond_19
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->access$900()Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/common/renderer/functor/InvokeFunctor;->invoke()V

    goto :goto_54

    :cond_21
    const/16 p0, 0x28

    if-lt p1, p0, :cond_3b

    .line 254
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->access$1000()Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;

    move-result-object p1

    if-nez p1, :cond_33

    .line 255
    new-instance p1, Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;

    invoke-direct {p1, p0}, Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;-><init>(I)V

    invoke-static {p1}, Lcom/meizu/common/renderer/effect/GLRenderer;->access$1002(Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;)Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;

    .line 257
    :cond_33
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->access$1000()Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/common/renderer/functor/InvokeFunctor;->invoke()V

    goto :goto_54

    :cond_3b
    const/16 p0, 0x14

    if-lt p1, p0, :cond_54

    .line 259
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->access$1100()Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;

    move-result-object p1

    if-nez p1, :cond_4d

    .line 260
    new-instance p1, Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;

    invoke-direct {p1, p0}, Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;-><init>(I)V

    invoke-static {p1}, Lcom/meizu/common/renderer/effect/GLRenderer;->access$1102(Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;)Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;

    .line 262
    :cond_4d
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->access$1100()Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/common/renderer/functor/InvokeFunctor;->invoke()V

    :cond_54
    :goto_54
    return-void
.end method
