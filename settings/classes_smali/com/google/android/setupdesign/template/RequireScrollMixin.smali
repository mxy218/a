.class public Lcom/google/android/setupdesign/template/RequireScrollMixin;
.super Ljava/lang/Object;
.source "RequireScrollMixin.java"

# interfaces
.implements Lcom/google/android/setupcompat/template/Mixin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupdesign/template/RequireScrollMixin$ScrollHandlingDelegate;,
        Lcom/google/android/setupdesign/template/RequireScrollMixin$OnRequireScrollStateChangedListener;
    }
.end annotation


# instance fields
.field private delegate:Lcom/google/android/setupdesign/template/RequireScrollMixin$ScrollHandlingDelegate;

.field private everScrolledToBottom:Z

.field private final handler:Landroid/os/Handler;

.field private listener:Lcom/google/android/setupdesign/template/RequireScrollMixin$OnRequireScrollStateChangedListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private requiringScrollToBottom:Z


# direct methods
.method public constructor <init>(Lcom/google/android/setupcompat/internal/TemplateLayout;)V
    .registers 3
    .param p1  # Lcom/google/android/setupcompat/internal/TemplateLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->handler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 74
    iput-boolean p1, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->requiringScrollToBottom:Z

    .line 77
    iput-boolean p1, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->everScrolledToBottom:Z

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/setupdesign/template/RequireScrollMixin;)Lcom/google/android/setupdesign/template/RequireScrollMixin$OnRequireScrollStateChangedListener;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->listener:Lcom/google/android/setupdesign/template/RequireScrollMixin$OnRequireScrollStateChangedListener;

    return-object p0
.end method

.method private postScrollStateChange(Z)V
    .registers 4

    .line 290
    iget-object v0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/setupdesign/template/RequireScrollMixin$5;

    invoke-direct {v1, p0, p1}, Lcom/google/android/setupdesign/template/RequireScrollMixin$5;-><init>(Lcom/google/android/setupdesign/template/RequireScrollMixin;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method notifyScrollabilityChange(Z)V
    .registers 3

    .line 273
    iget-boolean v0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->requiringScrollToBottom:Z

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    if-eqz p1, :cond_12

    .line 278
    iget-boolean p1, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->everScrolledToBottom:Z

    if-nez p1, :cond_1a

    .line 279
    invoke-direct {p0, v0}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->postScrollStateChange(Z)V

    .line 280
    iput-boolean v0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->requiringScrollToBottom:Z

    goto :goto_1a

    :cond_12
    const/4 p1, 0x0

    .line 283
    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->postScrollStateChange(Z)V

    .line 284
    iput-boolean p1, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->requiringScrollToBottom:Z

    .line 285
    iput-boolean v0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->everScrolledToBottom:Z

    :cond_1a
    :goto_1a
    return-void
.end method

.method public setScrollHandlingDelegate(Lcom/google/android/setupdesign/template/RequireScrollMixin$ScrollHandlingDelegate;)V
    .registers 2
    .param p1  # Lcom/google/android/setupdesign/template/RequireScrollMixin$ScrollHandlingDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 92
    iput-object p1, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->delegate:Lcom/google/android/setupdesign/template/RequireScrollMixin$ScrollHandlingDelegate;

    return-void
.end method
